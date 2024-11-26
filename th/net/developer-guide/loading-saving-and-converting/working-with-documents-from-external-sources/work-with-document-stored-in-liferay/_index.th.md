---
title: ทำงานกับเอกสารที่เก็บไว้ใน Liferay
second_title: Aspose.Words สำหรับ .NET
articleTitle: ทำงานกับเอกสารที่เก็บไว้ใน Liferay
linktitle: ทำงานกับเอกสารที่เก็บไว้ใน Liferay
description: "เปรียบเทียบเอกสาร Word ที่แชร์ใน Liferay โดยใช้ C# ทำงานกับเอกสารที่จัดเก็บไว้ใน Liferay – รูปแบบอินพุตที่หลากหลาย รวมถึง Word, OpenOffice, Image และ eBook"
type: docs
weight: 20
url: /th/net/work-with-document-stored-in-liferay/
timestamp: 2024-01-31-14-23-37
---

Liferay Portal เป็นแพลตฟอร์มซอฟต์แวร์พอร์ทัลองค์กรแบบโอเพ่นซอร์สที่ออกแบบมาเพื่อการพัฒนาพอร์ทัลเว็บและเว็บไซต์ Liferay จัดเตรียมระบบการจัดการเอกสารซึ่งเป็นส่วนหนึ่งของแพลตฟอร์มพอร์ทัล ซึ่งช่วยให้ผู้ใช้สามารถสร้าง จัดระเบียบ จัดเก็บ และจัดการเอกสารในลักษณะการทำงานร่วมกันและมีประสิทธิภาพ ฟังก์ชันการจัดการเอกสารนี้มักเรียกว่าไลบรารีเอกสาร Liferay

ในบทความนี้ เราจะกล่าวถึงสถานการณ์ทั่วไปในการเปรียบเทียบเอกสารที่อัปโหลดไปยังรากของไลบรารี "เอกสารและสื่อ" และการอัปโหลดเอกสารผลลัพธ์กลับ

## ที่ตั้งไว้ล่วงหน้า

