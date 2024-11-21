---
title: Pracuj z dokumentem przechowywanym w `SharePoint` Online
second_title: Aspose.Words dla .NET
articleTitle: Pracuj z dokumentem przechowywanym w `SharePoint` Online
linktitle: Pracuj z dokumentem przechowywanym w `SharePoint` Online
description: "Konwertuj Word udostępniony w formacie SharePoint na PDF za pomocą C#. Pracuj z dokumentami przechowywanymi w SharePoint – różnymi formatami wejściowymi, w tym Word, OpenOffice, Image i eBook."
type: docs
weight: 20
url: /pl/net/work-with-document-stored-in-sharepoint/
timestamp: 2024-10-21-11-17-44
---

Microsoft SharePoint Online to zbiór technologii internetowych, które ułatwiają organizacjom przechowywanie, udostępnianie i zarządzanie informacjami cyfrowymi. Możesz pracować z dokumentami przechowywanymi w folderze "Dokumenty udostępnione" w formacie SharePoint, korzystając z naszego potężnego formatu Aspose.Words dla .NET.

W tym artykule omówimy typowy scenariusz konwersji dokumentu przesłanego do folderu "Dokumenty udostępnione" do formatu PDF i przesłania powstałego dokumentu z powrotem do folderu.

## Wstępnie ustawione

1. Dołącz do [Program dla programistów Microsoft 365](https://developer.microsoft.com/en-us/microsoft-365/dev-program)
2. Skonfiguruj natychmiastową piaskownicę [zgodnie z samouczkiem wideo](https://www.youtube.com/watch?v=ojQcS9ZQmes)
3. Utwórz dane uwierzytelniające oparte na aplikacji dla SharePoint Online zgodnie z opisem w [Konfigurowanie podmiotu zabezpieczeń tylko dla aplikacji z uprawnieniami dzierżawy](https://learn.microsoft.com/en-us/sharepoint/dev/solution-guidance/security-apponly-azureacs)
4. Prześlij dokument o nazwie "TestDoc.docx" do głównego serwisu komunikacyjnego do folderu "Dokumenty udostępnione"
5. Kup licencję Aspose.Words lub użyj [Licencjonowanie i subskrypcja](/words/pl/net/licensing/)

{{% alert color="primary" %}}

Pamiętaj, że jeśli masz już główną witrynę komunikacyjną `SharePoint` Online, pomiń kroki 1-2.

{{% /alert %}}

## Utwórz aplikację konsolową

Aby ocenić, jak Aspose.Words for .NET współpracuje z dokumentami SharePoint, należy utworzyć aplikację konsolową z odpowiednimi ustawieniami i zaimplementować logikę pobierania dokumentu z folderu "Dokumenty udostępnione", przetwarzania go, a następnie przesyłania tego pliku do tego samego folderu. Aby to zrobić, postępuj zgodnie z instrukcjami opisanymi w tej sekcji.

Aby wykonać instrukcje, należy znaleźć i naprawić wartości następujących parametrów, które będą dostępne po wykonaniu kroków z części "Preset":

- Identyfikator najemcy – patrz [jak znaleźć identyfikator najemcy](https://docs.microsoft.com/en-us/onedrive/find-your-office-365-tenant-id)
- Imię i nazwisko najemcy
- Identyfikator klienta
- Tajemnica klienta

{{% alert color="primary" %}}

Należy pamiętać, że *klucz klienta* i *identyfikator klienta* należy wygenerować w kroku 3 części "Ustawienia wstępne".

{{% /alert %}}

### Utwórz nowy projekt aplikacji konsolowej

Aby utworzyć nowy projekt aplikacji konsolowej, wykonaj następujące kroki:

1. W Visual Studio utwórz nowy projekt aplikacji konsolowej o nazwie "SPOnlineExample" dla języka *C#* i platformy docelowej *.NET 6*
2. Dodaj następujące pakiety:
      - `Microsoft.Extensions.Configuration.Json`
      - Aspose.Words

### Dodaj plik konfiguracyjny

Aby dodać plik konfiguracyjny, wykonaj następujące kroki:

1. Dodaj do projektu plik "appsettings.json";
2. Dodaj do pliku następującą treść:
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

3. Wypełnij pola wartościami niestandardowymi.

### Dodaj klienta SharePoint Online REST API

Utwórz w projekcie plik "SPOClient.cs" i wypełnij go następującą treścią:

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

### Dodaj logikę scenariusza do programu

Przenieś następującą zawartość do pliku "Program.cs":

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

## Wykonaj utworzony przykład i sprawdź wynik

Na koniec uruchom utworzony przykład i sprawdź uzyskany wynik:

1. Skompiluj projekt
2. Uruchom aplikację konsolową

W rezultacie plik "TestDoc.pdf" powinien zostać umieszczony w folderze "Dokumenty udostępnione" głównej witryny komunikacyjnej.

## Zobacz też

- Artykuł [Wykonanie](/words/pl/net/rendering/) zawiera więcej informacji na temat formatów o stałej stronie i formatach z układem przepływu
- Artykuł [Konwersja do formatu o stałej stronie](/words/net/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) zawiera więcej informacji na temat układu strony
- Artykuł [Określ opcje renderowania podczas konwersji do formatu PDF](/words/pl/net/specify-rendering-options-when-converting-to-pdf/) zawiera więcej informacji na temat korzystania z klasy [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/)
