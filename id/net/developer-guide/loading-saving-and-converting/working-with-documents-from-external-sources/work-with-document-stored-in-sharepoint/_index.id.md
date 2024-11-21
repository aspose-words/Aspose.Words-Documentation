---
title: Bekerja dengan Dokumen yang Disimpan di `SharePoint` Online
second_title: Aspose.Words untuk .NET
articleTitle: Bekerja dengan Dokumen yang Disimpan di `SharePoint` Online
linktitle: Bekerja dengan Dokumen yang Disimpan di `SharePoint` Online
description: "Konversikan Word yang dibagikan di SharePoint ke PDF menggunakan C#. Bekerja dengan dokumen yang disimpan di SharePoint – berbagai format input, termasuk Word, OpenOffice, Image, dan eBook."
type: docs
weight: 20
url: /id/net/work-with-document-stored-in-sharepoint/
timestamp: 2024-10-21-11-17-44
---

Microsoft SharePoint Online adalah kumpulan teknologi berbasis web yang memudahkan organisasi untuk menyimpan, berbagi, dan mengelola informasi digital. Anda dapat bekerja dengan dokumen yang disimpan di folder "Dokumen Bersama" di SharePoint menggunakan Aspose.Words kami yang canggih untuk .NET.

Pada artikel ini, kami akan membahas skenario umum untuk mengonversi dokumen yang diunggah ke folder "Dokumen Bersama" ke format PDF dan mengunggah dokumen yang dihasilkan kembali ke folder tersebut.

## Prasetel

1. Bergabunglah dengan [Program Pengembang Microsoft 365](https://developer.microsoft.com/en-us/microsoft-365/dev-program)
2. Siapkan [sesuai dengan video tutorialnya](https://www.youtube.com/watch?v=ojQcS9ZQmes) sandbox instan
3. Buat kredensial berbasis aplikasi untuk SharePoint Online seperti yang dijelaskan secara rinci di [Menyiapkan perwakilan khusus aplikasi dengan izin penyewa](https://learn.microsoft.com/en-us/sharepoint/dev/solution-guidance/security-apponly-azureacs)
4. Unggah dokumen dengan nama "TestDoc.docx" ke situs komunikasi root ke dalam folder "Dokumen Bersama"
5. Beli lisensi Aspose.Words, atau gunakan [Lisensi dan Langganan](/words/id/net/licensing/)

{{% alert color="primary" %}}

Perhatikan bahwa Jika Anda sudah memiliki situs komunikasi root `SharePoint` Online, lewati langkah 1-2.

{{% /alert %}}

## Buat Aplikasi Konsol

Untuk mengevaluasi cara kerja Aspose.Words untuk .NET dengan dokumen SharePoint, Anda perlu membuat aplikasi konsol dengan pengaturan yang sesuai dan menerapkan logika untuk mengunduh dokumen dari folder "Dokumen Bersama", memprosesnya, dan kemudian mengunggah file ini ke folder yang sama. Untuk melakukannya, ikuti petunjuk yang dijelaskan di bagian ini.

Untuk menjalankan instruksi, Anda perlu menemukan dan memperbaiki nilai parameter berikut, yang akan tersedia setelah menyelesaikan langkah-langkah di bagian "Preset":

- Pengidentifikasi penyewa – lihat [cara menemukan id penyewa Anda](https://docs.microsoft.com/en-us/onedrive/find-your-office-365-tenant-id)
- Nama penyewa
- Pengidentifikasi klien
- Rahasia klien

{{% alert color="primary" %}}

Perhatikan bahwa *rahasia klien* dan *pengidentifikasi klien* harus dibuat pada langkah 3 bagian "Preset".

{{% /alert %}}

### Buat Proyek Aplikasi Konsol Baru

Untuk membuat proyek aplikasi konsol baru, ikuti langkah-langkah berikut:

1. Di Visual Studio, buat proyek aplikasi konsol baru bernama "SPOnlineExample" untuk bahasa *C#* dan kerangka target *.NET 6*
2. Tambahkan paket berikut:
      - `Microsoft.Extensions.Configuration.Json`
      - Aspose.Words

### Tambahkan File Konfigurasi

Untuk menambahkan file konfigurasi, ikuti langkah-langkah berikut:

1. Tambahkan file "appsettings.json" ke proyek;
2. Tambahkan konten berikut ke dalam file:
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

3. Lengkapi kolom dengan nilai khusus Anda.

### Tambahkan Klien SharePoint Online REST API

Buat file "SPOClient.cs" di proyek dan isi dengan konten berikut:

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

### Tambahkan Logika Skenario ke Program

Pindahkan konten berikut ke file "Program.cs":

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

## Jalankan Contoh yang Dibuat dan Periksa Hasilnya

Terakhir, jalankan contoh yang dibuat dan periksa hasil yang Anda dapatkan:

1. Kompilasi proyek
2. Jalankan aplikasi konsol

Akibatnya, file "TestDoc.pdf" harus ditempatkan di folder "Dokumen Bersama" di situs komunikasi root.

## Lihat juga

- Artikel [Render](/words/id/net/rendering/) untuk informasi lebih lanjut tentang format halaman tetap dan tata letak alur
- Artikel [Mengonversi ke Format Halaman Tetap](/words/net/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) untuk informasi lebih lanjut tentang tata letak halaman
- Artikel [Tentukan Opsi Rendering Saat Mengonversi ke PDF](/words/id/net/specify-rendering-options-when-converting-to-pdf/) untuk informasi lebih lanjut tentang penggunaan kelas [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/)
