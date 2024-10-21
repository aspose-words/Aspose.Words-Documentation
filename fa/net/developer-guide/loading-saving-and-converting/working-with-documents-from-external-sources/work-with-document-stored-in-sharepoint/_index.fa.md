---
title: با یک سند ذخیره شده در `SharePoint` Online کار کنید
second_title: Aspose.Words برای .NET
articleTitle: با یک سند ذخیره شده در `SharePoint` Online کار کنید
linktitle: با یک سند ذخیره شده در `SharePoint` Online کار کنید
description: "تبدیل Word به اشتراک گذاشته شده در SharePoint به PDF با استفاده از C#. کار با اسناد ذخیره شده در SharePoint - فرمت های ورودی مختلف، از جمله Word، OpenOffice، Image و eBook."
type: docs
weight: 20
url: /fa/net/work-with-document-stored-in-sharepoint/
---

Microsoft SharePoint Online مجموعه ای از فناوری های مبتنی بر وب است که ذخیره، اشتراک گذاری و مدیریت اطلاعات دیجیتال را برای سازمان ها آسان می کند. می توانید با استفاده از Aspose.Words قدرتمند ما برای .NET با اسناد ذخیره شده در پوشه "Shared Documents" در SharePoint کار کنید.

در این مقاله، ما یک سناریوی رایج برای تبدیل یک سند آپلود شده در پوشه "Shared Documents" به فرمت PDF و بارگذاری مجدد سند حاصل به پوشه را پوشش خواهیم داد.

## از پیش تعیین شده

1. به [برنامه توسعه دهنده Microsoft 365](https://developer.microsoft.com/en-us/microsoft-365/dev-program) بپیوندید
2. یک سندباکس فوری [طبق آموزش تصویری](https://www.youtube.com/watch?v=ojQcS9ZQmes) راه اندازی کنید
3. اعتبارنامه های مبتنی بر برنامه برای SharePoint Online همانطور که در [راه اندازی یک مدیر فقط برای برنامه با مجوزهای مستاجر](https://learn.microsoft.com/en-us/sharepoint/dev/solution-guidance/security-apponly-azureacs) توضیح داده شده است ایجاد کنید
4. سند را با نام "TestDoc.docx" در سایت ارتباط ریشه در پوشه "Shared Documents" آپلود کنید
5. مجوز Aspose.Words را خریداری کنید یا از [مجوز و اشتراک](/words/fa/net/licensing/) استفاده کنید

{{% alert color="primary" %}}

توجه داشته باشید که اگر قبلاً یک سایت ارتباط ریشه `SharePoint` Online دارید، مراحل 1-2 را رد کنید.

{{% /alert %}}

## ایجاد برنامه کنسول

برای ارزیابی نحوه کار Aspose.Words برای .NET با اسناد SharePoint، باید یک برنامه کنسول با تنظیمات مناسب ایجاد کنید و منطق دانلود یک سند از پوشه "Shared Documents"، پردازش آن و سپس آپلود این فایل در همان پوشه را پیاده سازی کنید.. برای انجام این کار، دستورالعمل های توضیح داده شده در این بخش را دنبال کنید.

برای اجرای دستورالعمل ها، باید مقادیر پارامترهای زیر را که پس از انجام مراحل در قسمت "Preset" در دسترس خواهند بود، پیدا و برطرف کنید:

- شناسه مستاجر - [چگونه شناسه مستاجر خود را پیدا کنیم](https://docs.microsoft.com/en-us/onedrive/find-your-office-365-tenant-id) را ببینید
- نام مستاجر
- شناسه مشتری
- راز مشتری

{{% alert color="primary" %}}

توجه داشته باشید که *مخفی مشتری* و *شناسه مشتری* باید در مرحله 3 قسمت "Preset" تولید شوند.

{{% /alert %}}

### یک پروژه کاربردی کنسول جدید ایجاد کنید

برای ایجاد یک پروژه برنامه کاربردی کنسول جدید، این مراحل را دنبال کنید:

1. در Visual Studio، یک پروژه برنامه کاربردی کنسول جدید با نام "SPOnlineExample" برای زبان *C#* و چارچوب هدف *.NET 6* ایجاد کنید
2. بسته های زیر را اضافه کنید:
      - `Microsoft.Extensions.Configuration.Json`
      - Aspose.Words

### افزودن فایل پیکربندی

برای افزودن فایل پیکربندی، مراحل زیر را دنبال کنید:

1. یک فایل "appsettings.json" را به پروژه اضافه کنید
2. محتوای زیر را به فایل اضافه کنید:
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

3. فیلدها را با مقادیر سفارشی خود تکمیل کنید.

### سرویس گیرنده SharePoint Online REST API را اضافه کنید

یک فایل "SPOClient.cs" در پروژه ایجاد کنید و آن را با محتوای زیر پر کنید:

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

### منطق سناریو را به برنامه اضافه کنید

محتوای زیر را به فایل "Program.cs" منتقل کنید:

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

## مثال ایجاد شده را اجرا کنید و نتیجه را بررسی کنید

در نهایت، مثال ایجاد شده را اجرا کنید و نتیجه ای را که به دست آورده اید بررسی کنید:

1. پروژه را کامپایل کنید
2. برنامه کنسول را اجرا کنید

در نتیجه فایل "TestDoc.pdf" باید در پوشه "Shared Documents" سایت ارتباط ریشه قرار گیرد.

## همچنین ببینید

- مقاله [تفسیر](/words/fa/net/rendering/) برای اطلاعات بیشتر در مورد فرمت‌های صفحه ثابت و طرح‌بندی جریان
- مقاله [تبدیل به فرمت صفحه ثابت](/words/net/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) برای اطلاعات بیشتر در مورد صفحه آرایی
- مقاله [هنگام تبدیل به PDF گزینه های رندر را مشخص کنید](/words/fa/net/specify-rendering-options-when-converting-to-pdf/) برای اطلاعات بیشتر در مورد استفاده از کلاس [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/)
