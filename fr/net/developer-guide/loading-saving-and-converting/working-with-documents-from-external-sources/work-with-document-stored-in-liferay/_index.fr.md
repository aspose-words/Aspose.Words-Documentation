---
title: Travailler avec un document stocké dans un Liferay
second_title: Aspose.Words pour .NET
articleTitle: Travailler avec un document stocké dans un Liferay
linktitle: Travailler avec un document stocké dans un Liferay
description: "Comparez les documents Word partagés dans Liferay à l'aide de C#. Travaillez avec des documents stockés au format Liferay – différents formats d'entrée, notamment Word, OpenOffice, Image et eBook."
type: docs
weight: 20
url: /fr/net/work-with-document-stored-in-liferay/
timestamp: 2024-01-31-14-23-37
---

Liferay Portal est une plate-forme logicielle de portail d'entreprise open source conçue pour développer des portails Web et des sites Web. Liferay fournit un système de gestion de documents dans le cadre de sa plateforme de portail, permettant aux utilisateurs de créer, organiser, stocker et gérer des documents de manière collaborative et efficace. Cette fonctionnalité de gestion de documents est souvent appelée bibliothèque de documents Liferay.

Dans cet article, nous aborderons un scénario courant permettant de comparer les documents téléchargés à la racine de la bibliothèque "Documents et médias" et de télécharger à nouveau le document résultant.

## Préréglage

1. Démarrez une nouvelle instance du portail Liferay en exécutant Docker:

   {{< highlight bash >}}
       docker run -it -m 8g -p 8080:8080 liferay/portal:7.4.3.92-ga92
   {{< /highlight >}}

   Si vous n'avez pas Docker, [Installez-le](https://docs.docker.com/desktop/) d'abord.
   Vous pouvez utiliser une autre version du [Docker du portail Liferay](https://hub.docker.com/r/liferay/portal).

2. Connectez-vous à [Liferay](http://localhost:8080) en utilisant l'adresse e-mail `test@liferay.com` et le mot de passe `test`.
3. Lorsque vous y êtes invité, modifiez votre mot de passe.
4. Récupérez l'identifiant du site à l'aide de [ce tutoriel](https://learn.liferay.com/w/dxp/headless-delivery/consuming-apis/consuming-rest-services#identify-the-site-containing-the-data).
5. Achetez une licence Aspose.Words ou utilisez un [Licence et abonnement](/words/fr/net/licensing/).

{{% alert color="primary" %}}

Notez que si vous disposez déjà d'un portail Liferay, ignorez les étapes 1 à 3.

{{% /alert %}}

## Créer une application console

Pour évaluer le fonctionnement de Aspose.Words for .NET avec la bibliothèque Documents et Média Liferay, vous devez créer une application console avec les paramètres appropriés et implémenter la logique de téléchargement de documents à la racine de la bibliothèque Documents et Média, télécharger ces documents, les traiter, puis en téléchargeant le résultat à la racine de la bibliothèque Documents et Média. Pour ce faire, suivez les instructions décrites dans cette section.

Pour exécuter les instructions, vous devez rechercher et corriger les valeurs des variables suivantes, qui seront disponibles après avoir terminé les étapes de la partie "Preset":

- Identifiant du site
- Utilisateur en ligne
- Mot de passe de l'utilisateur
- URL du portail de base
- Chemin d'accès au fichier de licence Aspose.Words

{{% alert color="primary" %}}

Notez que les *login* et *password* doivent être obtenus aux étapes 2-3 de la partie "Preset", et l'*identifiant du site* doit être obtenu à l'étape 4 de la partie "Preset".

{{% /alert %}}

### Créer un nouveau projet d'application console

Pour créer un nouveau projet d'application console, procédez comme suit:

1. Dans Visual Studio, créez un nouveau projet d'application console nommé "LiferayExample" pour le langage *C#* et le framework cible *.NET 6*
2. Ajoutez les packages suivants:
      - `Newtonsoft.Json`
   - Modèle d'identité
      - Aspose.Words

### Ajouter des fichiers de documents à comparer

Créez un dossier "Docs" dans le projet et ajoutez les fichiers "DocumentA.docx" et "DocumentA.docx".

### Ajouter des classes de modèle JSON pour le traitement REST API

Créez un dossier "JsonModel" dans le projet. Créez un fichier "DownloadResponse.cs" dans le projet et remplissez-le avec le contenu suivant:

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

Créez un fichier "FileMetadata.cs" dans le projet et remplissez-le avec le contenu suivant:

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

Créez un fichier "UploadResponse.cs" dans le projet et remplissez-le avec le contenu suivant:

**.NET**
{{< highlight csharp >}}
using Newtonsoft.Json;

namespace LiferayExample.JsonModel
{
    [JsonObject(ItemNullValueHandling = NullValueHandling.Ignore)]
    public class UploadResponse : FileMetadata { }
}
{{< /highlight >}}

Créez un fichier "GetFileInfoByNameResponse.cs" dans le projet et remplissez-le avec le contenu suivant:

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

### Ajouter un client Liferay REST API

Créez un fichier "SecurityContext.cs" dans le projet et remplissez-le avec le contenu suivant:

**.NET**
{{< highlight csharp >}}
namespace LiferayExample
{
    public record SecurityContext(string SiteId, string Login, string Password);
}
{{< /highlight >}}

Créez un fichier "DocumentClient.cs" dans le projet et remplissez-le avec le contenu suivant:

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

### Ajouter une logique de scénario au programme

Déplacez le contenu suivant vers le fichier "Program.cs":

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

## Exécutez l'exemple créé et vérifiez le résultat

Enfin, exécutez l'exemple créé et vérifiez le résultat obtenu:

1. Compilez le projet
2. Exécutez l'application console

De ce fait, le fichier "DocumentCompared.docx" doit être placé à la racine de la bibliothèque Documents et Médias.

## Voir également

- L'article [Travailler avec un document stocké dans un `SharePoint` Online](/words/net/work-with-document-stored-in-sharepoint)
- L'article [Travailler avec un document marqué par une étiquette de sensibilité](/words/fr/net/work-with-document-market-by-sensitivity-label/)
