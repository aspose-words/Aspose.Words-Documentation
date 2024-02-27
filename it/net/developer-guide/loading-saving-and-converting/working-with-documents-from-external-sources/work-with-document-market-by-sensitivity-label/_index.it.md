---
title: Lavorare con un documento contrassegnato da un'etichetta di riservatezza
second_title: Aspose.Words per .NET
articleTitle: Lavorare con un documento contrassegnato da un'etichetta di riservatezza
linktitle: Lavorare con un documento contrassegnato da un'etichetta di riservatezza
description: "Converti Word con etichetta di riservatezza applicata in PDF utilizzando C#. Lavora con documenti contrassegnati da etichette di riservatezza: vari formati di input, tra cui Word, OpenOffice, Image ed eBook."
type: docs
weight: 30
url: /it/net/work-with-document-market-by-sensitivity-label/
---

Le etichette di riservatezza di Microsoft Purview Information Protection ti consentono di classificare e proteggere i dati della tua organizzazione, assicurando al contempo che la produttività degli utenti e la loro capacità di collaborare non siano ostacolate. Dopo aver applicato un'etichetta di riservatezza a un documento, tutte le impostazioni di protezione configurate per tale etichetta vengono applicate al contenuto.

È possibile configurare un'etichetta di riservatezza per:

1. Crittografare i documenti per impedire a persone non autorizzate di accedere a questi dati
2. Contrassegna il contenuto quando utilizzi le app di Office, aggiungendo filigrane, intestazioni o piè di pagina ai documenti a cui è applicata l'etichetta
3. Applica automaticamente l'etichetta ai documenti

In questo articolo tratteremo uno scenario comune per la conversione e la modifica di un documento contrassegnato da un'etichetta di riservatezza.

## Prerequisiti

