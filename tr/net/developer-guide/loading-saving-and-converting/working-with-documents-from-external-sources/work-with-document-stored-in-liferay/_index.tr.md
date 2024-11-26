---
title: Liferay'te Saklanan Bir Belgeyle Çalışma
second_title: .NET için Aspose.Words
articleTitle: Liferay'te Saklanan Bir Belgeyle Çalışma
linktitle: Liferay'te Saklanan Bir Belgeyle Çalışma
description: "C# kullanarak Liferay'te paylaşılan Word belgelerini karşılaştırın. Liferay'te saklanan belgelerle çalışın; Word, OpenOffice, Image ve e-Kitap gibi çeşitli giriş formatları."
type: docs
weight: 20
url: /tr/net/work-with-document-stored-in-liferay/
timestamp: 2024-01-31-14-23-37
---

Liferay Portal, web portalları ve web siteleri geliştirmek için tasarlanmış açık kaynaklı bir kurumsal portal yazılım platformudur. Liferay, portal platformunun bir parçası olarak, kullanıcıların belgeleri işbirliğine dayalı ve verimli bir şekilde oluşturmasına, düzenlemesine, depolamasına ve yönetmesine olanak tanıyan bir belge yönetim sistemi sağlar. Bu belge yönetimi işlevine genellikle Liferay Belge Kitaplığı adı verilir.

Bu makalede, "Belgeler ve Medya" kütüphanesinin köküne yüklenen belgeleri karşılaştırmak ve ortaya çıkan belgeyi geri yüklemek için yaygın bir senaryoyu ele alacağız.

## Ön ayar

1. Docker'yi çalıştırarak yeni bir Liferay Portal örneği başlatın:

   {{< highlight bash >}}
       docker run -it -m 8g -p 8080:8080 liferay/portal:7.4.3.92-ga92
   {{< /highlight >}}

   Docker'iniz yoksa önce [yükle](https://docs.docker.com/desktop/)'yi kullanın.
   [Liferay Portalı liman işçisi](https://hub.docker.com/r/liferay/portal)'in başka bir sürümünü kullanabilirsiniz.

2. `test@liferay.com` e-posta adresini ve `test` şifresini kullanarak [Liferay](http://localhost:8080)'te oturum açın.
3. İstendiğinde şifrenizi değiştirin.
4. [bu eğitim](https://learn.liferay.com/w/dxp/headless-delivery/consuming-apis/consuming-rest-services#identify-the-site-containing-the-data)'i kullanarak site tanımlayıcısını alın.
5. Aspose.Words lisansı satın alın veya [Lisanslama ve Abonelik](/words/tr/net/licensing/) kullanın.

{{% alert color="primary" %}}

Zaten bir Liferay portalınız varsa 1-3. adımları atlayın.

{{% /alert %}}

## Konsol Uygulaması Oluştur

.NET için Aspose.Words'in Liferay Belgeleri ve Medya kitaplığıyla nasıl çalıştığını değerlendirmek için, uygun ayarlara sahip bir konsol uygulaması oluşturmanız ve belgeleri Belgeler ve Medya kitaplığının köküne yükleme, bu belgeleri indirme, işleme ve ardından mantığı uygulamanız gerekir. sonucu Belgeler ve Medya kitaplığının köküne geri yükleme. Bunu yapmak için bu bölümde açıklanan talimatları izleyin.

Talimatları yürütmek için, "Ön Ayar" bölümündeki adımları tamamladıktan sonra kullanabileceğiniz aşağıdaki değişkenlerin değerlerini bulmanız ve düzeltmeniz gerekir:

- Site tanımlayıcı
- Kullanıcı Girişi
- Kullanıcı şifresi
- Temel portal URL'si
- Aspose.Words Lisans dosyasının yolu

{{% alert color="primary" %}}

*login* ve *password*'nin "Ön Ayar" bölümünün 2-3. adımlarında ve *site tanımlayıcısının* "Ön Ayar" bölümünün 4. adımında edinilmesi gerektiğini unutmayın.

{{% /alert %}}

### Yeni Bir Konsol Uygulama Projesi Oluşturun

Yeni bir konsol uygulaması projesi oluşturmak için şu adımları izleyin:

1. Visual Studio'te *C#* dili ve hedef çerçevesi *.NET 6* için "LiferayExample" adlı yeni bir konsol uygulaması projesi oluşturun
2. Aşağıdaki paketleri ekleyin:
      - `Newtonsoft.Json`
   - KimlikModeli
      - Aspose.Words

### Karşılaştırılacak Belge Dosyalarını Ekleme

Projede bir "Docs" klasörü oluşturun ve "DocumentA.docx" ve "DocumentA.docx" dosyalarını ekleyin.

### REST API İşleme için JSON Model Sınıfları Ekleme

Projede bir "JsonModel" klasörü oluşturun. Projede bir "DownloadResponse.cs" dosyası oluşturun ve bu dosyayı aşağıdaki içerikle doldurun:

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

Projede bir "FileMetadata.cs" dosyası oluşturun ve bu dosyayı aşağıdaki içerikle doldurun:

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

Projede bir "UploadResponse.cs" dosyası oluşturun ve bu dosyayı aşağıdaki içerikle doldurun:

**.NET**
{{< highlight csharp >}}
using Newtonsoft.Json;

namespace LiferayExample.JsonModel
{
    [JsonObject(ItemNullValueHandling = NullValueHandling.Ignore)]
    public class UploadResponse : FileMetadata { }
}
{{< /highlight >}}

Projede "GetFileInfoByNameResponse.cs" adlı bir dosya oluşturun ve bu dosyayı aşağıdaki içerikle doldurun:

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

### Liferay REST API İstemcisi Ekle

Projede bir "SecurityContext.cs" dosyası oluşturun ve bu dosyayı aşağıdaki içerikle doldurun:

**.NET**
{{< highlight csharp >}}
namespace LiferayExample
{
    public record SecurityContext(string SiteId, string Login, string Password);
}
{{< /highlight >}}

Projede bir "DocumentClient.cs" dosyası oluşturun ve bu dosyayı aşağıdaki içerikle doldurun:

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

### Senaryo Mantığını Programa Eklemek

Aşağıdaki içeriği "Program.cs" dosyasına taşıyın:

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

## Oluşturulan Örneği Yürütün ve Sonucu Kontrol Edin

Son olarak oluşturulan örneği çalıştırın ve elde ettiğiniz sonucu kontrol edin:

1. Projeyi derleyin
2. Konsol uygulamasını çalıştırın

Sonuç olarak, "DocumentCompared.docx" dosyasının Belgeler ve Medya kitaplığının kök dizinine yerleştirilmesi gerekir.

## Ayrıca bakınız

- [`SharePoint` Online'da Saklanan Bir Belgeyle Çalışma](/words/net/work-with-document-stored-in-sharepoint) makalesi
- [Hassasiyet Etiketiyle İşaretlenmiş Bir Belgeyle Çalışma](/words/tr/net/work-with-document-market-by-sensitivity-label/) makalesi
