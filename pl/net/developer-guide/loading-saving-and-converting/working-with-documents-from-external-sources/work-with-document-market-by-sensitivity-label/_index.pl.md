---
title: Pracuj z dokumentem oznaczonym etykietą czułości
second_title: Aspose.Words dla .NET
articleTitle: Pracuj z dokumentem oznaczonym etykietą czułości
linktitle: Pracuj z dokumentem oznaczonym etykietą czułości
description: "Konwertuj program Word z zastosowaną etykietą czułości na format PDF za pomocą C#. Pracuj z dokumentami oznaczonymi etykietami czułości – różnymi formatami wejściowymi, w tym Word, OpenOffice, Image i eBook."
type: docs
weight: 30
url: /pl/net/work-with-document-market-by-sensitivity-label/
timestamp: 2024-01-31-14-23-37
---

Etykiety poufności z Microsoft Purview Information Protection pozwalają klasyfikować i chronić dane organizacji, jednocześnie zapewniając, że produktywność użytkowników i ich zdolność do współpracy nie zostaną zakłócone. Po zastosowaniu etykiety poufności do dokumentu wszystkie skonfigurowane ustawienia ochrony tej etykiety są wymuszane na zawartości.

Możesz skonfigurować etykietę czułości, aby:

1. Szyfruj dokumenty, aby uniemożliwić osobom nieuprawnionym dostęp do tych danych
2. Oznacz zawartość podczas korzystania z aplikacji pakietu Office, dodając znaki wodne, nagłówki lub stopki do dokumentów, do których zastosowano etykietę
3. Automatycznie zastosuj etykietę do dokumentów

W tym artykule omówimy typowy scenariusz konwertowania i modyfikowania dokumentu oznaczonego etykietą poufności.

## Warunki wstępne

