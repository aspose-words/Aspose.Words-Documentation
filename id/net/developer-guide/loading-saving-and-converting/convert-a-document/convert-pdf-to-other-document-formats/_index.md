---
title: Konversi PDF ke Format Dokumen Lain di C#
second_title: Aspose.Words untuk .NET
articleTitle: Konversi PDF ke Format Dokumen Lain
linktitle: Konversi PDF ke Format Dokumen Lain
type: docs
description: "Konversi PDF ke format Word seperti DOCX, DOC, format gambar seperti JPG atau PNG, atau format lain yang didukung oleh Aspose.Words menggunakan C#."
keywords: convert pdf to other formats c#
weight: 45
url: /id/net/convert-pdf-to-other-document-formats/
---

Aspose.Words bahkan dapat memuat format rumit seperti PDF. Hal ini membuka peluang baru: dimungkinkan untuk mengonversi PDF ke Word atau format lain yang membawa pengguna jauh lebih maju dalam memecahkan banyak masalah yang diterapkan.

## Prasyarat

* Menambahkan referensi ke paket Aspose.Words ***ATAU*** ke Aspose.Words.Pdf2Word.dll.
* Setidaknya .NET Framework 4.6.1 atau .NET Standard 2.0. Target seperti .NET Core 2.x atau 3.0, .NET 5, dan Xamarin juga didukung melalui kompatibilitas dengan .NET Standard.

## Konversi PDF ke Berbagai Format {#convert-pdf-to-other-formats}

Konversi paling populer dari PDF adalah konversi ke format Microsoft Word seperti DOCX, DOC, serta format gambar seperti JPG atau PNG. Oleh karena itu, mengonversi dokumen dari satu format ke format lain dilakukan dengan cara yang familiar.

Contoh kode berikut menunjukkan cara mengonversi dokumen dari PDF ke DOCX:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Base conversions-PdfToDocx.cs" >}}

## Tentukan Opsi Muat saat Mengimpor PDF {#specify-load-options-when-importing-pdf}

Aspose.Words memberi Anda kelas [PdfLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/), yang memungkinkan kontrol lebih tepat atas cara dokumen PDF dimuat.

Sebagian besar properti mewarisi atau membebani properti yang sudah ada di kelas `LoadOptions`. Selain itu, sejumlah properti ditentukan untuk format PDF. Misalnya, Anda dapat menggunakan properti [PageCount](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/pagecount/) dan [PageIndex](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/pageindex/) untuk menentukan rentang halaman yang akan dimuat dari dokumen PDF, dan properti [SkipPdfImages](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/skippdfimages/) untuk mengontrol apakah gambar harus dilewati saat memuat PDF. Parameter lain yang didukung adalah [Password](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/password/), yang harus disediakan untuk [dokumen yang dilindungi kata sandi](/words/net/protect-documents-and-parts-of-documents/).

## Konten PDF yang didukung {#supported-pdf-content}

Plugin PDF2Word saat ini mendukung tipe data berikut:

* Paragraf teks
* Gambar-gambar
* Tabel
* Daftar
* Header dan footer
* Catatan kaki
* Nomor halaman
* Teks kanan ke kiri (dengan beberapa batasan)
* PDF yang dapat dicari (gambar depan akan dihapus demi teks latar belakang)

## Fitur Masa Depan {#planned-features}

Beberapa fitur masih dalam pengembangan awal atau termasuk dalam peta jalan pengembangan:

* Daftar isi
* OCR untuk PDF yang Dapat Dicari dan Tidak Dapat Dicari
* Laporan perkembangan
* Teks multikolom
* Rumus matematika
* Lebih banyak bidang otomatis (selain `PAGE` dan NUMPAGES)

## Pengecualian Pemuatan PDF

Selama konversi dokumen PDF, salah satu pengecualian berikut mungkin terjadi:

|  Pengecualian |  Keterangan |
|  --------------------------------  |  ------------------------------------------------------------  |
|  `FileLoadException`               |  File PDF tidak dapat diproses karena alasan tertentu.<br /> {{% alert color="primary" %}}Anda dapat melaporkan masalah ini ke tim pengembangan untuk penyelidikan mendetail menggunakan [Dukungan teknis](/words/id/net/technical-support/).{{% /alert %}} |
|  `DrmProtectedFileException`       |  File PDF dilindungi oleh Adobe DRM dan tidak dapat didekodekan oleh Pdf2Word |
|  `PasswordProtectedFileException`  |  Kata sandi yang benar harus diberikan untuk PDF yang dilindungi kata sandi |

## Lihat juga

* [Referensi Nuget ke Aspose.Words](https://www.nuget.org/packages/Aspose.Words/)

