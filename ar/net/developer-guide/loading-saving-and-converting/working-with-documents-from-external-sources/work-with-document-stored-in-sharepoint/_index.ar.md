---
title: العمل مع مستند مخزّن في `SharePoint` Online
second_title: Aspose.Words لـ .NET
articleTitle: العمل مع مستند مخزّن في `SharePoint` Online
linktitle: العمل مع مستند مخزّن في `SharePoint` Online
description: "تحويل Word المشترك في SharePoint إلى PDF باستخدام C#. العمل مع المستندات المخزنة في SharePoint – تنسيقات إدخال مختلفة، بما في ذلك Word وOpenOffice وImage وeBook."
type: docs
weight: 20
url: /ar/net/work-with-document-stored-in-sharepoint/
timestamp: 2024-10-21-11-17-44
---

Microsoft SharePoint Online عبارة عن مجموعة من التقنيات المستندة إلى الويب والتي تسهل على المؤسسات تخزين المعلومات الرقمية ومشاركتها وإدارتها. يمكنك العمل مع المستندات المخزنة في مجلد "المستندات المشتركة" في SharePoint باستخدام Aspose.Words القوي الخاص بنا لـ .NET.

في هذه المقالة، سنغطي سيناريو شائعًا لتحويل مستند تم تحميله إلى مجلد "المستندات المشتركة" إلى تنسيق PDF وتحميل المستند الناتج مرة أخرى إلى المجلد.

## المعد مسبقا

1. انضم إلى [برنامج مطور Microsoft 365](https://developer.microsoft.com/en-us/microsoft-365/dev-program)
2. قم بإعداد رمل [وفقا لتعليم الفيديو](https://www.youtube.com/watch?v=ojQcS9ZQmes) الفوري
3. قم بإنشاء بيانات اعتماد مستندة إلى التطبيق لـ SharePoint Online كما هو مفصل في [إعداد مدير التطبيق فقط مع أذونات المستأجر](https://learn.microsoft.com/en-us/sharepoint/dev/solution-guidance/security-apponly-azureacs)
4. قم بتحميل المستند بالاسم "TestDoc.docx" إلى موقع الاتصال الجذري في مجلد "المستندات المشتركة"
5. قم بشراء ترخيص Aspose.Words، أو استخدم [الترخيص والاشتراك](/words/ar/net/licensing/)

{{% alert color="primary" %}}

لاحظ أنه إذا كان لديك بالفعل موقع اتصال جذر `SharePoint` Online، فقم بتخطي الخطوات 1-2.

{{% /alert %}}

## إنشاء تطبيق وحدة التحكم

لتقييم كيفية عمل Aspose.Words for .NET مع مستندات SharePoint، تحتاج إلى إنشاء تطبيق وحدة تحكم بالإعدادات المناسبة وتنفيذ منطق تنزيل مستند من مجلد "المستندات المشتركة"، ومعالجته، ثم تحميل هذا الملف إلى نفس المجلد. للقيام بذلك، اتبع الإرشادات الموضحة في هذا القسم.

لتنفيذ التعليمات، تحتاج إلى البحث عن قيم المعلمات التالية وإصلاحها، والتي ستكون متاحة بعد إكمال الخطوات في الجزء "الإعداد المسبق":

- معرف المستأجر - راجع [كيفية العثور على معرف المستأجر الخاص بك](https://docs.microsoft.com/en-us/onedrive/find-your-office-365-tenant-id)
- اسم المستأجر
- معرف العميل
- سر العميل

{{% alert color="primary" %}}

لاحظ أنه يجب إنشاء *سر العميل* و*معرف العميل* في الخطوة 3 من الجزء "الإعداد المسبق".

{{% /alert %}}

### إنشاء مشروع تطبيق وحدة تحكم جديد

لإنشاء مشروع تطبيق وحدة تحكم جديد، اتبع الخطوات التالية:

1. في Visual Studio، قم بإنشاء مشروع تطبيق وحدة تحكم جديد باسم "SPOnlineExample" للغة *C#* وإطار العمل المستهدف *.NET 6*
2. أضف الحزم التالية:
      - `Microsoft.Extensions.Configuration.Json`
      - Aspose.Words

### إضافة ملف التكوين

لإضافة ملف التكوين، اتبع الخطوات التالية:

1. أضف ملف "appsettings.json" إلى المشروع؛
2. أضف المحتوى التالي إلى الملف:
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

3. أكمل الحقول بالقيم المخصصة الخاصة بك.

### إضافة عميل SharePoint Online REST API

قم بإنشاء ملف "SPOClient.cs" في المشروع واملأه بالمحتوى التالي:

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

### إضافة منطق السيناريو إلى البرنامج

انقل المحتوى التالي إلى الملف "Program.cs":

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

## قم بتنفيذ المثال الذي تم إنشاؤه وتحقق من النتيجة

أخيرًا، قم بتشغيل المثال الذي تم إنشاؤه وتحقق من النتيجة التي حصلت عليها:

1. قم بتجميع المشروع
2. قم بتشغيل تطبيق وحدة التحكم

ونتيجة لذلك، يجب وضع الملف "TestDoc.pdf" في مجلد "المستندات المشتركة" بموقع الاتصال الجذر.

## أنظر أيضا

- المقالة [استدعاء](/words/ar/net/rendering/) لمزيد من المعلومات حول تنسيقات الصفحات الثابتة وتخطيطات التدفق
- المقالة [التحويل إلى تنسيق الصفحة الثابتة](/words/net/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) لمزيد من المعلومات حول تخطيط الصفحة
- المقالة [حدد خيارات العرض عند التحويل إلى PDF](/words/ar/net/specify-rendering-options-when-converting-to-pdf/) لمزيد من المعلومات حول استخدام فئة [PdfSaveOptions](https://reference.aspose.com/words/ar/net/aspose.words.saving/pdfsaveoptions/)
