---
title: עבודה עם מסמך מסומן על ידי תווית רגישות
second_title: Aspose.Words עבור .NET
articleTitle: עבודה עם מסמך מסומן על ידי תווית רגישות
linktitle: עבודה עם מסמך מסומן על ידי תווית רגישות
description: "המרת Word עם תווית רגישות יישומית ל- PDF באמצעות C#. עבודה עם מסמכים המסומנים על ידי תוויות רגישות - פורמטים קלט שונים, כולל Word, OpenOffice, Image ו- eBook."
type: docs
weight: 30
url: /he/net/work-with-document-market-by-sensitivity-label/
timestamp: 2024-01-31-14-23-37
---

תוויות רגישות Microsoft קידום מידע מאפשר לך לסווג ולהגן על הנתונים של הארגון שלך, תוך הקפד כי יעילות המשתמשים ויכולתם לשתף פעולה אינה מונעת. לאחר תווית רגישות מוחל על מסמך, כל הגדרות הגנה מוגדרות עבור תווית זו נאכפים על התוכן.

ניתן להגדיר תווית רגישות ל:

1.1 1. מסמכי הצפנה כדי למנוע מאנשים לא מורשים לגשת לנתונים האלה
2. תוכן מארק בעת שימוש באפליקציות Office, על ידי הוספת סימני מים, Headers או Footers למסמכים שיש להם את התווית החלת
3. החל את התווית באופן אוטומטי למסמכים

במאמר זה, אנו נזכור תרחיש משותף להמיר ולשנות מסמך המסומן על ידי תווית רגישות.

## Prerequisites

