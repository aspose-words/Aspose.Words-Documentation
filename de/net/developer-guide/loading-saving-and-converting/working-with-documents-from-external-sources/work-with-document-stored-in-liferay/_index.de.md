---
title: Arbeiten Sie mit einem in einem Liferay gespeicherten Dokument
second_title: Aspose.Words für .NET
articleTitle: Arbeiten Sie mit einem in einem Liferay gespeicherten Dokument
linktitle: Arbeiten Sie mit einem in einem Liferay gespeicherten Dokument
description: "Vergleichen Sie in Liferay freigegebene Word-Dokumente mit C#. Arbeiten Sie mit Dokumenten, die in Liferay gespeichert sind – verschiedene Eingabeformate, darunter Word, OpenOffice, Image und eBook."
type: docs
weight: 20
url: /de/net/work-with-document-stored-in-liferay/
timestamp: 2024-01-31-14-23-37
---

Liferay Portal ist eine Open-Source-Unternehmensportal-Softwareplattform, die für die Entwicklung von Webportalen und Websites entwickelt wurde. Liferay stellt als Teil seiner Portalplattform ein Dokumentenmanagementsystem bereit, mit dem Benutzer Dokumente auf kollaborative und effiziente Weise erstellen, organisieren, speichern und verwalten können. Diese Dokumentenverwaltungsfunktion wird oft als Liferay-Dokumentbibliothek bezeichnet.

In diesem Artikel behandeln wir ein häufiges Szenario zum Vergleichen von in das Stammverzeichnis der Bibliothek "Dokumente und Medien" hochgeladenen Dokumenten und zum erneuten Hochladen des resultierenden Dokuments.

## Voreingestellt

1. Starten Sie eine neue Liferay-Portal-Instanz, indem Sie Docker ausführen:

   {{< highlight bash >}}
       docker run -it -m 8g -p 8080:8080 liferay/portal:7.4.3.92-ga92
   {{< /highlight >}}

   Wenn Sie kein Docker haben, zuerst [es installieren](https://docs.docker.com/desktop/).
   Sie können eine andere Version von [Liferay-Portal-Docker](https://hub.docker.com/r/liferay/portal) verwenden.

2. Melden Sie sich bei [Liferay](http://localhost:8080) mit der E-Mail-Adresse `test@liferay.com` und dem Passwort `test` an.
3. Ändern Sie Ihr Passwort, wenn Sie dazu aufgefordert werden.
4. Rufen Sie die Site-ID mit [dieses Tutorial](https://learn.liferay.com/w/dxp/headless-delivery/consuming-apis/consuming-rest-services#identify-the-site-containing-the-data) ab.
5. Erwerben Sie eine Aspose.Words-Lizenz oder verwenden Sie eine [Lizenzierung und Abonnement](/words/de/net/licensing/).

{{% alert color="primary" %}}

Beachten Sie, dass Sie die Schritte 1 bis 3 überspringen müssen, wenn Sie bereits über ein Liferay-Portal verfügen.

{{% /alert %}}

## Erstellen Sie eine Konsolenanwendung

Um zu bewerten, wie Aspose.Words für .NET mit der Liferay-Dokumenten- und Medienbibliothek funktioniert, müssen Sie eine Konsolenanwendung mit den entsprechenden Einstellungen erstellen und die Logik zum Hochladen von Dokumenten in das Stammverzeichnis der Dokumenten- und Medienbibliothek, zum Herunterladen dieser Dokumente, zum Verarbeiten und anschließenden Implementieren implementieren Laden Sie das Ergebnis zurück in das Stammverzeichnis der Dokumenten- und Medienbibliothek. Befolgen Sie dazu die in diesem Abschnitt beschriebenen Anweisungen.

Um die Anweisungen auszuführen, müssen Sie die Werte der folgenden Variablen finden und korrigieren, die nach Abschluss der Schritte im Teil "Voreinstellung" verfügbar sind:

- Site-ID
- Benutzer-Anmeldung
- Benutzer-Passwort
- Basisportal-URL
- Pfad zur Aspose.Words-Lizenzdatei

{{% alert color="primary" %}}

Beachten Sie, dass *login* und *password* in den Schritten 2–3 des Teils "Voreinstellung" und die *Site-ID* in Schritt 4 des Teils "Voreinstellung" abgerufen werden sollten.

{{% /alert %}}

### Erstellen Sie ein neues Konsolenanwendungsprojekt

Gehen Sie folgendermaßen vor, um ein neues Konsolenanwendungsprojekt zu erstellen:

1. Erstellen Sie in Visual Studio ein neues Konsolenanwendungsprojekt mit dem Namen "LiferayExample" für die Sprache *C#* und das Zielframework *.NET 6*
2. Fügen Sie die folgenden Pakete hinzu:
      - `Newtonsoft.Json`
   - Identitätsmodell
      - Aspose.Words

### Dokumentdateien zum Vergleich hinzufügen

Erstellen Sie im Projekt einen Ordner "Docs" und fügen Sie die Dateien "DocumentA.docx" und "DocumentA.docx" hinzu.

### Fügen Sie JSON-Modellklassen für die REST-API-Verarbeitung hinzu

Erstellen Sie im Projekt einen Ordner "JsonModel". Erstellen Sie im Projekt eine Datei "DownloadResponse.cs" und füllen Sie diese mit folgendem Inhalt:

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

Erstellen Sie im Projekt eine Datei "FileMetadata.cs" und füllen Sie diese mit folgendem Inhalt:

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

Erstellen Sie im Projekt eine Datei "UploadResponse.cs" und füllen Sie diese mit folgendem Inhalt:

**.NET**
{{< highlight csharp >}}
using Newtonsoft.Json;

namespace LiferayExample.JsonModel
{
    [JsonObject(ItemNullValueHandling = NullValueHandling.Ignore)]
    public class UploadResponse : FileMetadata { }
}
{{< /highlight >}}

Erstellen Sie im Projekt eine Datei "GetFileInfoByNameResponse.cs" und füllen Sie diese mit folgendem Inhalt:

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

### Fügen Sie den Liferay REST API-Client hinzu

Erstellen Sie im Projekt eine Datei "SecurityContext.cs" und füllen Sie diese mit folgendem Inhalt:

**.NET**
{{< highlight csharp >}}
namespace LiferayExample
{
    public record SecurityContext(string SiteId, string Login, string Password);
}
{{< /highlight >}}

Erstellen Sie im Projekt eine Datei "DocumentClient.cs" und füllen Sie diese mit folgendem Inhalt:

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

### Fügen Sie dem Programm Szenariologik hinzu

Verschieben Sie den folgenden Inhalt in die Datei "Program.cs":

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

## Führen Sie das erstellte Beispiel aus und überprüfen Sie das Ergebnis

Führen Sie abschließend das erstellte Beispiel aus und überprüfen Sie das Ergebnis:

1. Kompilieren Sie das Projekt
2. Führen Sie die Konsolenanwendung aus

Daher sollte die Datei "DocumentCompared.docx" im Stammverzeichnis der Dokumenten- und Medienbibliothek abgelegt werden.

## Siehe auch

- Der Artikel [Arbeiten Sie mit einem in `SharePoint` Online gespeicherten Dokument](/words/net/work-with-document-stored-in-sharepoint)
- Der Artikel [Arbeiten Sie mit einem Dokument, das mit einem Vertraulichkeitsetikett gekennzeichnet ist](/words/de/net/work-with-document-market-by-sensitivity-label/)
