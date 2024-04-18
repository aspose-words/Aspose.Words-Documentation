---
title: Práce s dokumentem uloženým v Liferay
second_title: Aspose.Words místo .NET
articleTitle: Práce s dokumentem uloženým v Liferay
linktitle: Práce s dokumentem uloženým v Liferay
description: "Porovnat Word dokumenty sdílené v Liferay podání C#. Práce s dokumenty uloženými v Liferay Různé vstupní formáty, včetně Word, OpenOffice, Image a eBook."
type: docs
weight: 20
url: /cs/net/work-with-document-stored-in-liferay/
---

Liferay Portál je softwarová platforma open source podnikového portálu určená pro rozvoj webových portálů a webových stránek. Liferay poskytuje systém správy dokumentů jako součást své portálové platformy, umožňující uživatelům vytvářet, organizovat, ukládat a spravovat dokumenty ve spolupráci a efektivně. Tato funkce správy dokumentů je často označována jako Liferay Knihovna dokumentů.

V tomto článku se budeme zabývat společným scénářem pro porovnání dokumentů nahraných do kořene knihovny "Documents and Media" a nahrajeme výsledný dokument zpět.

## Přednastavit

1. Spustit nový Liferay Portální instance spuštěním Docker:

   {{< highlight bash >}}
       docker run -it -m 8g -p 8080:8080 liferay/portal:7.4.3.92-ga92
   {{< /highlight >}}

   Pokud nemáte Docker, [nainstalovat](https://docs.docker.com/desktop/) Nejdřív.
   Můžete použít jinou verzi [Liferay Portálový docker](https://hub.docker.com/r/liferay/portal).

2. Přihlaste se [Liferay](http://localhost:8080) pomocí e-mailové adresy `test@liferay.com` a heslo `test`.
3. Když je vyzván, změň heslo.
4. Získat identifikátor stránky pomocí [Tento tutoriál](https://learn.liferay.com/w/dxp/headless-delivery/consuming-apis/consuming-rest-services#identify-the-site-containing-the-data).
5. Nákup Aspose.Words licence nebo použití [Licence a předplatné](/words/cs/net/licensing/).

{{% alert color="primary" %}}

Všimněte si, že pokud již máte Liferay portál pak přeskočit kroky 1-3.

{{% /alert %}}

## Vytvořit aplikaci konzole

Jak zhodnotit Aspose.Words místo .NET spolupracuje s Liferay Dokumenty a knihovna médií, musíte vytvořit aplikaci konzole s vhodnými nastaveními a implementovat logiku pro nahrávání dokumentů do kořene knihovny dokumentů a médií, stahovat tyto dokumenty, zpracovávat je a pak nahrát výsledek zpět do kořene knihovny dokumentů a médií. Postupujte podle pokynů popsaných v této části.

Chcete-li provést instrukce, musíte najít a opravit hodnoty následujících proměnných, které budou k dispozici po dokončení kroků v části "Preset":

- Identifikátor lokality
- Uživatelské přihlášení
- Uživatelské heslo
- Základní portál URL
- Cesta k Aspose.Words Soubor s licencí

{{% alert color="primary" %}}

Všimněte si, že *login* a *password* je třeba získat v krocích 2-3 části "Preset" a *identifikátor místa* by měl být získán v kroku 4 části "Preset."

{{% /alert %}}

### Vytvořit nový projekt aplikace konzole

Chcete-li vytvořit nový projekt aplikace konzole, postupujte podle těchto kroků:

1. In Visual Studio, vytvořit nový projekt aplikace konzole s názvem "LiferayPříklad" pro *C#* jazyk a cílový rámec *.NET 6 *
2. Přidat následující balíčky:
      - `Newtonsoft.Json`
   - IdentityMode
      - Aspose.Words

### Přidat soubory dokumentů k porovnání

Vytvořte v projektu složku "Doks" a přidejte soubory "DocumentA.docx" a "DocumentA.docx."

### Přidat třídy modelu JSON pro REST API Zpracování

Vytvořte v projektu složku "JsonModel." Vytvořte v projektu soubor "DownloadResponse.cs" a vyplňte jej následujícím obsahem:

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

Vytvořit soubor "FileMetadata.cs" v projektu a vyplnit jej následujícím obsahem:

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

Vytvořte v projektu soubor "UploadResponse.cs" a vyplňte jej následujícím obsahem:

**.NET**
{{< highlight csharp >}}
using Newtonsoft.Json;

namespace LiferayExample.JsonModel
{
    [JsonObject(ItemNullValueHandling = NullValueHandling.Ignore)]
    public class UploadResponse : FileMetadata { }
}
{{< /highlight >}}

Vytvořte v projektu soubor "GetFileInfoByNameResponse.cs" a vyplňte jej následujícím obsahem:

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

### Přidat Liferay REST API Klient

Vytvořte v projektu soubor "SecurityContext.cs" a vyplňte jej následujícím obsahem:

**.NET**
{{< highlight csharp >}}
namespace LiferayExample
{
    public record SecurityContext(string SiteId, string Login, string Password);
}
{{< /highlight >}}

Vytvořit soubor "DocumentClient.cs" v projektu a vyplnit jej následujícím obsahem:

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

### Přidat logiku scénáře do programu

Přesuňte následující obsah do souboru "Program.cs":

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

## Vykonat vytvořený příklad a zkontrolovat výsledek

Nakonec spusťte vytvořený příklad a zkontrolujte výsledek:

1. Složit projekt
2. Spustit aplikaci konzole

V důsledku toho by měl být soubor "Document Compred.docx" umístěn do kořene knihovny dokumentů a médií.

## Viz také

- Ten článek. [Práce s dokumentem uloženým v `SharePoint` Online](/words/net/work-with-document-stored-in-sharepoint)
- Ten článek. [Práce s dokumentem označeným značkou citlivosti](/words/cs/net/work-with-document-market-by-sensitivity-label/)
