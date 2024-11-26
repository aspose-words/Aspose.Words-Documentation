---
title: Bekerja dengan Dokumen yang Disimpan di Liferay
second_title: Aspose.Words untuk .NET
articleTitle: Bekerja dengan Dokumen yang Disimpan di Liferay
linktitle: Bekerja dengan Dokumen yang Disimpan di Liferay
description: "Bandingkan dokumen Word yang dibagikan di Liferay menggunakan C#. Bekerja dengan dokumen yang disimpan di Liferay – berbagai format input, termasuk Word, OpenOffice, Image, dan eBook."
type: docs
weight: 20
url: /id/net/work-with-document-stored-in-liferay/
timestamp: 2024-01-31-14-23-37
---

Liferay Portal adalah platform perangkat lunak portal perusahaan sumber terbuka yang dirancang untuk mengembangkan portal web dan situs web. Liferay menyediakan sistem manajemen dokumen sebagai bagian dari platform portalnya, memungkinkan pengguna untuk membuat, mengatur, menyimpan, dan mengelola dokumen secara kolaboratif dan efisien. Fungsi manajemen dokumen ini sering disebut sebagai Perpustakaan Dokumen Liferay.

Dalam artikel ini, kami akan membahas skenario umum untuk membandingkan dokumen yang diunggah ke akar perpustakaan "Dokumen dan Media" dan mengunggah kembali dokumen yang dihasilkan.

## Prasetel

1. Mulai instance Liferay Portal baru dengan menjalankan Docker:

   {{< highlight bash >}}
       docker run -it -m 8g -p 8080:8080 liferay/portal:7.4.3.92-ga92
   {{< /highlight >}}

   Kalau belum punya Docker, [menginstalnya](https://docs.docker.com/desktop/) dulu.
   Anda dapat menggunakan [Pekerja pelabuhan Liferay Portal](https://hub.docker.com/r/liferay/portal) versi lain.

2. Masuk ke [Liferay](http://localhost:8080) menggunakan alamat email `test@liferay.com` dan kata sandi `test`.
3. Jika diminta, ubah kata sandi Anda.
4. Ambil pengidentifikasi situs menggunakan [tutorial ini](https://learn.liferay.com/w/dxp/headless-delivery/consuming-apis/consuming-rest-services#identify-the-site-containing-the-data).
5. Beli lisensi Aspose.Words atau gunakan [Lisensi dan Langganan](/words/id/net/licensing/).

{{% alert color="primary" %}}

Perhatikan bahwa jika Anda sudah memiliki portal Liferay, lewati langkah 1-3.

{{% /alert %}}

## Buat Aplikasi Konsol

Untuk mengevaluasi cara kerja Aspose.Words untuk .NET dengan Dokumen Liferay dan pustaka Media, Anda perlu membuat aplikasi konsol dengan pengaturan yang sesuai dan menerapkan logika untuk mengunggah dokumen ke akar pustaka Dokumen dan Media, mengunduh dokumen-dokumen ini, memprosesnya, lalu mengunggah hasilnya kembali ke root perpustakaan Dokumen dan Media. Untuk melakukannya, ikuti petunjuk yang dijelaskan di bagian ini.

Untuk menjalankan instruksi, Anda perlu mencari dan memperbaiki nilai variabel berikut, yang akan tersedia setelah menyelesaikan langkah-langkah di bagian "Preset":

- Pengidentifikasi situs
- Login pengguna
- Kata sandi pengguna
- Url portal dasar
- Jalur ke file Lisensi Aspose.Words

{{% alert color="primary" %}}

Perhatikan bahwa *login* dan *password* harus diperoleh di langkah 2-3 bagian "Preset", dan *pengidentifikasi situs* harus diperoleh di langkah 4 bagian "Preset".

{{% /alert %}}

### Buat Proyek Aplikasi Konsol Baru

Untuk membuat proyek aplikasi konsol baru, ikuti langkah-langkah berikut:

1. Di Visual Studio, buat proyek aplikasi konsol baru bernama "LiferayExample" untuk bahasa *C#* dan kerangka target *.NET 6*
2. Tambahkan paket berikut:
      - `Newtonsoft.Json`
   - Model Identitas
      - Aspose.Words

### Tambahkan File Dokumen untuk Dibandingkan

Buat folder "Docs" di proyek dan tambahkan file "DocumentA.docx" dan "DocumentA.docx".

### Tambahkan Kelas Model JSON untuk Pemrosesan REST API

Buat folder "JsonModel" di proyek. Buat file "DownloadResponse.cs" di proyek dan isi dengan konten berikut:

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

Buat file "FileMetadata.cs" di proyek dan isi dengan konten berikut:

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

Buat file "UploadResponse.cs" di proyek dan isi dengan konten berikut:

**.NET**
{{< highlight csharp >}}
using Newtonsoft.Json;

namespace LiferayExample.JsonModel
{
    [JsonObject(ItemNullValueHandling = NullValueHandling.Ignore)]
    public class UploadResponse : FileMetadata { }
}
{{< /highlight >}}

Buat file "GetFileInfoByNameResponse.cs" di proyek dan isi dengan konten berikut:

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

### Tambahkan Klien Liferay REST API

Buat file "SecurityContext.cs" di proyek dan isi dengan konten berikut:

**.NET**
{{< highlight csharp >}}
namespace LiferayExample
{
    public record SecurityContext(string SiteId, string Login, string Password);
}
{{< /highlight >}}

Buat file "DocumentClient.cs" di proyek dan isi dengan konten berikut:

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

### Tambahkan Logika Skenario ke Program

Pindahkan konten berikut ke file "Program.cs":

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

## Jalankan Contoh yang Dibuat dan Periksa Hasilnya

Terakhir, jalankan contoh yang dibuat dan periksa hasil yang Anda dapatkan:

1. Kompilasi proyek
2. Jalankan aplikasi konsol

Akibatnya, file "DocumentCompared.docx" harus ditempatkan di akar pustaka Dokumen dan Media.

## Lihat juga

- Artikel [Bekerja dengan Dokumen yang Disimpan di `SharePoint` Online](/words/net/work-with-document-stored-in-sharepoint)
- Artikel [Bekerja dengan Dokumen yang Ditandai dengan Label Sensitivitas](/words/id/net/work-with-document-market-by-sensitivity-label/)
