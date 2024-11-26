---
title: Bekerja dengan Dokumen yang Ditandai dengan Label Sensitivitas
second_title: Aspose.Words untuk .NET
articleTitle: Bekerja dengan Dokumen yang Ditandai dengan Label Sensitivitas
linktitle: Bekerja dengan Dokumen yang Ditandai dengan Label Sensitivitas
description: "Konversikan Word dengan label sensitivitas yang diterapkan ke PDF menggunakan C#. Bekerja dengan dokumen yang ditandai dengan label sensitivitas – berbagai format input, termasuk Word, OpenOffice, Image, dan eBook."
type: docs
weight: 30
url: /id/net/work-with-document-market-by-sensitivity-label/
timestamp: 2024-01-31-14-23-37
---

Label sensitivitas dari Microsoft Purview Information Protection memungkinkan Anda mengklasifikasikan dan melindungi data organisasi Anda, sekaligus memastikan bahwa produktivitas pengguna dan kemampuan mereka untuk berkolaborasi tidak terhambat. Setelah label sensitivitas diterapkan pada dokumen, pengaturan perlindungan apa pun yang dikonfigurasi untuk label tersebut akan diterapkan pada konten.

Anda dapat mengonfigurasi label sensitivitas ke:

1. Enkripsi dokumen untuk mencegah orang yang tidak berwenang mengakses data ini
2. Tandai konten saat menggunakan aplikasi Office, dengan menambahkan tanda air, header, atau footer ke dokumen yang diberi label
3. Terapkan label secara otomatis ke dokumen

Pada artikel ini, kami akan membahas skenario umum untuk mengonversi dan memodifikasi dokumen yang ditandai dengan label sensitivitas.

## Prasyarat

