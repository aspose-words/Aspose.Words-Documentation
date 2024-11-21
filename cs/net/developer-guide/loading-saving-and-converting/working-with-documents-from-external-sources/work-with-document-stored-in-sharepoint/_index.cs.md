---
title: Práce s dokumentem uloženým v `SharePoint` Online
second_title: Aspose.Words místo .NET
articleTitle: Práce s dokumentem uloženým v `SharePoint` Online
linktitle: Práce s dokumentem uloženým v `SharePoint` Online
description: "Převést Slovo sdílené v SharePoint do PDF pomocí C#. Práce s dokumenty uloženými v SharePoint Různé vstupní formáty, včetně Word, OpenOffice, Image a eBook."
type: docs
weight: 20
url: /cs/net/work-with-document-stored-in-sharepoint/
timestamp: 2024-10-21-11-17-44
---

Microsoft SharePoint Online je sbírka webových technologií, které umožňují organizacím ukládat, sdílet a spravovat digitální informace. Můžete pracovat s dokumenty uloženými ve složce "Sdílené dokumenty" v SharePoint pomocí našeho mocného Aspose.Words místo .NET.

V tomto článku se budeme zabývat běžným scénářem pro převod dokumentu nahraného do složky "Sdílené dokumenty" do formátu PDF a nahrajeme výsledný dokument zpět do složky.

## Přednastavit

1. Připojte se [Microsoft 365 Vývojářský program](https://developer.microsoft.com/en-us/microsoft-365/dev-program)
2. Nastavit instantní pískoviště [podle video tutoriálu](https://www.youtube.com/watch?v=ojQcS9ZQmes)
3. Vytvořit pověřovací listiny založené na aplikaci SharePoint Online podle popisu [Nastavení app-only principal s povolením nájemce](https://learn.microsoft.com/en-us/sharepoint/dev/solution-guidance/security-apponly-azureacs)
4. Nahrát dokument s názvem "TestDoc.docx" do kořenové komunikační stránky do složky "Sdílené dokumenty"
5. Nákup Aspose.Words nebo [Licence a předplatné](/words/cs/net/licensing/)

{{% alert color="primary" %}}

Všimněte si, že Pokud již máte `SharePoint` Online kořenová komunikace stránky pak přeskočit kroky 1-2.

{{% /alert %}}

## Vytvořit aplikaci konzole

Jak zhodnotit Aspose.Words místo .NET spolupracuje s SharePoint dokumenty, musíte vytvořit aplikaci konzole s vhodnými nastaveními a implementovat logiku pro stažení dokumentu ze složky "Sdílené dokumenty," zpracovat jej a poté nahrát tento soubor do stejné složky. Postupujte podle pokynů popsaných v této části.

Chcete-li provést instrukce, musíte najít a opravit hodnoty následujících parametrů, které budou k dispozici po dokončení kroků v části "Přednastavení":

- Identifikátor nájemce viz [jak najít ID svého nájemníka](https://docs.microsoft.com/en-us/onedrive/find-your-office-365-tenant-id)
- Jméno nájemce
- Identifikátor klienta
- Klientské tajemství

{{% alert color="primary" %}}

Všimněte si, že identifikátor *Client secret* a *Client* by měl být generován v kroku 3 části "Preset."

{{% /alert %}}

### Vytvořit nový projekt aplikace konzole

Chcete-li vytvořit nový projekt aplikace konzole, postupujte podle těchto kroků:

1. In Visual Studio, vytvořit nový projekt aplikace konzole s názvem "SPOnlineExample" pro *C#* jazyk a cílový rámec *.NET 6 *
2. Přidat následující balíčky:
      - `Microsoft.Extensions.Configuration.Json`
      - Aspose.Words

### Přidat konfigurační soubor

Pro přidání konfiguračního souboru postupujte podle těchto kroků:

1. Přidání souboru "appsets.json" do projektu;
2. Přidat do souboru následující obsah:
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

3. Vyplňte pole svými vlastními hodnotami.

### Přidat SharePoint Online REST API Klient

Vytvořte v projektu soubor "SPOClient.cs" a vyplňte jej následujícím obsahem:

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

### Přidat logiku scénáře do programu

Přesuňte následující obsah do souboru "Program.cs":

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

## Vykonat vytvořený příklad a zkontrolovat výsledek

Nakonec spusťte vytvořený příklad a zkontrolujte výsledek:

1. Složit projekt
2. Spustit aplikaci konzole

V důsledku toho by měl být soubor "TestDoc.pdf" umístěn ve složce "Shared Documents" kořenové komunikační stránky.

## Viz také

- Ten článek. [Renderování](/words/cs/net/rendering/) pro více informací o formátech pevných stránek a průtoků
- Ten článek. [Převod na formát pevné stránky](/words/net/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) pro více informací o rozložení stránky
- Ten článek. [Specifikovat možnosti renderování při převodu do PDF](/words/cs/net/specify-rendering-options-when-converting-to-pdf/) pro více informací o použití [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) třída