1. Dołącz do [Program dla programistów Microsoft 365](https://developer.microsoft.com/en-us/microsoft-365/dev-program).
2. Skonfiguruj natychmiastową piaskownicę zgodnie z [film instruktażowy](https://www.youtube.com/watch?v=ojQcS9ZQmes).
3. Włącz domyślne etykiety czułości zgodnie z [instruktaż](https://learn.microsoft.com/en-us/microsoft-365/compliance/sensitivity-labels-sharepoint-onedrive-files?view=o365-worldwide#use-the-microsoft-purview-compliance-portal-to-enable-support-for-sensitivity-labels).
    {{% alert color="primary" %}}
  Jeśli wykonałeś już kroki 1 i 2, możesz zajrzeć do pliku [lista etykiet](https://portal.azure.com/#view/Microsoft_AAD_RegisteredApps/ApplicationsListBlade).
    {{% /alert %}}
4. Zarejestruj aplikację kliencką w Azure Active Directory zgodnie z [instruktaż](https://learn.microsoft.com/en-us/azure/active-directory/develop/quickstart-register-app#register-a-new-application-using-the-azure-portal).
    {{% alert color="primary" %}}
  Zarejestrowani użytkownicy mogą sprawdzić [lista aplikacji](https://portal.azure.com/#view/Microsoft_AAD_RegisteredApps/ApplicationsListBlade).
    {{% /alert %}}
		- Obsługiwane typy kont – wybierz "Tylko konta w tym katalogu organizacyjnym".
		- Krok ustawiania URI przekierowania można pominąć.
		- Dodanie certyfikatu można pominąć. Aby uzyskać dostęp, użyj klucza tajnego klienta.
		- Dodanie poświadczenia federacyjnego również można pominąć.
		- Ustaw uprawnienia dla aplikacji.</br>
		Wybierz "Uprawnienia API" → "Dodaj uprawnienia" → "Interfejsy API Microsoft" → "Usługi zarządzania prawami Azure" → "Uprawnienia aplikacji" i dodaj uprawnienia "Content.SuperUser", "Content.Writer".</br>
		Wybierz "Uprawnienia API" → "Dodaj uprawnienia" → "API używane przez moją organizację" → znajdź "Usługę synchronizacji Microsoft Information Protection" → "Uprawnienia aplikacji" → "UnifiedPolicy.Tenant.Read".
		- Wróć do strony "Uprawnienia API" i naciśnij przycisk "Udziel zgody administratora dla (nazwa najemcy)".
5. Otwórz stronę główną Office 365 i otwórz w przeglądarce aplikację Word.
6. Utwórz nowy dokument DOCX z pewną zawartością.
7. W aplikacji Word, w zakładce "Strona główna" wybierz menu "Wrażliwość" → "Poufne" → "Wszyscy pracownicy". Dokument zostanie oznaczony etykietą poufności i zaszyfrowany.
8. Wybierz aplikację "One Drive" i zapisz utworzony plik na swoim komputerze lokalnym. Wyloguj się ze swojego konta w aplikacji komputerowej Word. Sprawdź, czy pobrany dokument nie może zostać otwarty. Będzie to plik wejściowy dla aplikacji.

{{% alert color="primary" %}}

Pamiętaj, że jeśli masz już konto programisty Microsoft 365, pomiń kroki 1-2.

{{% /alert %}}

## Utwórz aplikację konsolową

Aby ocenić, jak Aspose.Words for .NET współpracuje z dokumentami oznaczonymi etykietami, należy utworzyć aplikację konsolową z odpowiednimi ustawieniami i zaimplementować logikę usuwania etykiety czułości, przetwarzania jej, a następnie stosowania etykiety do dokumentu wyjściowego. Aby to zrobić, postępuj zgodnie z instrukcjami opisanymi w tej sekcji.

Aby wykonać instrukcję, należy znaleźć i naprawić wartości następujących parametrów, które będą dostępne po wykonaniu kroków z części "Wymagania wstępne":

- Adres URL najemcy
- Nazwa aplikacji klienckiej
- Identyfikator aplikacji klienckiej
- Sekret aplikacji klienta

{{% alert color="primary" %}}

Należy pamiętać, że pliki `client application secret`, `client application identifier` i `client application name` należy wygenerować w kroku 4 części "Wymagania wstępne".

{{% /alert %}}

### Utwórz nowy projekt aplikacji konsolowej

Aby utworzyć nowy projekt aplikacji konsolowej, wykonaj następujące kroki:

1. W Visual Studio utwórz nowy projekt aplikacji konsolowej o nazwie "SensitivityLabelsExample" dla języka *C#* i platformy docelowej *.NET 6*
2. Dodaj następujące pakiety:
      - `Microsoft.InformationProtection.File`
      - `Microsoft.Identity.Client`
      - Aspose.Words

### Dodaj plik z ustawieniami

Aby dodać plik konfiguracyjny, wykonaj następujące kroki:

1. Dodaj do projektu plik "AzureAppConsts.cs"
2. Dodaj do pliku następującą treść:

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

3. Wypełnij pola swoimi wartościami niestandardowymi.

### Zaimplementuj delegata zgody

Utwórz w projekcie plik "ConsentDelegate.cs" i wypełnij go następującą treścią:

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

### Zaimplementuj delegata uwierzytelniania

Utwórz w projekcie plik "AuthDelegate.cs" i wypełnij go następującą treścią:

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

### Dodaj opcje etykietowania

Utwórz w projekcie plik "FileLabelingOptions.cs" i wypełnij go następującą treścią:

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

### Wdróż Menedżera etykiet czułości

Utwórz w projekcie plik "SenstivityLabelsManager.cs" i wypełnij go następującą treścią:

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

### Dodaj logikę scenariusza do programu

Przenieś następującą zawartość do pliku "Program.cs":

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

## Wykonaj utworzony przykład i sprawdź wynik

Na koniec uruchom utworzony przykład i sprawdź uzyskany wynik:

1. Skompiluj projekt
2. Uruchom aplikację konsolową

W rezultacie plik wyjściowy powinien zostać utworzony z zastosowaną wartością "Poufne.Wszyscy pracownicy". Zaloguj się na konto Microsoft 365, aby upewnić się, że dokument można otworzyć i zawiera zmiany.

## Zobacz też

- Artykuł [Pracuj z dokumentem przechowywanym w `SharePoint` Online](/words/pl/net/work-with-document-stored-in-sharepoint/)
