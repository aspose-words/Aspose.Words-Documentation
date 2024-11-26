---
title: Konversi PDF ke Format Dokumen Lain
second_title: Aspose.Words untuk Python via .NET
articleTitle: Konversi PDF ke Format Dokumen Lain
linktitle: Konversi PDF ke Format Dokumen Lain
type: docs
description: "Konversi PDF ke format Word seperti DOCX, DOC, format gambar seperti JPG atau PNG, atau format lain yang didukung oleh Aspose menggunakan `Python.Words`."
keywords: convert pdf to other formats python
weight: 45
url: /id/python-net/convert-pdf-to-other-document-formats/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words bahkan dapat memuat format rumit seperti PDF. Hal ini membuka peluang baru: dimungkinkan untuk mengonversi PDF ke Word atau format lain yang membawa pengguna jauh lebih maju dalam memecahkan banyak masalah yang diterapkan.

## Konversi PDF ke Format Lain {#convert-pdf-to-other-formats}

Konversi paling populer dari PDF adalah konversi ke format Microsoft Word seperti DOCX, DOC, serta format gambar seperti JPG atau PNG. Oleh karena itu, mengonversi dokumen dari satu format ke format lain dilakukan dengan cara yang familiar.

Contoh kode berikut menunjukkan cara mengonversi dokumen dari PDF ke DOCX:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-PdfToDocx.py" >}}

## Tentukan Opsi Muat saat Mengimpor PDF {#specify-load-options-when-importing-pdf}

Aspose.Words memberi Anda kelas [PdfLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/), yang memungkinkan kontrol lebih tepat atas cara dokumen PDF dimuat.

Sebagian besar properti mewarisi atau membebani properti yang sudah ada di kelas [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/). Selain itu, sejumlah properti ditentukan untuk format PDF. Misalnya, Anda dapat menggunakan properti [page_count](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/page_count/) dan [page_index](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/page_index/) untuk menentukan rentang halaman yang akan dimuat dari dokumen PDF, dan properti [skip_pdf_images](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/skip_pdf_images/) untuk mengontrol apakah gambar harus dilewati saat memuat PDF. Parameter lain yang didukung adalah [password](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/password/), yang harus disediakan untuk dokumen yang dilindungi kata sandi.

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

## Fitur yang Direncanakan {#planned-features}

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
|   *FileLoadException*               |  File PDF tidak dapat diproses karena alasan tertentu.<br /> {{% alert color="primary" %}}Anda dapat melaporkan masalah ini ke tim pengembangan untuk penyelidikan mendetail menggunakan [Dukungan teknis](/words/id/python-net/technical-support/).{{% /alert %}} |
|   *DrmProtectedFileException*       |  File PDF dilindungi oleh Adobe DRM dan tidak dapat didekodekan oleh Pdf2Word |
|   *PasswordProtectedFileException*  |  Kata sandi yang benar harus diberikan untuk PDF yang dilindungi kata sandi |


