---
title: Perizinan
second_title: Aspose.Words untuk Java
articleTitle: Perizinan
linktitle: Perizinan
description: "Pemberian lisensi Aspose.Words untuk Android melalui Java."
type: docs
weight: 60
url: /id/java/licensing-android/
timestamp: 2024-02-02-12-07-36
---

Terkadang, untuk mempelajari sistem dengan lebih baik, Anda ingin mempelajari kodenya secepat mungkin. Untuk mempermudah ini, Aspose.Words menyediakan paket berbeda untuk pembelian atau menawarkan Uji Coba Gratis dan Lisensi Sementara 30 hari untuk evaluasi.

{{% alert color="primary" %}}

Perhatikan bahwa ada sejumlah kebijakan dan praktik umum yang memandu Anda tentang cara mengevaluasi, melisensikan, dan membeli produk kami dengan benar. Anda dapat menemukannya di [Menghilangkan Kesalahan dan FAQ](https://purchase.aspose.com/policies/) bagian.

{{% /alert %}}

## Uji Coba Gratis atau Lisensi Sementara

Aspose.Words adalah perangkat lunak luar biasa yang dapat dicoba oleh pengembang sebelum membeli. Anda dapat dengan mudah mengunduh / menginstal Aspose.Words untuk Java dan Aspose.Words untuk Android melalui Java [dari halaman unduhan](https://releases.aspose.com/words/androidjava/) untuk evaluasi.

Versi evaluasi sama dengan yang dibeli-versi Uji Coba menjadi berlisensi saat Anda menambahkan beberapa baris kode untuk menerapkan lisensi.

{{% alert color="primary" %}}

Pelajari detail selengkapnya tentang Uji Coba Gratis atau Lisensi Sementara untuk Aspose.Words untuk Android melalui Java di [halaman Lisensi dan Pendaftaran](/words/java/licensing/).

{{% /alert %}}

## Lisensi yang Dibeli

Setelah pembelian, Anda perlu menerapkan file lisensi atau menyertakan file lisensi sebagai sumber daya tersemat. Bagian ini menjelaskan opsi tentang bagaimana hal ini dapat dilakukan, dan juga mengomentari beberapa pertanyaan umum.

{{% alert color="primary" %}}

Lisensi adalah file XML teks biasa yang berisi detail seperti nama produk, jumlah lisensi pengembang, tanggal kedaluwarsa langganan, dan sebagainya.

File ditandatangani secara digital, jadi jangan memodifikasi file. Bahkan penambahan jeda baris tambahan yang tidak disengaja ke dalam file akan membatalkannya.

{{% /alert %}}

{{% alert color="primary" %}}

Anda perlu mengatur lisensi:

* hanya sekali per domain aplikasi
* sebelum menggunakan kelas Aspose.Words lainnya

{{% /alert %}}

{{% alert color="primary" %}}

Anda dapat menemukan informasi harga di [Informasi Harga](https://purchase.aspose.com/pricing/words/family/) halaman.

{{% /alert %}}

### Melindungi Lisensi yang Anda Beli

Setelah membeli lisensi, Anda perlu membaca informasi di halaman dengan cermat [Melindungi Lisensi yang Anda Beli](https://purchase.aspose.com/orders/protecting-your-license-file) untuk melindungi file lisensi Anda. Harap dicatat bahwa halaman ini hanya tersedia untuk dilihat jika Anda memiliki lisensi berbayar.

### Opsi Penerapan Lisensi

Lisensi dapat diterapkan dari berbagai lokasi:

* Jalur eksplisit
* Sumber daya yang disematkan
* Sebagai Lisensi Terukur-mekanisme lisensi baru

#### Memuat file Lisensi

Dalam Aspose.Words untuk Android melalui Java, lisensinya dapat berupa [terhubung sebagai sumber daya](/words/java/licensing/), atau dimuat dari aliran:

1. Letakkan file lisensi di lokasi mana pun di **/mnt/sdcard/**.
1. Buat aliran yang mereferensikan file.
1. Masukkan aliran (berisi file lisensi) ke dalam metode `SetLicense`.

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

Menerapkan Lisensi dari Sumber Daya yang Disematkan. Untuk mengakses lisensi sebagai sumber daya berdasarkan nama dari file paket Android:

1. Tambahkan file lisensi sebagai sumber daya ke folder **res/raw** aplikasi Anda.
   File lisensi harus terlihat di folder **res/raw**.
1. Akses / muat lisensi dari sumber daya dengan contoh kode berikut.

**Java**

{{< highlight java >}}
License license = new License();
InputStream inputStream = getResources().openRawResource(R.raw.license);
license.setLicense(inputStream);
{{< /highlight >}}

#### Terapkan Lisensi Terukur

Aspose.Words memungkinkan pengembang untuk menerapkan kunci terukur. Ini adalah mekanisme perizinan baru. Mekanisme perizinan baru akan digunakan bersama dengan metode perizinan yang ada. Pelanggan yang ingin ditagih berdasarkan penggunaan fitur API dapat menggunakan lisensi terukur.

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

Nama berkas lisensi tidak harus 'Aspose.Words.Android.Java.lic'. Anda dapat mengganti namanya menjadi apa pun yang Anda suka dan menggunakan nama itu saat memanggil `License.SetLicense`.

### Pengecualian-Tidak dapat menemukan nama file lisensi

Saat Anda mengunduh lisensi yang telah Anda beli, file lisensi diberi nama **Aspose.Words.Android.Java.lic** secara default. File lisensi diunduh melalui browser Anda dan beberapa browser mengenali file lisensi sebagai XML dan menambahkan .ekstensi xml ke namanya. File yang diunduh menjadi **Aspose.Words.Android.Java.lic.XML**.

Saat Microsoft Windows dikonfigurasi untuk menyembunyikan ekstensi dari jenis file yang diketahui (sayangnya ini default di sebagian besar penginstalan Windows), file lisensi dicantumkan sebagai **Aspose.Words.Android.Java.lic** di Windows Explorer. Sepertinya nama file yang diharapkan. Jika Anda memanggil `License.SetLicense` dan lulus ' Aspose.Words.Android.Java.lic', Anda akan melihat dan pengecualian karena tidak ada file seperti itu.

Untuk mengatasi masalah tersebut, ganti nama file menjadi hapus yang tidak terlihat .ekstensi xml. Kami menyarankan Anda menonaktifkan opsi "sembunyikan ekstensi" di Microsoft Windows.

## Menggunakan Beberapa Produk Aspose

Jika Anda menggunakan beberapa produk Aspose dalam sebuah aplikasi, misalnya Aspose.Words dan `Aspose.Cells`, berikut adalah beberapa tip berguna.

- Tetapkan lisensi untuk setiap produk Aspose secara terpisah.
  Meskipun Anda memiliki satu file lisensi untuk semua komponen, misalnya 'Aspose.Total.Android.Java.lic', Anda masih perlu memanggil metode `License.SetLicense` secara terpisah untuk setiap produk Aspose.
- Gunakan nama kelas Lisensi yang memenuhi syarat.
  Setiap produk Aspose memiliki kelas `License` di namespace-nya. Misalnya, Aspose.Words memiliki com.aspose.kata-kata.Lisensi dan `Aspose.Cells` memiliki com.aspose.sel.Kelas lisensi. Menggunakan nama kelas fullyqualified memungkinkan Anda menghindari kebingungan tentang lisensi mana yang diterapkan pada produk mana.
