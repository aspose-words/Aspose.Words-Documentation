---
title: Làm việc với tài liệu được lưu trữ trong `SharePoint` trực tuyến
second_title: Aspose.Words cho .NET
articleTitle: Làm việc với tài liệu được lưu trữ trong `SharePoint` trực tuyến
linktitle: Làm việc với tài liệu được lưu trữ trong `SharePoint` trực tuyến
description: "Chuyển đổi Word được chia sẻ trong SharePoint sang PDF bằng C#. Làm việc với các tài liệu được lưu trữ trong SharePoint – nhiều định dạng đầu vào khác nhau, bao gồm Word, OpenOffice, Hình ảnh và Sách điện tử."
type: docs
weight: 20
url: /vi/net/work-with-document-stored-in-sharepoint/
---

Microsoft SharePoint Online là tập hợp các công nghệ dựa trên web giúp các tổ chức dễ dàng lưu trữ, chia sẻ và quản lý thông tin kỹ thuật số. Bạn có thể làm việc với các tài liệu được lưu trữ trong thư mục "Tài liệu được chia sẻ" trong SharePoint bằng cách sử dụng Aspose.Words mạnh mẽ cho .NET của chúng tôi.

Trong bài viết này, chúng tôi sẽ đề cập đến một tình huống phổ biến để chuyển đổi tài liệu được tải lên thư mục "Tài liệu được chia sẻ" sang định dạng PDF và tải tài liệu thu được trở lại thư mục.

## cài sẵn

