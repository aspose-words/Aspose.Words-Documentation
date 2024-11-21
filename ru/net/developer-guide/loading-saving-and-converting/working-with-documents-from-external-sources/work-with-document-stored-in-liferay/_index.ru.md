---
title: Работа с документом, хранящимся в Liferay
second_title: Aspose.Words для .NET
articleTitle: Работа с документом, хранящимся в Liferay
linktitle: Работа с документом, хранящимся в Liferay
description: "Сравните документы Word, используемые в Liferay использовать C#. Работа с документами, хранящимися в Liferay - различные форматы ввода, включая Word, OpenOffice, Image и eBook."
type: docs
weight: 20
url: /ru/net/work-with-document-stored-in-liferay/
timestamp: 2024-01-31-14-23-37
---

Liferay Portal - это программная платформа корпоративного портала с открытым исходным кодом, предназначенная для разработки веб-порталов и веб-сайтов. Liferay предоставляет систему управления документами как часть своей платформы портала, позволяя пользователям создавать, организовывать, хранить и управлять документами совместно и эффективно. Эта функция управления документами часто упоминается как Liferay Библиотека документов.

В этой статье мы рассмотрим общий сценарий сравнения документов, загруженных в корень библиотеки "Документы и медиа", и выгрузки полученного документа обратно.

## Предустановленный

1. Начать новый Liferay Портал экземпляра запускается Docker:

   {{< highlight bash >}}
       docker run -it -m 8g -p 8080:8080 liferay/portal:7.4.3.92-ga92
   {{< /highlight >}}

   Если у вас нет Docker, [установить](https://docs.docker.com/desktop/) Сначала.
   Вы можете использовать другую версию [Liferay Портальный докер](https://hub.docker.com/r/liferay/portal).

2. Подписаться [Liferay](http://localhost:8080) используя адрес электронной почты `test@liferay.com` и пароль `test`.
3. По запросу измените свой пароль.
4. восстановить идентификатор сайта с помощью [Этот учебник](https://learn.liferay.com/w/dxp/headless-delivery/consuming-apis/consuming-rest-services#identify-the-site-containing-the-data).
5. Купить Ан Aspose.Words Лицензия или использование [Лицензирование и подписка](/words/ru/net/licensing/).

{{% alert color="primary" %}}

Обратите внимание, что если у вас уже есть Liferay Затем портал пропускает шаги 1-3.

{{% /alert %}}

## Создание консоли приложения

Чтобы оценить, как Aspose.Words для .NET работать с Liferay Библиотека документов и медиа, необходимо создать консольное приложение с соответствующими настройками и реализовать логику загрузки документов в корень библиотеки Документов и медиа, загрузки этих документов, их обработки, а затем загрузки результата обратно в корень библиотеки Документов и медиа. Для этого следуйте инструкциям, описанным в этом разделе.

Для выполнения инструкций необходимо найти и зафиксировать значения следующих переменных, которые будут доступны после выполнения шагов в части "Предустановка":

- идентификатор сайта
- Логин пользователя
- Пароль пользователя
- Базовый портал url
- Путь к Aspose.Words Лицензионный файл

{{% alert color="primary" %}}

Обратите внимание, что *login* и *password* должно быть получено в шагах 2-3 части "Предустановка", а идентификатор *сайта* должен быть получен на шаге 4 части "Предустановка".

{{% /alert %}}

### Создание нового проекта Console Application

Чтобы создать новый проект консольного приложения, выполните следующие шаги:

1. в Visual Studio, создать новый проект консольного приложения под названием "LiferayПример" для *C#* язык и целевая структура*.NET 6*
2. Добавить следующие пакеты:
      - `Newtonsoft.Json`
   - Модель идентификации
      - Aspose.Words

### Добавить файлы документов для сравнения

Создайте папку "Docs" в проекте и добавьте файлы "DocumentA.docx" и "DocumentA.docx".

### Добавить JSON Model Class для REST API обработка

Создайте папку "JsonModel" в проекте. Создайте файл "DownloadResponse.cs" в проекте и заполните его следующим контентом:

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

Создайте файл "FileMetadata.cs" в проекте и заполните его следующим контентом:

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

Создайте файл "UploadResponse.cs" в проекте и заполните его следующим контентом:

**.NET**
{{< highlight csharp >}}
using Newtonsoft.Json;

namespace LiferayExample.JsonModel
{
    [JsonObject(ItemNullValueHandling = NullValueHandling.Ignore)]
    public class UploadResponse : FileMetadata { }
}
{{< /highlight >}}

Создайте в проекте файл "GetFileInfoByNameResponse.cs" и заполните его следующим контентом:

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

### Добавить Liferay отдых API клиент

Создайте в проекте файл "SecurityContext.cs" и заполните его следующим содержимым:

**.NET**
{{< highlight csharp >}}
namespace LiferayExample
{
    public record SecurityContext(string SiteId, string Login, string Password);
}
{{< /highlight >}}

Создайте файл "DocumentClient.cs" в проекте и заполните его следующим контентом:

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

### Добавить логику сценария в программу

Переместите следующий контент в файл "Program.cs":

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

## Выполните созданный пример и проверьте результат

Наконец, запустите созданный пример и проверьте полученный результат:

1. Составьте проект
2. Запустите консольное приложение

В результате файл "DocumentCompared.docx" должен быть помещен в корень библиотеки "Документы и медиа".

## Смотрите также

- Статья [Работа с документом, хранящимся в `SharePoint` Онлайн](/words/net/work-with-document-stored-in-sharepoint)
- Статья [Работа с документом, отмеченным этикеткой чувствительности](/words/ru/net/work-with-document-market-by-sensitivity-label/)
