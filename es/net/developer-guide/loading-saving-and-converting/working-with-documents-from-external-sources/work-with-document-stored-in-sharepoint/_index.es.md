---
title: Trabajar con un documento almacenado en un `SharePoint` en línea
second_title: Aspose.Words para .NET
articleTitle: Trabajar con un documento almacenado en un `SharePoint` en línea
linktitle: Trabajar con un documento almacenado en un `SharePoint` en línea
description: "Convierta Word compartido en SharePoint a PDF usando C#. Trabaje con documentos almacenados en SharePoint: varios formatos de entrada, incluidos Word, OpenOffice, Image y eBook."
type: docs
weight: 20
url: /es/net/work-with-document-stored-in-sharepoint/
---

Microsoft SharePoint Online es una colección de tecnologías basadas en web que facilitan a las organizaciones almacenar, compartir y administrar información digital. Puede trabajar con documentos almacenados en la carpeta "Documentos compartidos" en SharePoint utilizando nuestro potente Aspose.Words para .NET.

En este artículo, cubriremos un escenario común para convertir un documento cargado en la carpeta "Documentos compartidos" a formato PDF y cargar el documento resultante nuevamente en la carpeta.

## Preestablecido

1. Únase al [Programa para desarrolladores Microsoft 365](https://developer.microsoft.com/en-us/microsoft-365/dev-program)
2. Configure un [según el vídeo tutorial](https://www.youtube.com/watch?v=ojQcS9ZQmes) de zona de pruebas instantánea
3. Cree credenciales basadas en aplicaciones para SharePoint Online como se detalla en ["Configurar una entidad principal solo para aplicaciones con permisos de inquilino"](https://learn.microsoft.com/en-us/sharepoint/dev/solution-guidance/security-apponly-azureacs)
4. Cargue el documento con el nombre "TestDoc.docx" al sitio de comunicación raíz en la carpeta "Documentos compartidos".
5. Compre una licencia Aspose.Words o utilice un [Licencia y suscripción](/words/es/net/licensing/)

{{% alert color="primary" %}}

Tenga en cuenta que si ya tiene un sitio de comunicación raíz de `SharePoint` Online, omita los pasos 1 y 2.

{{% /alert %}}

## Crear aplicación de consola

Para evaluar cómo funciona Aspose.Words para .NET con documentos SharePoint, debe crear una aplicación de consola con la configuración adecuada e implementar la lógica para descargar un documento de la carpeta "Documentos compartidos", procesarlo y luego cargar este archivo en la misma carpeta.. Para ello, siga las instrucciones descritas en esta sección.

Para ejecutar las instrucciones, necesita buscar y fijar los valores de los siguientes parámetros, que estarán disponibles después de completar los pasos en la parte "Preestablecido":

- Identificador de inquilino – ver [cómo encontrar su identificación de inquilino](https://docs.microsoft.com/en-us/onedrive/find-your-office-365-tenant-id)
- Nombre del inquilino
- Identificador de cliente
- Secreto del cliente

{{% alert color="primary" %}}

Tenga en cuenta que el *secreto de cliente* y el *identificador de cliente* deben generarse en el paso 3 de la parte "Preestablecido".

{{% /alert %}}

### Crear un nuevo proyecto de aplicación de consola

Para crear un nuevo proyecto de aplicación de consola, siga estos pasos:

1. En Visual Studio, cree un nuevo proyecto de aplicación de consola denominado "SPOnlineExample" para el lenguaje *C#* y el marco de destino *.NET 6*.
2. Agregue los siguientes paquetes:
  - `Microsoft.Extensions.Configuration.Json`
  - Aspose.Words

### Agregar archivo de configuración

Para agregar un archivo de configuración, siga estos pasos:

1. Agregue un archivo "appsettings.json" al proyecto;
2. Agregue el siguiente contenido al archivo:
**JSON**
{{< highlight json >}}
{
  "TenantId": "Your tenant id.",
  "TenantName": "Your tenant name.",

  "ClientSecret": "App client secret.",
  "ClientId": "App client id.",

  "AsposeWordsLicensePath": "Path to your Aspose.Words license."
}
{{< /highlight >}}

3. Complete los campos con sus valores personalizados.

### Agregar cliente SharePoint Online REST API

Cree un archivo "SPOClient.cs" en el proyecto y rellénelo con el siguiente contenido:

**.NET**
{{< highlight csharp >}}

using System.Net.Http.Json;
using System.Net.Http.Headers;
using System.Security.Authentication;
using System.Text.Json.Serialization;
using Microsoft.Extensions.Configuration;

namespace SPOnlineExample
{
    /// <summary>
    /// Sharepoint online REST API client.
    /// </summary>
    internal class SPOClient
    {
        private readonly string authUrl;
        private readonly string clientId;
        private readonly string resource;
        private readonly string tenantId;
        private readonly HttpClient client;
        private readonly string tenantName;
        private readonly string clientSecret;

        private const string grandType = "client_credentials";
        private const string resourceId = "00000003-0000-0ff1-ce00-000000000000";
    
        // URL templates.
        private static readonly string authUrlTemplate = "https://accounts.accesscontrol.windows.net/{0}/tokens/OAuth/2";
        private static readonly string downloadfileTemplate = "https://{0}.sharepoint.com/_api/web/GetFileByServerRelativeUrl('{1}')/$value";
        private static readonly string uploadfileTemplate =
            "https://{0}.sharepoint.com/_api/web/GetFolderByServerRelativeUrl('{1}')/Files/add(url='{2}',overwrite=true)";
    
        // Access token.
        private string token = string.Empty;
    
        public SPOClient(IConfigurationRoot appConfig)
        {
            tenantId = appConfig[nameof(tenantId)];
            clientSecret = appConfig[nameof(clientSecret)];
            tenantName = appConfig[nameof(tenantName)];
    
            authUrl = string.Format(authUrlTemplate, tenantId);
            clientId = $"{appConfig[nameof(clientId)]}@{tenantId}";
            resource = $"{resourceId}/{tenantName}.sharepoint.com@{tenantId}";
    
            client = new HttpClient();
        }
    
        public async Task Authorize()
        {
            var formContent = new FormUrlEncodedContent(new[]
            {
                new KeyValuePair<string, string>("grant_type", grandType),
                new KeyValuePair<string, string>("client_id", clientId),
                new KeyValuePair<string, string>("client_secret", clientSecret),
                new KeyValuePair<string, string>("resource", resource)
            });
    
            var response = await client.PostAsync(authUrl, formContent);
            var responseData = await response.Content.ReadFromJsonAsync<AuthRespose>();
    
            if (!response.IsSuccessStatusCode || responseData == null)
                throw new AuthenticationException(responseData?.Description);
    
            token = responseData.Token;
        }
    
        public async Task<Stream> DownloadFile(string relativeFilePath)
        {
            var url = string.Format(downloadfileTemplate, tenantName, relativeFilePath);
            using var request = CreateRequest(url, HttpMethod.Get);
    
            var response = await client.SendAsync(request);
    
            if (!response.IsSuccessStatusCode)
            {
                var errorData = await response.Content.ReadAsStringAsync();
                throw new Exception(errorData);
            }
    
            var fileStream = await response.Content.ReadAsStreamAsync();
            return fileStream;
        }
    
        public async Task UploadFile(string relativeFolderPath, string fileName, Stream fileData)
        {
            var url = string.Format(uploadfileTemplate, tenantName, relativeFolderPath, fileName);
            using var request = CreateRequest(url, HttpMethod.Post);
    
            request.Headers.Add("IF-MATCH", "*"); // Overwrite any changes.
            request.Content = new StreamContent(fileData);
    
            var response = await client.SendAsync(request);
    
            if (!response.IsSuccessStatusCode)
            {
                var errorData = await response.Content.ReadAsStringAsync();
                throw new Exception(errorData);
            }
        }
    
        private HttpRequestMessage CreateRequest(string url, HttpMethod httpMethod)
        {
            var request = new HttpRequestMessage(httpMethod, url);
            request.Headers.Authorization = new AuthenticationHeaderValue("Bearer", token);
    
            return request;
        }
    
        private class AuthRespose
        {
            public string Error { get; set; } = string.Empty;
    
            [JsonPropertyName("error_description")]
            public string Description { get; set; } = string.Empty;
    
            [JsonPropertyName("access_token")]
            public string Token { get; set; } = string.Empty;
        }
    }
}
{{< /highlight >}}

### Agregar lógica de escenario al programa

Mueva el siguiente contenido al archivo "Program.cs":

**.NET**
{{< highlight csharp >}}

using Aspose.Words;
using Aspose.Words.Saving;
using Microsoft.Extensions.Configuration;

namespace SPOnlineExample
{
    public static class Program
    {
        static async Task Main(string[] args)
        {
            // The example below downloads the file "testdoc.docx" from the shared documents folder.
            // Converts it to PDF and uploads conversion result to the same folder.

            var appConfig = GetAppConfig();
            var client = new SPOClient(appConfig);
    
            await client.Authorize();
            var fileStream = await client.DownloadFile("/Shared%20Documents/TestDoc.docx");
    
            var lic = new License();
            lic.SetLicense(appConfig["AsposeWordsLicensePath"]);
            var doc = new Document(fileStream);
    
            using var outputStream = new MemoryStream();
            var saveOptions = new PdfSaveOptions();
            doc.Save(outputStream, saveOptions);
    
            await client.UploadFile("/Shared%20Documents", "TestDoc.pdf", outputStream);
    
            Console.WriteLine("Done. Press any key to complete.");
            Console.ReadKey();
        }
    
        private static IConfigurationRoot GetAppConfig()
        {
            // Build configuration
            return JsonConfigurationExtensions.AddJsonFile(
                    new ConfigurationBuilder().SetBasePath(Directory.GetCurrentDirectory()),
                    "appsettings.json")
                .Build();
        }
    }
}
{{< /highlight >}}

## Ejecute el ejemplo creado y verifique el resultado

Finalmente, ejecute el ejemplo creado y verifique el resultado que obtuvo:

1. Compile el proyecto
2. Ejecute la aplicación de consola.

Como resultado, el archivo "TestDoc.pdf" debe colocarse en la carpeta "Documentos compartidos" del sitio de comunicación raíz.

## Ver también

- El artículo [Representación](/words/es/net/rendering/) para obtener más información sobre los formatos de página fija y diseño de flujo.
- El artículo ["Conversión a formato de página fija"](/words/net/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) para más información sobre el diseño de la página.
- El artículo [Especificar opciones de renderizado al convertir a PDF](/words/es/net/specify-rendering-options-when-converting-to-pdf/) para más información sobre el uso de la clase [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/)
