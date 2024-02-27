---
title: با یک سند ذخیره شده در Liferay کار کنید
second_title: Aspose.Words برای .NET
articleTitle: با یک سند ذخیره شده در Liferay کار کنید
linktitle: با یک سند ذخیره شده در Liferay کار کنید
description: "اسناد Word به اشتراک گذاشته شده در Liferay را با استفاده از C# مقایسه کنید. کار با اسناد ذخیره شده در Liferay - فرمت های ورودی مختلف، از جمله Word، OpenOffice، Image و eBook."
type: docs
weight: 20
url: /fa/net/work-with-document-stored-in-liferay/
---

Liferay Portal یک پلت فرم نرم افزار پورتال سازمانی منبع باز است که برای توسعه پورتال های وب و وب سایت ها طراحی شده است. Liferay یک سیستم مدیریت اسناد را به عنوان بخشی از پلتفرم پورتال خود ارائه می دهد که به کاربران امکان می دهد اسناد را به شیوه ای مشترک و کارآمد ایجاد، سازماندهی، ذخیره و مدیریت کنند. این قابلیت مدیریت اسناد اغلب به عنوان کتابخانه اسناد Liferay شناخته می شود.

در این مقاله، ما یک سناریوی رایج برای مقایسه اسناد آپلود شده در ریشه کتابخانه "اسناد و رسانه" و بارگذاری مجدد سند حاصل را پوشش خواهیم داد.

## از پیش تعیین شده

1. یک نمونه جدید Liferay Portal را با اجرای Docker راه اندازی کنید:

   {{< highlight bash >}}
       docker run -it -m 8g -p 8080:8080 liferay/portal:7.4.3.92-ga92
   {{< /highlight >}}

   اگر Docker ندارید، ابتدا [آن را نصب کنید](https://docs.docker.com/desktop/).
   می توانید از نسخه دیگری از [داکر پورتال Liferay](https://hub.docker.com/r/liferay/portal) استفاده کنید.

2. با استفاده از آدرس ایمیل `test@liferay.com` و رمز عبور `test` وارد [Liferay](http://localhost:8080) شوید.
3. هنگامی که از شما خواسته شد، رمز عبور خود را تغییر دهید.
4. شناسه سایت را با استفاده از [این آموزش](https://learn.liferay.com/w/dxp/headless-delivery/consuming-apis/consuming-rest-services#identify-the-site-containing-the-data) بازیابی کنید.
5. مجوز Aspose.Words را خریداری کنید یا از [مجوز و اشتراک](/words/fa/net/licensing/) استفاده کنید.

{{% alert color="primary" %}}

توجه داشته باشید که اگر از قبل یک پورتال Liferay دارید، مراحل 1-3 را نادیده بگیرید.

{{% /alert %}}

## ایجاد برنامه کنسول

برای ارزیابی نحوه کار Aspose.Words برای .NET با اسناد Liferay و کتابخانه رسانه، باید یک برنامه کنسول با تنظیمات مناسب ایجاد کنید و منطق بارگذاری اسناد در ریشه کتابخانه اسناد و رسانه، دانلود این اسناد، پردازش آن و سپس پیاده سازی منطقی را پیاده سازی کنید. بارگذاری نتیجه به ریشه کتابخانه اسناد و رسانه. برای انجام این کار، دستورالعمل های توضیح داده شده در این بخش را دنبال کنید.

برای اجرای دستورالعمل ها، باید مقادیر متغیرهای زیر را که پس از انجام مراحل در قسمت "Preset" در دسترس خواهند بود، پیدا کرده و آنها را اصلاح کنید:

- شناسه سایت
- ورود کاربر
- رمز عبور کاربر
- آدرس پورتال پایه
- مسیر فایل مجوز Aspose.Words

{{% alert color="primary" %}}

توجه داشته باشید که *login* و *password* را باید در مراحل 2-3 قسمت "Preset" و *شناسه سایت* را در مرحله 4 قسمت "Preset" دریافت کنید.

{{% /alert %}}

### یک پروژه کاربردی کنسول جدید ایجاد کنید

برای ایجاد یک پروژه برنامه کاربردی کنسول جدید، این مراحل را دنبال کنید:

1. در Visual Studio، یک پروژه برنامه کاربردی کنسول جدید با نام "LiferayExample" برای زبان *C#* و چارچوب هدف *.NET 6* ایجاد کنید
2. بسته های زیر را اضافه کنید:
      - `Newtonsoft.Json`
   - IdentityModel
      - Aspose.Words

### فایل های سند را برای مقایسه اضافه کنید

یک پوشه "Docs" در پروژه ایجاد کنید و فایل های "DocumentA.docx" و "DocumentA.docx" را اضافه کنید.

### کلاس های مدل JSON را برای پردازش REST API اضافه کنید

یک پوشه "JsonModel" در پروژه ایجاد کنید. یک فایل "DownloadResponse.cs" در پروژه ایجاد کنید و آن را با محتوای زیر پر کنید:

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

یک فایل "FileMetadata.cs" در پروژه ایجاد کنید و آن را با محتوای زیر پر کنید:

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

یک فایل "UploadResponse.cs" در پروژه ایجاد کنید و آن را با محتوای زیر پر کنید:

**.NET**
{{< highlight csharp >}}
using Newtonsoft.Json;

namespace LiferayExample.JsonModel
{
    [JsonObject(ItemNullValueHandling = NullValueHandling.Ignore)]
    public class UploadResponse : FileMetadata { }
}
{{< /highlight >}}

یک فایل "GetFileInfoByNameResponse.cs" در پروژه ایجاد کنید و آن را با محتوای زیر پر کنید:

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

### سرویس گیرنده Liferay REST API را اضافه کنید

یک فایل "SecurityContext.cs" در پروژه ایجاد کنید و آن را با محتوای زیر پر کنید:

**.NET**
{{< highlight csharp >}}
namespace LiferayExample
{
    public record SecurityContext(string SiteId, string Login, string Password);
}
{{< /highlight >}}

یک فایل "DocumentClient.cs" در پروژه ایجاد کنید و آن را با محتوای زیر پر کنید:

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

### منطق سناریو را به برنامه اضافه کنید

محتوای زیر را به فایل "Program.cs" منتقل کنید:

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

## مثال ایجاد شده را اجرا کنید و نتیجه را بررسی کنید

در نهایت، مثال ایجاد شده را اجرا کنید و نتیجه ای را که به دست آورده اید بررسی کنید:

1. پروژه را کامپایل کنید
2. برنامه کنسول را اجرا کنید

در نتیجه، فایل "DocumentCompared.docx" باید در ریشه کتابخانه اسناد و رسانه قرار گیرد.

## همچنین ببینید

- مقاله [با یک سند ذخیره شده در `SharePoint` Online کار کنید](/words/net/work-with-document-stored-in-sharepoint)
- مقاله [با سندی که با برچسب حساسیت مشخص شده است کار کنید](/words/fa/net/work-with-document-market-by-sensitivity-label/)
