---
title: Werk met'n Dokument Gemerk met'n Sensitiwiteitsetiket
second_title: Aspose.Words vir .NET
articleTitle: Werk met'n Dokument Gemerk met'n Sensitiwiteitsetiket
linktitle: Werk met'n Dokument Gemerk met'n Sensitiwiteitsetiket
description: "Skakel Woord met toegepaste sensitiwiteitsetiket om na PDF met C#. Werk met dokumente gemerk deur'n sensitiwiteit etikette-verskeie insette formate, insluitend Woord, OpenOffice, Beeld en eBook."
type: docs
weight: 30
url: /af/net/work-with-document-market-by-sensitivity-label/
timestamp: 2024-01-31-14-23-37
---

Sensitiwiteitsetikette van Microsoft Inligtingbeskerming Laat jou toe om jou organisasie se data te klassifiseer en te beskerm, terwyl jy seker maak dat gebruikersproduktiwiteit en hul vermoë om saam te werk nie belemmer word nie. Nadat'n sensitiwiteitsetiket op'n dokument aangebring is, word enige gekonfigureerde beskerminginstellings vir daardie etiket op die inhoud afgedwing.

U kan'n sensitiwiteitsetiket instel na:

1. Enkripteer dokumente om te verhoed dat ongemagtigde mense toegang tot hierdie data kry
2. Merk inhoud wanneer U Office-programme gebruik, deur watermerke, koptekste of voetskrifte by dokumente te voeg waarop die etiket aangebring is
3. Pas die etiket outomaties toe op dokumente

In hierdie artikel sal ons'n algemene scenario dek vir die omskakeling en wysiging van'n dokument wat met'n sensitiwiteitsetiket gemerk is.

## Voorwaardes

