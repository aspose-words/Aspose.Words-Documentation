---
title: Trabalhar com um documento armazenado em Liferay
second_title: Aspose.Words para .NET
articleTitle: Trabalhar com um documento armazenado em Liferay
linktitle: Trabalhar com um documento armazenado em Liferay
description: "Compare documentos do Word compartilhados em Liferay usando C#. Trabalhe com documentos armazenados em Liferay – vários formatos de entrada, incluindo Word, OpenOffice, Imagem e e-book."
type: docs
weight: 20
url: /pt/net/work-with-document-stored-in-liferay/
timestamp: 2024-01-31-14-23-37
---

Liferay Portal é uma plataforma de software de portal empresarial de código aberto projetada para o desenvolvimento de portais e sites da web. Liferay fornece um sistema de gerenciamento de documentos como parte de sua plataforma de portal, permitindo aos usuários criar, organizar, armazenar e gerenciar documentos de forma colaborativa e eficiente. Esta funcionalidade de gerenciamento de documentos é frequentemente chamada de Biblioteca de Documentos Liferay.

Neste artigo, abordaremos um cenário comum para comparar documentos carregados na raiz da biblioteca "Documentos e Mídia" e carregar o documento resultante de volta.

## Predefinido

1. Inicie uma nova instância do Portal Liferay executando Docker:

   {{< highlight bash >}}
       docker run -it -m 8g -p 8080:8080 liferay/portal:7.4.3.92-ga92
   {{< /highlight >}}

   Se você não tiver Docker, [instale-o](https://docs.docker.com/desktop/) primeiro.
   Você pode usar outra versão do [Janela de encaixe do Portal Liferay](https://hub.docker.com/r/liferay/portal).

2. Faça login no [Liferay](http://localhost:8080) usando o endereço de e-mail `test@liferay.com` e a senha `test`.
3. Quando solicitado, altere sua senha.
4. Recupere o identificador do site usando [este tutorial](https://learn.liferay.com/w/dxp/headless-delivery/consuming-apis/consuming-rest-services#identify-the-site-containing-the-data).
5. Adquira uma licença Aspose.Words ou use um [Licenciamento e Assinatura](/words/pt/net/licensing/).

{{% alert color="primary" %}}

Observe que se você já possui um portal Liferay, pule as etapas 1 a 3.

{{% /alert %}}

## Criar aplicativo de console

Para avaliar como Aspose.Words para .NET funciona com Documentos Liferay e Biblioteca de Mídia, você precisa criar um aplicativo de console com as configurações apropriadas e implementar a lógica para fazer upload de documentos para a raiz da Biblioteca de Documentos e Mídia, baixar esses documentos, processá-los e, em seguida, enviando o resultado de volta para a raiz da biblioteca de Documentos e Mídia. Para fazer isso, siga as instruções descritas nesta seção.

Para executar as instruções, é necessário encontrar e fixar os valores das seguintes variáveis, que estarão disponíveis após a conclusão dos passos da parte "Preset":

- Identificador do site
- Login de usuário
- Senha do usuário
- URL base do portal
- Caminho para o arquivo de licença Aspose.Words

{{% alert color="primary" %}}

Observe que o *login* e o *password* devem ser obtidos nas etapas 2-3 da parte "Preset", e o *identificador do site* deve ser obtido na etapa 4 da parte "Preset".

{{% /alert %}}

### Crie um novo projeto de aplicativo de console

Para criar um novo projeto de aplicativo de console, siga estas etapas:

1. Em Visual Studio, crie um novo projeto de aplicativo de console chamado "LiferayExample" para linguagem *C#* e estrutura de destino *.NET 6*
2. Adicione os seguintes pacotes:
      - `Newtonsoft.Json`
   - Modelo de Identidade
      - Aspose.Words

### Adicione arquivos de documentos para comparar

Crie uma pasta "Docs" no projeto e adicione os arquivos "DocumentA.docx" e "DocumentA.docx".

### Adicionar classes de modelo JSON para processamento REST API

Crie uma pasta "JsonModel" no projeto. Crie um arquivo "DownloadResponse.cs" no projeto e preencha-o com o seguinte conteúdo:

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

Crie um arquivo "FileMetadata.cs" no projeto e preencha-o com o seguinte conteúdo:

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

Crie um arquivo "UploadResponse.cs" no projeto e preencha-o com o seguinte conteúdo:

**.NET**
{{< highlight csharp >}}
using Newtonsoft.Json;

namespace LiferayExample.JsonModel
{
    [JsonObject(ItemNullValueHandling = NullValueHandling.Ignore)]
    public class UploadResponse : FileMetadata { }
}
{{< /highlight >}}

Crie um arquivo "GetFileInfoByNameResponse.cs" no projeto e preencha-o com o seguinte conteúdo:

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

### Adicionar cliente Liferay REST API

Crie um arquivo "SecurityContext.cs" no projeto e preencha-o com o seguinte conteúdo:

**.NET**
{{< highlight csharp >}}
namespace LiferayExample
{
    public record SecurityContext(string SiteId, string Login, string Password);
}
{{< /highlight >}}

Crie um arquivo "DocumentClient.cs" no projeto e preencha-o com o seguinte conteúdo:

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

### Adicione lógica de cenário ao programa

Mova o seguinte conteúdo para o arquivo "Program.cs":

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

## Execute o exemplo criado e verifique o resultado

Por fim, execute o exemplo criado e verifique o resultado obtido:

1. Compile o projeto
2. Execute o aplicativo de console

Como resultado, o arquivo "DocumentCompared.docx" deve ser colocado na raiz da biblioteca Documentos e Mídia.

## Veja também

- O artigo [Trabalhe com um documento armazenado em `SharePoint` online](/words/net/work-with-document-stored-in-sharepoint)
- O artigo [Trabalhar com um documento marcado por uma etiqueta de confidencialidade](/words/pt/net/work-with-document-market-by-sensitivity-label/)
