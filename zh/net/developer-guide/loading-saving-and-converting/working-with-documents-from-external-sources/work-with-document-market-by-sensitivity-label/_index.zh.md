---
title: 处理标有敏感度标签的文档
second_title: .NET 格式的 Aspose.Words
articleTitle: 处理标有敏感度标签的文档
linktitle: 处理标有敏感度标签的文档
description: "使用 C# 将应用了敏感度标签的 Word 转换为 PDF。处理标有敏感度标签的文档 - 各种输入格式，包括 Word、OpenOffice、图像和电子书。"
type: docs
weight: 30
url: /zh/net/work-with-document-market-by-sensitivity-label/
---

Microsoft Purview 信息保护的敏感度标签可让您对组织的数据进行分类和保护，同时确保用户的工作效率及其协作能力不受影响。将敏感度标签应用于文档后，该标签的任何配置的保护设置都会在内容上强制执行。

您可以将敏感度标签配置为：

1. 加密文档以防止未经授权的人访问此数据
2. 在使用 Office 应用程序时标记内容，方法是向应用了标签的文档添加水印、页眉或页脚
3. 自动将标签粘贴到文档上

在本文中，我们将介绍转换和修改由敏感度标签标记的文档的常见场景。

## 先决条件

1.加入[Microsoft 365 开发者计划](https://developer.microsoft.com/en-us/microsoft-365/dev-program)。
2. 根据[视频教程](https://www.youtube.com/watch?v=ojQcS9ZQmes)设置即时沙箱。
3. 根据 [教程](https://learn.microsoft.com/en-us/microsoft-365/compliance/sensitivity-labels-sharepoint-onedrive-files?view=o365-worldwide#use-the-microsoft-purview-compliance-portal-to-enable-support-for-sensitivity-labels) 启用默认敏感度标签。
    {{% alert color="primary" %}}
  如果您已经完成了步骤 1 和 2，您可以查看 [标签列表](https://portal.azure.com/#view/Microsoft_AAD_RegisteredApps/ApplicationsListBlade)。
    {{% /alert %}}
4. 根据 [教程](https://learn.microsoft.com/en-us/azure/active-directory/develop/quickstart-register-app#register-a-new-application-using-the-azure-portal) 向 Azure Active Directory 注册客户端应用程序。
    {{% alert color="primary" %}}
  注册用户可以查看[申请清单](https://portal.azure.com/#view/Microsoft_AAD_RegisteredApps/ApplicationsListBlade)。
    {{% /alert %}}
		- 支持的帐户类型 – 选择"仅限此组织目录中的帐户"。
		- 可以跳过设置重定向 URI 的步骤。
		- 添加证书可能会被跳过。使用客户端密钥进行访问。
		- 添加联合凭证也可能会被跳过。
		- 设置应用程序的权限。</br>
		选择"API权限"→"添加权限"→"接口API Microsoft"→"Azure权限管理服务"→"应用程序权限"，添加"Content.SuperUser"、"Content.Writer"权限。</br>
		选择"API权限"→"添加权限"→"我的组织使用的API"→找到"Microsoft信息保护同步服务"→"应用程序权限"→"UnifiedPolicy.Tenant.Read"。
		- 返回"API 权限"页面并按下"授予（租户名称）管理员同意"按钮。
5. 打开 Office 365 主页，然后在浏览器中打开 Word 应用程序。
6. 创建一个包含一些内容的新 DOCX 文档。
7. 在Word 应用程序的"主页"选项卡上，选择菜单"敏感度"→"机密"→"所有员工"。该文档将被标记敏感度标签并被加密。
8. 选择"One Drive"应用程序并将创建的文件保存到本地计算机。在 Word 桌面应用程序中注销您的帐户。检查下载的文档是否无法打开。它将作为应用程序的输入文件。

{{% alert color="primary" %}}

请注意，如果您已有 Microsoft 365 开发者帐户，请跳过步骤 1-2。

{{% /alert %}}

## 创建控制台应用程序

要评估 Aspose.Words for .NET 如何处理带标签的文档，您需要创建一个具有适当设置的控制台应用程序，并实现删除敏感度标签、对其进行处理，然后将标签应用到输出文档的逻辑。为此，请按照本节中描述的说明进行操作。

要执行指令，您需要查找并修复以下参数的值，这些参数在完成"先决条件"部分中的步骤后可用：

- 租户网址
- 客户端应用程序名称
- 客户端应用程序标识符
- 客户端应用程序秘密

{{% alert color="primary" %}}

请注意，`client application secret`、`client application identifier` 和 `client application name` 应在"先决条件"部分的步骤 4 中生成。

{{% /alert %}}

### 创建一个新的控制台应用程序项目

要创建新的控制台应用程序项目，请执行以下步骤：

1. 在 Visual Studio 中，为 *C#* 语言和目标框架 *.NET 6* 创建一个名为"SensitivityLabelsExample"的新控制台应用程序项目
2. 添加以下包：
      - `Microsoft.InformationProtection.File`
      - `Microsoft.Identity.Client`
      - Aspose.Words

### 添加带有设置的文件

要添加配置文件，请按照下列步骤操作：

1.在项目中添加"AzureAppConsts.cs"文件
2. 在文件中添加以下内容：

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

3. 使用您的自定义值填写字段。

### 实施同意委托

在项目中创建一个文件"ConsentDelegate.cs"，并填充以下内容：

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

### 实施身份验证委托

在项目中创建一个文件"AuthDelegate.cs"并填充以下内容：

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

### 添加标签选项

在项目中创建一个文件"FileLabelingOptions.cs"并填充以下内容：

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

### 实施敏感度标签管理器

在项目中创建一个文件"SenstivityLabelsManager.cs"并填充以下内容：

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

### 将场景逻辑添加到程序中

将以下内容移动到"Program.cs"文件中：

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

## 执行创建的示例并检查结果

最后，运行创建的示例并检查得到的结果：

1.编译工程
2. 运行控制台应用程序

因此，应使用应用的"机密.所有员工"创建输出文件。登录 Microsoft 365 帐户以确保文档可以打开并包含更改。

## 也可以看看

- 文章 [处理存储在 `SharePoint` Online 中的文档](/words/zh/net/work-with-document-stored-in-sharepoint/)