1. Tham gia [Chương trình dành cho nhà phát triển Microsoft 365](https://developer.microsoft.com/en-us/microsoft-365/dev-program)
2. Thiết lập hộp cát tức thì [theo video hướng dẫn](https://www.youtube.com/watch?v=ojQcS9ZQmes)
3. Tạo thông tin xác thực dựa trên ứng dụng cho SharePoint Online như chi tiết trong [Thiết lập hiệu trưởng chỉ dành cho ứng dụng với quyền của người thuê](https://learn.microsoft.com/en-us/sharepoint/dev/solution-guidance/security-apponly-azureacs)
4. Tải tài liệu có tên "TestDoc.docx" lên trang liên lạc gốc vào thư mục "Tài liệu được chia sẻ"
5. Mua giấy phép Aspose.Words hoặc sử dụng [Cấp phép và đăng ký](/words/vi/net/licensing/)

{{% alert color="primary" %}}

Lưu ý rằng Nếu bạn đã có trang liên lạc gốc `SharePoint` Online thì hãy bỏ qua các bước 1-2.

{{% /alert %}}

## Tạo ứng dụng Console

Để đánh giá cách Aspose.Words cho .NET hoạt động với tài liệu SharePoint, bạn cần tạo một ứng dụng bảng điều khiển với các cài đặt phù hợp và triển khai logic để tải xuống tài liệu từ thư mục "Tài liệu được chia sẻ", xử lý tài liệu đó rồi tải tệp này lên cùng thư mục. Để thực hiện việc này, hãy làm theo hướng dẫn được mô tả trong phần này.

Để thực hiện hướng dẫn, bạn cần tìm và sửa giá trị của các tham số sau, giá trị này sẽ có sau khi hoàn thành các bước trong phần "Đặt trước":

- Mã định danh người thuê nhà – xem [cách tìm id người thuê nhà của bạn](https://docs.microsoft.com/en-us/onedrive/find-your-office-365-tenant-id)
- Tên người thuê nhà
- Mã định danh khách hàng
- Bí mật của khách hàng

{{% alert color="primary" %}}

Lưu ý rằng *bí mật khách hàng* và *mã định danh khách hàng* phải được tạo ở bước 3 của phần "Đặt trước".

{{% /alert %}}

### Tạo một dự án ứng dụng bảng điều khiển mới

Để tạo một dự án ứng dụng bảng điều khiển mới, hãy làm theo các bước sau:

1. Trong Visual Studio, tạo một dự án ứng dụng bảng điều khiển mới có tên "SPOnlineExample" cho ngôn ngữ *C#* và khung đích *.NET 6*
2. Thêm các gói sau:
      - `Microsoft.Extensions.Configuration.Json`
      - Aspose.Words

### Thêm tập tin cấu hình

Để thêm tập tin cấu hình, hãy làm theo các bước sau:

1. Thêm tệp "appsinstall.json" vào dự án;
2. Thêm nội dung sau vào file:
**JSON**
{{< highlight json >}}
{
  "TenantId": "Your tenant id.",
  "TenantName": "Your tenant name.",

  "ClientSecret": "App client secret.",
  "ClientId": "App client id.",

  "AsposeWordsLicensePath": "Path to your Aspose.Words license."
}
{{< /highlight >}}

3. Hoàn thành các trường với giá trị tùy chỉnh của bạn.

### Thêm ứng dụng khách API REST trực tuyến SharePoint

Tạo một tệp "SPOClient.cs" trong dự án và điền vào nó nội dung sau:

**.NET**
{{< highlight csharp >}}

using System.Net.Http.Json;
using System.Net.Http.Headers;
using System.Security.Authentication;
using System.Text.Json.Serialization;
using Microsoft.Extensions.Configuration;

namespace SPOnlineExample
{
    /// <summary>
    /// Sharepoint online REST API client.
    /// </summary>
    internal class SPOClient
    {
        private readonly string authUrl;
        private readonly string clientId;
        private readonly string resource;
        private readonly string tenantId;
        private readonly HttpClient client;
        private readonly string tenantName;
        private readonly string clientSecret;

        private const string grandType = "client_credentials";
        private const string resourceId = "00000003-0000-0ff1-ce00-000000000000";
    
        // URL templates.
        private static readonly string authUrlTemplate = "https://accounts.accesscontrol.windows.net/{0}/tokens/OAuth/2";
        private static readonly string downloadfileTemplate = "https://{0}.sharepoint.com/_api/web/GetFileByServerRelativeUrl('{1}')/$value";
        private static readonly string uploadfileTemplate =
            "https://{0}.sharepoint.com/_api/web/GetFolderByServerRelativeUrl('{1}')/Files/add(url='{2}',overwrite=true)";
    
        // Access token.
        private string token = string.Empty;
    
        public SPOClient(IConfigurationRoot appConfig)
        {
            tenantId = appConfig[nameof(tenantId)];
            clientSecret = appConfig[nameof(clientSecret)];
            tenantName = appConfig[nameof(tenantName)];
    
            authUrl = string.Format(authUrlTemplate, tenantId);
            clientId = $"{appConfig[nameof(clientId)]}@{tenantId}";
            resource = $"{resourceId}/{tenantName}.sharepoint.com@{tenantId}";
    
            client = new HttpClient();
        }
    
        public async Task Authorize()
        {
            var formContent = new FormUrlEncodedContent(new[]
            {
                new KeyValuePair<string, string>("grant_type", grandType),
                new KeyValuePair<string, string>("client_id", clientId),
                new KeyValuePair<string, string>("client_secret", clientSecret),
                new KeyValuePair<string, string>("resource", resource)
            });
    
            var response = await client.PostAsync(authUrl, formContent);
            var responseData = await response.Content.ReadFromJsonAsync<AuthRespose>();
    
            if (!response.IsSuccessStatusCode || responseData == null)
                throw new AuthenticationException(responseData?.Description);
    
            token = responseData.Token;
        }
    
        public async Task<Stream> DownloadFile(string relativeFilePath)
        {
            var url = string.Format(downloadfileTemplate, tenantName, relativeFilePath);
            using var request = CreateRequest(url, HttpMethod.Get);
    
            var response = await client.SendAsync(request);
    
            if (!response.IsSuccessStatusCode)
            {
                var errorData = await response.Content.ReadAsStringAsync();
                throw new Exception(errorData);
            }
    
            var fileStream = await response.Content.ReadAsStreamAsync();
            return fileStream;
        }
    
        public async Task UploadFile(string relativeFolderPath, string fileName, Stream fileData)
        {
            var url = string.Format(uploadfileTemplate, tenantName, relativeFolderPath, fileName);
            using var request = CreateRequest(url, HttpMethod.Post);
    
            request.Headers.Add("IF-MATCH", "*"); // Overwrite any changes.
            request.Content = new StreamContent(fileData);
    
            var response = await client.SendAsync(request);
    
            if (!response.IsSuccessStatusCode)
            {
                var errorData = await response.Content.ReadAsStringAsync();
                throw new Exception(errorData);
            }
        }
    
        private HttpRequestMessage CreateRequest(string url, HttpMethod httpMethod)
        {
            var request = new HttpRequestMessage(httpMethod, url);
            request.Headers.Authorization = new AuthenticationHeaderValue("Bearer", token);
    
            return request;
        }
    
        private class AuthRespose
        {
            public string Error { get; set; } = string.Empty;
    
            [JsonPropertyName("error_description")]
            public string Description { get; set; } = string.Empty;
    
            [JsonPropertyName("access_token")]
            public string Token { get; set; } = string.Empty;
        }
    }
}
{{< /highlight >}}

### Thêm logic kịch bản vào chương trình

Di chuyển nội dung sau vào tệp "Program.cs":

**.NET**
{{< highlight csharp >}}

using Aspose.Words;
using Aspose.Words.Saving;
using Microsoft.Extensions.Configuration;

namespace SPOnlineExample
{
    public static class Program
    {
        static async Task Main(string[] args)
        {
            // The example below downloads the file "testdoc.docx" from the shared documents folder.
            // Converts it to PDF and uploads conversion result to the same folder.

            var appConfig = GetAppConfig();
            var client = new SPOClient(appConfig);
    
            await client.Authorize();
            var fileStream = await client.DownloadFile("/Shared%20Documents/TestDoc.docx");
    
            var lic = new License();
            lic.SetLicense(appConfig["AsposeWordsLicensePath"]);
            var doc = new Document(fileStream);
    
            using var outputStream = new MemoryStream();
            var saveOptions = new PdfSaveOptions();
            doc.Save(outputStream, saveOptions);
    
            await client.UploadFile("/Shared%20Documents", "TestDoc.pdf", outputStream);
    
            Console.WriteLine("Done. Press any key to complete.");
            Console.ReadKey();
        }
    
        private static IConfigurationRoot GetAppConfig()
        {
            // Build configuration
            return JsonConfigurationExtensions.AddJsonFile(
                    new ConfigurationBuilder().SetBasePath(Directory.GetCurrentDirectory()),
                    "appsettings.json")
                .Build();
        }
    }
}
{{< /highlight >}}

## Thực hiện ví dụ đã tạo và kiểm tra kết quả

Cuối cùng, chạy ví dụ đã tạo và kiểm tra kết quả bạn nhận được:

1. Biên dịch dự án
2. Chạy ứng dụng console

Do đó, tệp "TestDoc.pdf" phải được đặt trong thư mục "Tài liệu được chia sẻ" của trang liên lạc gốc.

## Xem thêm

- Bài viết [Kết xuất](/words/vi/net/rendering/) để biết thêm thông tin về định dạng trang cố định và bố cục theo luồng
- Bài viết [Chuyển đổi sang định dạng trang cố định](/words/net/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) để biết thêm thông tin về bố cục trang
- Bài viết [Chỉ định tùy chọn hiển thị khi chuyển đổi sang PDF](/words/vi/net/specify-rendering-options-when-converting-to-pdf/) để biết thêm thông tin về cách sử dụng lớp [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/)
