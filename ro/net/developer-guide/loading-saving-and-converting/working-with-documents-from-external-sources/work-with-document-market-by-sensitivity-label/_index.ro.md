---
title: Lucrează cu un document marcat cu o etichetă de sensibilitate
second_title: Aspose.Words pentru .NET
articleTitle: Lucrează cu un document marcat cu o etichetă de sensibilitate
linktitle: Lucrează cu un document marcat cu o etichetă de sensibilitate
description: "Convertaţi un fișier Word cu etichete de sensibilitate aplicate într-un fișier PDF folosind C#. `Lucraţi cu documente marcate cu etichete de sensibilitate – diferite formate de intrare, inclusiv Word, OpenOffice, Imagine şi eBook.`"
type: docs
weight: 30
url: /ro/net/work-with-document-market-by-sensitivity-label/
timestamp: 2024-01-31-14-23-37
---

Sensibilitate etichetă de la Microsoft Protecția informațiilor Purview vă permite să clasificați și să protejați datele organizației dvs., asigurându-vă că productivitatea utilizatorului și capacitatea lor de a colabora nu este afectată. După ce i se aplică o etichetă de sensibilitate la un document, orice setări de protecție configurate pentru această etichetă sunt impuse conținutului.

Puteți configura un etichetă de sensibilitate să:

1. Criptați documentele pentru a împiedica accesul neautorizat la aceste date
2. Marcaţi conţinutul când utilizaţi aplicaţii Office, adăugând filigrane, anteturi sau subsoluri la documentele cărora li s-a aplicat eticheta
3. Aplicați eticheta automat la documente

În acest articol vom acoperi o situație comună pentru convertirea și modificarea unui document marcat cu un etichetă de sensibilitate.

## Cerințe prealabile