1. Bergabunglah dengan [Program Pengembang Microsoft 365](https://developer.microsoft.com/en-us/microsoft-365/dev-program).
2. Siapkan sandbox instan sesuai [video tutorial](https://www.youtube.com/watch?v=ojQcS9ZQmes).
3. Aktifkan label sensitivitas default sesuai [tutorial](https://learn.microsoft.com/en-us/microsoft-365/compliance/sensitivity-labels-sharepoint-onedrive-files?view=o365-worldwide#use-the-microsoft-purview-compliance-portal-to-enable-support-for-sensitivity-labels).
    {{% alert color="primary" %}}
  Jika Anda sudah melalui langkah 1 dan 2, Anda bisa melihat [daftar label](https://portal.azure.com/#view/Microsoft_AAD_RegisteredApps/ApplicationsListBlade).
    {{% /alert %}}
4. Daftarkan aplikasi klien dengan Azure Active Directory sesuai [tutorial](https://learn.microsoft.com/en-us/azure/active-directory/develop/quickstart-register-app#register-a-new-application-using-the-azure-portal).
    {{% alert color="primary" %}}
  Pengguna terdaftar dapat memeriksa [daftar aplikasi](https://portal.azure.com/#view/Microsoft_AAD_RegisteredApps/ApplicationsListBlade).
    {{% /alert %}}
		- Jenis Akun yang Didukung – pilih "Akun di direktori organisasi ini saja".
		- Langkah pengaturan Redirect URI dapat dilewati.
		- Menambahkan sertifikat mungkin dilewati. Gunakan rahasia klien untuk akses.
		- Menambahkan kredensial gabungan juga dapat dilewati.
		- Tetapkan izin untuk aplikasi.</br>
		Pilih "Izin API" → "Tambahkan izin" → "Antarmuka API Microsoft" → "Layanan Manajemen Hak Azure" → "Izin aplikasi" dan tambahkan izin "Content.SuperUser", "Content.Writer".</br>
		Pilih "Izin API" → "Tambahkan izin" → "API yang digunakan organisasi saya" → temukan "Layanan Sinkronisasi Perlindungan Informasi Microsoft" → "Izin aplikasi" → "UnifiedPolicy.Tenant.Read".
		- Kembali ke halaman "Izin API" dan tekan tombol "Berikan persetujuan admin untuk (Nama Penyewa)".
5. Buka halaman beranda Office 365 dan buka aplikasi Word di browser.
6. Buat dokumen DOCX baru dengan beberapa konten.
7. Pada aplikasi Word, pada tab "Beranda", pilih menu "Sensitivitas" → "Rahasia" → "Semua Karyawan". Dokumen tersebut akan ditandai dengan label sensitivitas dan dienkripsi.
8. Pilih aplikasi "One Drive" dan simpan file yang dibuat ke mesin lokal Anda. Keluar dari akun Anda di aplikasi desktop Word. Periksa apakah dokumen yang diunduh tidak dapat dibuka. Ini akan menjadi file masukan untuk aplikasi.

{{% alert color="primary" %}}

Perhatikan bahwa Jika Anda sudah memiliki akun pengembang Microsoft 365, lewati langkah 1-2.

{{% /alert %}}

## Buat Aplikasi Konsol

Untuk mengevaluasi cara kerja Aspose.Words untuk .NET dengan dokumen berlabel, Anda perlu membuat aplikasi konsol dengan pengaturan yang sesuai dan menerapkan logika untuk menghapus label sensitivitas, memprosesnya, dan kemudian menerapkan label ke dokumen keluaran. Untuk melakukannya, ikuti petunjuk yang dijelaskan di bagian ini.

Untuk menjalankan instruksi, Anda perlu menemukan dan memperbaiki nilai parameter berikut, yang akan tersedia setelah menyelesaikan langkah-langkah di bagian "Prasyarat":

- Url penyewa
- Nama aplikasi klien
- Pengidentifikasi aplikasi klien
- Rahasia aplikasi klien

{{% alert color="primary" %}}

Perhatikan bahwa `client application secret`, `client application identifier`, dan `client application name` harus dibuat pada langkah 4 di bagian "Prasyarat".

{{% /alert %}}

### Buat Proyek Aplikasi Konsol Baru

Untuk membuat proyek aplikasi konsol baru, ikuti langkah-langkah berikut:

1. Di Visual Studio, buat proyek aplikasi konsol baru bernama "SensitivityLabelsExample" untuk bahasa *C#* dan kerangka target *.NET 6*
2. Tambahkan paket berikut:
      - `Microsoft.InformationProtection.File`
      - `Microsoft.Identity.Client`
      - Aspose.Words

### Tambahkan File dengan Pengaturan

Untuk menambahkan file konfigurasi, ikuti langkah-langkah berikut:

1. Tambahkan file "AzureAppConsts.cs" ke proyek
2. Tambahkan konten berikut ke dalam file:

  {{< highlight csharp >}}
  namespace SensitivityLabelsExample
  {
    public static class AzureAppConsts
    {
      public const string AppVersion = "1.0.0";
      public const string AppName = "<App name>";
      public const string Tenant = "<Tenant url>"; // For example, "xxyyzz.onmicrosoft.com".
      public const string AppId = "<App identifier>"; // For example, "55ea5064-aaaa-aaaa-aaaa-aaaa397c6d1".
      public const string AppSecret = "<App secret>";
    }
  }
  {{< /highlight >}}

3. Lengkapi kolom dengan nilai khusus Anda.

### Menerapkan Delegasi Persetujuan

Buat file "ConsentDelegate.cs" di proyek dan isi dengan konten berikut:

{{< highlight csharp >}}
using Microsoft.InformationProtection;
namespace SensitivityLabelsExample

{
    public class ConsentDelegate : IConsentDelegate
    {
        public Consent GetUserConsent(string url)
        {
            return Consent.Accept;
        }
    }
}
{{< /highlight >}}

### Menerapkan Delegasi Otentikasi

Buat file "AuthDelegate.cs" di proyek dan isi dengan konten berikut:

{{< highlight csharp >}}
using Microsoft.Identity.Client;
using Microsoft.InformationProtection;

namespace SensitivityLabelsExample
{
    public class AuthDelegate : IAuthDelegate
    {
        private readonly string _tenant;
        private readonly string _appSecret;
        private readonly ApplicationInfo _appInfo;

        private const string RedirectUrl = "https://login.microsoftonline.com/common/oauth2/nativeclient";
    
        public AuthDelegate(ApplicationInfo appInfo, string tenant, string appSecret)
        {
            _tenant = tenant;
            _appInfo = appInfo;
            _appSecret = appSecret;
        }
    
        public string AcquireToken(Identity identity, string authority, string resource, string claims)
        {
            // Append tenant to authority and remove common.
            if (authority.Contains("common", StringComparison.InvariantCultureIgnoreCase))
            {
                var authorityUri = new Uri(authority);
                authority = string.Format("https://{0}/{1}", authorityUri.Host, _tenant);
            }
    
            // Perform client secret based auth.
            var app = ConfidentialClientApplicationBuilder.Create(_appInfo.ApplicationId)
                .WithClientSecret(_appSecret)
                .WithRedirectUri(RedirectUrl)
                .Build();
    
            var scopes = new string[] { resource[resource.Length - 1].Equals('/') ? $"{resource}.default" : $"{resource}/.default" };
            AuthenticationResult authResult = app.AcquireTokenForClient(scopes)
                .WithAuthority(authority)
                .ExecuteAsync()
                .GetAwaiter()
                .GetResult();
    
            return authResult.AccessToken;
        }
    }
}
{{< /highlight >}}

### Tambahkan Opsi Pelabelan

Buat file "FileLabelingOptions.cs" di proyek dan isi dengan konten berikut:

{{< highlight csharp >}}
using Microsoft.InformationProtection;
namespace SensitivityLabelsExample

{
    public class FileLabelingOptions
    {
        public FileLabelingOptions(string originalFilePath, Stream fileData, AssignmentMethod assignmentMethod)
        {
            FileData = fileData;
            AssignmentMethod = assignmentMethod;
            OriginalFilePath = originalFilePath;
        }

        public Stream FileData { get; init; }
        public string OriginalFilePath { get; init; }
        public AssignmentMethod AssignmentMethod { get; init; }
    }
}
{{< /highlight >}}

### Terapkan Manajer Label Sensitivitas

Buat file "SenstivityLabelsManager.cs" di proyek dan isi dengan konten berikut:

{{< highlight csharp >}}
using Microsoft.InformationProtection;
using Microsoft.InformationProtection.File;

namespace SensitivityLabelsTest
{
    public class SenstivityLabelsManager : IDisposable
    {
        private readonly string _locale;
        private readonly string _tenant;
        private readonly string _appSecret;
        private readonly ApplicationInfo _appInfo;


        private MipContext _mipContext;
        private IFileEngine _fileEngine;
        private IFileProfile _fileProfile;
    
        public SenstivityLabelsManager(ApplicationInfo appInfo, string tenant, string appSecret, string locale = "en-US")
        {
            _locale = locale;
            _tenant = tenant;
            _appInfo = appInfo;
            _appSecret = appSecret;
        }
    
        public async Task Initialize()
        {
            // Initialize Wrapper for File SDK operations.
            // Review the API Spec at https://aka.ms/mipsdkdocs for details.
            MIP.Initialize(MipComponent.File);
    
            var mipConfiguration = new MipConfiguration(_appInfo, "mip_data", LogLevel.Trace, false);
            _mipContext = MIP.CreateMipContext(mipConfiguration);
    
            _fileProfile = await CreateFileProfile();
            _fileEngine = await CreateFileEngine();
    
        }
    
        public IEnumerable<Label> GetLabels()
        {
            return _fileEngine.SensitivityLabels;
        }
    
        public async Task<Stream> SetLabel(string labelId, FileLabelingOptions options)
        {
            var labelingOptions = new LabelingOptions() { AssignmentMethod = options.AssignmentMethod };
    
            var handler = await _fileEngine.CreateFileHandlerAsync(options.FileData, options.OriginalFilePath, true);
            handler.SetLabel(_fileEngine.GetLabelById(labelId), labelingOptions, new ProtectionSettings());
    
            var committed = false;
            var outputStream = new MemoryStream();
    
            // Check to see that modifications occurred on the handler. If not, skip commit.
            if (handler.IsModified())
                committed = await handler.CommitAsync(outputStream);
    
            // Submits and audit event about the labeling action to Azure Information Protection Analytics.
            if (committed)
            {
                handler.NotifyCommitSuccessful(options.OriginalFilePath);
                outputStream.Position = 0;
            }
    
            return committed ? outputStream : null;
        }
    
        public async Task<Stream> RemoveLabel(FileLabelingOptions options)
        {
            var handler = await _fileEngine.CreateFileHandlerAsync(options.FileData, options.OriginalFilePath, true);
            handler.DeleteLabel(new LabelingOptions() { IsDowngradeJustified = true, AssignmentMethod = options.AssignmentMethod });
    
            var committed = false;
            var outputStream = new MemoryStream();
    
            if (handler.IsModified())
                committed = await handler.CommitAsync(outputStream);
    
            if (committed)
            {
                handler.NotifyCommitSuccessful(options.OriginalFilePath);
                outputStream.Position = 0;
            }
    
            return outputStream;
        }
    
        public void Dispose()
        {
            _fileEngine?.Dispose();
            _fileProfile?.Dispose();
            _mipContext?.ShutDown();
            _mipContext?.Dispose();
        }
    
        private async Task<IFileProfile> CreateFileProfile()
        {
            var profileSettings = new FileProfileSettings(_mipContext, CacheStorageType.OnDiskEncrypted, new ConsentDelegate());
    
            // IFileProfile is the root of all SDK operations for a given application.
            var profile = await MIP.LoadFileProfileAsync(profileSettings);
            return profile;
        }
    
        private async Task<IFileEngine> CreateFileEngine()
        {
            // The SDK will accept any properly formatted email address.
            var identity = new Identity(string.Format("{0}@{1}", _appInfo.ApplicationId, _tenant));
    
            // Passing in empty string for the first parameter, engine ID, will cause the SDK to generate a GUID.
            // Locale settings are supported and should be provided based on the machine locale, particular for client applications.
            var engineSettings = new FileEngineSettings(
                string.Empty, new AuthDelegate(_appInfo, _tenant, _appSecret), string.Empty, _locale)
            {
                Identity = identity
            };
    
            var engine = await _fileProfile.AddEngineAsync(engineSettings);
            return engine;
        }
    }
}

{{< /highlight >}}

### Tambahkan Logika Skenario ke Program

Pindahkan konten berikut ke file "Program.cs":

{{< highlight csharp >}}
using Aspose.Words;
using SensitivityLabelsTest;
using Microsoft.InformationProtection;

// The code below does the following:
// 1. Initializes MIP infrastructure.
// 2. Removes document protection (sensitivity label);
// 3. Inserts watermark to the document;
// 4. Saves modified document;
// 5. Sets protection using specified sensitivity label name.
// Input scenario data:

const string labeledFilePath = @"<Path to input file>"; // Local path to a protected file. Note that the file should be generated in step 8 of the "Preset" part.
const string outputFilePath = @"<Path to output file>"; // Local path to the output file.

const string LabelName = "Confidential"; // Label name to be assigned. For example, "Confidential".
const string SubLabelName = "All Employees"; // SubLabel name to be assigned. For example, "All Employees".
const AssignmentMethod labelAssignmentMethod = AssignmentMethod.Privileged; // Used assignment method of the label on the file.

const string AsposeWordsLicensePath = @"<Path to Aspose.Word license file>";

//
// 1. Initialization.

var appInfo = new ApplicationInfo()
{
    ApplicationId = AzureAppConsts.AppId,
    ApplicationName = AzureAppConsts.AppName,
    ApplicationVersion = AzureAppConsts.AppVersion
};

using var labelsManager = new SenstivityLabelsManager(appInfo, AzureAppConsts.Tenant, AzureAppConsts.AppSecret);
await labelsManager.Initialize();

Console.WriteLine("App initialized.");

// 2. Remove sensitive label.

var fileLabelingOptions = new FileLabelingOptions(labeledFilePath, File.Open(labeledFilePath, FileMode.Open), labelAssignmentMethod);
var unlabeledStream = await labelsManager.RemoveLabel(fileLabelingOptions);

Console.WriteLine("Sensitivity label removed from the file.");

// 3. Open and modify document using Aspose.Words.

var license = new License();
license.SetLicense(AsposeWordsLicensePath);

Document doc = new Document(unlabeledStream);
doc.Watermark.SetText("Watermark text",
    new TextWatermarkOptions { Layout = WatermarkLayout.Diagonal, FontSize = 36, IsSemitrasparent = true });

Console.WriteLine("Document opened and modified.");

// 4. Save modified document.

var modifiedDocument = new MemoryStream();
doc.Save(modifiedDocument, SaveFormat.Docx);

Console.WriteLine("Document saved.");

// 5. Set protection.
var label = labelsManager.GetLabels().First(l => l.Name.Trim() == LabelName).Children.First(l => l.Name == SubLabelName);
fileLabelingOptions = new FileLabelingOptions(outputFilePath, modifiedDocument, labelAssignmentMethod);

var outputStream = await labelsManager.SetLabel(label.Id, fileLabelingOptions);
using var outputFile = File.Create(outputFilePath);
await outputStream.CopyToAsync(outputFile);

Console.WriteLine("Sensitivity label set to output file.");
Console.WriteLine("App completed!");

{{< /highlight >}}

## Jalankan Contoh yang Dibuat dan Periksa Hasilnya

Terakhir, jalankan contoh yang dibuat dan periksa hasil yang Anda dapatkan:

1. Kompilasi proyek
2. Jalankan aplikasi konsol

Akibatnya, file keluaran harus dibuat dengan menerapkan "Rahasia.Semua Karyawan". Masuk ke akun Microsoft 365 untuk memastikan dokumen dapat dibuka dan berisi perubahan.

## Lihat juga

- Artikel [Bekerja dengan Dokumen yang Disimpan di `SharePoint` Online](/words/id/net/work-with-document-stored-in-sharepoint/)
