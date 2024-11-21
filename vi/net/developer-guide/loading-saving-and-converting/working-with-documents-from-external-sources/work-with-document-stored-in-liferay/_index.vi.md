---
title: Làm việc với tài liệu được lưu trữ trong Liferay
second_title: Aspose.Words cho .NET
articleTitle: Làm việc với tài liệu được lưu trữ trong Liferay
linktitle: Làm việc với tài liệu được lưu trữ trong Liferay
description: "So sánh các tài liệu Word được chia sẻ trong Liferay bằng C#. Làm việc với các tài liệu được lưu trữ trong Liferay – nhiều định dạng đầu vào khác nhau, bao gồm Word, OpenOffice, Hình ảnh và Sách điện tử."
type: docs
weight: 20
url: /vi/net/work-with-document-stored-in-liferay/
timestamp: 2024-01-31-14-23-37
---

Cổng thông tin Liferay là một nền tảng phần mềm cổng thông tin doanh nghiệp nguồn mở được thiết kế để phát triển các cổng thông tin và trang web. Liferay cung cấp hệ thống quản lý tài liệu như một phần của nền tảng cổng thông tin, cho phép người dùng tạo, sắp xếp, lưu trữ và quản lý tài liệu theo cách cộng tác và hiệu quả. Chức năng quản lý tài liệu này thường được gọi là Thư viện tài liệu Liferay.

Trong bài viết này, chúng tôi sẽ đề cập đến một tình huống phổ biến để so sánh các tài liệu được tải lên thư mục gốc của thư viện "Tài liệu và Phương tiện" và tải lại tài liệu kết quả lên.

## cài sẵn

