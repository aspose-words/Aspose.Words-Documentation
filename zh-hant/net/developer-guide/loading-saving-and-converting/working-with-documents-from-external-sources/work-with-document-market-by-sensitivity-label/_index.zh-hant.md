---
title: 與受敏感標籤標記的文件一起工作
second_title: Aspose.Words for .NET
articleTitle: 與受敏感標籤標記的文件一起工作
linktitle: 與受敏感標籤標記的文件一起工作
description: "用 C#將帶有適用敏感標籤的 Word 轉換為 PDF。 與附有敏感標籤的文件一起工作–各種輸入格式，包括Word、OpenOffice、圖片和電子書。"
type: docs
weight: 30
url: /zh-hant/net/work-with-document-market-by-sensitivity-label/
timestamp: 2024-01-31-14-23-37
---

從 Microsoft 資料保護入口網站獲得的敏感標籤讓您能夠分類並保護組織的資料，同時確保使用者生产力和他們協作的能力不受影響。 當敏感標籤套用到文件上時，該標籤的任何配置保護設定都將施加到內容上。

您可以設定敏感性標籤以:

1. 加密文件以防止未經授權的人可以訪問這些資料
2。 在使用 Office 應用程式時，透過將水印、標題或页脚新增到有應用標籤的文件中來標記內容。
3。 將標籤自動套用到文件上

在本篇文章中，我們將涵蓋將文件轉換並修改以標記敏感性標籤的常見情節。

## 先備條件

1. 加入 [Microsoft 365 Developer Program](https://developer.microsoft.com/en-us/microsoft-365/dev-program)。
2。 按照 [video tutorial](https://www.youtube.com/watch?v=ojQcS9ZQmes) 的設定方式來建立一個即時沙盒。
3。 根據 [tutorial](https://learn.microsoft.com/en-us/microsoft-365/compliance/sensitivity-labels-sharepoint-onedrive-files?view=o365-worldwide#use-the-microsoft-purview-compliance-portal-to-enable-support-for-sensitivity-labels) 啟用預設敏感性標籤。
    {{% alert color="primary" %}}
  如果你已經完成第1步與第2步，你可以看一下 [list of labels](https://portal.azure.com/#view/Microsoft_AAD_RegisteredApps/ApplicationsListBlade)。
    {{% /alert %}}
4。 根據第 [tutorial](https://learn.microsoft.com/en-us/azure/active-directory/develop/quickstart-register-app#register-a-new-application-using-the-azure-portal) 點，在 Azure Active Directory 中註冊一個客戶端應用程式。
    {{% alert color="primary" %}}
  已註冊用戶可查看 [application list](https://portal.azure.com/#view/Microsoft_AAD_RegisteredApps/ApplicationsListBlade)。
    {{% /alert %}}
	- 支援的帳戶類型 – 選取此組織目錄內的帳戶
	- 設定重定向 URI 的步驟可能跳過。
	- 可以跳過加證書。 使用客戶秘密來存取。
	- 如果您不想要加入Federated Credential，請跳過此步。
	"-為應用程式設定權限。</br>"
	選擇 API 權限 ─  新增權限 ─ 介面API Microsoft  ─  權限管理服務  ─  App 權限 , 并加入 Content. Super User 、  Content  。 作家權限 。
	選取 API 權限" → "新增權限" → "API 我的組織使用" → 找到 "Microsoft 資訊保護同步服務" → "應用程式權限" → "UnifiedPolicy.Tenant.Read.
	"- 返回到"API權限"頁面，並點擊"授權管理員同意(租戶名稱)"按鈕。"
5. 打開 Microsoft Office 365 主頁，然後在瀏覽器中打開 Word 應用程式。
6. 以一些內容建立新的 DOCX 文檔。
7. 工 作 在Word應用程式中，在首頁標籤上選擇敏感性→機密→所有員工。 這份文件將以敏感標籤標記並加密。
8。 選取『OneDrive』應用程式，並將已建立的檔案儲存到您的本地機上。 在 Microsoft Word 桌面應用程式中退出您的帳戶。 檢查下載的文件無法開啟。 它將是應用程式的輸入檔。

{{% alert color="primary" %}}

請注意，如果你已經擁有一個 Microsoft 365 開發者帳號，那麼就跳過第1-2步。

{{% /alert %}}

## 創建控制台應用程式

要評估 .NET 中的 Aspose.Words 在有標籤的文件中運作的方式，你需要建立一個適當設定下的控制台應用程式，並實作移除敏感性標籤、處理文件以及將標籤套到輸出文件等邏輯。 要做到這點，請按照本節所述的指示。

要執行指令，您必須找到並修正以下參數的值，這些參數會在完成先決條件部分中的步驟後可供使用：

- 租戶網址
"- 客戶端應用程式名稱"
- 客戶端應用程式識別符
- 客戶端應用程式秘密鍵

{{% alert color="primary" %}}

注意，`client application secret`、`client application identifier` 和 `client application name` 應該在先決條件部分第 4 步生成。

{{% /alert %}}

### 建立新的控制台應用程式專案

要建立新的控制台應用程式專案，請按照以下步驟。

1. 在 Visual Studio 中，建立一個名為"SensitivityLabelsExample"的新控制台應用程式專案，以 *C#* 語言和目標框架 * .NET 6*
2. 新增下列套件：
      - `Microsoft.InformationProtection.File`
      - `Microsoft.Identity.Client`
      - Aspose.Words

### 加入具有設定檔的檔案

若要加入設定檔，請按照以下步驟操作：

1. 新增 AzureApp 常量.cs 檔案至專案中
2。 將以下內容加入檔案中。

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

3. 用您的自定義值完成這些欄位。

### 實作同意代表

在專案中建立ConsentDelegate.cs這個檔案，並使用下列內容填寫它：

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

### 實作一個身份驗證代表

在專案中建立一個名為 "AuthDelegate.cs" 的檔案，並用以下內容填寫：

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

### 加入標籤選項

在專案中創建一個名為 "FileLabelingOptions.cs" 的檔案，並用以下內容填寫：

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

### 實作敏感度標籤管理員

在專案中建立一個名為SenstivityLabelsManager.cs的檔案，並用以下內容填寫：

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

### 在程式中加入シナリオ邏輯

將以下內容移動至" Program.cs "檔案中：

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

## 執行創建範例並檢視結果。

最後，運行建立的範例並檢查你獲得的結果：

1. 編譯這個專案。
2。 執行控制台應用程式

因此，輸出檔應該以『機密。所有員工』來建立。 登入 Microsoft 365 帳號，確保文件可以打開且包含更改。

## 另見

- 該文章 [Work with a Document Stored in a `SharePoint` Online](/words/net/work-with-document-stored-in-sharepoint/)