1.1 1. הצטרפו [Microsoft 365 Developer Program](https://developer.microsoft.com/en-us/microsoft-365/dev-program).
2. הגדר תיבת חול מיידית לפי [וידאו](https://www.youtube.com/watch?v=ojQcS9ZQmes).
3. תוויות רגישות ברירת מחדל על פי [הדרכה](https://learn.microsoft.com/en-us/microsoft-365/compliance/sensitivity-labels-sharepoint-onedrive-files?view=o365-worldwide#use-the-microsoft-purview-compliance-portal-to-enable-support-for-sensitivity-labels).
    {{% alert color="primary" %}}
  אם כבר עברתם צעדים 1 ו- 2, תוכלו לבדוק את [רשימת תוויות](https://portal.azure.com/#view/Microsoft_AAD_RegisteredApps/ApplicationsListBlade).
    {{% /alert %}}
4. רישום לקוח עם Azure Active Directory לפי [הדרכה](https://learn.microsoft.com/en-us/azure/active-directory/develop/quickstart-register-app#register-a-new-application-using-the-azure-portal).
    {{% alert color="primary" %}}
  משתמשים רשומים יכולים לבדוק את [רשימת יישומים](https://portal.azure.com/#view/Microsoft_AAD_RegisteredApps/ApplicationsListBlade).
    {{% /alert %}}
	סוגי חשבונות תומכים - בחרו "חשבונות במדריך הארגוני הזה בלבד".
	- הצעד עם הגדרת URI ההפניה ניתן לדלג.
	הוספת תעודה ניתן לדלג. השתמש בסוד הלקוח לגישה.
	בנוסף, ניתן לדלג גם על מחוסנים.
	קביעת הרשאות ליישום
	בחר "API הרשאות "Addהרשאה" API Microsoft"Azure שירותי ניהול זכויות (App הרשאות) ולהוסיף "Content.Super User", "Content. רשיונות"
	בחר "API הרשאות "Addהרשאה"API"הארגון שלי משתמש"Microsoft שירות הגנת המידע Sync Service "App הרשאות" , "UnifiedPolicy.Tenant.Read".
	חזרה ל"API הרשאות דף ודוחפים את "ההסכמה של מנהל הנמל עבור כפתור (Tenant Name)".
5. פתח את דף הבית של Office 365 ופותח את היישום Word בדפדפן.
6. צור מסמך DOCX חדש עם תוכן כלשהו.
7. ביישום Word, בכרטיסיה "בית", בחר את התפריט "רגישות" (Confidential) "כל העובדים". המסמך יהיה מסומן עם תווית רגישות ומוצפנת.
8. בחר את היישום "One Drive" ולהציל את הקובץ שנוצר למכונה המקומית שלך. קבל את החשבון שלך ביישום שולחן העבודה Word. בדוק את מסמך ההורדה לא ניתן לפתוח. זה יהיה קובץ קלט עבור היישום.

{{% alert color="primary" %}}

שימו לב אם כבר יש לך Microsoft 365 מפתח חשבון ולאחר מכן לדלג על שלבים 1-2.

{{% /alert %}}

## יצירת Applications

להעריך כיצד Aspose.Words עבור .NET עובד עם מסמכים מתוייגים, אתה צריך ליצור יישום קונסולה עם ההגדרות המתאימות וליישם את ההיגיון להסרת תווית הרגישות, עיבוד זה, ולאחר מכן ליישם תווית על מסמך הפלט. כדי לעשות זאת, בצע את ההוראות המתוארות בסעיף זה.

כדי לבצע את ההוראות, עליך למצוא ולתקן את הערכים של הפרמטרים הבאים, אשר יהיה זמין לאחר השלמת השלבים בחלק "Prerequisites":

- Tenant url
- שם המשתמש
- אישור יישום לקוחות
- יישום לקוחות סודי

{{% alert color="primary" %}}

תגית: The `client application secret`, `client application identifier`, ו `client application name` יש ליצור בשלב 4 של החלק "Prerequisites".

{{% /alert %}}

### יצירת פרויקט יישום New Console

כדי ליצור פרויקט יישום קונסולות חדש, בצע את השלבים הבאים:

1.1 1. In In In Visual Studio, יצירת פרויקט יישום קונסולה חדש בשם "SרגישויותExample" עבור *C#שפה ומסגרת מטרה *.NET 6*
2. הוסף את החבילות הבאות:
      - `Microsoft.InformationProtection.File`
      - `Microsoft.Identity.Client`
      - Aspose.Words

### הוסף קובץ עם הגדרות

כדי להוסיף קובץ תצורה, בצע שלבים אלה:

1.1 1. הוסף "AzureAppConsts.cs קובץ הפרויקט
2. הוסף את התוכן הבא לתוך הקובץ:

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

3. השלם את השדות עם הערכים המותאמים אישית שלך.

### ביטול הסכמה

צור קובץ "ConsentDelegate.cs" בפרויקט ולמלא אותו עם התוכן הבא:

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

### המונחים: Authentication Delegate

צור קובץ "AuthDelegate.cs" בפרויקט ומלא אותו עם התוכן הבא:

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

### הוספת אפשרויות

צור קובץ "FileLabelingOptions.cs" בפרויקט ולמלא אותו עם התוכן הבא:

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

### ניהול תוויות רגישות

צור קובץ "SenstivityLabelsManager.cs" בפרויקט ולמלא אותו עם התוכן הבא:

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

### הוסף Scenario Logic לתוכנית

להעביר את התוכן הבא לקובץ "Program.cs":

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

## לבצע את הדוגמה שנוצרה ולבדוק את התוצאות

לבסוף, להפעיל את הדוגמה שנוצרה ולבדוק את התוצאה שקיבלת:

1.1 1. לעקוף את הפרויקט
2. הפעל את יישום הקונסולה

כתוצאה מכך, יש ליצור את קובץ הפלט עם "עובדים חסויים. היכנס אל Microsoft 365 חשבון כדי לוודא שניתן לפתוח מסמך המכיל את השינויים.

## ראה גם

- המאמר [עבודה עם מסמך בחנות `SharePoint` באינטרנט](/words/he/net/work-with-document-stored-in-sharepoint/)