1. Bắt đầu phiên bản Cổng thông tin Liferay mới bằng cách chạy Docker:

   {{< highlight bash >}}
       docker run -it -m 8g -p 8080:8080 liferay/portal:7.4.3.92-ga92
   {{< /highlight >}}

   Nếu chưa có Docker thì [cài đặt nó](https://docs.docker.com/desktop/) trước nhé.
   Bạn có thể sử dụng phiên bản khác của [Docker cổng thông tin Liferay](https://hub.docker.com/r/liferay/portal).

2. Đăng nhập vào [Liferay](http://localhost:8080) bằng địa chỉ email `test@liferay.com` và mật khẩu `test`.
3. Khi được nhắc, hãy thay đổi mật khẩu của bạn.
4. Truy xuất mã định danh trang web bằng [hướng dẫn này](https://learn.liferay.com/w/dxp/headless-delivery/consuming-apis/consuming-rest-services#identify-the-site-containing-the-data).
5. Mua giấy phép Aspose.Words hoặc sử dụng [Cấp phép và đăng ký](/words/vi/net/licensing/).

{{% alert color="primary" %}}

Lưu ý rằng nếu bạn đã có cổng Liferay thì hãy bỏ qua các bước 1-3.

{{% /alert %}}

## Tạo ứng dụng Console

Để đánh giá cách Aspose.Words cho .NET hoạt động với thư viện Tài liệu và Phương tiện Liferay, bạn cần tạo một ứng dụng bảng điều khiển với các cài đặt phù hợp và triển khai logic để tải tài liệu lên thư mục gốc của thư viện Tài liệu và Phương tiện, tải xuống các tài liệu này, xử lý nó, sau đó tải kết quả trở lại thư mục gốc của thư viện Tài liệu và Phương tiện. Để thực hiện việc này, hãy làm theo hướng dẫn được mô tả trong phần này.

Để thực hiện hướng dẫn, bạn cần tìm và sửa giá trị của các biến sau, giá trị này sẽ có sau khi hoàn thành các bước trong phần "Đặt trước":

- Mã định danh trang web
- Đăng nhập người dùng
- Mật khẩu người dùng
- Url cổng thông tin cơ sở
- Đường dẫn tới file giấy phép Aspose.Words

{{% alert color="primary" %}}

Lưu ý rằng phải lấy *login* và *password* ở bước 2-3 của phần "Đặt trước" và *mã nhận dạng trang web* phải lấy ở bước 4 của phần "Đặt trước".

{{% /alert %}}

### Tạo một dự án ứng dụng bảng điều khiển mới

Để tạo một dự án ứng dụng bảng điều khiển mới, hãy làm theo các bước sau:

1. Trong Visual Studio, tạo một dự án ứng dụng bảng điều khiển mới có tên "LiferayExample" cho ngôn ngữ *C#* và khung đích *.NET 6*
2. Thêm các gói sau:
      - `Newtonsoft.Json`
   - Mẫu nhận dạng
      - Aspose.Words

### Thêm tệp tài liệu để so sánh

Tạo thư mục "Docs" trong dự án và thêm các tệp "DocumentA.docx" và "DocumentA.docx".

### Thêm các lớp mô hình JSON để xử lý REST API

Tạo thư mục "JsonModel" trong dự án. Tạo một tệp "DownloadResponse.cs" trong dự án và điền vào nó nội dung sau:

**.NET**
{{< highlight csharp >}}
using Newtonsoft.Json;

namespace LiferayExample.JsonModel
{
    [JsonObject(ItemNullValueHandling = NullValueHandling.Ignore)]
    public class DownloadResponse
    {
        [JsonProperty(PropertyName = "contentValue")]
        public string ContentValue { get; set; }
    }
}
{{< /highlight >}}

Tạo một tệp "FileMetadata.cs" trong dự án và điền vào nó nội dung sau:

**.NET**
{{< highlight csharp >}}
using Newtonsoft.Json;

namespace LiferayExample.JsonModel
{
    [JsonObject(ItemNullValueHandling = NullValueHandling.Ignore)]
    public class FileMetadata
    {
        [JsonProperty(PropertyName = "siteId")]
        public string SiteId { get; set; }

        [JsonProperty(PropertyName = "sizeInBytes")]
        public int SizeInBytes { get; set; }

        [JsonProperty(PropertyName = "fileName")]
        public string FileName { get; set; }

        [JsonProperty(PropertyName = "id")]
        public string Id { get; set; }
    }
}
{{< /highlight >}}

Tạo một tệp "UploadResponse.cs" trong dự án và điền vào nó nội dung sau:

**.NET**
{{< highlight csharp >}}
using Newtonsoft.Json;

namespace LiferayExample.JsonModel
{
    [JsonObject(ItemNullValueHandling = NullValueHandling.Ignore)]
    public class UploadResponse : FileMetadata { }
}
{{< /highlight >}}

Tạo một tệp "GetFileInfoByNameResponse.cs" trong dự án và điền vào nó nội dung sau:

**.NET**
{{< highlight csharp >}}
using Newtonsoft.Json;

namespace LiferayExample.JsonModel
{
    [JsonObject(ItemNullValueHandling = NullValueHandling.Ignore)]
    public class GetFileInfoByNameResponse
    {
        [JsonProperty(PropertyName = "items")]
        public FileMetadata[] FilesData { get; set; }
    }
}
{{< /highlight >}}

### Thêm ứng dụng khách Liferay REST API

Tạo một tệp "SecurityContext.cs" trong dự án và điền vào nó nội dung sau:

**.NET**
{{< highlight csharp >}}
namespace LiferayExample
{
    public record SecurityContext(string SiteId, string Login, string Password);
}
{{< /highlight >}}

Tạo một tệp "DocumentClient.cs" trong dự án và điền vào nó nội dung sau:

**.NET**
{{< highlight csharp >}}

using Newtonsoft.Json;
using LiferayExample.JsonModel;

namespace LiferayExample
{
    /// <summary>
    /// Implements logic to communicate with Liferay over REST requests.
    /// </summary>
    public sealed class DocumentClient : IDisposable
    {
        private readonly string _portalBaseUrl;
        private readonly HttpClient _httpClient;
        private readonly SecurityContext _context;

        private string _className => nameof(DocumentClient);
        private string _documentAPIUrl => $"{_portalBaseUrl}/o/headless-delivery/v1.0";

        /// <summary>
        /// Client constructor.
        /// </summary>
        public DocumentClient(string portalBaseUrl, SecurityContext context)
        {
            _context = context;
            _portalBaseUrl = portalBaseUrl;
            _httpClient = new HttpClient();
        }

        /// <summary>
        /// Uploads the file to "Documents and Media" root folder with specified name.
        /// </summary>
        /// <remarks>
        /// Overrides the file with the same name in Liferay.
        /// </remarks>
        public async Task<UploadResponse> Upload(Stream file, string fileName)
        {
            var fileInfo = await GetFileInfoByName(fileName);

            if (fileInfo != null)
                await DeleteDocument(fileInfo.Id);

            var uploadFileUrl = $"{_documentAPIUrl}/sites/{_context.SiteId}/documents";
            using var request = GetApiRequest(HttpMethod.Post, uploadFileUrl);

            using var formContent = new MultipartFormDataContent
            {
                { new StreamContent(file), "file", fileName }
            };

            request.Content = formContent;

            using var response = await _httpClient.SendAsync(request);
            response.EnsureSuccessStatusCode();

            var responseJson = await response.Content.ReadAsStringAsync();
            var uploadResponse = JsonConvert.DeserializeObject<UploadResponse>(responseJson);

            if (uploadResponse == null)
                throw new Exception($"{_className}.{nameof(Upload)}: Unexpected response format: {responseJson}.");

            return uploadResponse;
        }

        /// <summary>
        /// Downloads document from "Documents and Media" library.
        /// </summary>
        public async Task<Stream> Download(string fileId)
        {
            var downloadFileUrl =
                $"{_documentAPIUrl}/documents/{fileId}?nestedFields=contentValue&fields=contentValue";
            using var request = GetApiRequest(HttpMethod.Get, downloadFileUrl);

            using var response = await _httpClient.SendAsync(request);
            response.EnsureSuccessStatusCode();

            var responseJson = await response.Content.ReadAsStringAsync();
            var downloadResponse = JsonConvert.DeserializeObject<DownloadResponse>(responseJson);

            if (string.IsNullOrWhiteSpace(downloadResponse?.ContentValue))
                throw new Exception($"{_className}.{nameof(Download)}: Unexpected response format: {responseJson}.");

            var fileData = Convert.FromBase64String(downloadResponse.ContentValue);
            if (fileData == null)
                throw new Exception($"{_className}.{nameof(Download)}: Can not convert received data to binary array.");

            return new MemoryStream(fileData);
        }

        /// <summary>
        /// Disposes client resources.
        /// </summary>
        public void Dispose()
        {
            _httpClient?.Dispose();
        }

        private async Task<FileMetadata> GetFileInfoByName(string fileName)
        {
            var getFileUrl = $"{_documentAPIUrl}/sites/{_context.SiteId}/documents?search={Uri.EscapeDataString($"{fileName}")}";

            using var request = GetApiRequest(HttpMethod.Get, getFileUrl);

            using var response = await _httpClient.SendAsync(request);
            response.EnsureSuccessStatusCode();

            var responseJson = await response.Content.ReadAsStringAsync();
            var fileInfos = JsonConvert.DeserializeObject<GetFileInfoByNameResponse>(responseJson);

            if (fileInfos?.FilesData == null)
                throw new Exception($"{_className}.{nameof(GetFileInfoByName)}: Unexpected response format: {responseJson}.");

            var fileData = fileInfos.FilesData
                .FirstOrDefault(info => info.FileName.Equals(fileName, StringComparison.InvariantCultureIgnoreCase));

            return fileData;
        }

        private async Task DeleteDocument(string fileId)
        {
            var deleteFileUrl = $"{_documentAPIUrl}/documents/{fileId}";

            using var request = GetApiRequest(HttpMethod.Delete, deleteFileUrl);

            using var response = await _httpClient.SendAsync(request);
            response.EnsureSuccessStatusCode();
        }

        private HttpRequestMessage GetApiRequest(HttpMethod httpMethod, string requestUrl)
        {
            var request = new HttpRequestMessage(httpMethod, requestUrl);
            request.Headers.Authorization = new BasicAuthenticationHeaderValue(_context.Login, _context.Password);

            return request;
        }
    }
}
{{< /highlight >}}

### Thêm logic kịch bản vào chương trình

Di chuyển nội dung sau vào tệp "Program.cs":

**.NET**
{{< highlight csharp >}}
using Aspose.Words;
using LiferayExample;

try
{
    await RunCodeExample();
}
catch(Exception ex)
{
    Console.WriteLine($"Failed to execute code example: {ex}");
}

static async Task RunCodeExample()
{
    // Settings.
    const string siteId = "TODO"; // For example: 20119
    const string login = "TODO"; // For example test@liferay.com
    const string password = "TODO"; // Fill actual password for the "test@liferay.com" user.
    const string basePortalUrl = "TODO"; // For example: http://localhost:8080
    const string asposeWordsLicensePath = "TODO"; // For example: Aspose.Words.NET.lic

    const string fileA = "DocumentA.docx";
    const string fileB = "DocumentB.docx";
    const string fileCompared = "DocumentCompared.docx";

    // Set licenses.
    License lic = new License();
    lic.SetLicense(asposeWordsLicensePath);

    // Logic of the scenario.
    Console.WriteLine("Code example started.");

    var client = new DocumentClient(basePortalUrl, new SecurityContext(siteId, login, password));

    var fileAUploadData = await client.Upload(File.OpenRead($"./Docs/{fileA}"), fileA);
    Console.WriteLine($"\"{fileAUploadData.FileName}\" uploaded successfully. Assigned identifier is \"{fileAUploadData.Id}\".");

    var fileBUploadData = await client.Upload(File.OpenRead($"./Docs/{fileB}"), fileB);
    Console.WriteLine($"\"{fileBUploadData.FileName}\" uploaded successfully. Assigned identifier is \"{fileBUploadData.Id}\".");

    var fileAData = await client.Download(fileAUploadData.Id);
    Console.WriteLine($"\"{fileAUploadData.FileName}\" downloaded successfully.");

    var fileBData = await client.Download(fileBUploadData.Id);
    Console.WriteLine($"\"{fileBUploadData.FileName}\" downloaded successfully.");

    var docA = new Document(fileAData);
    var docB = new Document(fileBData);

    docA.Compare(docB, "Aspose", DateTime.Now);

    Console.WriteLine($"Documents compared successfully.");

    using var comparedDocument = new MemoryStream();
    docA.Save(comparedDocument, SaveFormat.Docx);

    comparedDocument.Seek(0, SeekOrigin.Begin);

    var fileComparedUploadData = await client.Upload(comparedDocument, fileCompared);
    Console.WriteLine($"Comparison result \"{fileComparedUploadData.FileName}\" uploaded successfully. Assigned identifier is \"{fileComparedUploadData.Id}\".");

    Console.WriteLine("Code example completed.");
}
{{< /highlight >}}

## Thực hiện ví dụ đã tạo và kiểm tra kết quả

Cuối cùng, chạy ví dụ đã tạo và kiểm tra kết quả bạn nhận được:

1. Biên dịch dự án
2. Chạy ứng dụng console

Do đó, tệp "DocumentCompared.docx" phải được đặt trong thư mục gốc của thư viện Tài liệu và Phương tiện.

## Xem thêm

- Bài viết [Làm việc với tài liệu được lưu trữ trong `SharePoint` trực tuyến](/words/net/work-with-document-stored-in-sharepoint)
- Bài viết [Làm việc với tài liệu được đánh dấu bằng nhãn nhạy cảm](/words/vi/net/work-with-document-market-by-sensitivity-label/)
