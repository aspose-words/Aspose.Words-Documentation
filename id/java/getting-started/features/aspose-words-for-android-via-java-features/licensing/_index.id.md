---
title: Login
second_title: Aspose.Words Sitemap Java
articleTitle: Login
linktitle: Login
description: "Login Aspose.Words Sitemap Android Sitemap JavaSitemap"
type: docs
weight: 60
url: /id/java/licensing-android/
timestamp: 2024-02-02-12-07-36
---

Kadang-kadang, untuk mempelajari sistem lebih baik, Anda ingin menyelam ke kode secepat mungkin. Untuk memudahkan ini, Aspose.Words memberikan rencana yang berbeda untuk pembelian atau menawarkan Percobaan Gratis dan Lisensi Sementara 30 hari untuk evaluasi.

{{% alert color="primary" %}}

Perhatikan bahwa ada sejumlah kebijakan dan praktik umum yang membimbing Anda tentang cara mengevaluasi, benar lisensi, dan membeli produk kami. Anda dapat menemukan mereka di Meme it [Sitemap](https://purchase.aspose.com/policies/) Sitemap

{{% /alert %}}

## Percobaan Gratis atau Lisensi Sementara

Aspose.Words adalah perangkat lunak yang luar biasa yang dapat mencoba sebelum membeli. Anda dapat dengan mudah mengunduh / menginstal Aspose.Words Sitemap Java Login Aspose.Words Sitemap Android Sitemap Java [Login](https://releases.aspose.com/words/androidjava/) untuk evaluasi.

Versi evaluasi sama dengan yang dibeli – versi Percobaan hanya menjadi berlisensi ketika Anda menambahkan beberapa baris kode untuk menerapkan lisensi.

{{% alert color="primary" %}}

Pelajari lebih detail tentang Gratis Percobaan atau Lisensi Sementara untuk Aspose.Words Sitemap Android Sitemap Java Sitemap [Login](/words/id/java/licensing/)Sitemap

{{% /alert %}}

## Lisensi Pembelian

Setelah pembelian, Anda perlu menerapkan file lisensi atau menyertakan file lisensi sebagai sumber daya yang tertanam. Bagian ini menjelaskan pilihan bagaimana ini dapat dilakukan, dan juga komentar pada beberapa pertanyaan umum.

{{% alert color="primary" %}}

Lisensi adalah file XML teks biasa yang berisi rincian seperti nama produk, jumlah pengembang berlisensi, tanggal expiry berlangganan, dan sebagainya.

File ini ditandatangani secara digital, sehingga tidak memodifikasi file. Bahkan tambahan yang tidak masuk akal dari istirahat garis tambahan ke file akan membatalkannya.

{{% /alert %}}

{{% alert color="primary" %}}

Anda perlu mengatur lisensi:

* hanya sekali per domain aplikasi
* sebelum menggunakan Aspose.Words Sitemap

{{% /alert %}}

{{% alert color="primary" %}}

Anda dapat menemukan informasi harga di Meme it [Sitemap](https://purchase.aspose.com/pricing/words/family/) Sitemap

{{% /alert %}}

### Melindungi Lisensi Pembelian Anda

Setelah membeli lisensi, Anda perlu hati-hati membaca informasi di halaman [Login](https://purchase.aspose.com/orders/protecting-your-license-file) untuk melindungi file lisensi Anda. Harap dicatat bahwa halaman ini tersedia untuk melihat hanya jika Anda memiliki lisensi berbayar.

### Pilihan Lisensi

Lisensi dapat diterapkan dari berbagai lokasi:

* Jalan eksplisit
* Sitemap Sumber daya tertanam
* Sitemap Sebagai Lisensi Meteran - mekanisme lisensi baru

#### Memuat file Lisensi

Sitemap Aspose.Words Sitemap Android Sitemap Java, lisensi dapat [Login](/words/id/java/licensing/), atau dimuat dari aliran:

Sitemap Masukkan file lisensi di lokasi apa pun di **/Login**Sitemap
Sitemap Buat aliran yang merujuk file.
Sitemap Menyiapkan aliran (menghasilkan file lisensi) ke `SetLicense` Login

**Java**

{{< highlight java >}}
String dataDir = Environment.getExternalStorageDirectory().getPath() + "/";

// Create a stream object containing the license file
FileInputStream fstream = new FileInputStream(dataDir + "Aspose.Email.Android.Java.lic");

// Instantiate the `License` class
License license = new License();
//Set the license through the stream object
license.setLicense(fstream);
{{< /highlight >}}

Menerapkan Lisensi dari Sumber Daya Tertanam. Untuk mengakses lisensi sebagai sumber daya berdasarkan nama Android file paket:

Sitemap Tambahkan file lisensi sebagai sumber daya untuk aplikasi Anda **Sitemap** folder.
   File lisensi harus terlihat di **Sitemap** folder.
Sitemap Akses / memuat lisensi dari sumber daya dengan sampel kode berikut.

**Java**

{{< highlight java >}}
License license = new License();
InputStream inputStream = getResources().openRawResource(R.raw.license);
license.setLicense(inputStream);
{{< /highlight >}}

#### Terapkan Lisensi Meter

Aspose.Words memungkinkan pengembang untuk menerapkan kunci berukuran. Ini adalah mekanisme lisensi baru. Mekanisme perizinan baru akan digunakan bersama dengan metode lisensi yang ada. Pelanggan yang ingin ditagih berdasarkan penggunaan API fitur dapat menggunakan lisensi meter.

**Java**

{{< highlight java >}}
Metered metered = new Metered();
try
{
	// Access the setMeteredKey property and pass public and private keys as parameters
    metered.setMeteredKey(publicKey, privateKey);
	Log.i("Metered License", "Ok. Metered License has been applied successfully.");
}
catch (Exception ex)
{
    ex.printStackTrace();
    Log.e("Metered License", "Setting metered key has failed: " + ex.getMessage());
}
{{< /highlight >}}

### Mengubah Nama File Lisensi

Nama file lisensi tidak harus 'Aspose.WordsSitemapAndroidSitemapJavaSitemap Anda dapat mengubah nama untuk apa pun yang Anda sukai dan menggunakan nama itu ketika memanggil `License.SetLicense`Sitemap

### Kecuali - Tidak dapat menemukan nama file lisensi

Ketika Anda mengunduh lisensi yang telah Anda beli, file lisensi dinamakan **Aspose.WordsSitemapAndroidSitemapJavaLogin** Sitemap File lisensi diunduh melalui browser Anda dan beberapa browser mengenali file lisensi sebagai XML dan mengakhiri ekstensi .xml ke nama. File yang diunduh menjadi **Aspose.WordsSitemapAndroidSitemapJavaLogin**Sitemap

Sitemap Microsoft Windows dikonfigurasi untuk menyembunyikan ekstensi dari jenis file yang dikenal (tidak nyaman ini default di sebagian besar Windows instalasi), file lisensi terdaftar sebagai **Aspose.WordsSitemapAndroidSitemapJavaLogin** Sitemap Windows Login Seperti nama file yang diharapkan. Sitemap `License.SetLicense` dan lulus 'Aspose.WordsSitemapAndroidSitemapJava.lic', Anda akan melihat dan pengecualian karena tidak ada file tersebut

Untuk memecahkan masalah, mengubah nama file untuk menghapus ekstensi .xml yang tidak terlihat. Kami merekomendasikan bahwa Anda menonaktifkan opsi "hide ekstensi" di Microsoft WindowsSitemap

## Menggunakan Beberapa Produk Aspose

Jika Anda menggunakan beberapa produk Aspose dalam aplikasi, misalnya Aspose.Words Login `Aspose.Cells`, Berikut adalah beberapa tips yang berguna.

- Mengatur lisensi untuk setiap produk Aspose secara terpisah.
  Bahkan jika Anda memiliki file lisensi tunggal untuk semua komponen, misalnya 'Aspose. SitemapAndroidSitemapJava.lic', Anda masih perlu memanggil Meme it `License.SetLicense` metode secara terpisah untuk setiap produk Aspose.
- Gunakan nama kelas Lisensi sepenuhnya berkualitas.
  Sitemap Produk aspose memiliki produk `License` kelas di ruang namanya. Sitemap Aspose.Words com.aspose.words. Lisensi dan `Aspose.Cells` com.aspose.cells. Kelas lisensi. Menggunakan nama kelas yang memenuhi syarat memungkinkan Anda untuk menghindari kebingungan tentang lisensi mana yang diterapkan pada produk mana.
