---
title: Werk met een document opgeslagen in een `SharePoint` Online
second_title: Aspose.Words voor .NET
articleTitle: Werk met een document opgeslagen in een `SharePoint` Online
linktitle: Werk met een document opgeslagen in een `SharePoint` Online
description: "Word gedeeld in omzetten SharePoint PDF gebruiken C#. Werken met opgeslagen documenten SharePoint Verschillende invoerformaten, waaronder Word, OpenOffice, Image en eBook."
type: docs
weight: 20
url: /nl/net/work-with-document-stored-in-sharepoint/
---

Microsoft SharePoint Online is een verzameling van web-gebaseerde technologieën die het gemakkelijk maken voor organisaties om digitale informatie op te slaan, te delen en te beheren. U kunt werken met documenten opgeslagen in de map "Gedeelde documenten" in SharePoint onze krachtige Aspose.Words voor .NET.

In dit artikel behandelen we een gemeenschappelijk scenario voor het omzetten van een document geüpload naar de map "Gedeelde documenten" naar PDF-formaat en het uploaden van het resulterende document terug naar de map.

## Voorinstelling

1. Deelnemen aan de [Microsoft 365 Ontwikkelprogramma](https://developer.microsoft.com/en-us/microsoft-365/dev-program)
2. Een instant zandbak opzetten [volgens de video tutorial](https://www.youtube.com/watch?v=ojQcS9ZQmes)
3. Op app gebaseerde referenties aanmaken voor SharePoint Online zoals beschreven in [Het instellen van een app-only principal met huurdermachtigingen](https://learn.microsoft.com/en-us/sharepoint/dev/solution-guidance/security-apponly-azureacs)
4. Upload het document met de naam "TestDoc.docx" naar de root-communicatiesite in de map "Gedeelde documenten"
5. Aankoop Aspose.Words licentie, of gebruik een [Licentie en abonnement](/words/nl/net/licensing/)

{{% alert color="primary" %}}

Merk op dat Als u al een `SharePoint` Online root communicatie site sla dan stap 1-2 over.

{{% /alert %}}

## Console-programma aanmaken

Evaluatie Aspose.Words voor .NET werkt met SharePoint documenten, moet u een console applicatie met de juiste instellingen te maken en implementeren van de logica voor het downloaden van een document uit de map "Gedeelde Documenten," het verwerken van het, en vervolgens het uploaden van dit bestand naar dezelfde map. Om dit te doen, volg de instructies beschreven in deze sectie.

Om de instructies uit te voeren, moet u de waarden van de volgende parameters vinden en repareren, die beschikbaar zullen zijn na het voltooien van de stappen in het "Preset" gedeelte:

- Huurder-identificatiecode [hoe uw huurder id te vinden](https://docs.microsoft.com/en-us/onedrive/find-your-office-365-tenant-id)
- Naam huurder
- Client identifier
- Klantengeheim

{{% alert color="primary" %}}

Merk op dat het *client secret* en *client identifier* gegenereerd moeten worden in stap 3 van het "Preset" gedeelte.

{{% /alert %}}

### Een nieuw console-programma aanmaken

Volg de volgende stappen om een nieuw console-applicatieproject aan te maken:

1. In Visual Studio, maak een nieuw console applicatie project genaamd "SPOnlineExample" voor *C#* taal- en doelkader *.NET 6*
2. Voeg de volgende pakketten toe:
      - `Microsoft.Extensions.Configuration.Json`
      - Aspose.Words

### Configuratiebestand toevoegen

Om configuratiebestand toe te voegen, volg deze stappen:

1. Voeg een "appsettings.json" bestand toe aan het project;
2. Voeg de volgende inhoud toe aan het bestand:
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

3. Vul de velden in met uw aangepaste waarden.

### Voeg toe SharePoint Online REST API Client

Maak een bestand "SPOClient.cs" in het project en vul het met de volgende inhoud:

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

### Scenario-logica toevoegen aan het programma

Verplaats de volgende inhoud naar het bestand "Program.cs":

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

## Voer het aangemaakte voorbeeld uit en controleer het resultaat

Ten slotte, voer het gemaakte voorbeeld en controleer het resultaat dat je kreeg:

1. Het project combineren
2. De console-toepassing uitvoeren

Als gevolg hiervan moet het bestand "TestDoc.pdf" worden geplaatst in de "Gedeelde Documenten" map van de root communicatie site.

## Zie ook

- Het artikel [Renderen](/words/nl/net/rendering/) voor meer informatie over de fixed-page en flow-layout formaten
- Het artikel [Omzetten naar Fixed-page Format](/words/net/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) voor meer informatie over de pagina-indeling
- Het artikel [Renderopties opgeven bij omzetten naar PDF](/words/nl/net/specify-rendering-options-when-converting-to-pdf/) voor meer informatie over het gebruik van de [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) klasse
