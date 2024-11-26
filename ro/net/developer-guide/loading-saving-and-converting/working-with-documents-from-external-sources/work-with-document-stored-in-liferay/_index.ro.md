---
title: Lucraţi cu un document stocat într-o Liferay
second_title: Aspose.Words pentru .NET
articleTitle: Lucraţi cu un document stocat într-o Liferay
linktitle: Lucraţi cu un document stocat într-o Liferay
description: "Comparaţi documentele Word partajate în Liferay folosind C#. Lucrează cu documente stocate în Liferay – diferite formate de intrare, inclusiv Word, OpenOffice, Imagini și eBook."
type: docs
weight: 20
url: /ro/net/work-with-document-stored-in-liferay/
timestamp: 2024-01-31-14-23-37
---

Liferay Portal este o platformă software de portal pentru întreprinderi cu sursă deschisă concepută pentru dezvoltarea de portale web și site-uri web. Liferay oferă un sistem de gestionare a documentelor ca parte a platformei sale de portal, permițând utilizatorilor să creeze, să organizeze, să stocheze și să gestioneze documente într-un mod colaborativ și eficient. Această funcționalitate de gestionare a documentelor este adesea denumită Liferay Biblioteca Documentelor".

În acest articol vom acoperi un scenariu comun pentru compararea documentelor încărcate la rădăcina bibliotecii "Documente și media" și încărcarea documentului rezultat înapoi.

## Preset

1. Start a new Liferay Portal instance by running Docker:

   {{< highlight bash >}}
       docker run -it -m 8g -p 8080:8080 liferay/portal:7.4.3.92-ga92
   {{< /highlight >}}

   Dacă nu ai Docker, fă mai întâi [install it](https://docs.docker.com/desktop/).
   Poţi folosi o altă versiune a [Liferay Portal docker](https://hub.docker.com/r/liferay/portal).

2. Conectați-vă la [Liferay](http://localhost:8080) folosind adresa de email `test@liferay.com` și parola `test`.
3. Când vi se solicită, schimbați parola.
4. Recuperează identificatorul site-ului folosind [this tutorial](https://learn.liferay.com/w/dxp/headless-delivery/consuming-apis/consuming-rest-services#identify-the-site-containing-the-data).
5. Cumpărați o Aspose.Words licență sau utilizați o [Free Trial or 30-day Temporary License](/words/net/licensing/).

{{% alert color="primary" %}}

Notă că dacă aveți deja un portal Liferay, săriți pașii 1-3.

{{% /alert %}}

## Creați aplicație console

Pentru a evalua cum funcţionează Aspose.Words cu biblioteca Liferay Documents and Media, trebuie să creezi o aplicaţie de consolă cu setările potrivite şi să implementezi logica pentru încărcarea documentelor în rădăcina bibliotecii Documents and Media, descărcarea acestor documente, procesarea lor, şi apoi încărcarea rezultatului înapoi în rădăcina bibliotecii Documents and Media. Pentru a face asta urmaţi instrucţiunile descrise în această secţiune.

Pentru a executa instrucțiunile, trebuie să găsești și să corectezi valorile variabilelor de mai jos, care vor fi disponibile după finalizarea pașilor din secțiunea "Preset":

- Identificatorul site-ului
- Autentificare utilizator
"- Parola utilizatorului"
- URL-ul portalului de bază
- Calea către Aspose.Words fișier de licență

{{% alert color="primary" %}}

Notă că *login* și *password* ar trebui obținute în pașii 2-3 din secțiunea "Preset", iar *identificatorul site-ului* ar trebui obținut în pasul 4 din secțiunea "Prezet".

{{% /alert %}}

### Crează un nou proiect de aplicație de consolă

Pentru a crea un nou proiect de aplicație în consolă, urmați acești pași:

1. În Visual Studio, creează un nou proiect de aplicație console numită "LiferayExample" pentru *C#* limbaj și țintă cadru *.NET 6*
2. Adăugați pachetele următoare:
      - `Newtonsoft.Json`
   - IdentityModel
      - Aspose.Words

### Adaugă fișierele documentelor pentru a compara

Creează un folder "Documente" în proiectul și adaugă fișierele "DocumentA.docx" și "DocumentB.docx".

### Adăugare clase de model JSON pentru procesarea REST API

Creează un folder numit "JsonModel" în proiectul acesta. Crează un fişier "DownloadResponse.cs" în proiect şi umple-l cu următorul conţinut:

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

Creează un fișier "FileMetadata.cs" în proiect și umple-l cu următorul conținut:

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

Crează un fișier "UploadResponse.cs" în proiect și umple-l cu următorul conținut:

**.Net**
{{< highlight csharp >}}
using Newtonsoft.Json;

namespace LiferayExample.JsonModel
{
    [JsonObject(ItemNullValueHandling = NullValueHandling.Ignore)]
    public class UploadResponse : FileMetadata { }
}
{{< /highlight >}}

Creează un fișier "GetFileInfoByNameResponse.cs" în cadrul proiectului și umple-l cu următorul conținut:

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

### Adaugă Liferay REST API Client

Creaţi un fișier "Context.cs" în proiect și completaţi-l cu următoarele conţinuturi:

**.NET**
{{< highlight csharp >}}
namespace LiferayExample
{
    public record SecurityContext(string SiteId, string Login, string Password);
}
{{< /highlight >}}

Creează un fișier "DocumentClient.cs" în proiect și umple-l cu următorul conținut:

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

### Adăugați logica scenariului în program

Mută următoarele conținuturi în fișierul "Program.cs":

**.Net**
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

## Rulează Exemplul Creat și Verifică Rezultatul

În final, rulează exemplul creat și verifică rezultatul pe care l-ai obținut:

1. Compilaţi proiectul
2. Rulează aplicația consola

Ca rezultat, fișierul "DocumentCompared.docx" ar trebui plasat în rădăcina bibliotecii Documente și Media.

## Vezi și

- Articolul [Work with a Document Stored in a `SharePoint` Online](/words/net/work-with-document-stored-in-sharepoint)
- Articolul [Work with a Document Marked by a Sensitivity Label](/words/net/work-with-document-market-by-sensitivity-label/)
