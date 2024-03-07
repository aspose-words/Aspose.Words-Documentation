---
title: Instalasi
second_title: Aspose.Words untuk .NET
articleTitle: Instalasi
linktitle: Instalasi
description: "Instal Aspose.Words untuk .NET menggunakan alat Visual Studio seperti Manage NuGet Packages atau Package Manager Console dan penginstal MSI. Gunakan izin Full Trust yang diatur dalam C#."
type: docs
weight: 10
url: /id/net/installation/
---

Pastikan mesin Anda memenuhi [Persyaratan sistem](/words/id/net/system-requirements/) sebelum Anda mulai.

Artikel ini menjelaskan cara menginstal Aspose.Words untuk .NET di komputer Anda.

## Instal atau Perbarui Aspose.Words untuk .NET menggunakan Manage NuGet Packages {#install-or-update-aspose-words-for-net-using-nuget}

NuGet adalah cara termudah untuk mengunduh dan menginstal API [Aspose.Words untuk .NET](https://www.nuget.org/packages/Aspose.Words/). Untuk melakukannya, ikuti langkah-langkah berikut:

1. Buka *Microsoft Visual Studio* dan *Manage NuGet Packages* dari menu untuk membuka manajer paket
2. Cari "aspose" atau "aspose.words" untuk menemukan Aspose API yang diinginkan<br>
   <img src="/words/net/installation/aspose-words-nuget.png" alt="asumsi-kata-nuget" style="width:800px"/>
3. Pilih Aspose API yang diinginkan dan klik "Install"

API yang dipilih akan diunduh dan direferensikan dalam proyek Anda.

Anda juga dapat memperbarui Aspose.Words untuk .NET ke versi yang diinginkan menggunakan *Manage NuGet Packages*.

## Instal atau Perbarui Aspose.Words menggunakan Package Manager Console

Anda juga dapat menginstal atau memperbarui Aspose.Words untuk API .NET menggunakan *Package Manager Console*. Untuk melakukannya, ikuti langkah-langkah berikut:

1. Buka *Microsoft Visual Studio* dan *Package Manager Console* dari menu untuk membuka konsol manajer paket<br>
   <img src="/words/net/installation/aspose-words-nuget-update.png" alt="asumsi-kata-nuget-update" style="width:600px"/>
2. Ketik perintah `Install-Package Aspose.Words` dan tekan Enter untuk menginstal rilis lengkap terbaru ke dalam aplikasi Anda<br>
   <img src="/words/net/installation/aspose-words-nuget-update-2.png" alt="asumsikan-kata-nuget-update-2" style="width:600px"/><br>
   {{% alert color="primary" %}}Selain itu, Anda dapat menambahkan akhiran `-prerelease` ke perintah untuk menentukan bahwa rilis terbaru, termasuk perbaikan terbaru, juga harus diinstal.{{% /alert %}}
3. Setelah diunduh, Anda akan melihat pesan konfirmasi<br>
   <img src="/words/net/installation/aspose-words-nuget-istalled.png" alt="anggapan-kata-nuget-terhenti" style="width:600px"/><br>
   {{% alert color="primary" %}}Jika Anda tidak terbiasa dengan [Asumsikan EULA](https://about.aspose.com/legal/eula/), disarankan untuk membaca lisensi yang direferensikan di URL.{{% /alert %}}
4. Sekarang Anda mungkin menemukan bahwa Aspose.Words telah berhasil ditambahkan dan direferensikan dalam aplikasi Anda<br>
   <img src="/words/net/installation/aspose-words-nuget-references.png" alt="asumsi-kata-nuget-referensi" style="width:400px"/>

Di *Package Manager Console*, Anda juga dapat menggunakan perintah `Update-Package Aspose.Words` untuk memeriksa pembaruan pada paket Aspose.Words dan menginstalnya jika ada. Anda juga dapat menambahkan akhiran `-prerelease` untuk memperbarui rilis terbaru.

## Instal Aspose.Words untuk .NET menggunakan Penginstal

Aspose.Words untuk .NET dapat diinstal dengan mengunduh langsung penginstal MSI dari [bagian unduhan](https://releases.aspose.com/words/).

{{% alert color="primary" %}}

Anda harus masuk untuk mengunduh penginstal. Jika Anda belum mendaftar, Anda dapat mendaftar secara gratis.

{{% /alert %}}

Untuk Menginstal Aspose.Words untuk .NET, ikuti langkah-langkah berikut:

1. Unduh `Aspose.Words_`{LatestVersion}.msi dari [bagian unduhan](https://releases.aspose.com/words/)
2. Klik dua kali file yang diunduh, sehingga memulai wizard pengaturan, ikuti instruksi wizard pengaturan<br>
   <img src="/words/net/installation/aspose-words-setup-1.png" alt="asumsi-kata-setup-1" style="width:500px"/>
3. Ketika wizard pengaturan menyelesaikan instalasi, file yang diperlukan akan tersedia di folder di jalur folder yang disediakan<br>
   <img src="/words/net/installation/aspose-words-setup-4.jpg" alt="asumsi-kata-setup-4" style="width:500px"/>
4. Buka solusi/proyek Anda di Visual Studio
5. Klik kanan proyek Anda di *Solution Explorer* dan tambahkan referensi ke rakitan yang diinstal
6. Aspose.Words untuk rakitan yang diinstal .NET akan muncul dalam ekstensi di bawah bagian Assemblies – cukup pilih komponen DLL yang diperlukan<br>
   <img src="/words/net/installation/aspose-words-setup-5.png" alt="asumsi-kata-setup-5" style="width:800px"/>
7. Terakhir, klik OK

## Pertimbangan Saat Berjalan di Lingkungan Server Bersama

Semua komponen Aspose .NET direkomendasikan untuk dijalankan dengan izin *Full Trust* yang ditetapkan. Hal ini karena komponen Aspose .NET terkadang memerlukan akses ke pengaturan registri dan file yang terletak di tempat selain direktori virtual, seperti membaca font. Selain itu, komponen `Aspose.NET` didasarkan pada kelas sistem .NET inti, beberapa di antaranya juga memerlukan izin *Full Trust* untuk dijalankan dalam beberapa kasus.

Penyedia Layanan Internet yang menghosting beberapa aplikasi dari perusahaan berbeda sebagian besar menerapkan tingkat keamanan *Kepercayaan Sedang*. Dalam kasus .NET 2.0, tingkat keamanan tersebut dapat menerapkan batasan berikut, yang dapat memengaruhi kemampuan Aspose.Words untuk bekerja dengan baik:

- **RegistryPermission** tidak tersedia. Ini berarti Anda tidak dapat mengakses registri, yang diperlukan untuk menghitung font yang diinstal saat merender dokumen.
- **FileIOPermission** dibatasi. Ini berarti Anda hanya dapat mengakses file dalam hierarki direktori virtual aplikasi Anda. Hal ini juga berpotensi berarti font tidak dapat dibaca selama ekspor.

Karena alasan yang disebutkan di atas, disarankan untuk menjalankan Aspose.Words dengan izin Full Trust. Anda mungkin menemukan bahwa beberapa fitur perpustakaan akan berfungsi saat melakukan tugas yang berbeda dengan kepercayaan Medium, dan beberapa tidak, misalnya, rendering. Hal ini dapat dikaitkan dengan panggilan pemrosesan gambar GDI+.
