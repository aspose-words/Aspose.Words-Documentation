---
title: Keamanan Aplikasi Web Saat Memuat Sumber Daya
second_title: Aspose.Words untuk .NET
articleTitle: Keamanan Aplikasi Web Saat Memuat Sumber Daya Eksternal
linktitle: Keamanan Aplikasi Web Saat Memuat Sumber Daya Eksternal
type: docs
description: "Memuat sumber daya jarak jauh, yang dapat menjadi penyebab risiko keamanan. Lihatlah masalah keamanan umum dan solusinya menggunakan C#."
weight: 100
url: /id/net/web-applications-security-when-loading-external-resources/
---

Secara default, Aspose.Words untuk .NET dapat memuat sumber daya jarak jauh seperti gambar, gaya CSS, atau dokumen HTML eksternal saat mengimpor dokumen atau menyisipkan gambar menggunakan DocumentBuilder. Perilaku ini memungkinkan Anda memproses dokumen secara lengkap namun bisa menjadi penyebab beberapa risiko keamanan jika perpustakaan adalah bagian dari aplikasi web.

Dalam artikel ini, kita akan melihat masalah keamanan umum yang dapat muncul saat memuat sumber daya eksternal dan memberikan rekomendasi tentang cara menghindari masalah tersebut.

{{% alert color="primary" %}}

Aspose.Words tidak berfungsi sebagai perangkat lunak antivirus. Oleh karena itu, tidak memberikan informasi tentang keberadaan komponen berbahaya dalam dokumen. Untuk memastikan keamanan data Anda, periksa sendiri dokumen yang diperoleh dari sumber eksternal. Pada gilirannya, Aspose.Words memberikan rekomendasi tentang cara mengatasi masalah yang mungkin timbul saat memuat sumber daya eksternal.

{{% /alert %}}

## Masalah Keamanan

Ada sejumlah masalah keamanan umum saat memuat sumber daya eksternal.

### Pengungkapan Kredensial Melalui Gambar Tertaut

Pada host berbasis Windows, dokumen yang berisi referensi ke sumber daya yang menggunakan jalur UNC seperti *'\\example.com\a\b*' akan diproses secara default. Dalam lingkungan domain, hal ini akan menyebabkan host mengirimkan kredensial domainnya dalam format hash ke server yang ditentukan.

Jika penyerang mampu meyakinkan pengguna atau server untuk memproses dokumen dengan tautan sumber daya yang menunjuk ke host yang mereka kendalikan, penyerang akan menerima kredensial akun pengguna atau layanan dalam format hash NTLM. Data tersebut kemudian dapat digunakan kembali dalam serangan pass-the-hash klasik, yang memungkinkan penyerang mendapatkan akses ke sumber daya apa pun sebagai pengguna atau akun layanan korban.

Jika akun yang dimaksud menggunakan kata sandi yang lemah atau mudah ditebak, penyerang juga dapat melakukan serangan peretasan kata sandi untuk memulihkan kata sandi akun untuk penggunaan jahat lebih lanjut.

### Pengungkapan Gambar Lokal Melalui Gambar Tertaut

Mirip dengan kasus sebelumnya, memproses dokumen dengan referensi ke file gambar lokal akan mengakibatkan file tersebut disertakan dalam dokumen akhir. Hal ini dapat menyebabkan pengungkapan informasi sensitif.

### Kegagalan layanan

Seorang penyerang dapat mengunggah dokumen yang merujuk atau menyertakan gambar berukuran sangat besar – yang disebut "bom dekompresi". Saat memproses gambar-gambar ini, perpustakaan akan menghabiskan banyak memori dan waktu CPU.

### Pemalsuan Permintaan Sisi Server Melalui Konten Tertaut

Penyerang dapat membuat serangkaian dokumen yang berisi tautan tertanam ke kombinasi umum alamat IP internal dan port, kemudian mengirimkannya ke layanan web menggunakan perpustakaan Aspose.Words untuk memproses dokumen.

Berdasarkan lamanya waktu yang digunakan layanan untuk memproses dokumen, penyerang dapat menentukan apakah kombinasi IP/Port tertentu difilter oleh firewall:

- waktu pemrosesan yang lebih lama menunjukkan bahwa paket TCP SYN yang dikirim oleh server di-drop oleh firewall
- waktu pemrosesan yang cepat menunjukkan koneksi berhasil dibuat

## Solusi Masalah Keamanan

Untuk mengatasi masalah yang dijelaskan di atas dan untuk meningkatkan keamanan aplikasi web, Anda dapat mengontrol atau menonaktifkan pemuatan sumber daya eksternal menggunakan [IResourceLoadingCallback](https://reference.aspose.com/words/net/aspose.words.loading/iresourceloadingcallback/).

Contoh kode berikut menunjukkan cara menonaktifkan pemuatan gambar eksternal:

**.NET**
{{< highlight csharp >}}

public class DisableExternalImagesHandler : IResourceLoadingCallback
{
    public ResourceLoadingAction ResourceLoading(ResourceLoadingArgs args)
    {
        // Skip external images loading.
        return (args.ResourceType == ResourceType.Image)
            ? ResourceLoadingAction.Skip
            : ResourceLoadingAction.Default;
    }
}
...
const string documentFilename = "input.docx";
var disableExternalImagesOptions = new LoadOptions
{
    ResourceLoadingCallback = new DisableExternalImagesHandler()
};
var doc = new Document(documentFilename, disableExternalImagesOptions);

{{< /highlight >}}

Contoh kode berikut menunjukkan cara menonaktifkan sumber daya jarak jauh:

**.NET**
{{< highlight csharp >}}

private class DisableRemoteResourcesHandler : IResourceLoadingCallback
{
    public ResourceLoadingAction ResourceLoading(ResourceLoadingArgs args)
    {
        return IsLocalResource(args.OriginalUri)
            ? ResourceLoadingAction.Default
            : ResourceLoadingAction.Skip;
    }

    private static bool IsLocalResource(string fileName)
    {
        DirectoryInfo dirInfo;
        try
        {
            var dirName = Path.GetDirectoryName(fileName);
            if (string.IsNullOrEmpty(dirName))
                return false;
            dirInfo = new DirectoryInfo(dirName);
        }
        catch
        {
            return false;
        }
    
        foreach (DriveInfo d in DriveInfo.GetDrives())
        {
            if (string.Compare(dirInfo.Root.FullName, d.Name, StringComparison.OrdinalIgnoreCase) == 0)
                return d.DriveType != DriveType.Network;
        }
    
        return false;
    }
}
...
var disableRemoteResourcesOptions = new LoadOptions
{
    ResourceLoadingCallback = new DisableRemoteResourcesHandler()
};
var doc = new Document(documentFilename, disableRemoteResourcesOptions);

{{< /highlight >}}

{{% alert color="primary" %}}

Artikel ini didasarkan pada perusahaan konsultan Independent Security Evaluators [laporan](/words/net/web-applications-security-when-loading-external-resources/ise-aspose-report.pdf).

{{% /alert %}}
