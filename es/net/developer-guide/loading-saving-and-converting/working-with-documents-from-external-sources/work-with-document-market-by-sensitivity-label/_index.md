---
title: Trabajar con un documento marcado con una etiqueta de confidencialidad
second_title: Aspose.Words para .NET
articleTitle: Trabajar con un documento marcado con una etiqueta de confidencialidad
linktitle: Trabajar con un documento marcado con una etiqueta de confidencialidad
description: "Convierta Word con etiqueta de confidencialidad aplicada a PDF usando C#. Trabaje con documentos marcados con etiquetas de confidencialidad: varios formatos de entrada, incluidos Word, OpenOffice, Image y eBook."
type: docs
weight: 30
url: /es/net/work-with-document-market-by-sensitivity-label/
---

Las etiquetas de confidencialidad de Microsoft Purview Information Protection le permiten clasificar y proteger los datos de su organización, al tiempo que garantiza que la productividad del usuario y su capacidad para colaborar no se vean obstaculizadas. Después de aplicar una etiqueta de confidencialidad a un documento, cualquier configuración de protección configurada para esa etiqueta se aplica al contenido.

Puede configurar una etiqueta de confidencialidad para:

1. Cifrar documentos para evitar que personas no autorizadas accedan a estos datos
2. Marque el contenido cuando use aplicaciones de Office agregando marcas de agua, encabezados o pies de página a los documentos que tienen la etiqueta aplicada.
3. Aplicar la etiqueta automáticamente a los documentos.

En este artículo, cubriremos un escenario común para convertir y modificar un documento marcado por una etiqueta de confidencialidad.

## Requisitos previos

