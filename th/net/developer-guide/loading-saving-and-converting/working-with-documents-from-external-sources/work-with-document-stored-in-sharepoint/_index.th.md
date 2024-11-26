---
title: ทำงานกับเอกสารที่เก็บไว้ใน SharePoint Online
second_title: Aspose.Words สำหรับ .NET
articleTitle: ทำงานกับเอกสารที่เก็บไว้ใน SharePoint Online
linktitle: ทำงานกับเอกสารที่เก็บไว้ใน SharePoint Online
description: "แปลง Word ที่แชร์ใน SharePoint เป็น PDF โดยใช้ C# ทำงานกับเอกสารที่จัดเก็บไว้ใน SharePoint – รูปแบบอินพุตที่หลากหลาย รวมถึง Word, OpenOffice, Image และ eBook"
type: docs
weight: 20
url: /th/net/work-with-document-stored-in-sharepoint/
timestamp: 2024-10-21-11-17-44
---

Microsoft SharePoint Online คือชุดของเทคโนโลยีบนเว็บที่ช่วยให้องค์กรจัดเก็บ แบ่งปัน และจัดการข้อมูลดิจิทัลได้อย่างง่ายดาย คุณสามารถทำงานกับเอกสารที่จัดเก็บไว้ในโฟลเดอร์ "เอกสารที่ใช้ร่วมกัน" ใน SharePoint โดยใช้ Aspose.Words อันทรงพลังสำหรับ .NET ของเรา

ในบทความนี้ เราจะกล่าวถึงสถานการณ์ทั่วไปในการแปลงเอกสารที่อัปโหลดไปยังโฟลเดอร์ "เอกสารที่ใช้ร่วมกัน" เป็นรูปแบบ PDF และอัปโหลดเอกสารผลลัพธ์กลับไปยังโฟลเดอร์

## ที่ตั้งไว้ล่วงหน้า

1. เข้าร่วม [โปรแกรมนักพัฒนา Microsoft 365](https://developer.microsoft.com/en-us/microsoft-365/dev-program)
2. ตั้งค่า [ตามวิดีโอสอน](https://www.youtube.com/watch?v=ojQcS9ZQmes) แซนด์บ็อกซ์ทันที
3. สร้างข้อมูลรับรองตามแอปสำหรับ SharePoint Online ตามรายละเอียดในรูปแบบ [การตั้งค่าหลักการเฉพาะแอปที่มีสิทธิ์ของผู้เช่า](https://learn.microsoft.com/en-us/sharepoint/dev/solution-guidance/security-apponly-azureacs)
4. อัปโหลดเอกสารชื่อ "TestDoc.docx" ไปยังไซต์การสื่อสารรูทลงในโฟลเดอร์ "Shared Documents"
5. ซื้อใบอนุญาต Aspose.Words หรือใช้ [การออกใบอนุญาตและการสมัครสมาชิก](/words/th/net/licensing/)

{{% alert color="primary" %}}

โปรดทราบว่าหากคุณมีไซต์การสื่อสารรูท `SharePoint` Online อยู่แล้ว ให้ข้ามขั้นตอนที่ 1-2

{{% /alert %}}

## สร้างแอปพลิเคชันคอนโซล

ในการประเมินว่า Aspose.Words สำหรับ .NET ทำงานอย่างไรกับเอกสาร SharePoint คุณต้องสร้างแอปพลิเคชันคอนโซลด้วยการตั้งค่าที่เหมาะสม และใช้ตรรกะสำหรับการดาวน์โหลดเอกสารจากโฟลเดอร์ "เอกสารที่ใช้ร่วมกัน" ประมวลผล จากนั้นอัปโหลดไฟล์นี้ไปยังโฟลเดอร์เดียวกัน. โดยทำตามคำแนะนำที่อธิบายไว้ในส่วนนี้

ในการดำเนินการตามคำแนะนำ คุณจะต้องค้นหาและแก้ไขค่าของพารามิเตอร์ต่อไปนี้ ซึ่งจะสามารถใช้ได้หลังจากทำตามขั้นตอนในส่วน "ค่าที่ตั้งล่วงหน้า" เสร็จแล้ว:

- ตัวระบุผู้เช่า - ดู [วิธีค้นหารหัสผู้เช่าของคุณ](https://docs.microsoft.com/en-us/onedrive/find-your-office-365-tenant-id)
- ชื่อผู้เช่า
- ตัวระบุลูกค้า
- ความลับของลูกค้า

{{% alert color="primary" %}}

โปรดทราบว่า *รหัสลับไคลเอนต์* และ *ตัวระบุไคลเอนต์* ควรถูกสร้างขึ้นในขั้นตอนที่ 3 ของส่วน "ตั้งค่าล่วงหน้า"

{{% /alert %}}

### สร้างโปรเจ็กต์แอปพลิเคชันคอนโซลใหม่

เมื่อต้องการสร้างโครงการแอปพลิเคชันคอนโซลใหม่ ให้ทำตามขั้นตอนเหล่านี้:

1. ใน Visual Studio สร้างโปรเจ็กต์แอปพลิเคชันคอนโซลใหม่ชื่อ "SPOnlineExample" สำหรับภาษา *C#* และเฟรมเวิร์กเป้าหมาย *.NET 6*
2. เพิ่มแพ็คเกจดังต่อไปนี้:
      - `Microsoft.Extensions.Configuration.Json`
      - Aspose.Words

### เพิ่มไฟล์การกำหนดค่า

หากต้องการเพิ่มไฟล์การกำหนดค่า ให้ทำตามขั้นตอนเหล่านี้:

1. เพิ่มไฟล์ "appsettings.json" ในโครงการ
2. เพิ่มเนื้อหาต่อไปนี้ลงในไฟล์:
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

3. กรอกข้อมูลในช่องด้วยค่าที่คุณกำหนดเอง

### เพิ่มไคลเอนต์ API REST ออนไลน์ SharePoint

สร้างไฟล์ "SPOClient.cs" ในโครงการและเติมเนื้อหาต่อไปนี้:

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
    
            if (!response.IsSuccessStatusCode |  | responseData == null)
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

### เพิ่ม Scenario Logic ให้กับโปรแกรม

ย้ายเนื้อหาต่อไปนี้ไปยังไฟล์ "Program.cs":

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

## ดำเนินการตัวอย่างที่สร้างขึ้นและตรวจสอบผลลัพธ์

สุดท้าย รันตัวอย่างที่สร้างขึ้นและตรวจสอบผลลัพธ์ที่คุณได้รับ:

1. รวบรวมโครงการ
2. เรียกใช้แอปพลิเคชันคอนโซล

ด้วยเหตุนี้ ไฟล์ "TestDoc.pdf" ควรอยู่ในโฟลเดอร์ "Shared Documents" ของไซต์การสื่อสารระดับรูท

## ดูสิ่งนี้ด้วย

- บทความ [กำลังแสดงผล](/words/th/net/rendering/) สำหรับข้อมูลเพิ่มเติมเกี่ยวกับรูปแบบหน้าคงที่และรูปแบบโฟลว์เลย์เอาต์
- บทความ [การแปลงเป็นรูปแบบหน้าตายตัว](/words/net/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) สำหรับข้อมูลเพิ่มเติมเกี่ยวกับเค้าโครงหน้า
- บทความ [ระบุตัวเลือกการเรนเดอร์เมื่อแปลงเป็น PDF](/words/th/net/specify-rendering-options-when-converting-to-pdf/) สำหรับข้อมูลเพิ่มเติมเกี่ยวกับการใช้คลาส [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/)