1. Sluit aan by die [Microsoft 365 Ontwikkelaarprogram](https://developer.microsoft.com/en-us/microsoft-365/dev-program).
2. Stel'n onmiddellike sandbox op volgens die [video handleiding](https://www.youtube.com/watch?v=ojQcS9ZQmes).
3. Aktiveer verstek sensitiwiteitsetikette volgens die [tutoriaal](https://learn.microsoft.com/en-us/microsoft-365/compliance/sensitivity-labels-sharepoint-onedrive-files?view=o365-worldwide#use-the-microsoft-purview-compliance-portal-to-enable-support-for-sensitivity-labels).
  {{% alert color="primary" %}}
  As jy reeds deur stappe 1 en 2 gegaan het, kan jy na die [lys van etikette](https://portal.azure.com/#view/Microsoft_AAD_RegisteredApps/ApplicationsListBlade).
  {{% /alert %}}
4. Registreer'n kliënt aansoek Met Azure Active Directory volgens Die [tutoriaal](https://learn.microsoft.com/en-us/azure/active-directory/develop/quickstart-register-app#register-a-new-application-using-the-azure-portal).
  {{% alert color="primary" %}}
  Geregistreerde gebruikers kan die [toepassingslys](https://portal.azure.com/#view/Microsoft_AAD_RegisteredApps/ApplicationsListBlade).
  {{% /alert %}}
	- Ondersteunde Rekeningtipes-kies "Slegs Rekeninge in hierdie organisatoriese gids".
	- Die stap met die instelling van die Herleiding URI kan oorgeslaan word.
	- Die toevoeging van'n sertifikaat kan oorgeslaan word. Gebruik kliëntgeheim vir toegang.
	- Die toevoeging van'n federale geloofsbrief kan ook oorgeslaan word.
	- Stel toestemmings vir die toepassing in.</br>
	Kies" API toestemmings "toestemmings" voeg toestemmings "toestemmings" koppelvlakke API Microsoft "Toestemmings Vir Azure Regte" Toestemmings Vir Die Regte "En voeg" Inhoud by.SuperUser", " Inhoud.Skrywer " regte.</br>
	Kies" API toestemmings "athlant" voeg toestemmings "athlant" APIs My organisasie gebruik "athlant find" Microsoft Inligting Beskerming Sync Diens "Athlant" App toestemmings "athlant" UnifiedPolicy.Huurder.Lees".
	- Keer terug na die bladsy" API toestemmings "en druk die knoppie" Gee admin toestemming vir (Huurder Naam)".
5. Maak Die office 365-tuisblad oop en maak die Word-toepassing in'n blaaier oop.
6. Skep'n nuwe DOCX dokument met inhoud.
7. In die woord aansoek, op die blad "Home", kies die spyskaart "Sensitiwiteit" Arrogante "Vertroulike" Arrogante "Alle Werknemers". Die dokument sal met'n sensitiwiteitsetiket gemerk en geënkripteer word.
8. Kies die" One Drive " - toepassing en stoor die geskepte lêer op u plaaslike masjien. Meld af van u rekening in Die word-lessenaarprogram. Kontroleer dat afgelaaide dokument nie oopgemaak kan word nie. Dit sal die invoerlêer vir die toepassing wees.

{{% alert color="primary" %}}

Let daarop dat as jy reeds'n Microsoft 365 ontwikkelaar rekening, dan slaan stappe 1-2.

{{% /alert %}}

## Skep Konsole-Toepassing

Om te bepaal hoe Aspose.Words vir .NET werk met gemerkte dokumente, jy moet'n konsole-aansoek met die toepaslike instellings skep en die logika implementeer om die sensitiwiteitsetiket te verwyder, dit te verwerk en dan etiket op die uitsetdokument toe te pas. Om dit te doen, volg die instruksies wat in hierdie afdeling beskryf word.

Om die instruksies uit te voer, moet u die waardes van die volgende parameters vind en regstel, wat beskikbaar sal wees nadat die stappe in die "Voorvereistes" - deel voltooi is:

- Huurder url
- Kliënt aansoek naam
- Kliënt aansoek identifiseerder
- Kliënt aansoek geheim

{{% alert color="primary" %}}

Let daarop dat die `client application secret`, `client application identifier`, en `client application name` in stap 4 van die "Voorwaardes" deel gegenereer moet word.

{{% /alert %}}

### Skep'n Nuwe Konsole-Toepassingsprojek

Volg hierdie stappe om'n nuwe konsole-toepassingsprojek te skep:

1. In Visual Studio, skep'n nuwe konsole aansoek projek met die naam "SensitivityLabelsExample " vir *C#* taal en teiken raamwerk *.NET 6*
2. Voeg die volgende pakkette by:
`Microsoft.InformationProtection.File`
`Microsoft.Identity.Client`
   - Aspose.Words

### Voeg'n Lêer by Met Instellings

Om konfigurasielêer by te voeg, volg hierdie stappe:

1. Voeg'n " AzureAppConsts.cs " lêer na die projek
2. Voeg die volgende inhoud by die lêer:

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

3. Voltooi die velde met u pasgemaakte waardes.

### Implementeer'n Toestemming Delegeer

Skep'n lêer " ConsentDelegate.cs" in die projek en vul dit met die volgende inhoud:

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

### Implementeer'n Verifiëringsdelegasie

Skep'n lêer "AuthDelegate.cs" in die projek en vul dit met die volgende inhoud:

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

### Voeg Etiketteringskeuses By

Skep'n lêer " FileLabelingOptions.cs" in die projek en vul dit met die volgende inhoud:

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

### Implementeer Sensitiwiteitsetikette Bestuurder

Skep'n lêer " SenstivityLabelsManager.cs" in die projek en vul dit met die volgende inhoud:

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

### Voeg Scenario Logika by Die Program

Skuif die volgende inhoud na die "Program.cs " lêer:

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

## Voer die Geskepte Voorbeeld uit en Kontroleer Die Resultaat

Ten slotte, hardloop die geskep voorbeeld en kyk na die resultaat wat jy het:

1. Stel die projek saam
2. Begin die konsole-toepassing

As gevolg hiervan, moet die uitset lêer geskep word met toegepas "Vertroulik.Alle Werknemers". Meld aan by die Microsoft 365 rekening om seker te maak dat die dokument oopgemaak kan word en die veranderinge bevat.

## Sien Ook

- Die artikel [Werk Met'n Dokument Gestoor In'n `SharePoint` Aanlyn](/words/net/work-with-document-stored-in-sharepoint/)
