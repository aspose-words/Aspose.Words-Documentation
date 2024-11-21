---
title: Práce s dokumentem označeným značkou citlivosti
second_title: Aspose.Words místo .NET
articleTitle: Práce s dokumentem označeným značkou citlivosti
linktitle: Práce s dokumentem označeným značkou citlivosti
description: "Převést Word s použitím štítku citlivosti na PDF pomocí C#. Práce s dokumenty označenými štítky citlivosti, různé vstupní formáty, včetně Word, OpenOffice, Image a eBook."
type: docs
weight: 30
url: /cs/net/work-with-document-market-by-sensitivity-label/
timestamp: 2024-01-31-14-23-37
---

Štítky citlivosti z Microsoft Purview Information Protection vám umožní klasifikovat a chránit data vaší organizace a zároveň zajistit, aby uživatelská produktivita a jejich schopnost spolupracovat nebyla překážkou. Poté, co je na dokument aplikován štítek citlivosti, jsou na obsahu vynucována veškerá nakonfigurovaná nastavení ochrany.

Můžete nastavit štítek citlivosti na:

1. Šifrování dokumentů, aby se zabránilo neoprávněnému přístupu k těmto datům
2. Označit obsah při používání aplikací Office přidáním vodoznaků, hlaviček nebo zápatí do dokumentů, které mají použitý štítek
3. Štítek se automaticky použije na dokumenty

V tomto článku se budeme zabývat společným scénářem pro konverzi a úpravu dokumentu označeného označením citlivosti.

## Předpoklady

1. Připojte se [Microsoft 365 Vývojářský program](https://developer.microsoft.com/en-us/microsoft-365/dev-program).
2. Nastavte okamžité pískoviště podle [video tutoriál](https://www.youtube.com/watch?v=ojQcS9ZQmes).
3. Povolit výchozí štítky citlivosti podle [tutoriál](https://learn.microsoft.com/en-us/microsoft-365/compliance/sensitivity-labels-sharepoint-onedrive-files?view=o365-worldwide#use-the-microsoft-purview-compliance-portal-to-enable-support-for-sensitivity-labels).
    {{% alert color="primary" %}}
  Pokud jste již prošli kroky 1 a 2, můžete se podívat na [seznam štítků](https://portal.azure.com/#view/Microsoft_AAD_RegisteredApps/ApplicationsListBlade).
    {{% /alert %}}
4. Zaregistrovat klientskou aplikaci s Azure Aktivní adresář podle [tutoriál](https://learn.microsoft.com/en-us/azure/active-directory/develop/quickstart-register-app#register-a-new-application-using-the-azure-portal).
    {{% alert color="primary" %}}
  Registrovaní uživatelé mohou zkontrolovat [Seznam žádostí](https://portal.azure.com/#view/Microsoft_AAD_RegisteredApps/ApplicationsListBlade).
    {{% /alert %}}
	- Podporované typy účtů Vyberte "Výpočty pouze v tomto organizačním adresáři."
	- Krok nastavení Redirect URI může být vynechán.
	- Přidání certifikátu může být vynecháno. Pro přístup použijte klientské tajemství.
	- Přidáním federovaného pověření můžeme také přeskočit.
	- Nastavte povolení k aplikaci
	Vybrat "API oprávnění" → "Přidání povolení" → "Rozhovory" API Microsoft"→"Azure Služby správy práv → "App oprávnění" a přidat "Content.SuperUser," "Content. Spisovatelská povolení
	Vybrat "API oprávnění" → "Přidání povolení" → "API→ najít "Microsoft Ochrana informací Sync Service → "App oprávnění" → "UnifiedPolicy.Tenant.Read."
	- Vrať se k "API záložka oprávnění a stiskněte tlačítko "Grant admin consent for (Tenant Name)."
5. Otevřít domovskou stránku Office 365 a otevřít aplikaci Word v prohlížeči.
6. Vytvořit nový dokument DOCX s určitým obsahem.
7. V aplikaci Word v záložce "Home" vyberte nabídku "Senzitivita" → "Skryté" → "Všechny zaměstnance." Dokument bude označen označením citlivosti a zašifrován.
8. Vyberte aplikaci "One Drive" a uložte vytvořený soubor do vašeho lokálního stroje. Odhlásit se z vašeho účtu v aplikaci Word desktop. Zkontrolujte, že stažený dokument nelze otevřít. Bude to vstupní soubor pro aplikaci.

{{% alert color="primary" %}}

Všimněte si, že Pokud již máte Microsoft 365 developer účet, pak přeskočit kroky 1-2.

{{% /alert %}}

## Vytvořit aplikaci konzole

Jak zhodnotit Aspose.Words místo .NET pracuje s označenými dokumenty, musíte vytvořit aplikaci konzole s vhodnými nastaveními a implementovat logiku pro odstranění štítku citlivosti, jeho zpracování a následně použít označení na výstupní dokument. Postupujte podle pokynů popsaných v této části.

Chcete-li provést instrukce, musíte najít a opravit hodnoty následujících parametrů, které budou k dispozici po dokončení kroků v části "Prerekvizity":

- Tenant url
- Název klientské aplikace
- Identifikátor klientské aplikace
- Klientská aplikace tajná

{{% alert color="primary" %}}

Všimněte si, že `client application secret`, `client application identifier`, a `client application name` by měly být vytvořeny v kroku 4 části "Prerekvizity."

{{% /alert %}}

### Vytvořit nový projekt aplikace konzole

Chcete-li vytvořit nový projekt aplikace konzole, postupujte podle těchto kroků:

1. In Visual Studio, vytvořit nový projekt aplikace konzole s názvem "SensitivityLabelsExample" pro *C#* jazyk a cílový rámec *.NET 6 *
2. Přidat následující balíčky:
      - `Microsoft.InformationProtection.File`
      - `Microsoft.Identity.Client`
      - Aspose.Words

### Přidat soubor s nastavením

Pro přidání konfiguračního souboru postupujte podle těchto kroků:

1. Přidat "AzureSoubor AppConsts.cs do projektu
2. Přidat do souboru následující obsah:

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

3. Vyplňte pole svými vlastními hodnotami.

### Provádět delegáta souhlasu

Vytvořte v projektu soubor "ConsentDelegate.cs" a vyplňte jej následujícím obsahem:

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

### Provádět delegáta ověření

Vytvořte soubor "AuthDelegate.cs" v projektu a vyplňte jej následujícím obsahem:

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

### Přidat možnosti označování

Vytvořte soubor "FileLabelingOptions.cs" v projektu a vyplňte jej následujícím obsahem:

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

### Zavést manažera štítků citlivosti

Vytvořte soubor "SenstivityLabelsManager.cs" v projektu a naplňte jej následujícím obsahem:

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

### Přidat logiku scénáře do programu

Přesuňte následující obsah do souboru "Program.cs":

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

## Vykonat vytvořený příklad a zkontrolovat výsledek

Nakonec spusťte vytvořený příklad a zkontrolujte výsledek:

1. Složit projekt
2. Spustit aplikaci konzole

Výsledkem je, že výstupní soubor by měl být vytvořen s použitím "Soudružný.Všichni zaměstnanci." Přihlaste se Microsoft 365 účet, aby se ujistil, že dokument lze otevřít a obsahuje změny.

## Viz také

- Ten článek. [Práce s dokumentem uloženým v `SharePoint` Online](/words/cs/net/work-with-document-stored-in-sharepoint/)
