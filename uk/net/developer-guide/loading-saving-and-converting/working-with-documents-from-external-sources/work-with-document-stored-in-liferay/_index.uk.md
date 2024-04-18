---
title: Робота з документом Liferay
second_title: Aspose.Words для .NET
articleTitle: Робота з документом Liferay
linktitle: Робота з документом Liferay
description: "Порівняти документи Word Liferay використання C#й Робота з документами, що зберігаються в Liferay – різні формати введення, включаючи Word, OpenOffice, Image та eBook."
type: docs
weight: 20
url: /uk/net/work-with-document-stored-in-liferay/
---

Liferay Статус на сервери Liferay надає систему управління документами в рамках його порталної платформи, що дозволяє користувачам створювати, організовувати, зберігати та керувати документами в сукупному та ефективному порядку. Ця функція керування документами часто згадується як Liferay Бібліотека документів.

У цій статті ми покриємо загальний сценарій для порівняння документів, завантажених до кореневої бібліотеки "Документи та медіа" та завантаження отриманого документа назад.

## Зареєструватися

1,1 км Почати новий Liferay Веб-сайт Docker:

   {{< highlight bash >}}
       docker run -it -m 8g -p 8080:8080 liferay/portal:7.4.3.92-ga92
   {{< /highlight >}}

   Якщо у вас немає Docker, [встановити його](https://docs.docker.com/desktop/) перший.
   Ви можете використовувати іншу версію [Liferay Статус на сервери](https://hub.docker.com/r/liferay/portal)й

2,2 км Увійти [Liferay](http://localhost:8080) за допомогою електронної пошти `test@liferay.com` і пароль `test`й
3. У При запиті, змінити пароль.
4. У Отримати ідентифікатор сайту за допомогою [підручник](https://learn.liferay.com/w/dxp/headless-delivery/consuming-apis/consuming-rest-services#identify-the-site-containing-the-data)й
5. Умань Закупівля Aspose.Words ліцензія або використання [Ліцензування та підписка](/words/uk/net/licensing/)й

{{% alert color="primary" %}}

Зверніть увагу, що якщо ви вже маєте Liferay портал потім пропустити кроки 1-3.

{{% /alert %}}

## Створити заявку консолі

Оцінити як Aspose.Words для .NET роботи з Liferay Документація та медіа-бібліотека необхідно створити програму консолі з відповідними налаштуваннями та реалізовувати логіку для завантаження документів до кореня документів та медіа-бібліотеки, завантаження цих документів, обробки його, а потім завантаження результату назад до кореня документів та медіа-бібліотеки. Для цього слідуйте інструкціям, описаним в цьому розділі.

Щоб виконати інструкції, необхідно знайти і зафіксувати значення наступних змінних, які будуть доступні після завершення кроків в розділі "Завантаження":

- ідентифікатор сайту
- Логін користувача
- Ім'я користувача
- Базовий портал URL
- Шлях до Aspose.Words Ліцензійний файл

{{% alert color="primary" %}}

Зверніть увагу, що *login* і *password* повинен бути отриманий в кроках 2-3 частини "Пресет" і * ідентифікатор сайту* повинен бути отриманий в крок 4 частини "Пресет".

{{% /alert %}}

### Створити новий проект консолі

Для створення нового проекту консолі слідувати цими кроками:

1,1 км У Visual Studio, створити новий проект консольної заявкиLiferayПриклад" для *C#* Мова та цільова рамка *.NET 6*
2,2 км Додати наступні пакети:
      - `Newtonsoft.Json`
   - Ідентифікатор
      - Aspose.Words

### Додати файли документів для порівняння

Створіть папку "Docs" в проекті і додайте файли "DocumentA.docx" і "DocumentA.docx".

### Додавання моделей JSON для REST API Переробка

Створіть папку "JsonModel" в проекті. Створіть файл "DownloadResponse.cs" в проекті і заповніть його наступним змістом:

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

Створіть файл "FileMetadata.cs" в проекті і заповніть його наступним змістом:

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

Створіть файл "UploadResponse.cs" в проекті і заповніть його наступним змістом:

**.NET**
{{< highlight csharp >}}
using Newtonsoft.Json;

namespace LiferayExample.JsonModel
{
    [JsonObject(ItemNullValueHandling = NullValueHandling.Ignore)]
    public class UploadResponse : FileMetadata { }
}
{{< /highlight >}}

Створіть файл "GetFileInfoByNameResponse.cs" в проекті і заповніть його наступним змістом:

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

### Додати Liferay РЕСТ API Клієнт

Створіть файл "SecurityContext.cs" в проекті і заповніть його наступним змістом:

**.NET**
{{< highlight csharp >}}
namespace LiferayExample
{
    public record SecurityContext(string SiteId, string Login, string Password);
}
{{< /highlight >}}

Створіть файл "DocumentClient.cs" в проекті і заповніть його наступним змістом:

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

### Додати логіку Scenario до програми

Перемістити наступний вміст до файлу "Program.cs":

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

## Виконувати приклад і перевірити результат

Нарешті, запустіть створений приклад і перевірте результат, який ви отримали:

1,1 км Складання проекту
2,2 км Запустіть програму консолі

У результаті файл "ДокументПорівняно.docx" необхідно розмістити в корені документів та бібліотеки ЗМІ.

## Дивитися ще

- Статті [Робота з документом `SharePoint` Інтернет](/words/net/work-with-document-stored-in-sharepoint)
- Статті [Робота з документом, позначеною міткою чутливості](/words/uk/net/work-with-document-market-by-sensitivity-label/)
