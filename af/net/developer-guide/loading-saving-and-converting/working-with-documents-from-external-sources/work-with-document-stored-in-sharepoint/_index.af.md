---
title: Werk Met'n Dokument Gestoor In'n `SharePoint` Aanlyn
second_title: Aspose.Words vir .NET
articleTitle: Werk Met'n Dokument Gestoor In'n `SharePoint` Aanlyn
linktitle: Werk Met'n Dokument Gestoor In'n `SharePoint` Aanlyn
description: "Skakel woord gedeel in SharePoint om na PDF met behulp van C#. Werk met dokumente gestoor in SharePoint - verskeie insette formate, insluitend Word, OpenOffice, Beeld en eBook."
type: docs
weight: 20
url: /af/net/work-with-document-stored-in-sharepoint/
timestamp: 2024-10-21-11-17-44
---

Microsoft SharePoint Online Is'n versameling webgebaseerde tegnologieë wat dit maklik maak vir organisasies om digitale inligting te stoor, te deel en te bestuur. Jy kan werk met dokumente gestoor in die gids "Gedeelde Dokumente" in SharePoint met behulp van ons kragtige Aspose.Words vir .NET.

In hierdie artikel sal ons'n algemene scenario dek vir die omskakeling van'n dokument wat na die "Gedeelde Dokumente" - lêergids opgelaai is na PDF - formaat en die gevolglike dokument terug na die lêergids oplaai.

## Vooraf ingestel

1. Sluit aan by die [Microsoft 365 Ontwikkelaarprogram](https://developer.microsoft.com/en-us/microsoft-365/dev-program)
2. Stel'n onmiddellike sandbox op [volgens die video-handleiding](https://www.youtube.com/watch?v=ojQcS9ZQmes)
3. Skep app-gebaseerde geloofsbriewe Vir SharePoint Aanlyn Soos uiteengesit In [Die opstel van'n app-net hoof met huurder regte](https://learn.microsoft.com/en-us/sharepoint/dev/solution-guidance/security-apponly-azureacs)
4. Laai die dokument op met die naam "TestDoc.docx "na die wortel kommunikasie webwerf in die gids" Gedeelde Dokumente"
5. Koop Aspose.Words lisensie, of gebruik'n [Gratis Proeflopie of'n Tydelike Lisensie vir 30 dae](/words/net/licensing/)

{{% alert color="primary" %}}

Let daarop dat as jy reeds'n `SharePoint` Aanlyn wortel kommunikasie webwerf dan slaan stappe 1-2.

{{% /alert %}}

## Skep Konsole-Toepassing

Om te bepaal hoe Aspose.Words vir .NET werk met SharePoint dokumente, moet jy'n konsole aansoek met die toepaslike instellings te skep en te implementeer die logika vir die aflaai van'n dokument uit die gids "Shared Documents", die verwerking van dit, en dan die oplaai van hierdie lêer na dieselfde gids. Om dit te doen, volg die instruksies wat in hierdie afdeling beskryf word.

Om die instruksies uit te voer, moet u die waardes van die volgende parameters vind en regstel, wat beskikbaar sal wees nadat die stappe in Die "Voorafbepaalde" deel voltooi is:

- Huurder identifiseerder sien [hoe om jou id te vind](https://docs.microsoft.com/en-us/onedrive/find-your-office-365-tenant-id)
- Huurder naam
- Kliënt identifiseerder
- Kliëntgeheim

{{% alert color="primary" %}}

Let daarop dat die *client secret* en *client identifier* in stap 3 van die "Voorinstelling" deel gegenereer moet word.

{{% /alert %}}

### Skep'n Nuwe Console Aansoek Projek

Volg hierdie stappe om'n nuwe konsole-toepassingsprojek te skep:

1. In Visual Studio, skep'n nuwe konsole aansoek projek met die naam "SPOnlineExample " vir *C#* taal en teiken raamwerk *.NET 6*
2. Voeg die volgende pakkette by:
`Microsoft.Extensions.Configuration.Json`
   - Aspose.Words

### Voeg Konfigurasielêer By

Om konfigurasielêer by te voeg, volg hierdie stappe:

1. Voeg'n "appsettings.json " lêer na die projek;
2. Voeg die volgende inhoud by die lêer:
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

3. Voltooi die velde met u pasgemaakte waardes.

### Voeg SharePoint Aanlyn REST API Kliënt By

Skep'n lêer " SPOClient.cs" in die projek en vul dit met die volgende inhoud:

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

### Voeg Scenario Logika by Die Program

Skuif die volgende inhoud na die "Program.cs " lêer:

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

## Voer die Geskepte Voorbeeld uit en Kontroleer Die Resultaat

Ten slotte, hardloop die geskep voorbeeld en kyk na die resultaat wat jy het:

1. Stel die projek saam
2. Begin die konsole-toepassing

As gevolg hiervan, die "TestDoc.pdf" lêer moet in die "Gedeelde Dokumente" gids van die wortel kommunikasie webwerf geplaas word.

## Sien Ook

- Die artikel [Lewering](/words/net/rendering/) vir meer inligting oor die vaste bladsy en vloei-uitleg formate
- Die artikel [Omskakeling Na Vaste bladsy Formaat](/words/net/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) vir meer inligting oor die bladsy uitleg
- Die artikel [Spesifiseer Vertoonopsies Wanneer U Na PDFOmskakel](/words/net/specify-rendering-options-when-converting-to-pdf/) vir meer inligting oor die gebruik van die [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) klas
