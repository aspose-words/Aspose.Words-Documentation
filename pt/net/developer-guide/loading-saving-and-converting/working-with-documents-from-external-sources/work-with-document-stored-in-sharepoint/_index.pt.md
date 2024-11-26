---
title: Trabalhe com um documento armazenado em SharePoint online
second_title: Aspose.Words para .NET
articleTitle: Trabalhe com um documento armazenado em SharePoint online
linktitle: Trabalhe com um documento armazenado em SharePoint online
description: "Converta Word compartilhado em SharePoint para PDF usando C#. Trabalhe com documentos armazenados em SharePoint – vários formatos de entrada, incluindo Word, OpenOffice, Imagem e e-book."
type: docs
weight: 20
url: /pt/net/work-with-document-stored-in-sharepoint/
timestamp: 2024-10-21-11-17-44
---

Microsoft SharePoint Online é uma coleção de tecnologias baseadas na web que facilitam às organizações o armazenamento, o compartilhamento e o gerenciamento de informações digitais. Você pode trabalhar com documentos armazenados na pasta "Documentos Compartilhados" em SharePoint usando nosso poderoso Aspose.Words para .NET.

Neste artigo, abordaremos um cenário comum para converter um documento carregado na pasta "Documentos Compartilhados" para o formato PDF e enviar o documento resultante de volta para a pasta.

## Predefinido

1. Junte-se ao [Programa para desenvolvedores Microsoft 365](https://developer.microsoft.com/en-us/microsoft-365/dev-program)
2. Configure um sandbox instantâneo [de acordo com o vídeo tutorial](https://www.youtube.com/watch?v=ojQcS9ZQmes)
3. Crie credenciais baseadas em aplicativo para SharePoint Online conforme detalhado em [Configurando um principal somente de aplicativo com permissões de locatário](https://learn.microsoft.com/en-us/sharepoint/dev/solution-guidance/security-apponly-azureacs)
4. Carregue o documento com o nome "TestDoc.docx" para o site de comunicação raiz na pasta "Documentos Compartilhados"
5. Adquira uma licença Aspose.Words ou use um [Licenciamento e Assinatura](/words/pt/net/licensing/)

{{% alert color="primary" %}}

Observe que se você já possui um site de comunicação raiz `SharePoint` Online, pule as etapas 1-2.

{{% /alert %}}

## Criar aplicativo de console

Para avaliar como Aspose.Words para .NET funciona com documentos SharePoint, você precisa criar um aplicativo de console com as configurações apropriadas e implementar a lógica para baixar um documento da pasta "Documentos Compartilhados", processá-lo e depois enviar esse arquivo para a mesma pasta. Para fazer isso, siga as instruções descritas nesta seção.

Para executar as instruções, é necessário localizar e fixar os valores dos seguintes parâmetros, que estarão disponíveis após a conclusão das etapas da parte "Preset":

- Identificador do locatário – consulte [como encontrar seu ID de inquilino](https://docs.microsoft.com/en-us/onedrive/find-your-office-365-tenant-id)
- Nome do inquilino
- Identificador do cliente
- Segredo do cliente

{{% alert color="primary" %}}

Observe que o *segredo do cliente* e o *identificador do cliente* devem ser gerados na etapa 3 da parte "Preset".

{{% /alert %}}

### Crie um novo projeto de aplicativo de console

Para criar um novo projeto de aplicativo de console, siga estas etapas:

1. Em Visual Studio, crie um novo projeto de aplicativo de console chamado "SPOnlineExample" para linguagem *C#* e estrutura de destino *.NET 6*
2. Adicione os seguintes pacotes:
      - `Microsoft.Extensions.Configuration.Json`
      - Aspose.Words

### Adicionar arquivo de configuração

Para adicionar o arquivo de configuração, siga estas etapas:

1. Adicione um arquivo "appsettings.json" ao projeto;
2. Adicione o seguinte conteúdo ao arquivo:
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

3. Preencha os campos com seus valores customizados.

### Adicionar cliente SharePoint Online REST API

Crie um arquivo "SPOClient.cs" no projeto e preencha-o com o seguinte conteúdo:

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
    
            if (!response.IsSuccessStatusCode |  | responseData == null)
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

### Adicione lógica de cenário ao programa

Mova o seguinte conteúdo para o arquivo "Program.cs":

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

## Execute o exemplo criado e verifique o resultado

Por fim, execute o exemplo criado e verifique o resultado obtido:

1. Compile o projeto
2. Execute o aplicativo de console

Como resultado, o arquivo "TestDoc.pdf" deve ser colocado na pasta "Documentos Compartilhados" do site de comunicação raiz.

## Veja também

- O artigo [Renderização](/words/pt/net/rendering/) para mais informações sobre os formatos de página fixa e layout de fluxo
- O artigo [Convertendo para formato de página fixa](/words/net/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) para mais informações sobre o layout da página
- O artigo [Especifique as opções de renderização ao converter para PDF](/words/pt/net/specify-rendering-options-when-converting-to-pdf/) para mais informações sobre o uso da classe [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/)
