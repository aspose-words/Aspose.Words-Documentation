---
title: Konversi Dokumen menjadi Gambar di C#
second_title: Aspose.Words untuk .NET
articleTitle: Konversi Dokumen menjadi Gambar
linktitle: Konversi Dokumen menjadi Gambar
type: docs
description: "Konversikan dokumen ke format gambar (JPG, PNG, dll). Buat pratinjau dokumen atau buat pemindaian dokumen untuk mengirim faktur menggunakan C#."
weight: 43
url: /id/net/convert-a-document-to-an-image/
timestamp: 2024-07-09-19-00-42
---

Terkadang diperlukan untuk mendapatkan gambar daripada dokumen dalam format lain, seperti DOCX atau PDF. Misalnya, Anda perlu menambahkan pratinjau halaman dokumen apa pun ke situs web atau aplikasi Anda, atau membuat "pindaian" dokumen untuk mengirim faktur. Ini adalah saat Anda mungkin perlu mengonversi dokumen dalam [format pemuatan yang didukung](https://reference.aspose.com/words/net/aspose.words/loadformat/) apa pun menjadi gambar, sekali lagi, dalam [format penyimpanan yang didukung](https://reference.aspose.com/words/net/aspose.words/saveformat/) apa pun.

## Konversikan ke Gambar {#convert-to-image-format}

Seperti semua contoh konversi yang telah dijelaskan, Anda perlu membuat dokumen baru atau memuat dokumen yang sudah ada dalam format apa pun yang didukung, membuat perubahan yang diperlukan, dan menyimpannya dalam format gambar apa pun yang tersedia, misalnya JPEG, PNG, atau BMP.

Contoh kode berikut menunjukkan cara mengonversi PDF ke JPEG:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Base conversions-PdfToJpeg.cs" >}}

## Tentukan Opsi Simpan saat Mengonversi ke Gambar {#specify-save-options-when-converting-to-an-image}

Aspose.Words memberi Anda kelas [ImageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/), yang memberikan kontrol lebih besar atas bagaimana dokumen disimpan dalam berbagai format gambar. Beberapa properti kelas ini mewarisi atau membebani properti kelas dasar seperti [FixedPageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/) atau [SaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/), namun ada juga opsi khusus untuk menyimpan gambar.

Dimungkinkan untuk menentukan halaman yang akan dikonversi ke format gambar menggunakan properti [PageSet](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/pageset/). Misalnya bisa diterapkan jika Anda hanya membutuhkan preview untuk halaman pertama atau halaman tertentu.

Dimungkinkan juga untuk mengontrol kualitas gambar keluaran dan format piksel menggunakan properti berikut – [HorizontalResolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/verticalresolution/), [Resolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/resolution/), [Scale](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/scale/), [PixelFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/pixelformat/), serta mengatur pengaturan warna gambar, menggunakan properti berikut – [ImageBrightness](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagebrightness/), [ImageColorMode](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagecolormode/), [ImageContrast](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagecontrast/), [PaperColor](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/papercolor/).

Ada juga properti yang berlaku untuk format tertentu, misalnya [JpegQuality](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/jpegquality/) atau [TiffCompression](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/tiffcompression/).

Contoh kode berikut menunjukkan cara membuat pratinjau halaman dokumen pertama dengan menerapkan beberapa pengaturan tambahan:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-Working with ImageSaveOptions-GetJpegPageRange.cs" >}}
