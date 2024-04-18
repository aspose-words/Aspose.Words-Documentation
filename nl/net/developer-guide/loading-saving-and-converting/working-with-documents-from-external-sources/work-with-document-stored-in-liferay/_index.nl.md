---
title: Werk met een document opgeslagen in een Liferay
second_title: Aspose.Words voor .NET
articleTitle: Werk met een document opgeslagen in een Liferay
linktitle: Werk met een document opgeslagen in een Liferay
description: "Vergelijk Word-documenten die gedeeld worden in Liferay gebruik C#. Werken met opgeslagen documenten Liferay Verschillende invoerformaten, waaronder Word, OpenOffice, Image en eBook."
type: docs
weight: 20
url: /nl/net/work-with-document-stored-in-liferay/
---

Liferay Portal is een open source enterprise portal software platform ontworpen voor de ontwikkeling van webportalen en websites. Liferay biedt een document management systeem als onderdeel van het portaal platform, zodat gebruikers om documenten te maken, organiseren, opslaan en beheren op een gezamenlijke en efficiënte manier. Deze functionaliteit voor documentbeheer wordt vaak aangeduid als Liferay Document Bibliotheek.

In dit artikel behandelen we een gemeenschappelijk scenario voor het vergelijken van geüploade documenten naar de root van de bibliotheek "Documenten en media" en het uploaden van het resulterende document terug.

## Voorinstelling

1. Een nieuwe start Liferay Portale instantie door te draaien Docker:

   {{< highlight bash >}}
       docker run -it -m 8g -p 8080:8080 liferay/portal:7.4.3.92-ga92
   {{< /highlight >}}

   Als u geen Docker, [installeer het](https://docs.docker.com/desktop/) Eerst.
   U kunt een andere versie van de [Liferay Portaaldokter](https://hub.docker.com/r/liferay/portal).

2. Aanmelden [Liferay](http://localhost:8080) het e-mailadres gebruiken `test@liferay.com` en wachtwoord `test`.
3. Wanneer gevraagd, verander uw wachtwoord.
4. De naam van de site ophalen met behulp van [deze handleiding](https://learn.liferay.com/w/dxp/headless-delivery/consuming-apis/consuming-rest-services#identify-the-site-containing-the-data).
5. Koop een Aspose.Words licentie of gebruik a [Licentie en abonnement](/words/nl/net/licensing/).

{{% alert color="primary" %}}

Merk op dat als je al een Liferay portaal sla dan stap 1-3 over.

{{% /alert %}}

## Console-programma aanmaken

Evaluatie Aspose.Words voor .NET werkt met Liferay Documenten en mediabibliotheek, u moet een consoletoepassing maken met de juiste instellingen en implementeren van de logica voor het uploaden van documenten naar de root van documenten en mediabibliotheek, het downloaden van deze documenten, het verwerken ervan, en vervolgens het uploaden van het resultaat terug naar de root van documenten en mediabibliotheek. Om dit te doen, volg de instructies beschreven in deze sectie.

Om de instructies uit te voeren, moet u de waarden van de volgende variabelen vinden en repareren, die beschikbaar zullen zijn na het voltooien van de stappen in het gedeelte "Voorinstelling":

- Site identifier
- Gebruiker login
- Gebruikerswachtwoord
- Basis poort url
- Pad naar Aspose.Words Licentiebestand

{{% alert color="primary" %}}

Merk op dat de *login* en *password* moet worden verkregen in stap 2-3 van het "voorgestelde" deel, en *site-identificatie* moet worden verkregen in stap 4 van het "voorgestelde" deel.

{{% /alert %}}

### Een nieuw console-programma aanmaken

Volg de volgende stappen om een nieuw console-applicatieproject aan te maken:

1. In Visual Studio, een nieuw console-applicatieproject aanmaken met de naam "LiferayVoorbeeld voor *C#* taal- en doelkader *.NET 6*
2. Voeg de volgende pakketten toe:
      - `Newtonsoft.Json`
   - IdentityModel
      - Aspose.Words

### Documentbestanden toevoegen om te vergelijken

Maak een "Docs" map in het project en voeg de bestanden "DocumentA.docx" en "DocumentA.docx" toe.

### JSON Modelklassen voor REST toevoegen API Verwerking

Maak een map "JsonModel" aan in het project. Maak een bestand "DownloadRespons.cs" in het project en vul het met de volgende inhoud:

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

Maak een bestand "FileMetadata.cs" in het project en vul het met de volgende inhoud:

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

Maak een bestand "UploadRespons.cs" in het project en vul het met de volgende inhoud:

**.NET**
{{< highlight csharp >}}
using Newtonsoft.Json;

namespace LiferayExample.JsonModel
{
    [JsonObject(ItemNullValueHandling = NullValueHandling.Ignore)]
    public class UploadResponse : FileMetadata { }
}
{{< /highlight >}}

Maak een bestand "GetFileInfoByNameRespons.cs" in het project en vul het met de volgende inhoud:

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

### Voeg toe Liferay REST API Client

Maak een bestand "SecurityContext.cs" in het project en vul het met de volgende inhoud:

**.NET**
{{< highlight csharp >}}
namespace LiferayExample
{
    public record SecurityContext(string SiteId, string Login, string Password);
}
{{< /highlight >}}

Maak een bestand "DocumentClient.cs" in het project en vul het met de volgende inhoud:

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

### Scenario-logica toevoegen aan het programma

Verplaats de volgende inhoud naar het bestand "Program.cs":

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

## Voer het aangemaakte voorbeeld uit en controleer het resultaat

Ten slotte, voer het gemaakte voorbeeld en controleer het resultaat dat je kreeg:

1. Het project combineren
2. De console-toepassing uitvoeren

Als gevolg hiervan moet het bestand "DocumentVergeleken.docx" in de root van Documenten en Mediabibliotheek worden geplaatst.

## Zie ook

- Het artikel [Werk met een document opgeslagen in een `SharePoint` Online](/words/net/work-with-document-stored-in-sharepoint)
- Het artikel [Werk met een document gemarkeerd door een gevoelige label](/words/nl/net/work-with-document-market-by-sensitivity-label/)