1. เริ่มต้นอินสแตนซ์ Liferay Portal ใหม่โดยการเรียกใช้ Docker:

   {{< highlight bash >}}
       docker run -it -m 8g -p 8080:8080 liferay/portal:7.4.3.92-ga92
   {{< /highlight >}}

   หากคุณไม่มี Docker, [ติดตั้งมัน](https://docs.docker.com/desktop/) ก่อน
   คุณสามารถใช้ [นักเทียบท่าพอร์ทัล Liferay](https://hub.docker.com/r/liferay/portal) เวอร์ชันอื่นได้

2. ลงชื่อเข้าใช้ [Liferay](http://localhost:8080) โดยใช้ที่อยู่อีเมล `test@liferay.com` และรหัสผ่าน `test`
3. เมื่อได้รับแจ้ง ให้เปลี่ยนรหัสผ่านของคุณ
4. ดึงข้อมูลตัวระบุไซต์โดยใช้ [บทช่วยสอนนี้](https://learn.liferay.com/w/dxp/headless-delivery/consuming-apis/consuming-rest-services#identify-the-site-containing-the-data)
5. ซื้อใบอนุญาต Aspose.Words หรือใช้ [การออกใบอนุญาตและการสมัครสมาชิก](/words/th/net/licensing/)

{{% alert color="primary" %}}

โปรดทราบว่าหากคุณมีพอร์ทัล Liferay อยู่แล้ว ให้ข้ามขั้นตอนที่ 1-3

{{% /alert %}}

## สร้างแอปพลิเคชันคอนโซล

ในการประเมินว่า Aspose.Words สำหรับ .NET ทำงานอย่างไรกับไลบรารีเอกสารและสื่อ Liferay คุณต้องสร้างแอปพลิเคชันคอนโซลด้วยการตั้งค่าที่เหมาะสม และใช้ตรรกะในการอัปโหลดเอกสารไปยังรากของไลบรารีเอกสารและสื่อ ดาวน์โหลดเอกสารเหล่านี้ ประมวลผล จากนั้น การอัปโหลดผลลัพธ์กลับไปยังรูทของไลบรารีเอกสารและสื่อ โดยทำตามคำแนะนำที่อธิบายไว้ในส่วนนี้

ในการดำเนินการตามคำแนะนำ คุณต้องค้นหาและแก้ไขค่าของตัวแปรต่อไปนี้ ซึ่งจะสามารถใช้ได้หลังจากทำตามขั้นตอนในส่วน "ค่าที่ตั้งล่วงหน้า" เสร็จแล้ว:

- ตัวระบุไซต์
- เข้าสู่ระบบของผู้ใช้
- รหัสผ่านผู้ใช้
- URL พอร์ทัลฐาน
- เส้นทางไปยังไฟล์ลิขสิทธิ์ Aspose.Words

{{% alert color="primary" %}}

โปรดทราบว่าควรได้รับ *login* และ *password* ในขั้นตอนที่ 2-3 ของส่วน "ค่าที่กำหนดล่วงหน้า" และควรได้รับ *ตัวระบุไซต์* ในขั้นตอนที่ 4 ของส่วน "ค่าที่กำหนดล่วงหน้า"

{{% /alert %}}

### สร้างโปรเจ็กต์แอปพลิเคชันคอนโซลใหม่

เมื่อต้องการสร้างโครงการแอปพลิเคชันคอนโซลใหม่ ให้ทำตามขั้นตอนเหล่านี้:

1. ใน Visual Studio สร้างโปรเจ็กต์แอปพลิเคชันคอนโซลใหม่ชื่อ "LiferayExample" สำหรับภาษา *C#* และเฟรมเวิร์กเป้าหมาย *.NET 6*
2. เพิ่มแพ็คเกจดังต่อไปนี้:
      - `Newtonsoft.Json`
   - โมเดลอัตลักษณ์
      - Aspose.Words

### เพิ่มไฟล์เอกสารเพื่อเปรียบเทียบ

สร้างโฟลเดอร์ "Docs" ในโครงการและเพิ่มไฟล์ "DocumentA.docx" และ "DocumentA.docx"

### เพิ่มคลาสโมเดล JSON สำหรับการประมวลผล REST API

สร้างโฟลเดอร์ "JsonModel" ในโครงการ สร้างไฟล์ "DownloadResponse.cs" ในโครงการและเติมเนื้อหาต่อไปนี้:

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

สร้างไฟล์ "FileMetadata.cs" ในโครงการและเติมเนื้อหาต่อไปนี้:

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

สร้างไฟล์ "UploadResponse.cs" ในโปรเจ็กต์และเติมเนื้อหาต่อไปนี้:

**.NET**
{{< highlight csharp >}}
using Newtonsoft.Json;

namespace LiferayExample.JsonModel
{
    [JsonObject(ItemNullValueHandling = NullValueHandling.Ignore)]
    public class UploadResponse : FileMetadata { }
}
{{< /highlight >}}

สร้างไฟล์ "GetFileInfoByNameResponse.cs" ในโปรเจ็กต์และเติมเนื้อหาต่อไปนี้:

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

### เพิ่มไคลเอ็นต์ Liferay REST API

สร้างไฟล์ "SecurityContext.cs" ในโครงการและเติมเนื้อหาต่อไปนี้:

**.NET**
{{< highlight csharp >}}
namespace LiferayExample
{
    public record SecurityContext(string SiteId, string Login, string Password);
}
{{< /highlight >}}

สร้างไฟล์ "DocumentClient.cs" ในโครงการและเติมเนื้อหาต่อไปนี้:

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

### เพิ่ม Scenario Logic ให้กับโปรแกรม

ย้ายเนื้อหาต่อไปนี้ไปยังไฟล์ "Program.cs":

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

## ดำเนินการตัวอย่างที่สร้างขึ้นและตรวจสอบผลลัพธ์

สุดท้าย รันตัวอย่างที่สร้างขึ้นและตรวจสอบผลลัพธ์ที่คุณได้รับ:

1. รวบรวมโครงการ
2. เรียกใช้แอปพลิเคชันคอนโซล

ด้วยเหตุนี้ ควรวางไฟล์ "DocumentCompared.docx" ไว้ที่รากของไลบรารี Documents and Media

## ดูสิ่งนี้ด้วย

- บทความ [ทำงานกับเอกสารที่เก็บไว้ใน `SharePoint` Online](/words/net/work-with-document-stored-in-sharepoint)
- บทความ [ทำงานกับเอกสารที่ทำเครื่องหมายโดยป้ายกำกับความลับ](/words/th/net/work-with-document-market-by-sensitivity-label/)
