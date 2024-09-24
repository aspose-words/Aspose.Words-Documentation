---
title: 與儲存在 Liferay 的文件一起工作
second_title: 「Aspose.Words for .NET」
articleTitle: 與儲存在 Liferay 的文件一起工作
linktitle: 與儲存在 Liferay 的文件一起工作
description: "透過 C# 比較在 Liferay 分享的 Word 文檔。 與儲存在 Liferay 的文件工作 - 各種輸入格式，包括 Word、OpenOffice、Image 和電子書。"
type: docs
weight: 20
url: /zh-hant/net/work-with-document-stored-in-liferay/
---

「Liferay Portal 是一個開放原始碼的企業入口網站軟體平台，旨在開發網路入口網站和網站。 Liferay 在其入口網站平台中提供文件管理系統，讓使用者能夠以合作和有效的方式建立、組織、儲存及管理文件。」 常常被稱為「Liferay 文檔圖書館」的文檔管理功能。

在這篇文章中，我們將涵蓋比較「文件與媒體」圖書館中上傳的文件以及上傳結果文件的常見情境。

## 預設值

1. 以執行 Docker 來啟動新的 Liferay Portlet：

   {{< highlight bash >}}
       docker run -it -m 8g -p 8080:8080 liferay/portal:7.4.3.92-ga92
   {{< /highlight >}}

   如果你沒有 Docker，先做 [install it](https://docs.docker.com/desktop/)。
   「您可以使用 [Liferay Portal docker](https://hub.docker.com/r/liferay/portal) 的另一版本。」

2。 登入 [Liferay](http://localhost:8080) 使用電子郵件地址 `test@liferay.com` 和密碼 `test`。
3。 當被提示時，更改密碼。
4. 透過 [this tutorial](https://learn.liferay.com/w/dxp/headless-delivery/consuming-apis/consuming-rest-services#identify-the-site-containing-the-data) 取得網站標識符。
5. 購買 Aspose.Words 許可證或使用 [Free Trial or 30-day Temporary License](/words/net/licensing/).

{{% alert color="primary" %}}

「請注意，如果你已經有一個Liferay的入口，那就跳過1-3步。」

{{% /alert %}}

## 創建「控制台應用程式」

要評估 .NET 的「Aspose.Words」如何與「Liferay 文檔和媒體」圖書館一起使用，您需要建立一個具有正確設定值的主控台應用程式，並實作將文檔上傳至文檔和媒體圖書館根目錄、下載這些文檔、處理該文檔，然後再將結果上傳回文檔和媒體圖書館根目錄的邏輯。 「要做到這點，請按照本節所述的指示進行。」

「要執行這些指令，您必須找到並修正以下變數的值，而這些變數在完成『預設』部分中的步驟後會可用到：」

"- 網站識別碼"
「- 使用者登入」
"- 用戶密碼"
- 基本入口網址
- Aspose.Words 許可證檔案的路徑

{{% alert color="primary" %}}

*login* 和 *password* 應在「預設」部分的步驟 2-3 中取得，而 *網站識別符* 則應在「預設」部分的步驟 4 中取得。

{{% /alert %}}

### 建立新的控制台應用程式專案

「要建立新的 konsol 應用程式專案，請按照以下步驟動作：」

1. 在 Visual Studio 中，為 *C#* 語言和 Target Framework *.NET 6* 建立名為 "LiferayExample" 的新的控制台應用程式專案。
2. 「加入以下套件：」
      - `Newtonsoft.Json`
   "- IdentityModel"
      - Aspose.Words

### 「將文件加入比較」

在專案中建立一個「Doc」的資料夹並添加檔案「DocumentA.docx」和「DocumentA.docx」。

### 為 REST API 處理添加 JSON 模型類

在專案中建立「JsonModel」的文件夹。 在專案中建立一個名為「DownloadResponse.cs」的檔案，並將其內容填寫如下：

**`.NET`**
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

在專案中建立名為 "FileMetadata.cs" 的檔案，並輸入以下內容：

**.Net**
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

在專案中建立一個名為「UploadResponse.cs」的檔案，並用以下內容填寫：

**'.NET'**
{{< highlight csharp >}}
using Newtonsoft.Json;

namespace LiferayExample.JsonModel
{
    [JsonObject(ItemNullValueHandling = NullValueHandling.Ignore)]
    public class UploadResponse : FileMetadata { }
}
{{< /highlight >}}

在專案中建立名為 "GetFileInfoByNameResponse.cs" 的檔案，並將其內容填寫如下：

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

### 加入 Liferay REST API 用戶端

在專案中建立一個名為「SecurityContext.cs」的檔案，並以以下內容填寫：

**".NET"**
{{< highlight csharp >}}
namespace LiferayExample
{
    public record SecurityContext(string SiteId, string Login, string Password);
}
{{< /highlight >}}

在專案中建立名為「DocumentClient.cs」的檔案，並用以下內容填寫：

**.Net**
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

### 將情境邏輯加入程式中

「將以下內容移動到」Program.cs「檔案內：」

**".NET"**
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

## 「執行創建範例並檢查結果」

「最後，請執行創建的範例並檢查獲得結果：」

1. 編譯這個專案
2. 執行控制台應用程式。

「因此，」DocumentCompared.docx「這個檔案應該放到文档和媒體圖書館的根目錄下。」

## 此外參閱

-該文章 [Work with a Document Stored in a `SharePoint` Online](/words/net/work-with-document-stored-in-sharepoint)
-該文章[Work with a Document Marked by a Sensitivity Label](/words/net/work-with-document-market-by-sensitivity-label/)
