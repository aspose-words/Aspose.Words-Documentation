---
title: עבודה עם מסמך בחנות Liferay
second_title: Aspose.Words עבור .NET
articleTitle: עבודה עם מסמך בחנות Liferay
linktitle: עבודה עם מסמך בחנות Liferay
description: "השוואת מסמכי Word משותפים Liferay באמצעות שימוש C#. עבודה עם מסמכים מאוחסנים Liferay - פורמטי קלט שונים, כולל Word, OpenOffice, Image ו- eBook."
type: docs
weight: 20
url: /he/net/work-with-document-stored-in-liferay/
---

Liferay פורטל הוא פלטפורמת קוד פתוח עבור פיתוח פורטלים אתרי אינטרנט. Liferay מספק מערכת ניהול מסמכים כחלק מפלטפורמת הפורטל שלה, המאפשרת למשתמשים ליצור, לארגן, לאחסן ולנהל מסמכים באופן שיתופי ויעיל. פונקציונליות ניהול מסמך זו נקראת לעתים קרובות Liferay ספריית מסמכים

במאמר זה, אנו נכסה תרחיש משותף להשוואת מסמכים שהועלו לשורש של ספריה "Documents and Media" והעלאה של המסמך המתקבל.

## תחילת

1.1 1. התחל חדש Liferay תגית: Running Docker:

   {{< highlight bash >}}
       docker run -it -m 8g -p 8080:8080 liferay/portal:7.4.3.92-ga92
   {{< /highlight >}}

   אם אין לך Docker, [להתקין אותו](https://docs.docker.com/desktop/) קודם.
   ניתן להשתמש בגרסה אחרת של [Liferay פורטל Docker](https://hub.docker.com/r/liferay/portal).

2. היכנס [Liferay](http://localhost:8080) באמצעות כתובת הדואר האלקטרוני `test@liferay.com` סיסמה `test`.
3. כאשר תתבקש לשנות את הסיסמה שלך.
4. לשחזר את האתר מזהה באמצעות [מדריך זה](https://learn.liferay.com/w/dxp/headless-delivery/consuming-apis/consuming-rest-services#identify-the-site-containing-the-data).
5. לקנות Aspose.Words רישיון או שימוש [רישוי ומנוי](/words/he/net/licensing/).

{{% alert color="primary" %}}

שים לב שאם כבר יש לך Liferay פורטל לאחר מכן לדלג על שלבים 1-3.

{{% /alert %}}

## יצירת Applications

להעריך כיצד Aspose.Words עבור .NET עובד עם Liferay מסמכים וספריית מדיה, אתה צריך ליצור יישום קונסולה עם ההגדרות המתאימות וליישם את ההיגיון להעלאת המסמכים לשורש המסמכים וספריית המדיה, הורדת המסמכים הללו, עיבודו, ולאחר מכן להעלות את התוצאה חזרה לשורש המסמכים וספריית המדיה. כדי לעשות זאת, בצע את ההוראות המתוארות בסעיף זה.

כדי לבצע את ההוראות, עליך למצוא ולתקן את הערכים של המשתנים הבאים, אשר יהיה זמין לאחר השלמת השלבים בחלק "Preset":

- מזהה אתר
- כניסה למשתמש
- סיסמה המשתמש
- פורטל בסיס url
- הדרך אל Aspose.Words רישיון קובץ

{{% alert color="primary" %}}

תגית: The *login* ו *password* יש להשיג בצעדים 2-3 של החלק "Preset", ו *אתר מזהה * יש לקבל בשלב 4 של החלק "Preset".

{{% /alert %}}

### יצירת פרויקט יישום New Console

כדי ליצור פרויקט יישום קונסולות חדש, בצע את השלבים הבאים:

1.1 1. In In In Visual Studio, יצירת פרויקט יישום קונסולות חדש בשם "Liferayדוגמא *C#שפה ומסגרת מטרה *.NET 6*
2. הוסף את החבילות הבאות:
      - `Newtonsoft.Json`
   זהות
      - Aspose.Words

### הוסף קבצים להשוואה

צור תיקיה "Docs" בפרויקט ולהוסיף את הקבצים "DocumentA.docx" ו "DocumentA.docx".

### עקבו אחרי JSON Model Lessons for REST API עיבוד

צור תיקיה "JsonModel" בפרויקט. צור קובץ "DownloadResponse.cs" בפרויקט ולמלא אותו עם התוכן הבא:

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

צור קובץ "FileMetadata.cs" בפרויקט ומלא אותו עם התוכן הבא:

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

צור קובץ "UploadResponse.cs" בפרויקט ולמלא אותו עם התוכן הבא:

**.NET**
{{< highlight csharp >}}
using Newtonsoft.Json;

namespace LiferayExample.JsonModel
{
    [JsonObject(ItemNullValueHandling = NullValueHandling.Ignore)]
    public class UploadResponse : FileMetadata { }
}
{{< /highlight >}}

צור קובץ "GetFileInfobyResponse.cs" בפרויקט ולמלא אותו עם התוכן הבא:

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

### הוסף Liferay REST REST API לקוח

צור קובץ "SecurityContext.cs" בפרויקט ומלא אותו עם התוכן הבא:

**.NET**
{{< highlight csharp >}}
namespace LiferayExample
{
    public record SecurityContext(string SiteId, string Login, string Password);
}
{{< /highlight >}}

צור קובץ "DocumentClient.cs" בפרויקט ומלא אותו עם התוכן הבא:

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

### הוסף Scenario Logic לתוכנית

להעביר את התוכן הבא לקובץ "Program.cs":

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

## לבצע את הדוגמה שנוצרה ולבדוק את התוצאות

לבסוף, להפעיל את הדוגמה שנוצרה ולבדוק את התוצאה שקיבלת:

1.1 1. לעקוף את הפרויקט
2. הפעל את יישום הקונסולה

כתוצאה מכך, יש להציב את קובץ "DocumentCompared.docx" בשורש של מסמכים וספריית מדיה.

## ראה גם

- המאמר [עבודה עם מסמך בחנות `SharePoint` באינטרנט](/words/net/work-with-document-stored-in-sharepoint)
- המאמר [עבודה עם מסמך מסומן על ידי תווית רגישות](/words/he/net/work-with-document-market-by-sensitivity-label/)
