---
title: Trabajar con un documento almacenado en un Liferay
second_title: Aspose.Words para .NET
articleTitle: Trabajar con un documento almacenado en un Liferay
linktitle: Trabajar con un documento almacenado en un Liferay
description: "Compare documentos de Word compartidos en Liferay usando C#. Trabaje con documentos almacenados en Liferay: varios formatos de entrada, incluidos Word, OpenOffice, Image y eBook."
type: docs
weight: 20
url: /es/net/work-with-document-stored-in-liferay/
---

Liferay Portal es una plataforma de software de portal empresarial de código abierto diseñada para desarrollar portales web y sitios web. Liferay proporciona un sistema de gestión de documentos como parte de su plataforma de portal, que permite a los usuarios crear, organizar, almacenar y gestionar documentos de forma colaborativa y eficiente. Esta funcionalidad de gestión de documentos a menudo se denomina biblioteca de documentos Liferay.

En este artículo, cubriremos un escenario común para comparar documentos cargados en la raíz de la biblioteca "Documentos y medios" y volver a cargar el documento resultante.

## Preestablecido

1. Inicie una nueva instancia del Portal Liferay ejecutando Docker:

  {{< highlight bash >}}
       docker run -it -m 8g -p 8080:8080 liferay/portal:7.4.3.92-ga92
   {{< /highlight >}}

  Si no tiene Docker, primero envíe [instalarlo](https://docs.docker.com/desktop/).
  Puede utilizar otra versión del [Ventana acoplable del portal Liferay](https://hub.docker.com/r/liferay/portal).

2. Inicie sesión en [Liferay](http://localhost:8080) utilizando la dirección de correo electrónico `test@liferay.com` y la contraseña `test`.
3. Cuando se le solicite, cambie su contraseña.
4. Recupere el identificador del sitio mediante [este tutorial](https://learn.liferay.com/w/dxp/headless-delivery/consuming-apis/consuming-rest-services#identify-the-site-containing-the-data).
5. Compre una licencia Aspose.Words o utilice un [Licencia y suscripción](/words/es/net/licensing/).

{{% alert color="primary" %}}

Tenga en cuenta que si ya tiene un portal Liferay, omita los pasos 1 a 3.

{{% /alert %}}

## Crear aplicación de consola

Para evaluar cómo funciona Aspose.Words para .NET con documentos Liferay y biblioteca multimedia, debe crear una aplicación de consola con la configuración adecuada e implementar la lógica para cargar documentos en la raíz de documentos y biblioteca multimedia, descargar estos documentos, procesarlos y luego cargar el resultado nuevamente en la raíz de la biblioteca de Documentos y Medios. Para ello, siga las instrucciones descritas en esta sección.

Para ejecutar las instrucciones, necesita buscar y fijar los valores de las siguientes variables, que estarán disponibles después de completar los pasos en la parte "Preestablecido":

- Identificador del sitio
- Inicio de sesión de usuario
- Contraseña de usuario
- URL del portal base
- Ruta al archivo de licencia Aspose.Words

{{% alert color="primary" %}}

Tenga en cuenta que *login* y *password* deben obtenerse en los pasos 2 y 3 de la parte "Preestablecido", y el *identificador del sitio* debe obtenerse en el paso 4 de la parte "Preestablecido".

{{% /alert %}}

### Crear un nuevo proyecto de aplicación de consola

Para crear un nuevo proyecto de aplicación de consola, siga estos pasos:

1. En Visual Studio, cree un nuevo proyecto de aplicación de consola llamado "LiferayExample" para el lenguaje *C#* y el marco de destino *.NET 6*
2. Agregue los siguientes paquetes:
  - `Newtonsoft.Json`
  - Modelo de identidad
  - Aspose.Words

### Agregar archivos de documentos para comparar

Cree una carpeta "Docs" en el proyecto y agregue los archivos "DocumentA.docx" y "DocumentA.docx".

### Agregue clases de modelo JSON para procesamiento REST API

Cree una carpeta "JsonModel" en el proyecto. Cree un archivo "DownloadResponse.cs" en el proyecto y rellénelo con el siguiente contenido:

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

Cree un archivo "FileMetadata.cs" en el proyecto y rellénelo con el siguiente contenido:

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

Cree un archivo "UploadResponse.cs" en el proyecto y rellénelo con el siguiente contenido:

**.NET**
{{< highlight csharp >}}
using Newtonsoft.Json;

namespace LiferayExample.JsonModel
{
    [JsonObject(ItemNullValueHandling = NullValueHandling.Ignore)]
    public class UploadResponse : FileMetadata { }
}
{{< /highlight >}}

Cree un archivo "GetFileInfoByNameResponse.cs" en el proyecto y rellénelo con el siguiente contenido:

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

### Agregar cliente Liferay REST API

Cree un archivo "SecurityContext.cs" en el proyecto y rellénelo con el siguiente contenido:

**.NET**
{{< highlight csharp >}}
namespace LiferayExample
{
    public record SecurityContext(string SiteId, string Login, string Password);
}
{{< /highlight >}}

Cree un archivo "DocumentClient.cs" en el proyecto y rellénelo con el siguiente contenido:

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

### Agregar lógica de escenario al programa

Mueva el siguiente contenido al archivo "Program.cs":

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

## Ejecute el ejemplo creado y verifique el resultado

Finalmente, ejecute el ejemplo creado y verifique el resultado que obtuvo:

1. Compile el proyecto
2. Ejecute la aplicación de consola.

Como resultado, el archivo "DocumentCompared.docx" debe colocarse en la raíz de la biblioteca de Documentos y Medios.

## Ver también

- El artículo ["Trabajar con un documento almacenado en un `SharePoint` en línea"](/words/net/work-with-document-stored-in-sharepoint)
- El artículo [Trabajar con un documento marcado con una etiqueta de confidencialidad](/words/es/net/work-with-document-market-by-sensitivity-label/)
