---
title: עבודה עם מסמך בחנות `SharePoint` באינטרנט
second_title: Aspose.Words עבור .NET
articleTitle: עבודה עם מסמך בחנות `SharePoint` באינטרנט
linktitle: עבודה עם מסמך בחנות `SharePoint` באינטרנט
description: "המרת Word משותף SharePoint PDF באמצעות C#. עבודה עם מסמכים מאוחסנים SharePoint - פורמטי קלט שונים, כולל Word, OpenOffice, Image ו- eBook."
type: docs
weight: 20
url: /he/net/work-with-document-stored-in-sharepoint/
timestamp: 2024-10-21-11-17-44
---

Microsoft SharePoint באינטרנט הוא אוסף של טכנולוגיות מבוססות אינטרנט המאפשרות לארגונים לאחסן, לשתף ולנהל מידע דיגיטלי. אתה יכול לעבוד עם מסמכים מאוחסנים בתיקיה "Shared Documents" בתיקיה SharePoint באמצעות העוצמה שלנו Aspose.Words עבור .NET.

במאמר זה, אנו נכסה תרחיש משותף להמירת מסמך שהועלו לתיקיה "מסמכים משותפים" לפורמט PDF והעלאה של המסמך המתקבל חזרה לתיקיה.

## תחילת

1.1 1. הצטרפו [Microsoft 365 Developer Program](https://developer.microsoft.com/en-us/microsoft-365/dev-program)
2. הגדר תיבת חול מיידית [על פי מדריך וידאו](https://www.youtube.com/watch?v=ojQcS9ZQmes)
3. יצירת אישורים מבוססי אפליקציה SharePoint באינטרנט כמפורט [הקמת מנהל אפליקציה בלבד עם הרשאות דיירות](https://learn.microsoft.com/en-us/sharepoint/dev/solution-guidance/security-apponly-azureacs)
4. העלה את המסמך עם השם "TestDoc.docx" לאתר תקשורת שורש בתיקיה "Shared Documents"
5. רכישה Aspose.Words רישיון או שימוש [רישוי ומנוי](/words/he/net/licensing/)

{{% alert color="primary" %}}

שימו לב אם כבר יש לך `SharePoint` אתר תקשורת שורש באינטרנט ולאחר מכן לדלג על שלבים 1-2.

{{% /alert %}}

## יצירת Applications

להעריך כיצד Aspose.Words עבור .NET עובד עם SharePoint מסמכים, עליך ליצור יישום קונסולה עם ההגדרות המתאימות וליישם את ההיגיון להורדה מסמך מן התיקיה "Shared Documents", עיבודו, ולאחר מכן להעלות קובץ זה לאותו תיקיה. כדי לעשות זאת, בצע את ההוראות המתוארות בסעיף זה.

כדי לבצע את ההוראות, עליך למצוא ולתקן את הערכים של הפרמטרים הבאים, אשר יהיה זמין לאחר השלמת השלבים בחלק "Preset":

- Tenant מזהה - ראה [איך למצוא את ה-Fant id](https://docs.microsoft.com/en-us/onedrive/find-your-office-365-tenant-id)
- שם Tenant
- מזהה לקוחות
- סוד הלקוח

{{% alert color="primary" %}}

שים לב שיש ליצור את המזהה המקל* ו-*מסוג* בשלב 3 של החלק "Preset".

{{% /alert %}}

### יצירת פרויקט יישום New Console

כדי ליצור פרויקט יישום קונסולות חדש, בצע את השלבים הבאים:

1.1 1. In In In Visual Studio, יצירת פרויקט יישום קונסולות חדש בשם "SPOnlineExample" עבור *C#שפה ומסגרת מטרה *.NET 6*
2. הוסף את החבילות הבאות:
      - `Microsoft.Extensions.Configuration.Json`
      - Aspose.Words

### הוספת File

כדי להוסיף קובץ תצורה, בצע שלבים אלה:

1.1 1. הוסף קובץ "appsettings.json" לפרויקט;
2. הוסף את התוכן הבא לתוך הקובץ:
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

3. השלם את השדות עם הערכים המותאמים אישית שלך.

### הוסף SharePoint באינטרנט REST API לקוח

צור קובץ "SPOClient.cs" בפרויקט ומלא אותו עם התוכן הבא:

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

### הוסף Scenario Logic לתוכנית

להעביר את התוכן הבא לקובץ "Program.cs":

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

## לבצע את הדוגמה שנוצרה ולבדוק את התוצאות

לבסוף, להפעיל את הדוגמה שנוצרה ולבדוק את התוצאה שקיבלת:

1.1 1. לעקוף את הפרויקט
2. הפעל את יישום הקונסולה

כתוצאה מכך, קובץ "TestDoc.pdf" צריך להיות ממוקם בתיקיה "Shared Documents" של אתר תקשורת שורש.

## ראה גם

- המאמר [Rendering](/words/he/net/rendering/) לקבלת מידע נוסף על פורמטים קבועים של דף וזרימה
- המאמר [המרת פורמט קבוע-עמוד](/words/net/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) למידע נוסף על פריסת הדף
- המאמר [המונחים: Rendering Options When Converting to PDF](/words/he/net/specify-rendering-options-when-converting-to-pdf/) למידע נוסף על השימוש [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) הכיתה
