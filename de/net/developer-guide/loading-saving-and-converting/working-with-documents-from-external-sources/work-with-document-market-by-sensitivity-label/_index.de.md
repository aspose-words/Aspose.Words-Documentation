---
title: Arbeiten Sie mit einem Dokument, das mit einem Vertraulichkeitsetikett gekennzeichnet ist
second_title: Aspose.Words für .NET
articleTitle: Arbeiten Sie mit einem Dokument, das mit einem Vertraulichkeitsetikett gekennzeichnet ist
linktitle: Arbeiten Sie mit einem Dokument, das mit einem Vertraulichkeitsetikett gekennzeichnet ist
description: "Konvertieren Sie Word mit angewendeter Vertraulichkeitsbezeichnung mithilfe von C# in PDF. Arbeiten Sie mit Dokumenten, die durch eine Vertraulichkeitsbezeichnung gekennzeichnet sind – verschiedene Eingabeformate, darunter Word, OpenOffice, Image und eBook."
type: docs
weight: 30
url: /de/net/work-with-document-market-by-sensitivity-label/
timestamp: 2024-01-31-14-23-37
---

Mit Vertraulichkeitsetiketten von Microsoft Purview Information Protection können Sie die Daten Ihres Unternehmens klassifizieren und schützen und gleichzeitig sicherstellen, dass die Produktivität der Benutzer und ihre Fähigkeit zur Zusammenarbeit nicht beeinträchtigt werden. Nachdem eine Vertraulichkeitsbezeichnung auf ein Dokument angewendet wurde, werden alle für diese Bezeichnung konfigurierten Schutzeinstellungen für den Inhalt erzwungen.

Sie können eine Vertraulichkeitsbezeichnung konfigurieren, um:

1. Verschlüsseln Sie Dokumente, um zu verhindern, dass Unbefugte auf diese Daten zugreifen
2. Markieren Sie Inhalte bei der Verwendung von Office-Apps, indem Sie Wasserzeichen, Kopf- oder Fußzeilen zu Dokumenten hinzufügen, auf die die Bezeichnung angewendet wurde
3. Bringen Sie das Etikett automatisch auf Dokumente an

In diesem Artikel behandeln wir ein häufiges Szenario zum Konvertieren und Ändern eines Dokuments, das mit einer Vertraulichkeitsbezeichnung gekennzeichnet ist.

## Voraussetzungen

