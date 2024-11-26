---
title: Simpan Dokumen di C#
second_title: Aspose.Words untuk .NET
articleTitle: Simpan Dokumen
linktitle: Simpan Dokumen
type: docs
description: "Simpan dokumen dalam format apa pun yang didukung menggunakan C#."
keywords: "save a document c#, save a document to file c#, save a document to stream c#, save a document Aspose .NET, save formats supported by Aspose.Words .NET"
weight: 20
url: /id/net/save-a-document/
timestamp: 2024-07-09-19-00-42
---

Sebagian besar tugas yang perlu Anda lakukan dengan Aspose.Words melibatkan penyimpanan dokumen. Untuk menyimpan dokumen Aspose.Words menyediakan metode [Save](https://reference.aspose.com/words/net/aspose.words/document/save/) dari kelas [Document](https://reference.aspose.com/words/net/aspose.words/document/). Ada kelebihan beban yang memungkinkan penyimpanan dokumen ke file, aliran, atau objek ASP.NET HttpResponse untuk dikirim ke browser klien. Dokumen dapat disimpan dalam format penyimpanan apa pun yang didukung oleh Aspose.Words. Untuk daftar semua format penyimpanan yang didukung, lihat enumerasi [SaveFormat](https://reference.aspose.com/words/net/aspose.words/saveformat/).

## Simpan ke File {#save-a-document-to-a-file}

Cukup gunakan metode [Save](https://reference.aspose.com/words/net/aspose.words/document/save/) dengan nama file. Aspose.Words akan menentukan format penyimpanan dari ekstensi file yang Anda tentukan.

Contoh kode berikut menunjukkan cara memuat dan menyimpan dokumen ke file:

{{< gist "aspose-words-gists" "6b49e2482a4ca546ffd2b4f9fa642041" "load-save.cs" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file template contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## Simpan ke Stream {#save-a-document-to-a-stream}

Meneruskan objek aliran ke metode [Save](https://reference.aspose.com/words/net/aspose.words/document/save/). Penting untuk menentukan format penyimpanan secara eksplisit saat menyimpan ke aliran.

Contoh kode berikut menunjukkan cara memuat dan menyimpan dokumen ke aliran:

{{< gist "aspose-words-gists" "6b49e2482a4ca546ffd2b4f9fa642041" "load-save-stream.cs" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file template contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

## Kirim Dokumen ke Browser Klien {#sending-a-document-to-a-client-browser}

Untuk mengirim dokumen ke browser klien, gunakan kelebihan khusus yang memerlukan empat parameter: nama file, format penyimpanan, jenis penyimpanan, dan objek ASP.NET HttpResponse. Cara dokumen disajikan kepada pengguna diwakili oleh enumerasi [ContentDisposition](https://reference.aspose.com/words/net/aspose.words/contentdisposition/), yang menentukan apakah dokumen yang dikirim ke browser akan memberikan opsi untuk membuka sendiri langsung di browser atau di aplikasi yang terkait dengan ekstensi file.

Contoh kode berikut menunjukkan cara mengirim dokumen ke browser klien dari kode ASP.NET:

{{< gist "aspose-words-gists" "6b49e2482a4ca546ffd2b4f9fa642041" "send-to-client-browser.cs" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file template contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

Kelebihan metode `Save` ini tidak tersedia saat menggunakan DLL Profil Klien .NET. DLL ini terletak di folder **net3.5_Profil Klien**. Profil Klien .NET tidak termasuk rakitan seperti **System.Web**, oleh karena itu, **HttpResponse** tidak tersedia. Ini sepenuhnya memang disengaja.

Ini mungkin bermanifestasi sebagai kesalahan:

**"Tidak ada kelebihan beban untuk metode 'Simpan' yang membutuhkan parameter '4'."**

Jika Anda perlu menggunakan Aspose.Words dalam aplikasi ASP.NET, Disarankan untuk menggunakan DLL .NET 2.0 di mana tersedia kelebihan beban yang benar, seperti yang dijelaskan dalam artikel ini.

## Simpan ke PCL {#save-a-document-to-pcl}

Aspose.Words mendukung penyimpanan dokumen ke PCL (Printer Command Language). Aspose.Words dapat menyimpan dokumen ke dalam format PCL 6 (PCL 6 Enhanced atau PCL XL). Kelas `PclSaveOptions` dapat digunakan untuk menentukan opsi tambahan saat menyimpan dokumen ke dalam format PCL.

Contoh kode berikut menunjukkan cara menyimpan dokumen ke PCL menggunakan opsi penyimpanan:

{{< gist "aspose-words-gists" "b5a3c7ccb6e79a15c8d9d65e050a881b" "docx-to-pcl.cs" >}}

## Lihat juga

- Informasi tentang objek ASP.NET [HttpResponse](https://docs.microsoft.com/en-us/dotnet/api/system.web.httpresponse?view=netframework-4.8)
