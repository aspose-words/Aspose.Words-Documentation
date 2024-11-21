---
title: Lavora con un documento archiviato in un Liferay
second_title: Aspose.Words per .NET
articleTitle: Lavora con un documento archiviato in un Liferay
linktitle: Lavora con un documento archiviato in un Liferay
description: "Confronta i documenti Word condivisi in Liferay utilizzando C#. Lavora con documenti archiviati in Liferay: vari formati di input, tra cui Word, OpenOffice, Image ed eBook."
type: docs
weight: 20
url: /it/net/work-with-document-stored-in-liferay/
timestamp: 2024-01-31-14-23-37
---

Liferay Portal è una piattaforma software per portali aziendali open source progettata per lo sviluppo di portali Web e siti Web. Liferay fornisce un sistema di gestione dei documenti come parte della sua piattaforma del portale, consentendo agli utenti di creare, organizzare, archiviare e gestire i documenti in modo collaborativo ed efficiente. Questa funzionalità di gestione dei documenti viene spesso definita raccolta documenti Liferay.

In questo articolo, tratteremo uno scenario comune per confrontare i documenti caricati nella directory principale della libreria "Documenti e contenuti multimediali" e caricare nuovamente il documento risultante.

## Preimpostato

1. Avvia una nuova istanza del portale Liferay eseguendo Docker:

   {{< highlight bash >}}
       docker run -it -m 8g -p 8080:8080 liferay/portal:7.4.3.92-ga92
   {{< /highlight >}}

   Se non hai Docker, prima [installarlo](https://docs.docker.com/desktop/).
   È possibile utilizzare un'altra versione del [Finestra mobile del portale Liferay](https://hub.docker.com/r/liferay/portal).

2. Accedi a [Liferay](http://localhost:8080) utilizzando l'indirizzo email `test@liferay.com` e la password `test`.
3. Quando richiesto, modifica la password.
4. Recupera l'identificatore del sito utilizzando [questo tutorial](https://learn.liferay.com/w/dxp/headless-delivery/consuming-apis/consuming-rest-services#identify-the-site-containing-the-data).
5. Acquista una licenza Aspose.Words o utilizza un [Licenza e abbonamento](/words/it/net/licensing/).

{{% alert color="primary" %}}

Tieni presente che se disponi già di un portale Liferay, salta i passaggi 1-3.

{{% /alert %}}

## Crea applicazione console

Per valutare come funziona Aspose.Words for .NET con Documenti Liferay e libreria multimediale, è necessario creare un'applicazione console con le impostazioni appropriate e implementare la logica per caricare i documenti nella radice della libreria Documenti e multimediale, scaricare questi documenti, elaborarli e quindi caricando nuovamente il risultato nella radice della libreria Documenti e multimediali. Per fare ciò, seguire le istruzioni descritte in questa sezione.

Per eseguire le istruzioni è necessario trovare e fissare i valori delle seguenti variabili, che saranno disponibili dopo aver completato i passaggi nella parte "Preset":

- Identificatore del sito
- Login utente
- Password utente
- URL del portale di base
- Percorso del file di licenza Aspose.Words

{{% alert color="primary" %}}

Tieni presente che *login* e *password* dovrebbero essere ottenuti nei passaggi 2-3 della parte "Preimpostazione" e che *l'identificatore del sito* dovrebbe essere ottenuto nel passaggio 4 della parte "Preimpostazione".

{{% /alert %}}

### Crea un nuovo progetto di applicazione console

Per creare un nuovo progetto di applicazione console, attenersi alla seguente procedura:

1. In Visual Studio, creare un nuovo progetto di applicazione console denominato "LiferayExample" per il linguaggio *C#* e il framework di destinazione *.NET 6*
2. Aggiungi i seguenti pacchetti:
      - `Newtonsoft.Json`
   - Modello di identità
      - Aspose.Words

### Aggiungi file di documenti da confrontare

Crea una cartella "Docs" nel progetto e aggiungi i file "DocumentA.docx" e "DocumentA.docx".

### Aggiungi classi di modelli JSON per l'elaborazione REST API

Crea una cartella "JsonModel" nel progetto. Crea un file "DownloadResponse.cs" nel progetto e compilalo con il seguente contenuto:

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

Crea un file "FileMetadata.cs" nel progetto e compilalo con il seguente contenuto:

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

Crea un file "UploadResponse.cs" nel progetto e compilalo con il seguente contenuto:

**.NET**
{{< highlight csharp >}}
using Newtonsoft.Json;

namespace LiferayExample.JsonModel
{
    [JsonObject(ItemNullValueHandling = NullValueHandling.Ignore)]
    public class UploadResponse : FileMetadata { }
}
{{< /highlight >}}

Crea un file "GetFileInfoByNameResponse.cs" nel progetto e compilalo con il seguente contenuto:

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

### Aggiungi il client Liferay REST API

Crea un file "SecurityContext.cs" nel progetto e compilalo con il seguente contenuto:

**.NET**
{{< highlight csharp >}}
namespace LiferayExample
{
    public record SecurityContext(string SiteId, string Login, string Password);
}
{{< /highlight >}}

Crea un file "DocumentClient.cs" nel progetto e compilalo con il seguente contenuto:

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

### Aggiungi la logica dello scenario al programma

Spostare il seguente contenuto nel file "Program.cs":

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

## Esegui l'esempio creato e controlla il risultato

Infine, esegui l'esempio creato e controlla il risultato ottenuto:

1. Compilare il progetto
2. Eseguire l'applicazione della console

Di conseguenza, il file "DocumentCompared.docx" dovrebbe essere posizionato nella radice della libreria Documenti e contenuti multimediali.

## Guarda anche

- L'articolo [Lavora con un documento archiviato in un `SharePoint` online](/words/net/work-with-document-stored-in-sharepoint)
- L'articolo [Lavorare con un documento contrassegnato da un'etichetta di riservatezza](/words/it/net/work-with-document-market-by-sensitivity-label/)