1. Treten Sie dem [Microsoft 365-Entwicklerprogramm](https://developer.microsoft.com/en-us/microsoft-365/dev-program) bei.
2. Richten Sie eine Instant-Sandbox gemäß [Videoanleitung](https://www.youtube.com/watch?v=ojQcS9ZQmes) ein.
3. Aktivieren Sie Standardvertraulichkeitsbezeichnungen gemäß [Lernprogramm](https://learn.microsoft.com/en-us/microsoft-365/compliance/sensitivity-labels-sharepoint-onedrive-files?view=o365-worldwide#use-the-microsoft-purview-compliance-portal-to-enable-support-for-sensitivity-labels).
    {{% alert color="primary" %}}
  Wenn Sie die Schritte 1 und 2 bereits durchlaufen haben, können Sie sich das [Liste der Etiketten](https://portal.azure.com/#view/Microsoft_AAD_RegisteredApps/ApplicationsListBlade) ansehen.
    {{% /alert %}}
4. Registrieren Sie eine Clientanwendung bei Azure Active Directory gemäß [Lernprogramm](https://learn.microsoft.com/en-us/azure/active-directory/develop/quickstart-register-app#register-a-new-application-using-the-azure-portal).
    {{% alert color="primary" %}}
  Registrierte Benutzer können das [Anwendungsliste](https://portal.azure.com/#view/Microsoft_AAD_RegisteredApps/ApplicationsListBlade) überprüfen.
    {{% /alert %}}
		- Unterstützte Kontotypen – wählen Sie "Nur Konten in diesem Organisationsverzeichnis".
		– Der Schritt mit dem Festlegen des Redirect-URI kann übersprungen werden.
		- Das Hinzufügen eines Zertifikats kann übersprungen werden. Verwenden Sie den geheimen Clientschlüssel für den Zugriff.
		– Das Hinzufügen einer Verbundanmeldeinformation kann ebenfalls übersprungen werden.
		- Legen Sie Berechtigungen für die Anwendung fest.</br>
		Wählen Sie "API-Berechtigungen" → "Berechtigung hinzufügen" → "Schnittstellen API Microsoft" → "Azure Rights Management Services" → "App-Berechtigungen" und fügen Sie die Berechtigungen "Content.SuperUser" und "Content.Writer" hinzu.</br>
		Wählen Sie "API-Berechtigungen" → "Berechtigung hinzufügen" → "APIs, die meine Organisation verwendet" → finden Sie "Microsoft Information Protection Sync Service" → "App-Berechtigungen" → "UnifiedPolicy.Tenant.Read".
		- Kehren Sie zur Seite "API-Berechtigungen" zurück und klicken Sie auf die Schaltfläche "Administratoreinwilligung für (Mandantenname) erteilen".
5. Öffnen Sie die Office 365-Startseite und öffnen Sie die Word-Anwendung in einem Browser.
6. Erstellen Sie ein neues DOCX-Dokument mit etwas Inhalt.
7. Wählen Sie in der Word-Anwendung auf der Registerkarte "Startseite" das Menü "Vertraulichkeit" → "Vertraulich" → "Alle Mitarbeiter". Das Dokument wird mit einer Vertraulichkeitskennzeichnung versehen und verschlüsselt.
8. Wählen Sie die Anwendung "One Drive" und speichern Sie die erstellte Datei auf Ihrem lokalen Computer. Melden Sie sich in der Word-Desktopanwendung von Ihrem Konto ab. Stellen Sie sicher, dass das heruntergeladene Dokument nicht geöffnet werden kann. Es handelt sich um die Eingabedatei für die Anwendung.

{{% alert color="primary" %}}

Beachten Sie: Wenn Sie bereits über ein Microsoft 365-Entwicklerkonto verfügen, überspringen Sie die Schritte 1-2.

{{% /alert %}}

## Erstellen Sie eine Konsolenanwendung

Um zu bewerten, wie Aspose.Words für .NET mit gekennzeichneten Dokumenten funktioniert, müssen Sie eine Konsolenanwendung mit den entsprechenden Einstellungen erstellen und die Logik zum Entfernen der Vertraulichkeitsbezeichnung, ihrer Verarbeitung und der anschließenden Anwendung der Bezeichnung auf das Ausgabedokument implementieren. Befolgen Sie dazu die in diesem Abschnitt beschriebenen Anweisungen.

Um die Anweisungen auszuführen, müssen Sie die Werte der folgenden Parameter finden und korrigieren, die nach Abschluss der Schritte im Teil "Voraussetzungen" verfügbar sind:

- Mieter-URL
– Name der Clientanwendung
– Client-Anwendungs-ID
- Geheimnis der Clientanwendung

{{% alert color="primary" %}}

Beachten Sie, dass `client application secret`, `client application identifier` und `client application name` in Schritt 4 des Teils "Voraussetzungen" generiert werden sollten.

{{% /alert %}}

### Erstellen Sie ein neues Konsolenanwendungsprojekt

Um ein neues Konsolenanwendungsprojekt zu erstellen, führen Sie die folgenden Schritte aus:

1. Erstellen Sie in Visual Studio ein neues Konsolenanwendungsprojekt mit dem Namen "SensitivityLabelsExample" für die Sprache *C#* und das Zielframework *.NET 6*
2. Fügen Sie die folgenden Pakete hinzu:
      - `Microsoft.InformationProtection.File`
      - `Microsoft.Identity.Client`
      - Aspose.Words

### Fügen Sie eine Datei mit Einstellungen hinzu

Um eine Konfigurationsdatei hinzuzufügen, führen Sie die folgenden Schritte aus:

1. Fügen Sie dem Projekt eine Datei "AzureAppConsts.cs" hinzu
2. Fügen Sie der Datei den folgenden Inhalt hinzu:

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

3. Füllen Sie die Felder mit Ihren benutzerdefinierten Werten aus.

### Implementieren Sie einen Zustimmungsdelegierten

Erstellen Sie im Projekt eine Datei "ConsentDelegate.cs" und füllen Sie diese mit folgendem Inhalt:

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

### Implementieren Sie einen Authentifizierungsdelegierten

Erstellen Sie im Projekt eine Datei "AuthDelegate.cs" und füllen Sie diese mit folgendem Inhalt:

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

### Beschriftungsoptionen hinzufügen

Erstellen Sie im Projekt eine Datei "FileLabelingOptions.cs" und füllen Sie diese mit folgendem Inhalt:

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

### Implementieren Sie den Sensitivity Labels Manager

Erstellen Sie im Projekt eine Datei "SenstivityLabelsManager.cs" und füllen Sie diese mit folgendem Inhalt:

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

### Fügen Sie dem Programm Szenariologik hinzu

Verschieben Sie den folgenden Inhalt in die Datei "Program.cs":

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

## Führen Sie das erstellte Beispiel aus und überprüfen Sie das Ergebnis

Führen Sie abschließend das erstellte Beispiel aus und überprüfen Sie das Ergebnis:

1. Kompilieren Sie das Projekt
2. Führen Sie die Konsolenanwendung aus

Daher sollte die Ausgabedatei mit der Anwendung "Vertraulich.Alle Mitarbeiter" erstellt werden. Melden Sie sich beim Microsoft 365-Konto an, um sicherzustellen, dass das Dokument geöffnet werden kann und die Änderungen enthält.

## Siehe auch

- Der Artikel [Arbeiten Sie mit einem in `SharePoint` Online gespeicherten Dokument](/words/de/net/work-with-document-stored-in-sharepoint/)
