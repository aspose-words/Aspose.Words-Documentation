---
title: Làm việc với tài liệu được đánh dấu bằng nhãn nhạy cảm
second_title: Aspose.Words cho .NET
articleTitle: Làm việc với tài liệu được đánh dấu bằng nhãn nhạy cảm
linktitle: Làm việc với tài liệu được đánh dấu bằng nhãn nhạy cảm
description: "Chuyển đổi Word có nhãn nhạy cảm được áp dụng sang PDF bằng C#. Làm việc với các tài liệu được đánh dấu bằng nhãn nhạy cảm – nhiều định dạng đầu vào khác nhau, bao gồm Word, OpenOffice, Hình ảnh và Sách điện tử."
type: docs
weight: 30
url: /vi/net/work-with-document-market-by-sensitivity-label/
timestamp: 2024-01-31-14-23-37
---

Nhãn nhạy cảm từ Microsoft Purview Information Protection cho phép bạn phân loại và bảo vệ dữ liệu của tổ chức mình, đồng thời đảm bảo rằng năng suất của người dùng và khả năng cộng tác của họ không bị cản trở. Sau khi nhãn nhạy cảm được áp dụng cho tài liệu, mọi cài đặt bảo vệ được định cấu hình cho nhãn đó sẽ được thực thi trên nội dung.

Bạn có thể định cấu hình nhãn nhạy cảm để:

1. Mã hóa tài liệu để ngăn chặn những người không được phép truy cập vào dữ liệu này
2. Đánh dấu nội dung khi sử dụng ứng dụng Office, bằng cách thêm hình mờ, đầu trang hoặc chân trang vào tài liệu đã áp dụng nhãn
3. Dán nhãn tự động cho tài liệu

Trong bài viết này, chúng tôi sẽ đề cập đến một tình huống phổ biến để chuyển đổi và sửa đổi tài liệu được đánh dấu bằng nhãn nhạy cảm.

## Điều kiện tiên quyết

