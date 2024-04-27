---
title: Mengkonversi Dokumen ke Gambar dalam Java
second_title: Aspose.Words Sitemap Java
articleTitle: Mengkonversi Dokumen ke Gambar
linktitle: Mengkonversi Dokumen ke Gambar
type: docs
description: "Konversi dokumen ke format gambar (JPG, PNG, dll). Buat pratinjau dokumen atau buat pemindaian dokumen untuk mengirim faktur menggunakan JavaSitemap"
weight: 35
url: /id/java/convert-a-document-to-an-image/
---

Terkadang diperlukan untuk mendapatkan gambar bukan dokumen dalam format lain, seperti DOCX atau PDF. Misalnya, Anda perlu menambahkan pratinjau dari setiap halaman dokumen ke situs web atau aplikasi Anda atau membuat "scan" dokumen untuk mengirim faktur. Ini adalah ketika Anda mungkin perlu mengonversi dokumen di setiap Meme it [Sitemap](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) ke gambar, lagi, di mana pun [Login](https://reference.aspose.com/words/java/com.aspose.words/saveformat/)Sitemap

## Konversi ke Format Gambar

Seperti dengan semua contoh konversi sudah dijelaskan, Anda perlu membuat dokumen baru atau memuat yang ada dalam format yang didukung, membuat perubahan yang diperlukan, dan menyimpannya dalam format gambar yang tersedia, misalnya, JPEG, PNG, atau BMP.

Contoh kode berikut menunjukkan bagaimana mengkonversi DOCX ke JPEG:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToImage-ConvertDocxToJpeg.java" >}}

## Tentukan Simpan Pilihan saat Konversi ke Gambar

Aspose.Words memberikan Anda [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) kelas, yang memberikan kontrol lebih dari bagaimana dokumen disimpan dalam berbagai format gambar. Beberapa sifat dari warisan kelas ini atau sifat overload kelas dasar seperti [FixedPageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/) Sitemap [SaveOptions](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/), tetapi ada juga pilihan khusus untuk menyimpan gambar.

Mungkin untuk menentukan halaman yang akan dikonversi ke format gambar menggunakan [PageSet](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPageSet) Login Misalnya, dapat diterapkan jika Anda hanya perlu pratinjau untuk pertama atau untuk halaman yang pasti.

Hal ini juga memungkinkan untuk mengontrol kualitas gambar output dan format pixel menggunakan sifat berikut - [HorizontalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getHorizontalResolution), [VerticalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getVerticalResolution), [Resolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), [Scale](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getScale), [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat), serta mengatur pengaturan warna gambar, menggunakan properti berikut - [ImageBrightness](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageBrightness), [ImageColorMode](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageColorMode), [ImageContrast](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageContrast), [PaperColor](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPaperColor)Sitemap

Ada juga sifat yang berlaku untuk format tertentu, misalnya, [JpegQuality](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getJpegQuality) Sitemap [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression)Sitemap

Contoh kode berikut menunjukkan cara membuat pratinjau halaman dokumen pertama dengan menerapkan beberapa pengaturan tambahan:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToImage-ConvertDocumentToImage.java" >}}
