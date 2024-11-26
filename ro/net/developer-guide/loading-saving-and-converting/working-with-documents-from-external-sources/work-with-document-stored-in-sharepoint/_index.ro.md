---
title: Lucraţi cu un document stocat într-un SharePoint online
second_title: Aspose.Words pentru .NET
articleTitle: Lucraţi cu un document stocat într-un SharePoint online
linktitle: Lucraţi cu un document stocat într-un SharePoint online
description: "Conversia documentelor Word partajate în SharePoint la PDF folosind C#. Lucraţi cu documente stocate în SharePoint – diferite formate de intrare, inclusiv Word, OpenOffice, imagine şi e-book."
type: docs
weight: 20
url: /ro/net/work-with-document-stored-in-sharepoint/
timestamp: 2024-10-21-11-17-44
---

Microsoft SharePoint Online este o colecție de tehnologii bazate pe web care fac mai ușoară pentru organizații stocarea, partajarea și gestionarea informațiilor digitale. Puteți lucra cu documentele stocate în folderul "Documente Partajate" utilizând SharePoint nostri puternici Aspose.Words pentru .NET.

În acest articol vom acoperi un scenariu comun pentru convertirea unui document încărcat în folderul "Documente comune" într-un format PDF și încărcarea documentului rezultat înapoi în folder.

## Preset

1. Alătură-te la [Microsoft 365 Developer Program](https://developer.microsoft.com/en-us/microsoft-365/dev-program)
2. Configurați un sandbox instant [according to the video tutorial](https://www.youtube.com/watch?v=ojQcS9ZQmes)
3. Creaţi acreditări bazate pe aplicaţie pentru SharePoint Online aşa cum se detaliază în [Setting up an app-only principal with tenant permissions](https://learn.microsoft.com/en-us/sharepoint/dev/solution-guidance/security-apponly-azureacs)
4. Încărcați documentul cu numele "TestDoc.docx" pe site-ul de comunicare rădăcină în folderul "Documente partajate"
5. Achiziţionaţi Aspose.Words licenţă, sau utilizaţi o [Free Trial or a 30-day Temporary License](/words/net/licensing/)

{{% alert color="primary" %}}

Notă că dacă deja aveți un site de comunicare rădăcină online `SharePoint` atunci săriți peste pașii 1-2.

{{% /alert %}}

## Creează aplicație console

Pentru a evalua cum Aspose.Words pentru .NET funcționează cu SharePoint documente, aveți nevoie să creați o aplicație console cu setările corespunzătoare și implementa logică pentru descărcarea unui document din folderul "Documente comune", procesarea acestuia și apoi încărcarea acestui fișier în același folder. Pentru a face acest lucru urmaţi instrucţiunile descrise în această secţiune.

Pentru a executa instrucțiunile, trebuie să găsești și să remediezi valorile parametrilor următori, care vor fi disponibili după ce vei finaliza pașii din secțiunea "Pre-set":

- Identificator chiriaș – vezi [how to find your tenant id](https://docs.microsoft.com/en-us/onedrive/find-your-office-365-tenant-id)
- Nume chiriaș
- Identificator client
- Client secret

{{% alert color="primary" %}}

Notă că *secretul clientului* și *identificatorul clientului* ar trebui generate în pasul 3 din secțiunea "Predefinit".

{{% /alert %}}

### Creează un Proiect de Aplicație Consola

Pentru a crea un nou proiect de aplicație de consolă, urmați acești pași:

1. În Visual Studio, creați un nou proiect de aplicație console numită "SPOnlineExample" pentru *C#* limbaj și țintă cadrul *.NET 6*
2. Adăugați următoarele pachete:
      - `Microsoft.Extensions.Configuration.Json`
      - Aspose.Words

### Adăugare fișier de configurare

Pentru a adăuga un fișier de configurare urmați acești pași:

1. Adăugaţi un fişier "appsettings.json" la proiect
2. Adăugaţi următoarele conţinuturi în fişier:
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

3. Completaţi câmpurile cu valorile dvs. personalizate.

### Adăugați SharePoint Online REST API Client

Creează un fișier "SPOClient.cs" în proiect și umple-l cu următorul conținut:

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

### Adăugați logică de scenariu la program

Mută următorul conținut în fișierul "Program.cs":

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

## Rulează Exemplul Creat și Verifică Rezultatul

În final, rulează exemplul creat și verifică rezultatul pe care l-ai obținut:

1. Compila proiectul
2. Rulează aplicația de consolă

Ca rezultat, fișierul "TestDoc.pdf" ar trebui să fie plasat în folderul "Documente comune" al locului de comunicare rădăcină.

## Vezi și

- Articolul [Rendering](/words/net/rendering/) pentru mai multe informații despre formatele de pagină fixă și flux
- Articolul [Converting to Fixed-page Format](/words/net/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) pentru mai multe informaţii despre aspectul paginii
"- Articolul [Specify Rendering Options When Converting to PDF](/words/net/specify-rendering-options-when-converting-to-pdf/) pentru mai multe informații despre folosirea clasei [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/)"