1. Tham gia [Chương trình dành cho nhà phát triển Microsoft 365](https://developer.microsoft.com/en-us/microsoft-365/dev-program).
2. Thiết lập hộp cát tức thời theo [video hướng dẫn](https://www.youtube.com/watch?v=ojQcS9ZQmes).
3. Kích hoạt nhãn độ nhạy mặc định theo [hướng dẫn](https://learn.microsoft.com/en-us/microsoft-365/compliance/sensitivity-labels-sharepoint-onedrive-files?view=o365-worldwide#use-the-microsoft-purview-compliance-portal-to-enable-support-for-sensitivity-labels).
    {{% alert color="primary" %}}
  Nếu bạn đã trải qua bước 1 và 2, bạn có thể xem [danh sách nhãn](https://portal.azure.com/#view/Microsoft_AAD_RegisteredApps/ApplicationsListBlade).
    {{% /alert %}}
4. Đăng ký ứng dụng khách với Azure Active Directory theo [hướng dẫn](https://learn.microsoft.com/en-us/azure/active-directory/develop/quickstart-register-app#register-a-new-application-using-the-azure-portal).
    {{% alert color="primary" %}}
  Người dùng đã đăng ký có thể kiểm tra [danh sách ứng dụng](https://portal.azure.com/#view/Microsoft_AAD_RegisteredApps/ApplicationsListBlade).
    {{% /alert %}}
		- Loại tài khoản được hỗ trợ – chọn "Chỉ các tài khoản trong thư mục tổ chức này".
		- Bước thiết lập URI chuyển hướng có thể bị bỏ qua.
		- Việc thêm chứng chỉ có thể bị bỏ qua. Sử dụng bí mật của khách hàng để truy cập.
		- Việc thêm thông tin xác thực liên kết cũng có thể bị bỏ qua.
		- Đặt quyền cho ứng dụng.</br>
		Chọn "Quyền API" → "Thêm quyền" → "Giao diện API Microsoft" → "Dịch vụ quản lý quyền Azure" → "Quyền ứng dụng" và thêm quyền "Content.SuperUser", "Content.Writer".</br>
		Chọn "Quyền API" → "Thêm quyền" → "API mà tổ chức của tôi sử dụng" → tìm "Dịch vụ đồng bộ hóa bảo vệ thông tin Microsoft" → "Quyền ứng dụng" → "UnifiedPolicy.Tenant.Read".
		- Quay lại trang "Quyền API" và nhấn nút "Cấp sự đồng ý của quản trị viên cho (Tên người thuê)".
5. Mở trang chủ Office 365 và mở ứng dụng Word trên trình duyệt.
6. Tạo tài liệu DOCX mới với một số nội dung.
7. Trong ứng dụng Word, trên tab "Trang chủ", chọn menu "Nhạy cảm" → "Bí mật" → "Tất cả nhân viên". Tài liệu sẽ được đánh dấu bằng nhãn nhạy cảm và được mã hóa.
8. Chọn ứng dụng "One Drive" và lưu tệp đã tạo vào máy cục bộ của bạn. Đăng xuất khỏi tài khoản của bạn trong ứng dụng Word trên máy tính. Kiểm tra xem tài liệu đã tải xuống không thể mở được. Nó sẽ là tập tin đầu vào cho ứng dụng.

{{% alert color="primary" %}}

Lưu ý rằng Nếu bạn đã có tài khoản nhà phát triển Microsoft 365 thì hãy bỏ qua bước 1-2.

{{% /alert %}}

## Tạo ứng dụng Console

Để đánh giá cách Aspose.Words cho .NET hoạt động với các tài liệu được gắn nhãn, bạn cần tạo một ứng dụng bảng điều khiển với các cài đặt thích hợp và triển khai logic để xóa nhãn nhạy cảm, xử lý nhãn đó, sau đó áp dụng nhãn cho tài liệu đầu ra. Để thực hiện việc này, hãy làm theo hướng dẫn được mô tả trong phần này.

Để thực hiện hướng dẫn, bạn cần tìm và sửa giá trị của các tham số sau, giá trị này sẽ có sau khi hoàn thành các bước trong phần "Điều kiện tiên quyết":

- Url người thuê nhà
- Tên ứng dụng khách
- Mã định danh ứng dụng khách
- Bí mật ứng dụng khách

{{% alert color="primary" %}}

Lưu ý rằng `client application secret`, `client application identifier` và `client application name` phải được tạo ở bước 4 của phần "Điều kiện tiên quyết".

{{% /alert %}}

### Tạo một dự án ứng dụng bảng điều khiển mới

Để tạo một dự án ứng dụng bảng điều khiển mới, hãy làm theo các bước sau:

1. Trong Visual Studio, tạo một dự án ứng dụng bảng điều khiển mới có tên "SensitivityLabelsExample" cho ngôn ngữ *C#* và khung đích *.NET 6*
2. Thêm các gói sau:
      - `Microsoft.InformationProtection.File`
      - `Microsoft.Identity.Client`
      - Aspose.Words

### Thêm tệp có cài đặt

Để thêm tập tin cấu hình, hãy làm theo các bước sau:

1. Thêm tệp "AzureAppConsts.cs" vào dự án
2. Thêm nội dung sau vào file:

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

3. Hoàn thành các trường với giá trị tùy chỉnh của bạn.

### Triển khai đại diện đồng ý

Tạo một tệp "ConsentDelegate.cs" trong dự án và điền vào nó nội dung sau:

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

### Triển khai một đại biểu xác thực

Tạo một tệp "AuthDelegate.cs" trong dự án và điền vào nó nội dung sau:

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

### Thêm tùy chọn ghi nhãn

Tạo một tệp "FileLabelingOptions.cs" trong dự án và điền vào nó nội dung sau:

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

### Triển khai Trình quản lý nhãn nhạy cảm

Tạo một tệp "SenstivityLabelsManager.cs" trong dự án và điền vào nó nội dung sau:

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

### Thêm logic kịch bản vào chương trình

Di chuyển nội dung sau vào tệp "Program.cs":

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

## Thực hiện ví dụ đã tạo và kiểm tra kết quả

Cuối cùng, chạy ví dụ đã tạo và kiểm tra kết quả bạn nhận được:

1. Biên dịch dự án
2. Chạy ứng dụng console

Do đó, tệp đầu ra phải được tạo bằng "Bí mật.Tất cả nhân viên" được áp dụng. Đăng nhập vào tài khoản Microsoft 365 để đảm bảo rằng tài liệu có thể mở được và chứa các thay đổi.

## Xem thêm

- Bài viết [Làm việc với tài liệu được lưu trữ trong `SharePoint` trực tuyến](/words/vi/net/work-with-document-stored-in-sharepoint/)
