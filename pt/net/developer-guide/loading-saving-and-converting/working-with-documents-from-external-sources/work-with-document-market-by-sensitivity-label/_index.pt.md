---
title: Trabalhar com um documento marcado por uma etiqueta de confidencialidade
second_title: Aspose.Words para .NET
articleTitle: Trabalhar com um documento marcado por uma etiqueta de confidencialidade
linktitle: Trabalhar com um documento marcado por uma etiqueta de confidencialidade
description: "Converta Word com etiqueta de sensibilidade aplicada em PDF usando C#. Trabalhe com documentos marcados por rótulos de confidencialidade – vários formatos de entrada, incluindo Word, OpenOffice, Imagem e e-book."
type: docs
weight: 30
url: /pt/net/work-with-document-market-by-sensitivity-label/
timestamp: 2024-01-31-14-23-37
---

Os rótulos de confidencialidade do Microsoft Purview Information Protection permitem classificar e proteger os dados da sua organização, garantindo ao mesmo tempo que a produtividade do usuário e sua capacidade de colaboração não sejam prejudicadas. Depois que um rótulo de confidencialidade é aplicado a um documento, todas as configurações de proteção definidas para esse rótulo são aplicadas ao conteúdo.

Você pode configurar um rótulo de confidencialidade para:

1. Criptografe documentos para evitar que pessoas não autorizadas acessem esses dados
2. Marque o conteúdo ao usar aplicativos do Office, adicionando marcas d'água, cabeçalhos ou rodapés aos documentos que possuem o rótulo aplicado
3. Aplique a etiqueta automaticamente aos documentos

Neste artigo, abordaremos um cenário comum para converter e modificar um documento marcado por um rótulo de confidencialidade.

## Pré-requisitos

1. Junte-se ao [Programa para desenvolvedores Microsoft 365](https://developer.microsoft.com/en-us/microsoft-365/dev-program).
2. Configure um sandbox instantâneo de acordo com o [vídeo tutorial](https://www.youtube.com/watch?v=ojQcS9ZQmes).
3. Ative os rótulos de sensibilidade padrão de acordo com o [tutorial](https://learn.microsoft.com/en-us/microsoft-365/compliance/sensitivity-labels-sharepoint-onedrive-files?view=o365-worldwide#use-the-microsoft-purview-compliance-portal-to-enable-support-for-sensitivity-labels).
    {{% alert color="primary" %}}
  Se você já passou pelas etapas 1 e 2, pode consultar o [lista de rótulos](https://portal.azure.com/#view/Microsoft_AAD_RegisteredApps/ApplicationsListBlade).
    {{% /alert %}}
4. Registre um aplicativo cliente no Azure Active Directory de acordo com o [tutorial](https://learn.microsoft.com/en-us/azure/active-directory/develop/quickstart-register-app#register-a-new-application-using-the-azure-portal).
    {{% alert color="primary" %}}
  Usuários registrados podem verificar o [lista de aplicativos](https://portal.azure.com/#view/Microsoft_AAD_RegisteredApps/ApplicationsListBlade).
    {{% /alert %}}
		- Tipos de conta suportados – selecione "Contas apenas neste diretório organizacional".
		- A etapa de configuração do URI de redirecionamento pode ser ignorada.
		- A adição de um certificado pode ser ignorada. Use o segredo do cliente para acesso.
		- A adição de uma credencial federada também pode ser ignorada.
		- Defina permissões para o aplicativo.</br>
		Selecione "Permissões API" → "Adicionar permissão" → "Interfaces API Microsoft" → "Serviços de gerenciamento de direitos Azure" → "Permissões de aplicativos" e adicione as permissões "Content.SuperUser", "Content.Writer".</br>
		Selecione "Permissões API" → "Adicionar permissão" → "APIs que minha organização usa" → encontre "Serviço de sincronização de proteção de informações Microsoft" → "Permissões de aplicativos" → "UnifiedPolicy.Tenant.Read".
		- Retorne à página "Permissões API" e pressione o botão "Conceder consentimento do administrador para (nome do locatário)".
5. Abra a página inicial do Office 365 e abra o aplicativo Word em um navegador.
6. Crie um novo documento DOCX com algum conteúdo.
7. No aplicativo Word, na aba "Home", selecione o menu "Sensibilidade" → "Confidencial" → "Todos os Funcionários". O documento será marcado com um rótulo de confidencialidade e criptografado.
8. Selecione o aplicativo "One Drive" e salve o arquivo criado em sua máquina local. Saia da sua conta no aplicativo Word para desktop. Verifique se o documento baixado não pode ser aberto. Será o arquivo de entrada do aplicativo.

{{% alert color="primary" %}}

Observe que se você já possui uma conta de desenvolvedor Microsoft 365, pule as etapas 1-2.

{{% /alert %}}

## Criar aplicativo de console

Para avaliar como o Aspose.Words para .NET funciona com documentos rotulados, você precisa criar um aplicativo de console com as configurações apropriadas e implementar a lógica para remover o rótulo de confidencialidade, processá-lo e, em seguida, aplicar o rótulo ao documento de saída. Para fazer isso, siga as instruções descritas nesta seção.

Para executar as instruções, é necessário localizar e corrigir os valores dos seguintes parâmetros, que estarão disponíveis após a conclusão das etapas da parte "Pré-requisitos":

- URL do inquilino
- Nome do aplicativo cliente
- Identificador do aplicativo cliente
- Segredo do aplicativo cliente

{{% alert color="primary" %}}

Observe que o `client application secret`, `client application identifier` e `client application name` devem ser gerados no passo 4 da parte "Pré-requisitos".

{{% /alert %}}

### Crie um novo projeto de aplicativo de console

Para criar um novo projeto de aplicativo de console, siga estas etapas:

1. Em Visual Studio, crie um novo projeto de aplicativo de console chamado "SensitivityLabelsExample" para a linguagem *C#* e estrutura de destino *.NET 6*
2. Adicione os seguintes pacotes:
      - `Microsoft.InformationProtection.File`
      - `Microsoft.Identity.Client`
      - Aspose.Words

### Adicionar um arquivo com configurações

Para adicionar o arquivo de configuração, siga estas etapas:

1. Adicione um arquivo "AzureAppConsts.cs" ao projeto
2. Adicione o seguinte conteúdo ao arquivo:

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

3. Preencha os campos com seus valores customizados.

### Implementar um delegado de consentimento

Crie um arquivo "ConsentDelegate.cs" no projeto e preencha-o com o seguinte conteúdo:

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

### Implementar um delegado de autenticação

Crie um arquivo "AuthDelegate.cs" no projeto e preencha-o com o seguinte conteúdo:

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

### Adicionar opções de rotulagem

Crie um arquivo "FileLabelingOptions.cs" no projeto e preencha-o com o seguinte conteúdo:

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

### Implementar gerenciador de rótulos de sensibilidade

Crie um arquivo "SenstivityLabelsManager.cs" no projeto e preencha-o com o seguinte conteúdo:

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

### Adicione lógica de cenário ao programa

Mova o seguinte conteúdo para o arquivo "Program.cs":

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

## Execute o exemplo criado e verifique o resultado

Por fim, execute o exemplo criado e verifique o resultado obtido:

1. Compile o projeto
2. Execute o aplicativo de console

Como resultado, o arquivo de saída deve ser criado com "Confidential.All Employees" aplicado. Faça login na conta Microsoft 365 para garantir que o documento possa ser aberto e contenha as alterações.

## Veja também

- O artigo [Trabalhe com um documento armazenado em `SharePoint` online](/words/pt/net/work-with-document-stored-in-sharepoint/)
