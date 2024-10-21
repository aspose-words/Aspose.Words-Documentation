---
title: SharePoint Online'da Saklanan Bir Belgeyle Çalışma
second_title: .NET için Aspose.Words
articleTitle: SharePoint Online'da Saklanan Bir Belgeyle Çalışma
linktitle: SharePoint Online'da Saklanan Bir Belgeyle Çalışma
description: "SharePoint'te paylaşılan Word'ü C# kullanarak PDF'ye dönüştürün. SharePoint'te (Word, OpenOffice, Image ve e-Kitap dahil olmak üzere çeşitli giriş formatlarında) depolanan belgelerle çalışın."
type: docs
weight: 20
url: /tr/net/work-with-document-stored-in-sharepoint/
---

Microsoft SharePoint Online, kuruluşların dijital bilgileri saklamasını, paylaşmasını ve yönetmesini kolaylaştıran web tabanlı teknolojilerden oluşan bir koleksiyondur. .NET için güçlü Aspose.Words'imizi kullanarak SharePoint'deki "Paylaşılan Belgeler" klasöründe saklanan belgelerle çalışabilirsiniz.

Bu yazıda, "Paylaşılan Belgeler" klasörüne yüklenen bir belgenin PDF formatına dönüştürülmesi ve ortaya çıkan belgenin tekrar klasöre yüklenmesine ilişkin yaygın bir senaryoyu ele alacağız.

## Ön ayar

1. [Microsoft 365 Geliştirici Programı](https://developer.microsoft.com/en-us/microsoft-365/dev-program)'e katılın
2. Anında sanal alan [video eğitimine göre](https://www.youtube.com/watch?v=ojQcS9ZQmes) oluşturun
3. [Kiracı izinlerine sahip yalnızca uygulama sorumlusu ayarlama](https://learn.microsoft.com/en-us/sharepoint/dev/solution-guidance/security-apponly-azureacs)'de ayrıntılı olarak belirtildiği gibi SharePoint Online için uygulama tabanlı kimlik bilgileri oluşturun
4. "TestDoc.docx" adlı belgeyi kök iletişim sitesine "Paylaşılan Belgeler" klasörüne yükleyin
5. Aspose.Words lisansı satın alın veya [Lisanslama ve Abonelik](/words/tr/net/licensing/) kullanın

{{% alert color="primary" %}}

Zaten bir `SharePoint` Online kök iletişim siteniz varsa 1-2. adımları atlayın.

{{% /alert %}}

## Konsol Uygulaması Oluştur

.NET için Aspose.Words'in SharePoint belgeleriyle nasıl çalıştığını değerlendirmek için, uygun ayarlarla bir konsol uygulaması oluşturmanız ve "Paylaşılan Belgeler" klasöründen bir belge indirme, onu işleme ve ardından bu dosyayı aynı klasöre yükleme mantığını uygulamanız gerekir.. Bunu yapmak için bu bölümde açıklanan talimatları izleyin.

Talimatları yürütmek için, "Ön Ayar" bölümündeki adımları tamamladıktan sonra mevcut olacak olan aşağıdaki parametrelerin değerlerini bulmanız ve düzeltmeniz gerekir:

- Kiracı tanımlayıcı – bkz. [kiracı kimliğinizi nasıl bulabilirsiniz?](https://docs.microsoft.com/en-us/onedrive/find-your-office-365-tenant-id)
- Kiracı adı
- Müşteri tanımlayıcı
- Müşteri sırrı

{{% alert color="primary" %}}

*İstemci sırrı* ve *istemci tanımlayıcısının* "Ön Ayar" bölümünün 3. adımında oluşturulması gerektiğini unutmayın.

{{% /alert %}}

### Yeni Bir Konsol Uygulama Projesi Oluşturun

Yeni bir konsol uygulaması projesi oluşturmak için şu adımları izleyin:

1. Visual Studio'te *C#* dili ve hedef çerçevesi *.NET 6* için "SPOnlineExample" adlı yeni bir konsol uygulaması projesi oluşturun
2. Aşağıdaki paketleri ekleyin:
      - `Microsoft.Extensions.Configuration.Json`
      - Aspose.Words

### Yapılandırma Dosyası Ekle

Yapılandırma dosyasını eklemek için şu adımları izleyin:

1. Projeye bir "appsettings.json" dosyası ekleyin;
2. Aşağıdaki içeriği dosyaya ekleyin:
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

3. Alanları özel değerlerinizle doldurun.

### SharePoint Çevrimiçi REST API İstemcisi Ekle

Projede bir "SPOClient.cs" dosyası oluşturun ve bu dosyayı aşağıdaki içerikle doldurun:

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

### Senaryo Mantığını Programa Eklemek

Aşağıdaki içeriği "Program.cs" dosyasına taşıyın:

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

## Oluşturulan Örneği Yürütün ve Sonucu Kontrol Edin

Son olarak oluşturulan örneği çalıştırın ve elde ettiğiniz sonucu kontrol edin:

1. Projeyi derleyin
2. Konsol uygulamasını çalıştırın

Sonuç olarak, "TestDoc.pdf" dosyasının kök iletişim sitesinin "Paylaşılan Belgeler" klasörüne yerleştirilmesi gerekir.

## Ayrıca bakınız

- Sabit sayfa ve akış düzeni formatları hakkında daha fazla bilgi için [İşleme](/words/tr/net/rendering/) makalesi
- Sayfa düzeni hakkında daha fazla bilgi için [Sabit Sayfa Formatına Dönüştürme](/words/net/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) makalesi
- [PdfSaveOptions](https://reference.aspose.com/words/tr/net/aspose.words.saving/pdfsaveoptions/) sınıfını kullanma hakkında daha fazla bilgi için [PDF'ye Dönüştürürken İşleme Seçeneklerini Belirtin](/words/tr/net/specify-rendering-options-when-converting-to-pdf/) makalesi