1. Únase al [Programa para desarrolladores Microsoft 365](https://developer.microsoft.com/en-us/microsoft-365/dev-program).
2. Configure una zona de pruebas instantánea de acuerdo con [vídeotutorial](https://www.youtube.com/watch?v=ojQcS9ZQmes).
3. Habilite las etiquetas de sensibilidad predeterminadas según [tutorial](https://learn.microsoft.com/en-us/microsoft-365/compliance/sensitivity-labels-sharepoint-onedrive-files?view=o365-worldwide#use-the-microsoft-purview-compliance-portal-to-enable-support-for-sensitivity-labels).
 {{% alert color="primary" %}}
 Si ya has realizado los pasos 1 y 2, puedes consultar el [lista de etiquetas](https://portal.azure.com/#view/Microsoft_AAD_RegisteredApps/ApplicationsListBlade).
 {{% /alert %}}
4. Registre una aplicación cliente con Azure Active Directory según el [tutorial](https://learn.microsoft.com/en-us/azure/active-directory/develop/quickstart-register-app#register-a-new-application-using-the-azure-portal).
 {{% alert color="primary" %}}
 Los usuarios registrados pueden consultar el [lista de aplicaciones](https://portal.azure.com/#view/Microsoft_AAD_RegisteredApps/ApplicationsListBlade).
 {{% /alert %}}
- Tipos de cuentas admitidas: seleccione "Cuentas solo en este directorio organizacional".
- Es posible que se omita el paso de configurar el URI de redireccionamiento.
- Es posible omitir la adición de un certificado. Utilice el secreto del cliente para acceder.
- También se puede omitir la adición de una credencial federada.
- Establecer permisos para la aplicación.</br>
Seleccione "Permisos API" → "Agregar permiso" → "Interfaces API Microsoft" → "Servicios de administración de derechos Azure" → "Permisos de aplicaciones" y agregue los permisos "Content.SuperUser", "Content.Writer".</br>
Seleccione "Permisos API" → "Agregar permiso" → "API que usa mi organización" → busque "Servicio de sincronización de protección de información Microsoft" → "Permisos de aplicaciones" → "UnifiedPolicy.Tenant.Read".
- Regrese a la página "Permisos API" y presione el botón "Otorgar consentimiento de administrador para (Nombre del inquilino)".
5. Abra la página de inicio de Office 365 y abra la aplicación Word en un navegador.
6. Cree un nuevo documento DOCX con algún contenido.
7. En la aplicación Word, en la pestaña "Inicio", seleccione el menú "Sensibilidad" → "Confidencial" → "Todos los empleados". El documento se marcará con una etiqueta de confidencialidad y se cifrará.
8. Seleccione la aplicación "One Drive" y guarde el archivo creado en su máquina local. Cierre sesión en su cuenta en la aplicación de escritorio de Word. Compruebe que el documento descargado no se pueda abrir. Será el archivo de entrada para la aplicación.

{{% alert color="primary" %}}

Tenga en cuenta que si ya tiene una cuenta de desarrollador de Microsoft 365, omita los pasos 1 y 2.

{{% /alert %}}

## Crear aplicación de consola

Para evaluar cómo funciona Aspose.Words para .NET con documentos etiquetados, debe crear una aplicación de consola con la configuración adecuada e implementar la lógica para eliminar la etiqueta de confidencialidad, procesarla y luego aplicar la etiqueta al documento de salida. Para ello, siga las instrucciones descritas en esta sección.

Para ejecutar las instrucciones, debe buscar y corregir los valores de los siguientes parámetros, que estarán disponibles después de completar los pasos de la parte "Requisitos previos":

- URL del inquilino
- Nombre de la aplicación del cliente
- Identificador de la aplicación del cliente
- Secreto de la aplicación del cliente

{{% alert color="primary" %}}

Tenga en cuenta que `client application secret`, `client application identifier` y `client application name` deben generarse en el paso 4 de la parte "Requisitos previos".

{{% /alert %}}

### Crear un nuevo proyecto de aplicación de consola

Para crear un nuevo proyecto de aplicación de consola, siga estos pasos:

1. En Visual Studio, cree un nuevo proyecto de aplicación de consola llamado "SensitivityLabelsExample" para el lenguaje *C#* y el marco de destino *.NET 6*
2. Agregue los siguientes paquetes:
  - `Microsoft.InformationProtection.File`
  - `Microsoft.Identity.Client`
  - Aspose.Words

### Agregar un archivo con configuración

Para agregar un archivo de configuración, siga estos pasos:

1. Agregue un archivo "AzureAppConsts.cs" al proyecto
2. Agregue el siguiente contenido al archivo:

 {{< highlight csharp >}}
  namespace SensitivityLabelsExample
  {
    public static class AzureAppConsts
    {
      public const string AppVersion = "1.0.0";
      public const string AppName = "<App name>";
      public const string Tenant = "<Tenant url>"; // For example, "xxyyzz.onmicrosoft.com".
      public const string AppId = "<App identifier>"; // For example, "55ea5064-aaaa-aaaa-aaaa-aaaa397c6d1".
      public const string AppSecret = "<App secret>";
    }
  }
  {{< /highlight >}}

3. Complete los campos con sus valores personalizados.

### Implementar un delegado de consentimiento

Cree un archivo "ConsentDelegate.cs" en el proyecto y rellénelo con el siguiente contenido:

{{< highlight csharp >}}
using Microsoft.InformationProtection;
namespace SensitivityLabelsExample

{
    public class ConsentDelegate : IConsentDelegate
    {
        public Consent GetUserConsent(string url)
        {
            return Consent.Accept;
        }
    }
}
{{< /highlight >}}

### Implementar un delegado de autenticación

Cree un archivo "AuthDelegate.cs" en el proyecto y rellénelo con el siguiente contenido:

{{< highlight csharp >}}
using Microsoft.Identity.Client;
using Microsoft.InformationProtection;

namespace SensitivityLabelsExample
{
    public class AuthDelegate : IAuthDelegate
    {
        private readonly string _tenant;
        private readonly string _appSecret;
        private readonly ApplicationInfo _appInfo;

        private const string RedirectUrl = "https://login.microsoftonline.com/common/oauth2/nativeclient";
    
        public AuthDelegate(ApplicationInfo appInfo, string tenant, string appSecret)
        {
            _tenant = tenant;
            _appInfo = appInfo;
            _appSecret = appSecret;
        }
    
        public string AcquireToken(Identity identity, string authority, string resource, string claims)
        {
            // Append tenant to authority and remove common.
            if (authority.Contains("common", StringComparison.InvariantCultureIgnoreCase))
            {
                var authorityUri = new Uri(authority);
                authority = string.Format("https://{0}/{1}", authorityUri.Host, _tenant);
            }
    
            // Perform client secret based auth.
            var app = ConfidentialClientApplicationBuilder.Create(_appInfo.ApplicationId)
                .WithClientSecret(_appSecret)
                .WithRedirectUri(RedirectUrl)
                .Build();
    
            var scopes = new string[] { resource[resource.Length - 1].Equals('/') ? $"{resource}.default" : $"{resource}/.default" };
            AuthenticationResult authResult = app.AcquireTokenForClient(scopes)
                .WithAuthority(authority)
                .ExecuteAsync()
                .GetAwaiter()
                .GetResult();
    
            return authResult.AccessToken;
        }
    }
}
{{< /highlight >}}

### Agregar opciones de etiquetado

Cree un archivo "FileLabelingOptions.cs" en el proyecto y rellénelo con el siguiente contenido:

{{< highlight csharp >}}
using Microsoft.InformationProtection;
namespace SensitivityLabelsExample

{
    public class FileLabelingOptions
    {
        public FileLabelingOptions(string originalFilePath, Stream fileData, AssignmentMethod assignmentMethod)
        {
            FileData = fileData;
            AssignmentMethod = assignmentMethod;
            OriginalFilePath = originalFilePath;
        }

        public Stream FileData { get; init; }
        public string OriginalFilePath { get; init; }
        public AssignmentMethod AssignmentMethod { get; init; }
    }
}
{{< /highlight >}}

### Gerente de etiquetas de sensibilidad de implementación

Cree un archivo "SenstivityLabelsManager.cs" en el proyecto y rellénelo con el siguiente contenido:

{{< highlight csharp >}}
using Microsoft.InformationProtection;
using Microsoft.InformationProtection.File;

namespace SensitivityLabelsTest
{
    public class SenstivityLabelsManager : IDisposable
    {
        private readonly string _locale;
        private readonly string _tenant;
        private readonly string _appSecret;
        private readonly ApplicationInfo _appInfo;


        private MipContext _mipContext;
        private IFileEngine _fileEngine;
        private IFileProfile _fileProfile;
    
        public SenstivityLabelsManager(ApplicationInfo appInfo, string tenant, string appSecret, string locale = "en-US")
        {
            _locale = locale;
            _tenant = tenant;
            _appInfo = appInfo;
            _appSecret = appSecret;
        }
    
        public async Task Initialize()
        {
            // Initialize Wrapper for File SDK operations.
            // Review the API Spec at https://aka.ms/mipsdkdocs for details.
            MIP.Initialize(MipComponent.File);
    
            var mipConfiguration = new MipConfiguration(_appInfo, "mip_data", LogLevel.Trace, false);
            _mipContext = MIP.CreateMipContext(mipConfiguration);
    
            _fileProfile = await CreateFileProfile();
            _fileEngine = await CreateFileEngine();
    
        }
    
        public IEnumerable<Label> GetLabels()
        {
            return _fileEngine.SensitivityLabels;
        }
    
        public async Task<Stream> SetLabel(string labelId, FileLabelingOptions options)
        {
            var labelingOptions = new LabelingOptions() { AssignmentMethod = options.AssignmentMethod };
    
            var handler = await _fileEngine.CreateFileHandlerAsync(options.FileData, options.OriginalFilePath, true);
            handler.SetLabel(_fileEngine.GetLabelById(labelId), labelingOptions, new ProtectionSettings());
    
            var committed = false;
            var outputStream = new MemoryStream();
    
            // Check to see that modifications occurred on the handler. If not, skip commit.
            if (handler.IsModified())
                committed = await handler.CommitAsync(outputStream);
    
            // Submits and audit event about the labeling action to Azure Information Protection Analytics.
            if (committed)
            {
                handler.NotifyCommitSuccessful(options.OriginalFilePath);
                outputStream.Position = 0;
            }
    
            return committed ? outputStream : null;
        }
    
        public async Task<Stream> RemoveLabel(FileLabelingOptions options)
        {
            var handler = await _fileEngine.CreateFileHandlerAsync(options.FileData, options.OriginalFilePath, true);
            handler.DeleteLabel(new LabelingOptions() { IsDowngradeJustified = true, AssignmentMethod = options.AssignmentMethod });
    
            var committed = false;
            var outputStream = new MemoryStream();
    
            if (handler.IsModified())
                committed = await handler.CommitAsync(outputStream);
    
            if (committed)
            {
                handler.NotifyCommitSuccessful(options.OriginalFilePath);
                outputStream.Position = 0;
            }
    
            return outputStream;
        }
    
        public void Dispose()
        {
            _fileEngine?.Dispose();
            _fileProfile?.Dispose();
            _mipContext?.ShutDown();
            _mipContext?.Dispose();
        }
    
        private async Task<IFileProfile> CreateFileProfile()
        {
            var profileSettings = new FileProfileSettings(_mipContext, CacheStorageType.OnDiskEncrypted, new ConsentDelegate());
    
            // IFileProfile is the root of all SDK operations for a given application.
            var profile = await MIP.LoadFileProfileAsync(profileSettings);
            return profile;
        }
    
        private async Task<IFileEngine> CreateFileEngine()
        {
            // The SDK will accept any properly formatted email address.
            var identity = new Identity(string.Format("{0}@{1}", _appInfo.ApplicationId, _tenant));
    
            // Passing in empty string for the first parameter, engine ID, will cause the SDK to generate a GUID.
            // Locale settings are supported and should be provided based on the machine locale, particular for client applications.
            var engineSettings = new FileEngineSettings(
                string.Empty, new AuthDelegate(_appInfo, _tenant, _appSecret), string.Empty, _locale)
            {
                Identity = identity
            };
    
            var engine = await _fileProfile.AddEngineAsync(engineSettings);
            return engine;
        }
    }
}

{{< /highlight >}}

### Agregar lógica de escenario al programa

Mueva el siguiente contenido al archivo "Program.cs":

{{< highlight csharp >}}
using Aspose.Words;
using SensitivityLabelsTest;
using Microsoft.InformationProtection;

// The code below does the following:
// 1. Initializes MIP infrastructure.
// 2. Removes document protection (sensitivity label);
// 3. Inserts watermark to the document;
// 4. Saves modified document;
// 5. Sets protection using specified sensitivity label name.
// Input scenario data:

const string labeledFilePath = @"<Path to input file>"; // Local path to a protected file. Note that the file should be generated in step 8 of the "Preset" part.
const string outputFilePath = @"<Path to output file>"; // Local path to the output file.

const string LabelName = "Confidential"; // Label name to be assigned. For example, "Confidential".
const string SubLabelName = "All Employees"; // SubLabel name to be assigned. For example, "All Employees".
const AssignmentMethod labelAssignmentMethod = AssignmentMethod.Privileged; // Used assignment method of the label on the file.

const string AsposeWordsLicensePath = @"<Path to Aspose.Word license file>";

//
// 1. Initialization.

var appInfo = new ApplicationInfo()
{
    ApplicationId = AzureAppConsts.AppId,
    ApplicationName = AzureAppConsts.AppName,
    ApplicationVersion = AzureAppConsts.AppVersion
};

using var labelsManager = new SenstivityLabelsManager(appInfo, AzureAppConsts.Tenant, AzureAppConsts.AppSecret);
await labelsManager.Initialize();

Console.WriteLine("App initialized.");

// 2. Remove sensitive label.

var fileLabelingOptions = new FileLabelingOptions(labeledFilePath, File.Open(labeledFilePath, FileMode.Open), labelAssignmentMethod);
var unlabeledStream = await labelsManager.RemoveLabel(fileLabelingOptions);

Console.WriteLine("Sensitivity label removed from the file.");

// 3. Open and modify document using Aspose.Words.

var license = new License();
license.SetLicense(AsposeWordsLicensePath);

Document doc = new Document(unlabeledStream);
doc.Watermark.SetText("Watermark text",
    new TextWatermarkOptions { Layout = WatermarkLayout.Diagonal, FontSize = 36, IsSemitrasparent = true });

Console.WriteLine("Document opened and modified.");

// 4. Save modified document.

var modifiedDocument = new MemoryStream();
doc.Save(modifiedDocument, SaveFormat.Docx);

Console.WriteLine("Document saved.");

// 5. Set protection.
var label = labelsManager.GetLabels().First(l => l.Name.Trim() == LabelName).Children.First(l => l.Name == SubLabelName);
fileLabelingOptions = new FileLabelingOptions(outputFilePath, modifiedDocument, labelAssignmentMethod);

var outputStream = await labelsManager.SetLabel(label.Id, fileLabelingOptions);
using var outputFile = File.Create(outputFilePath);
await outputStream.CopyToAsync(outputFile);

Console.WriteLine("Sensitivity label set to output file.");
Console.WriteLine("App completed!");

{{< /highlight >}}

## Ejecute el ejemplo creado y verifique el resultado

Finalmente, ejecute el ejemplo creado y verifique el resultado que obtuvo:

1. Compile el proyecto
2. Ejecute la aplicación de consola.

Como resultado, el archivo de salida debe crearse con "Confidencial.Todos los empleados" aplicado. Inicie sesión en la cuenta Microsoft 365 para asegurarse de que el documento se pueda abrir y contenga los cambios.

## Ver también

- El artículo [Trabajar con un documento almacenado en un `SharePoint` en línea](/words/es/net/work-with-document-stored-in-sharepoint/)
