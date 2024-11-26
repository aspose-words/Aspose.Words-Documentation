---
title: Pracuj z dokumentem przechowywanym w formacie Liferay
second_title: Aspose.Words dla .NET
articleTitle: Pracuj z dokumentem przechowywanym w formacie Liferay
linktitle: Pracuj z dokumentem przechowywanym w formacie Liferay
description: "Porównaj dokumenty Word udostępnione w Liferay przy użyciu C#. Pracuj z dokumentami przechowywanymi w Liferay – różnymi formatami wejściowymi, w tym Word, OpenOffice, Image i eBook."
type: docs
weight: 20
url: /pl/net/work-with-document-stored-in-liferay/
timestamp: 2024-01-31-14-23-37
---

Liferay Portal to platforma oprogramowania portali korporacyjnych o otwartym kodzie źródłowym, przeznaczona do tworzenia portali i stron internetowych. Liferay udostępnia system zarządzania dokumentami w ramach swojej platformy portalowej, umożliwiający użytkownikom tworzenie, organizowanie, przechowywanie i zarządzanie dokumentami w sposób efektywny i oparty na współpracy. Ta funkcja zarządzania dokumentami jest często nazywana biblioteką dokumentów Liferay.

W tym artykule omówimy typowy scenariusz porównywania dokumentów przesłanych do katalogu głównego biblioteki "Dokumenty i multimedia" i przesyłania wynikowego dokumentu z powrotem.

## Wstępnie ustawione

1. Uruchom nową instancję portalu Liferay, uruchamiając Docker:

   {{< highlight bash >}}
       docker run -it -m 8g -p 8080:8080 liferay/portal:7.4.3.92-ga92
   {{< /highlight >}}

   Jeśli nie masz Docker, najpierw [Zainstaluj to](https://docs.docker.com/desktop/).
   Możesz użyć innej wersji [Okno dokowane Portalu Liferay](https://hub.docker.com/r/liferay/portal).

2. Zaloguj się do [Liferay](http://localhost:8080) przy użyciu adresu e-mail `test@liferay.com` i hasła `test`.
3. Po wyświetleniu monitu zmień hasło.
4. Pobierz identyfikator witryny za pomocą [ten poradnik](https://learn.liferay.com/w/dxp/headless-delivery/consuming-apis/consuming-rest-services#identify-the-site-containing-the-data).
5. Kup licencję Aspose.Words lub użyj [Licencjonowanie i subskrypcja](/words/pl/net/licensing/).

{{% alert color="primary" %}}

Pamiętaj, że jeśli masz już portal Liferay, pomiń kroki 1-3.

{{% /alert %}}

## Utwórz aplikację konsolową

Aby ocenić, jak Aspose.Words for .NET współpracuje z biblioteką Dokumenty i multimedia Liferay, należy utworzyć aplikację konsolową z odpowiednimi ustawieniami i zaimplementować logikę przesyłania dokumentów do katalogu głównego biblioteki Dokumenty i multimedia, pobierać te dokumenty, przetwarzać je, a następnie przesłanie wyniku z powrotem do katalogu głównego biblioteki dokumentów i multimediów. Aby to zrobić, postępuj zgodnie z instrukcjami opisanymi w tej sekcji.

Aby wykonać instrukcje, należy znaleźć i naprawić wartości następujących zmiennych, które będą dostępne po wykonaniu kroków z części "Preset":

- Identyfikator witryny
- Login użytkownika
- Hasło użytkownika
- Bazowy adres URL portalu
- Ścieżka do pliku licencji Aspose.Words

{{% alert color="primary" %}}

Należy pamiętać, że *login* i *password* należy uzyskać w krokach 2-3 części "Ustawienia wstępne", a *identyfikator witryny* należy uzyskać w kroku 4 części "Ustawienia wstępne".

{{% /alert %}}

### Utwórz nowy projekt aplikacji konsolowej

Aby utworzyć nowy projekt aplikacji konsolowej, wykonaj następujące kroki:

1. W Visual Studio utwórz nowy projekt aplikacji konsolowej o nazwie "LiferayExample" dla języka *C#* i platformy docelowej *.NET 6*
2. Dodaj następujące pakiety:
      - `Newtonsoft.Json`
   - Model tożsamości
      - Aspose.Words

### Dodaj pliki dokumentów do porównania

Utwórz w projekcie folder "Docs" i dodaj pliki "DocumentA.docx" i "DocumentA.docx".

### Dodaj klasy modelu JSON do przetwarzania REST API

Utwórz w projekcie folder "JsonModel". Utwórz w projekcie plik "DownloadResponse.cs" i wypełnij go następującą treścią:

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

Utwórz w projekcie plik "FileMetadata.cs" i wypełnij go następującą treścią:

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

Utwórz w projekcie plik "UploadResponse.cs" i wypełnij go następującą treścią:

**.NET**
{{< highlight csharp >}}
using Newtonsoft.Json;

namespace LiferayExample.JsonModel
{
    [JsonObject(ItemNullValueHandling = NullValueHandling.Ignore)]
    public class UploadResponse : FileMetadata { }
}
{{< /highlight >}}

Utwórz w projekcie plik "GetFileInfoByNameResponse.cs" i wypełnij go następującą treścią:

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

### Dodaj klienta Liferay REST API

Utwórz w projekcie plik "SecurityContext.cs" i wypełnij go następującą treścią:

**.NET**
{{< highlight csharp >}}
namespace LiferayExample
{
    public record SecurityContext(string SiteId, string Login, string Password);
}
{{< /highlight >}}

Utwórz w projekcie plik "DocumentClient.cs" i wypełnij go następującą treścią:

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

### Dodaj logikę scenariusza do programu

Przenieś następującą zawartość do pliku "Program.cs":

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

## Wykonaj utworzony przykład i sprawdź wynik

Na koniec uruchom utworzony przykład i sprawdź uzyskany wynik:

1. Skompiluj projekt
2. Uruchom aplikację konsolową

W rezultacie plik "DocumentCompared.docx" powinien zostać umieszczony w katalogu głównym biblioteki Dokumenty i multimedia.

## Zobacz też

- Artykuł [Pracuj z dokumentem przechowywanym w `SharePoint` Online](/words/net/work-with-document-stored-in-sharepoint)
- Artykuł [Pracuj z dokumentem oznaczonym etykietą czułości](/words/pl/net/work-with-document-market-by-sensitivity-label/)
