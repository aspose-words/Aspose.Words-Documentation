---
title: Mengonversi Dokumen menjadi Gambar dalam Java
second_title: Aspose.Words untuk Java
articleTitle: Mengonversi Dokumen menjadi Gambar
linktitle: Mengonversi Dokumen menjadi Gambar
type: docs
description: "Konversikan dokumen ke format gambar (JPG, PNG, dll). Buat pratinjau dokumen atau buat pemindaian dokumen untuk mengirim faktur menggunakan Java."
weight: 35
url: /id/java/convert-a-document-to-an-image/
timestamp: 2024-01-27-14-07-04
---

Terkadang diperlukan untuk mendapatkan gambar alih-alih dokumen dalam format lain, seperti DOCX atau PDF. Misalnya, Anda perlu menambahkan pratinjau halaman dokumen apa pun ke situs web atau aplikasi Anda atau membuat "pemindaian" dokumen untuk mengirim faktur. Ini adalah saat Anda mungkin perlu mengonversi dokumen dalam [format beban yang didukung](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) apa pun menjadi gambar, sekali lagi, dalam [format penyimpanan yang didukung](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) apa pun.

## Konversi ke Format Gambar

Seperti semua contoh konversi yang telah dijelaskan, Anda perlu membuat dokumen baru atau memuat dokumen yang sudah ada dalam format apa pun yang didukung, membuat perubahan yang diperlukan, dan menyimpannya dalam format gambar apa pun yang tersedia, misalnya, JPEG, PNG, atau BMP.

Contoh kode berikut menunjukkan cara mengonversi DOCX menjadi JPEG:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToImage-ConvertDocxToJpeg.java" >}}

## Tentukan Opsi Penyimpanan saat Mengonversi ke Gambar

Aspose.Words memberi Anda kelas [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), yang memberikan kontrol lebih besar atas bagaimana dokumen disimpan dalam berbagai format gambar. Beberapa properti kelas ini mewarisi atau membebani properti kelas dasar seperti [FixedPageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/) atau [SaveOptions](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/), tetapi ada juga opsi khusus untuk menyimpan gambar.

Dimungkinkan untuk menentukan halaman yang akan dikonversi ke format gambar menggunakan properti [PageSet](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPageSet). Misalnya, ini dapat diterapkan jika Anda hanya memerlukan pratinjau untuk halaman pertama atau halaman tertentu.

Dimungkinkan juga untuk mengontrol kualitas gambar keluaran dan format piksel menggunakan properti berikut– [HorizontalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getHorizontalResolution), [VerticalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getVerticalResolution), [Resolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), [Scale](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getScale), [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat), serta mengatur pengaturan warna gambar, menggunakan properti berikut– [ImageBrightness](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageBrightness), [ImageColorMode](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageColorMode), [ImageContrast](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageContrast), [PaperColor](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPaperColor).

Ada juga properti yang berlaku untuk format tertentu, misalnya, [JpegQuality](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getJpegQuality) atau [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression).

Contoh kode berikut menunjukkan cara membuat pratinjau halaman dokumen pertama dengan menerapkan beberapa pengaturan tambahan:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToImage-ConvertDocumentToImage.java" >}}
