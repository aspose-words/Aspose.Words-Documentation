---
title: Aspose.Words untuk .NET melalui COM Interop
second_title: Aspose.Words untuk .NET
articleTitle: Cara Menggunakan Aspose.Words untuk .NET melalui COM Interop
linktitle: Cara Menggunakan Aspose.Words untuk .NET melalui COM Interop
type: docs
description: "Gunakan Aspose.Words untuk .NET melalui COM Interop dalam Python, PHP, VBScript, JScript, dan bahasa pemrograman lainnya."
weight: 130
url: /id/net/how-to-use-aspose-words-via-com-interop/
---

Informasi dalam topik ini berlaku untuk skenario ketika Anda ingin menggunakan Aspose.Words untuk .NET melalui COM Interop dalam salah satu bahasa pemrograman berikut:

- ASP
- Delphi ([Contoh](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/ReleasePreparation/Showcases/Aspose_Words_for_NET_via_COM_Delphi))
- JScript
- Perl
- PHP
- Pembangun Kekuatan
- Python
- VBScript
- Visual Basic

## Bekerja dengan COM Interop

Aspose.Words untuk .NET dijalankan di bawah kendali .NET Framework dan ini disebut kode terkelola. Kode yang ditulis dalam semua bahasa di atas berjalan di luar .NET Framework dan disebut kode tidak terkelola. Interaksi antara kode yang tidak dikelola dan Aspose.Words terjadi melalui fasilitas .NET yang disebut COM Interop.

Objek Aspose.Words adalah objek .NET, tetapi ketika digunakan melalui COM Interop, objek tersebut muncul sebagai objek COM dalam bahasa pemrograman Anda. Oleh karena itu, yang terbaik adalah memastikan Anda mengetahui cara membuat dan menggunakan objek COM dalam bahasa pemrograman Anda, sebelum Anda mulai menggunakan Aspose.Words.

Berikut adalah topik-topik yang pada akhirnya perlu Anda kuasai:

- Menggunakan objek COM dalam bahasa pemrograman Anda. Lihat dokumentasi bahasa pemrograman Anda dan topik khusus bahasa lebih lanjut dalam dokumentasi ini.
- Bekerja dengan objek COM yang diekspos oleh .NET COM Interop. Lihat [Interoperating Dengan Kode Tidak Terkelola](https://learn.microsoft.com/en-us/dotnet/framework/interop/) dan [Mengekspos Komponen .NET Framework ke COM](https://learn.microsoft.com/en-us/dotnet/framework/interop/exposing-dotnet-components-to-com) di MSDN.
- Model objek dokumen Aspose.Words. Lihat Aspose.Words [Panduan Pengembang](/words/id/net/developer-guide/) dan [API Reference](https://reference.aspose.com/words/net/).

## Daftarkan Aspose.Words untuk .NET dengan COM Interop

Setelah [Instalasi](/words/id/net/installation/), Anda perlu mendaftarkan Aspose.Words untuk COM Interop menggunakan utilitas `regasm.exe`.

`regasm.exe` adalah alat yang disertakan dalam .NET Framework SDK. Semua alat SDK .NET Framework terletak di direktori `%windir%\Microsoft .NET\Framework\<FrameworkVersion>\`, misalnya *C:\Windows\Microsoft .NET\Framework\v4.0.30319*.

Untuk mendapatkan file tlb, jalankan `C:\Windows\Microsoft.NET\Framework\v4.0.30319\RegAsm.exe <installdir>\lib\net40-client\Aspose.Words.dll /tlb /codebase` dalam cmd, di mana `<installdir>` adalah direktori tempat Anda menginstal Aspose.Words, biasanya `%USERPROFILE%\.nuget\packages\aspose.words\`.

## Bekerja dengan Aspose.Words melalui COM Interop

### ProgIDs

ProgID adalah singkatan dari "programmatic identifier", ini adalah nama kelas `COM` yang perlu Anda gunakan untuk membuat objek.

Saat ini, Aspose.Words mendefinisikan empat objek COM yang dapat dibuat secara publik. ProgIDs-nya adalah:

- Pembantu
- Dokumen
- Pembuat Dokumen
- Lisensi

ProgIDs terdiri dari nama perpustakaan ("Aspose.Words") dan nama kelas.

### Ketik Perpustakaan

Selama instalasi, Aspose.Words.tlb (perpustakaan tipe COM) disalin ke komputer Anda ke:

- Untuk .NET Framework 4.0 hingga **<installdir>\lib\net40-client**

Jika bahasa pemrograman Anda (misalnya Visual Basic atau Delphi) memungkinkan Anda untuk mereferensikan pustaka tipe `COM`, tambahkan referensi ke **Aspose.Words.tlb** dan Anda akan dapat melihat semua kelas, metode, properti, dan enumerasi Aspose.Words di Peramban Objek Anda.

### Membuat Objek COM

Pembuatan objek .NET mirip dengan pembuatan objek COM normal:

**VBScript**

```
Penolong redup
Setel pembantu = CreateObject("Aspose.Words.ComHelper")
 
```

Setelah dibuat, Anda dapat mengakses metode dan properti objek, seolah-olah itu adalah objek `COM`:

**VBScript**

```
Redupkan dok
Setel doc = helper.Open("C:\my.doc")
 
```

Beberapa metode mengalami kelebihan beban dan akan diekspos oleh COM Interop dengan akhiran numerik yang ditambahkan ke dalamnya, kecuali metode pertama yang tidak berubah. Misalnya, kelebihan metode `Document.Save` menjadi `Document.Save`, `Document.Save_2`, `Document.Save_3`, dan sebagainya.

Untuk informasi selengkapnya, lihat artikel khusus bahasa lebih lanjut dalam dokumentasi ini.

### Membuat Rakitan Pembungkus

Jika Anda perlu menggunakan banyak kelas, metode, dan properti Aspose.Words, pertimbangkan untuk membuat rakitan pembungkus (menggunakan C# atau bahasa pemrograman .NET lainnya), yang akan membantu menghindari penggunaan Aspose.Words langsung dari kode yang tidak dikelola.

Pendekatan yang baik adalah dengan mengembangkan rakitan .NET yang mereferensikan Aspose.Words dan melakukan semua pekerjaan dengannya, dan hanya memaparkan kumpulan kelas dan metode minimal ke kode yang tidak dikelola. Aplikasi Anda kemudian harus bekerja hanya dengan perpustakaan pembungkus Anda.

Mengurangi jumlah kelas dan metode yang perlu Anda panggil melalui COM Interop dapat menyederhanakan proyek Anda, karena menggunakan kelas .NET melalui COM Interop sering kali memerlukan keterampilan tingkat lanjut.