1. Unisciti al [Programma per sviluppatori Microsoft 365](https://developer.microsoft.com/en-us/microsoft-365/dev-program).
2. Configura una sandbox istantanea secondo il [videotutorial](https://www.youtube.com/watch?v=ojQcS9ZQmes).
3. Abilitare le etichette di riservatezza predefinite in base al [tutorial](https://learn.microsoft.com/en-us/microsoft-365/compliance/sensitivity-labels-sharepoint-onedrive-files?view=o365-worldwide#use-the-microsoft-purview-compliance-portal-to-enable-support-for-sensitivity-labels).
    {{% alert color="primary" %}}
  Se hai già seguito i passaggi 1 e 2, puoi guardare il [elenco delle etichette](https://portal.azure.com/#view/Microsoft_AAD_RegisteredApps/ApplicationsListBlade).
    {{% /alert %}}
4. Registrare un'applicazione client con Azure Active Directory secondo [tutorial](https://learn.microsoft.com/en-us/azure/active-directory/develop/quickstart-register-app#register-a-new-application-using-the-azure-portal).
    {{% alert color="primary" %}}
  Gli utenti registrati possono controllare il [elenco delle applicazioni](https://portal.azure.com/#view/Microsoft_AAD_RegisteredApps/ApplicationsListBlade).
    {{% /alert %}}
		- Tipi di account supportati: seleziona "Solo account in questa directory organizzativa".
		- Il passaggio con l'impostazione dell'URI di reindirizzamento potrebbe essere saltato.
		- L'aggiunta di un certificato può essere saltata. Utilizzare il segreto client per l'accesso.
		- È anche possibile ignorare l'aggiunta di una credenziale federata.
		- Impostare le autorizzazioni per l'applicazione.</br>
		Seleziona "Autorizzazioni API" → "Aggiungi autorizzazione" → "Interfacce API Microsoft" → "Azure Rights Management Services" → "Autorizzazioni app" e aggiungi le autorizzazioni "Content.SuperUser", "Content.Writer".</br>
		Seleziona "Autorizzazioni API" → "Aggiungi autorizzazione" → "API utilizzati dalla mia organizzazione" → trova "Servizio di sincronizzazione Microsoft Information Protection" → "Autorizzazioni app" → "UnifiedPolicy.Tenant.Read".
		- Torna alla pagina "Autorizzazioni API" e premi il pulsante "Concedi il consenso dell'amministratore per (Nome tenant)".
5. Aprire la home page di Office 365 e aprire l'applicazione Word in un browser.
6. Crea un nuovo documento DOCX con del contenuto.
7. Nell'applicazione Word, nella scheda "Home", selezionare il menu "Sensibilità" → "Riservato" → "Tutti i dipendenti". Il documento verrà contrassegnato con un'etichetta di riservatezza e crittografato.
8. Seleziona l'applicazione "One Drive" e salva il file creato sul tuo computer locale. Esci dal tuo account nell'applicazione desktop Word. Verifica che il documento scaricato non possa essere aperto. Sarà il file di input per l'applicazione.

{{% alert color="primary" %}}

Tieni presente che se disponi già di un account sviluppatore Microsoft 365, salta i passaggi 1-2.

{{% /alert %}}

## Crea applicazione console

Per valutare il funzionamento di Aspose.Words for .NET con i documenti etichettati, è necessario creare un'applicazione console con le impostazioni appropriate e implementare la logica per rimuovere l'etichetta di riservatezza, elaborarla e quindi applicare l'etichetta al documento di output. Per fare ciò, seguire le istruzioni descritte in questa sezione.

Per eseguire le istruzioni, è necessario trovare e correggere i valori dei seguenti parametri, che saranno disponibili dopo aver completato i passaggi nella parte "Prerequisiti":

- URL dell'inquilino
- Nome dell'applicazione client
- Identificatore dell'applicazione client
- Segreto dell'applicazione client

{{% alert color="primary" %}}

Tieni presente che `client application secret`, `client application identifier` e `client application name` devono essere generati nel passaggio 4 della parte "Prerequisiti".

{{% /alert %}}

### Crea un nuovo progetto di applicazione console

Per creare un nuovo progetto di applicazione console, attenersi alla seguente procedura:

1. In Visual Studio, creare un nuovo progetto di applicazione console denominato "SensitivityLabelsExample" per il linguaggio *C#* e il framework di destinazione *.NET 6*
2. Aggiungi i seguenti pacchetti:
      - `Microsoft.InformationProtection.File`
      - `Microsoft.Identity.Client`
      - Aspose.Words

### Aggiungi un file con Impostazioni

Per aggiungere il file di configurazione, attenersi alla seguente procedura:

1. Aggiungi un file "AzureAppConsts.cs" al progetto
2. Aggiungi il seguente contenuto al file:

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

3. Completa i campi con i tuoi valori personalizzati.

### Implementare un delegato del consenso

Crea un file "ConsentDelegate.cs" nel progetto e compilalo con il seguente contenuto:

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

### Implementare un delegato di autenticazione

Crea un file "AuthDelegate.cs" nel progetto e compilalo con il seguente contenuto:

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

### Aggiungi opzioni di etichettatura

Crea un file "FileLabelingOptions.cs" nel progetto e compilalo con il seguente contenuto:

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

### Implementare Gestione etichette di riservatezza

Crea un file "SenstivityLabelsManager.cs" nel progetto e compilalo con il seguente contenuto:

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

### Aggiungi la logica dello scenario al programma

Spostare il seguente contenuto nel file "Program.cs":

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

## Esegui l'esempio creato e controlla il risultato

Infine, esegui l'esempio creato e controlla il risultato ottenuto:

1. Compilare il progetto
2. Eseguire l'applicazione della console

Di conseguenza, il file di output dovrebbe essere creato con "Confidential.All Employees" applicato. Accedi all'account Microsoft 365 per assicurarti che il documento possa essere aperto e contenga le modifiche.

## Guarda anche

- L'articolo [Lavora con un documento archiviato in un `SharePoint` online](/words/it/net/work-with-document-stored-in-sharepoint/)