1. Alătură-te la [Microsoft 365 Developer Program](https://developer.microsoft.com/en-us/microsoft-365/dev-program).
2. Configurati o cutie de nisip instantanee conform [video tutorial](https://www.youtube.com/watch?v=ojQcS9ZQmes).
3. Activați etichete de sensibilitate implicite conform [tutorial](https://learn.microsoft.com/en-us/microsoft-365/compliance/sensitivity-labels-sharepoint-onedrive-files?view=o365-worldwide#use-the-microsoft-purview-compliance-portal-to-enable-support-for-sensitivity-labels).
    {{% alert color="primary" %}}
  Dacă ai trecut deja prin pașii 1 și 2, poți să arunci o privire asupra [list of labels](https://portal.azure.com/#view/Microsoft_AAD_RegisteredApps/ApplicationsListBlade).
    {{% /alert %}}
4. Înregistrați o aplicație client cu Azure Active Directory conform [tutorial](https://learn.microsoft.com/en-us/azure/active-directory/develop/quickstart-register-app#register-a-new-application-using-the-azure-portal).
    {{% alert color="primary" %}}
  Utilizatorii înregistrați pot verifica [application list](https://portal.azure.com/#view/Microsoft_AAD_RegisteredApps/ApplicationsListBlade).
    {{% /alert %}}
	- Tipuri de cont suportate – selectați "Conturi în acest director organizațional doar.
	- Pasul cu setarea URI-ului de redirecționare poate fi ocolit.
	- Adăugarea unui certificat poate fi ocolită. Folosește client secret pentru acces.
	- Adăugarea unui credential federal poate fi de asemenea sări peste.
	- Setează permisiunile pentru cerere
	Selectaţi " API permisiuni" → "Adaugă permisiune" → "Interfaces API " → " Azure Servicii de management al drepturilor" → "App permissions" şi adăugaţi "Content.SuperUser," "Content. Permisiunile scriitorului
	Select API permisiuni" → "Adăugare permisiune" → "API pe care le folosește organizația mea" → găsiți "Microsoft Information Protection Sync Service" → "Permisiuni aplicație" → "UnifiedPolicy.Tenant.Read.
	- Întoarceți-vă pe pagina " API permisiuni " și apăsați butonul "Acordați consimțământul pentru administrator pentru (Nume client) ".
5. Deschide pagina principală Office 365 și deschide aplicația Word într-un browser.
6. Crează un nou document DOCX cu ceva conținut.
7. În aplicația Word, în fila "Acasă", selectați meniul "Sensibilitate" → "Confidențial" → "Toți angajații". "Documentul va fi marcat cu un etichetă de sensibilitate și criptat."
8. Selectați aplicația OneDrive și salvați fișierul creat pe mașina locală. Deconectează-te din contul tău în aplicația desktop Word. Verificați că documentul descărcat nu poate fi deschis. Va fi fișierul de intrare pentru aplicație.

{{% alert color="primary" %}}

Notă că dacă aveți deja un cont de dezvoltator Microsoft 365, săriți pașii 1-2.

{{% /alert %}}

## Creează aplicație console

Pentru a evalua modul în care Aspose.Words pentru .NET funcționează cu documente etichetate, trebuie să creați o aplicație de consolă cu setările corespunzătoare și să implementați logica pentru eliminarea etichetei de sensibilitate, procesarea acesteia și aplicarea apoi etichetei la documentul de ieșire. Pentru asta urmaţi instrucţiunile descrise în această secţiune.

Pentru a executa instrucțiunile aveți nevoie să găsiți și să ajustați valorile parametrilor următori care vor fi disponibili după finalizarea pașilor din secțiunea "Pre-requisites":

- Clientul url
- Nume de aplicație client
- Identificatorul aplicației client
- Aplicație client secretă

{{% alert color="primary" %}}

Observă că `client application secret`, `client application identifier` și `client application name` ar trebui generate în pasul 4 al părții "Pre-requisites.

{{% /alert %}}

### Creează un nou proiect de aplicație de consolă

Pentru a crea un nou proiect de aplicație consola, urmați acești pași:

1. În Visual Studio, creați un nou proiect de aplicație de consolă numit "SensitivityLabelsExample" pentru *C#* și cadrul țintă *NET 6*
2. Adăugaţi următoarele pachete:
      - `Microsoft.InformationProtection.File`
      - `Microsoft.Identity.Client`
      - Aspose.Words

### Adăugaţi un fişier cu setări

Pentru a adăuga un fișier de configurație urmați acești pași:

1. Adăugaţi un fișier "AzureAppConfigs.cs" la proiect
2. Adaugă următorul conținut în fișier:

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

3. Completaţi câmpurile cu valorile dumneavoastră personalizate.

### Implementați un Delegat de Consimțământ

Crează un fişier "ConsentDelegate.cs" în cadrul proiectului şi completează-l cu conţinutul următor:

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

### Implementați un Delegat de Autentificare

Creează un fișier "AuthDelegate.cs" în proiectul și umple-l cu conținutul de mai jos:

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

### Adăugați opțiuni de etichetare

Crează un fișier numit "FileLabelingOptions.cs" în proiect și umple-l cu conținutul următor:

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

### Implement Sensitivity Labels Manager

Creează un fişier "SenstivityLabelsManager.cs" în proiect şi umple-l cu următorul conţinut:

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

### Adăugă logică scenariului în program

Mută următoarele conținuturi către fișierul "Program.cs":

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

## Rulează Exemplul Creat şi Verifică Rezultatul

În final, rulați exemplul creat și verificați rezultatul pe care l-ați obținut:

1. Compilați proiectul
2. Rulează aplicația de consolă

Ca rezultat, fișierul de ieșire ar trebui creat cu aplicat "Confidențial.Toți Angajații". Autentifică-te la contul tău Microsoft 365 pentru a fi sigur că documentele pot fi deschise și conțin modificările.

## Vedeți și:

The article [Work with a Document Stored in a `SharePoint` Online](/words/net/work-with-document-stored-in-sharepoint/)
