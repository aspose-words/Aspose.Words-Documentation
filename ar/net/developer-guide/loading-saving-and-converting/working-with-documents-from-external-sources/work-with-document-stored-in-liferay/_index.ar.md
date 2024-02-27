---
title: العمل مع مستند مخزن في Liferay
second_title: Aspose.Words لـ .NET
articleTitle: العمل مع مستند مخزن في Liferay
linktitle: العمل مع مستند مخزن في Liferay
description: "قارن مستندات Word المشتركة في Liferay باستخدام C#. العمل مع المستندات المخزنة في Liferay – تنسيقات إدخال مختلفة، بما في ذلك Word وOpenOffice وImage وeBook."
type: docs
weight: 20
url: /ar/net/work-with-document-stored-in-liferay/
---

Liferay Portal عبارة عن منصة برمجية لبوابة المؤسسات مفتوحة المصدر مصممة لتطوير بوابات الويب والمواقع الإلكترونية. توفر Liferay نظامًا لإدارة المستندات كجزء من منصة البوابة الخاصة بها، مما يسمح للمستخدمين بإنشاء المستندات وتنظيمها وتخزينها وإدارتها بطريقة تعاونية وفعالة. غالبًا ما يُشار إلى وظيفة إدارة المستندات هذه باسم مكتبة مستندات Liferay.

في هذه المقالة، سنغطي سيناريو شائعًا لمقارنة المستندات التي تم تحميلها إلى جذر مكتبة "المستندات والوسائط" وتحميل المستند الناتج مرة أخرى.

## المعد مسبقا

1. ابدأ مثيل Liferay Portal جديد عن طريق تشغيل Docker:

   {{< highlight bash >}}
       docker run -it -m 8g -p 8080:8080 liferay/portal:7.4.3.92-ga92
   {{< /highlight >}}

   إذا لم يكن لديك Docker، [تثبيته](https://docs.docker.com/desktop/) أولاً.
   يمكنك استخدام إصدار آخر من [عامل ميناء بوابة Liferay](https://hub.docker.com/r/liferay/portal).

2. قم بتسجيل الدخول إلى [Liferay](http://localhost:8080) باستخدام عنوان البريد الإلكتروني `test@liferay.com` وكلمة المرور `test`.
3. قم بتغيير كلمة المرور الخاصة بك عندما يُطلب منك ذلك.
4. استرجاع معرف الموقع باستخدام [هذا البرنامج التعليمي](https://learn.liferay.com/w/dxp/headless-delivery/consuming-apis/consuming-rest-services#identify-the-site-containing-the-data).
5. قم بشراء ترخيص Aspose.Words أو استخدم [الترخيص والاشتراك](/words/ar/net/licensing/).

{{% alert color="primary" %}}

لاحظ أنه إذا كان لديك بالفعل بوابة Liferay، فقم بتخطي الخطوات من 1 إلى 3.

{{% /alert %}}

## إنشاء تطبيق وحدة التحكم

لتقييم كيفية عمل Aspose.Words for .NET مع مكتبة مستندات ووسائط Liferay، تحتاج إلى إنشاء تطبيق وحدة تحكم بالإعدادات المناسبة وتنفيذ منطق تحميل المستندات إلى جذر مكتبة المستندات والوسائط، وتنزيل هذه المستندات، ومعالجتها، ثم تحميل النتيجة مرة أخرى إلى جذر مكتبة المستندات والوسائط. للقيام بذلك، اتبع الإرشادات الموضحة في هذا القسم.

لتنفيذ التعليمات، عليك البحث عن قيم المتغيرات التالية وإصلاحها، والتي ستكون متاحة بعد إكمال الخطوات في الجزء "الإعداد المسبق":

- معرف الموقع
- تسجيل دخول المستخدم
- كلمة مرور المستخدم
- عنوان URL للبوابة الأساسية
- المسار إلى ملف ترخيص Aspose.Words

{{% alert color="primary" %}}

لاحظ أنه يجب الحصول على *login* و*password* في الخطوات 2-3 من الجزء "الإعداد المسبق"، ويجب الحصول على *معرف الموقع* في الخطوة 4 من الجزء "الإعداد المسبق".

{{% /alert %}}

### إنشاء مشروع تطبيق وحدة تحكم جديد

لإنشاء مشروع تطبيق وحدة تحكم جديد، اتبع الخطوات التالية:

1. في Visual Studio، قم بإنشاء مشروع تطبيق وحدة تحكم جديد باسم "LiferayExample" للغة *C#* وإطار العمل المستهدف *.NET 6*
2. أضف الحزم التالية:
      - `Newtonsoft.Json`
   - نموذج الهوية
      - Aspose.Words

### أضف ملفات المستندات للمقارنة

أنشئ مجلد "Docs" في المشروع وأضف الملفات "DocumentA.docx" و"DocumentA.docx".

### أضف فئات نموذج JSON لمعالجة REST API

قم بإنشاء مجلد "JsonModel" في المشروع. قم بإنشاء ملف "DownloadResponse.cs" في المشروع واملأه بالمحتوى التالي:

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

قم بإنشاء ملف "FileMetadata.cs" في المشروع واملأه بالمحتوى التالي:

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

قم بإنشاء ملف "UploadResponse.cs" في المشروع واملأه بالمحتوى التالي:

**.NET**
{{< highlight csharp >}}
using Newtonsoft.Json;

namespace LiferayExample.JsonModel
{
    [JsonObject(ItemNullValueHandling = NullValueHandling.Ignore)]
    public class UploadResponse : FileMetadata { }
}
{{< /highlight >}}

قم بإنشاء ملف "GetFileInfoByNameResponse.cs" في المشروع واملأه بالمحتوى التالي:

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

### إضافة عميل Liferay REST API

قم بإنشاء ملف "SecurityContext.cs" في المشروع واملأه بالمحتوى التالي:

**.NET**
{{< highlight csharp >}}
namespace LiferayExample
{
    public record SecurityContext(string SiteId, string Login, string Password);
}
{{< /highlight >}}

قم بإنشاء ملف "DocumentClient.cs" في المشروع واملأه بالمحتوى التالي:

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

### إضافة منطق السيناريو إلى البرنامج

انقل المحتوى التالي إلى الملف "Program.cs":

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

## قم بتنفيذ المثال الذي تم إنشاؤه وتحقق من النتيجة

أخيرًا، قم بتشغيل المثال الذي تم إنشاؤه وتحقق من النتيجة التي حصلت عليها:

1. قم بتجميع المشروع
2. قم بتشغيل تطبيق وحدة التحكم

ونتيجة لذلك، يجب وضع الملف "DocumentCompared.docx" في جذر مكتبة المستندات والوسائط.

## أنظر أيضا

- المقال [العمل مع مستند مخزّن في `SharePoint` Online](/words/net/work-with-document-stored-in-sharepoint)
- المقال [العمل مع مستند تم وضع علامة عليه بملصق حساسية](/words/ar/net/work-with-document-market-by-sensitivity-label/)
