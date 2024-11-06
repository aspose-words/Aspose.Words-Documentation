---
title: Werk met'n Dokument Gestoor in'n Liferay
second_title: Aspose.Words vir .NET
articleTitle: Werk met'n Dokument Gestoor in'n Liferay
linktitle: Werk met'n Dokument Gestoor in'n Liferay
description: "Vergelyk Word dokumente gedeel in Liferay met behulp van C#. Werk met dokumente gestoor in Liferay – verskeie insette formate, insluitend Word, OpenOffice, Beeld en eBook."
type: docs
weight: 20
url: /af/net/work-with-document-stored-in-liferay/
---

Liferay Portal is'n open source onderneming portaal sagteware platform ontwerp vir die ontwikkeling van web portale en webwerwe. Liferay bied'n dokumentbestuurstelsel as deel van sy portaalplatform, wat gebruikers toelaat om dokumente op'n samewerkende en doeltreffende manier te skep, te organiseer, op te slaan en te bestuur. Hierdie dokument bestuur funksie word dikwels na verwys as Liferay Dokument Biblioteek.

In hierdie artikel sal ons'n algemene scenario dek om dokumente wat na die wortel van die "Dokumente en Media" - biblioteek opgelaai is, te vergelyk en die gevolglike dokument terug te laai.

## Vooraf ingestel

1. Begin'n Nuwe Liferay Portaal instansie deur Docker te laat loop:

   {{< highlight bash >}}
       docker run -it -m 8g -p 8080:8080 liferay/portal:7.4.3.92-ga92
   {{< /highlight >}}

   As jy Nie Docker het nie, [installeer dit](https://docs.docker.com/desktop/) eerste.
   Jy kan'n ander weergawe van die [Liferay Portaal docker](https://hub.docker.com/r/liferay/portal).

2. Meld u aan [Liferay](http://localhost:8080) gebruik die e-pos adres `test@liferay.com` en wagwoord `test`.
3. As u gevra word, verander u wagwoord.
4. Haal die werf identifiseerder met behulp van [hierdie tutoriaal](https://learn.liferay.com/w/dxp/headless-delivery/consuming-apis/consuming-rest-services#identify-the-site-containing-the-data).
5. Koop'n Aspose.Words lisensie of gebruik'n [Gratis Proeflopie Of 30-dag Tydelike Lisensie](/words/net/licensing/).

{{% alert color="primary" %}}

Let daarop dat as jy reeds'n Liferay portaal het, dan stappe 1-3 oorslaan.

{{% /alert %}}

## Skep Konsole-Toepassing

Om te bepaal hoe Aspose.Words vir .NET werk met Liferay Dokumente en Mediabiblioteek, jy moet'n konsole-toepassing met die toepaslike instellings skep en die logika implementeer om dokumente na die wortel Van Dokumente en Mediabiblioteek op te laai, hierdie dokumente af te laai, dit te verwerk en dan die resultaat terug te laai Na die wortel Van Dokumente en Mediabiblioteek. Om dit te doen, volg die instruksies wat in hierdie afdeling beskryf word.

Om die instruksies uit te voer, moet u die waardes van die volgende veranderlikes vind en regstel, wat beskikbaar sal wees nadat u die stappe in Die "Voorafbepaalde" deel voltooi het:

- Webwerf identifiseerder
- Gebruiker aanmelding
- Gebruikerswagwoord
- Basisportaal-url
- Pad na Aspose.Words Lisensie lêer

{{% alert color="primary" %}}

Let daarop dat die *login* en *password* in stappe 2-3 van die "Vooraf Ingestelde" deel verkry moet word, en *site identifier* in stap 4 van die "Vooraf Ingestelde" deel verkry moet word.

{{% /alert %}}

### Skep'n Nuwe Konsole-Toepassingsprojek

Volg hierdie stappe om'n nuwe konsole-toepassingsprojek te skep:

1. In Visual Studio, skep'n nuwe konsole aansoek projek met die naam "LiferayExample " vir *C#* taal en teiken raamwerk *.NET 6*
2. Voeg die volgende pakkette by:
`Newtonsoft.Json`
   - IdentityModel
   - Aspose.Words

### Voeg Dokumentlêers By Om Te Vergelyk

Skep'n" Docs "gids in die projek en voeg die lêers" DocumentA.docx " en " DocumentA.dok".

### Voeg JSON Model Klasse vir REST API Verwerking

Skep'n gids " JsonModel" in die projek. Skep'n lêer " DownloadResponse.cs" in die projek en vul dit met die volgende inhoud:

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

Skep'n lêer " FileMetadata.cs" in die projek en vul dit met die volgende inhoud:

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

Skep'n lêer " UploadResponse.cs" in die projek en vul dit met die volgende inhoud:

**.NET**
{{< highlight csharp >}}
using Newtonsoft.Json;

namespace LiferayExample.JsonModel
{
    [JsonObject(ItemNullValueHandling = NullValueHandling.Ignore)]
    public class UploadResponse : FileMetadata { }
}
{{< /highlight >}}

Skep'n lêer " GetFileInfoByNameResponse.cs" in die projek en vul dit met die volgende inhoud:

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

### Voeg Liferay REST API Kliënt By

Skep'n lêer " SecurityContext.cs" in die projek en vul dit met die volgende inhoud:

**.NET**
{{< highlight csharp >}}
namespace LiferayExample
{
    public record SecurityContext(string SiteId, string Login, string Password);
}
{{< /highlight >}}

Skep'n lêer " DocumentClient.cs" in die projek en vul dit met die volgende inhoud:

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

### Voeg Scenario Logika by Die Program

Skuif die volgende inhoud na die "Program.cs " lêer:

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

## Voer die Geskepte Voorbeeld uit en Kontroleer Die Resultaat

Ten slotte, hardloop die geskep voorbeeld en kyk na die resultaat wat jy het:

1. Stel die projek saam
2. Begin die konsole-toepassing

As gevolg hiervan, die "DocumentCompared.docx " lêer moet in die wortel van Dokumente en Media biblioteek geplaas word.

## Sien Ook

- Die artikel [Werk Met'n Dokument Gestoor In'n `SharePoint` Aanlyn](/words/net/work-with-document-stored-in-sharepoint)
- Die artikel [Werk met'n Dokument Gemerk met'n Sensitiwiteitsetiket](/words/net/work-with-document-market-by-sensitivity-label/)
