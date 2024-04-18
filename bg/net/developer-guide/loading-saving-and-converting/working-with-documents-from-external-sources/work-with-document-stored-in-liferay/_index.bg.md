---
title: Работа с документ, съхраняван в Liferay
second_title: Aspose.Words вместо .NET
articleTitle: Работа с документ, съхраняван в Liferay
linktitle: Работа с документ, съхраняван в Liferay
description: "Сравняване на споделените в Word документи Liferay приложение C#. Работа с документи, съхранявани в Liferay ... различни входни формати, включително Word, OpenOffice, Image и eBook."
type: docs
weight: 20
url: /bg/net/work-with-document-stored-in-liferay/
---

Liferay Порталът е софтуерна платформа с отворен код, предназначена за разработване на уеб портали и уебсайтове. Liferay осигурява система за управление на документи като част от платформата си портал, която позволява на потребителите да създават, организират, съхраняват и управляват документи по съвместен и ефективен начин. Тази функционалност за управление на документи често се нарича Liferay Библиотеката на документите.

В тази статия ще разгледаме общ сценарий за сравняване на документите, качени в основата на библиотеката "Документи и медии" и качване на получения документ обратно.

## Предварително зададено

1. Започнете нов Liferay Пример за портал чрез тичане Docker:

   {{< highlight bash >}}
       docker run -it -m 8g -p 8080:8080 liferay/portal:7.4.3.92-ga92
   {{< /highlight >}}

   Ако нямате Docker, [да го инсталирате](https://docs.docker.com/desktop/) Първо.
   Можете да използвате друга версия на [Liferay Name](https://hub.docker.com/r/liferay/portal).

2. Подпишете се. [Liferay](http://localhost:8080) използване на имейл адреса `test@liferay.com` и парола `test`.
3. Смени паролата.
4. Изтегляне на идентификатора на сайта, като се използва [Този урок](https://learn.liferay.com/w/dxp/headless-delivery/consuming-apis/consuming-rest-services#identify-the-site-containing-the-data).
5. Закупуване на Aspose.Words лиценз или използване [Лицензиране и записване](/words/bg/net/licensing/).

{{% alert color="primary" %}}

Имайте предвид, че ако вече имате Liferay портал след това пропуснете стъпки 1-3.

{{% /alert %}}

## Създаване на приложение за конзола

За да оцените как Aspose.Words вместо .NET работи с Liferay Документи и Медийна библиотека, трябва да създадете конзола с подходящи настройки и да приложите логиката за качване на документи в корена на Документи и Медийна библиотека, изтегляне на тези документи, обработка и след това качване на резултата обратно към корена на документи и Медийна библиотека. За да направите това, следвайте инструкциите, описани в този раздел.

За да изпълните инструкциите, трябва да намерите и фиксирате стойностите на следните променливи, които ще бъдат на разположение след завършване на стъпките в частта "Предварително":

- Идентификационен код на сайта
- Потребителски вход
- Потребителска парола
- Base портал URL
- Път до Aspose.Words Лицензионен файл

{{% alert color="primary" %}}

Имайте предвид, че *login* както и *password* трябва да бъдат получени на етапи 2-3 от частта "Предварително" и * идентификаторът на мястото* трябва да бъде получен на стъпка 4 от частта "Предварително."

{{% /alert %}}

### Създаване на нов проект за прилагане на конзола

За да създадете нов конзолен проект, следвайте следните стъпки:

1. В Visual Studio, създаване на нов конзолен проект, наречен "LiferayПример" за *C#* език и целева рамка *.NET 6 *
2. Добавяне на следните пакети:
      - `Newtonsoft.Json`
   - ИдентичностМодел
      - Aspose.Words

### Добавяне на файлове за сравнение

Създаване на папка "Документи" в проекта и добавяне на файловете "ДокументА.докс" и "ДокументА.докс."

### Добавяне на класове модели JSON за REST API Преработка

Създаване на папка "JsonModel" в проекта. Създаване на файл "DownloadResponse.cs" в проекта и да го попълните със следното съдържание:

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

Създаване на файл "FileMetadata.cs" в проекта и попълването му със следното съдържание:

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

Създаване на файл "UploadResponse.cs" в проекта и го попълнете със следното съдържание:

**.NET**
{{< highlight csharp >}}
using Newtonsoft.Json;

namespace LiferayExample.JsonModel
{
    [JsonObject(ItemNullValueHandling = NullValueHandling.Ignore)]
    public class UploadResponse : FileMetadata { }
}
{{< /highlight >}}

Създаване на файл "GetFileInfoByNameResponse.cs" в проекта и го попълнете със следното съдържание:

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

### Добавяне Liferay РЕСТ API Клиент

Създаване на файл "SecurityContext.cs" в проекта и го попълнете със следното съдържание:

**.NET**
{{< highlight csharp >}}
namespace LiferayExample
{
    public record SecurityContext(string SiteId, string Login, string Password);
}
{{< /highlight >}}

Създайте файл "ДокументClient.cs" в проекта и го попълнете със следното съдържание:

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

### Добавяне на сценарийна логика към програмата

Преместване на следното съдържание във файла "Program.cs":

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

## Изпълнение на създадения пример и проверка на резултата

И накрая, стартирайте създадения пример и проверете резултата, който имате:

1. Компилиране на проекта
2. Стартиране на приложението конзола

В резултат на това файлът "Документ Сравнен.docx" трябва да бъде поставен в корена на Документи и Медийна библиотека.

## Вижте също

- Статията. [Работа с документ, съхраняван в `SharePoint` Онлайн](/words/net/work-with-document-stored-in-sharepoint)
- Статията. [Работа с документ, белязан с етикет за чувствителност](/words/bg/net/work-with-document-market-by-sensitivity-label/)
