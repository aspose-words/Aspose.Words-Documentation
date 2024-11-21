---
title: Werk met een document gemarkeerd door een gevoelige label
second_title: Aspose.Words voor .NET
articleTitle: Werk met een document gemarkeerd door een gevoelige label
linktitle: Werk met een document gemarkeerd door een gevoelige label
description: "Word converteren met toegepaste gevoeligheid label naar PDF met behulp van C#. Werk met documenten gemarkeerd door een gevoeligheid labels"
type: docs
weight: 30
url: /nl/net/work-with-document-market-by-sensitivity-label/
timestamp: 2024-01-31-14-23-37
---

Gevoeligheidslabels van Microsoft Purview Information Protection kunt u classificeren en beschermen van de gegevens van uw organisatie, terwijl ervoor zorgen dat de productiviteit van de gebruiker en hun vermogen om samen te werken niet wordt belemmerd. Nadat een gevoeligheidslabel op een document is aangebracht, worden alle geconfigureerde beveiligingsinstellingen voor dat etiket op de inhoud afgedwongen.

U kunt een gevoeligheidslabel instellen op:

1. Documenten versleutelen om te voorkomen dat onbevoegden toegang krijgen tot deze gegevens
2. Inhoud markeren bij gebruik van Office-apps, door watermerken, headers of voetteksten toe te voegen aan documenten die het label hebben toegepast
3. Het label automatisch toepassen op documenten

In dit artikel behandelen we een gemeenschappelijk scenario voor het omzetten en wijzigen van een document gemarkeerd door een gevoeligheidslabel.

## Vereisten

1. Deelnemen aan de [Microsoft 365 Ontwikkelprogramma](https://developer.microsoft.com/en-us/microsoft-365/dev-program).
2. Stel een instant zandbak in volgens de [video-tutorial](https://www.youtube.com/watch?v=ojQcS9ZQmes).
3. Schakel standaard gevoeligheid labels volgens de [handleiding](https://learn.microsoft.com/en-us/microsoft-365/compliance/sensitivity-labels-sharepoint-onedrive-files?view=o365-worldwide#use-the-microsoft-purview-compliance-portal-to-enable-support-for-sensitivity-labels).
    {{% alert color="primary" %}}
  Als u al stappen 1 en 2 hebt doorlopen, kunt u de [lijst van etiketten](https://portal.azure.com/#view/Microsoft_AAD_RegisteredApps/ApplicationsListBlade).
    {{% /alert %}}
4. Registreer een client applicatie met Azure Actieve directory volgens de [handleiding](https://learn.microsoft.com/en-us/azure/active-directory/develop/quickstart-register-app#register-a-new-application-using-the-azure-portal).
    {{% alert color="primary" %}}
  Geregistreerde gebruikers kunnen controleren de [toepassingslijst](https://portal.azure.com/#view/Microsoft_AAD_RegisteredApps/ApplicationsListBlade).
    {{% /alert %}}
	- Ondersteunde Account Types
	- De stap met het instellen van de Redirect URI kan worden overgeslagen.
	- Het toevoegen van een certificaat kan worden overgeslagen. Gebruik client geheim voor toegang.
	- Het toevoegen van een federated credential kan ook worden overgeslagen.
	- Toestemmingen instellen voor de toepassing
	Selecteer "API permissies" → "Permissie toevoegen" → "Interfaces" API Microsoft" →"Azure Rights Management Services" → "App permissies" en voeg "Content.SuperUser," "Content. Toestemmingen van de schrijver
	Selecteer "API permissies" → "Permissie toevoegen" → "APIs mijn organisatie gebruikt" → vinden "Microsoft Informatiebeveiliging Sync Service" → "App permissies" → "UnifiedPolicy.Tenant.Lees."
	- Terug naar de "API permissies" pagina en druk op de "Grant admin toestemming voor (tenant naam) " knop.
5. Open de Office 365 home page en open de Word-applicatie in een browser.
6. Maak een nieuw DOCX-document met enige inhoud.
7. In de Word-applicatie, op het tabblad "Thuis" selecteert u het menu "Gevoeligheid" → "Vertrouwelijk" → "Alle medewerkers." Het document wordt gemarkeerd met een gevoeligheidslabel en gecodeerd.
8. Selecteer de "One Drive" applicatie en sla het aangemaakte bestand op in uw lokale machine. Meld u aan bij uw account in de Word-desktoptoepassing. Controleer of het gedownloade document niet geopend kan worden. Het zal het invoerbestand voor de toepassing zijn.

{{% alert color="primary" %}}

Merk op dat Als u al een Microsoft 365 ontwikkelaar account, sla dan stap 1-2 over.

{{% /alert %}}

## Console-programma aanmaken

Evaluatie Aspose.Words voor .NET werkt met gelabelde documenten, moet u een console applicatie met de juiste instellingen te maken en implementeren van de logica voor het verwijderen van de gevoeligheid label, het verwerken van het, en vervolgens het label toe te passen op het uitvoerdocument. Om dit te doen, volg de instructies beschreven in deze sectie.

Om de instructies uit te voeren, moet u de waarden van de volgende parameters vinden en repareren, die beschikbaar zullen zijn na het voltooien van de stappen in het gedeelte "Voorwaarden":

- Huurder url
- Client toepassingsnaam
- Client toepassingsidentificatie
- Client toepassing geheim

{{% alert color="primary" %}}

Merk op dat de `client application secret`, `client application identifier`, en `client application name` moeten worden gegenereerd in stap 4 van het gedeelte "Voorwaarden."

{{% /alert %}}

### Een nieuw console-programma aanmaken

Volg de volgende stappen om een nieuw console-applicatieproject aan te maken:

1. In Visual Studio, maak een nieuw console applicatie project genaamd "GevoeligheidLabelsExample" voor *C#* taal- en doelkader *.NET 6*
2. Voeg de volgende pakketten toe:
      - `Microsoft.InformationProtection.File`
      - `Microsoft.Identity.Client`
      - Aspose.Words

### Een bestand toevoegen met instellingen

Om configuratiebestand toe te voegen, volg deze stappen:

1. Toevoegen "AzureAppConsts.cs"-bestand naar het project
2. Voeg de volgende inhoud toe aan het bestand:

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

3. Vul de velden in met uw aangepaste waarden.

### Uitvoeren van een gemachtigde

Maak een bestand "ConsentDelegate.cs" in het project en vul het met de volgende inhoud:

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

### Implementeer een authenticatiedelegeerde

Maak een bestand "AuthDelegate.cs" in het project en vul het met de volgende inhoud:

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

### Labelopties toevoegen

Maak een bestand "FileLabelingOptions.cs" in het project en vul het met de volgende inhoud:

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

### Gevoeligheidslabelbeheer implementeren

Maak een bestand "SenstivityLabelsManager.cs" in het project en vul het met de volgende inhoud:

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

### Scenario-logica toevoegen aan het programma

Verplaats de volgende inhoud naar het bestand "Program.cs":

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

## Voer het aangemaakte voorbeeld uit en controleer het resultaat

Ten slotte, voer het gemaakte voorbeeld en controleer het resultaat dat je kreeg:

1. Het project combineren
2. De console-toepassing uitvoeren

Als gevolg hiervan moet het uitvoerbestand worden gemaakt met toegepaste "Vertrouwelijk.Alle Werknemers." Aanmelden bij de Microsoft 365 account om ervoor te zorgen dat het document kan worden geopend en bevat de wijzigingen.

## Zie ook

- Het artikel [Werk met een document opgeslagen in een `SharePoint` Online](/words/nl/net/work-with-document-stored-in-sharepoint/)
