---
title: Menyimpan Dokumen sebagai TIFF Multipage dalam Java
second_title: Aspose.Words Sitemap Java
articleTitle: Menyimpan Dokumen sebagai TIFF Multipage
linktitle: Menyimpan Dokumen sebagai TIFF Multipage
description: "Konversi dokumen ke gambar raster, yang dibahas pada contoh format TIFF. Untuk menentukan bagaimana TIFF ditampilkan Anda perlu menentukan opsi tambahan: resolusi, jumlah halaman, binarisasi gambar, dll menggunakan JavaSitemap"
type: docs
weight: 30
url: /id/java/saving-a-document-as-a-multipage-tiff/
---

Ketika bekerja dengan dokumen, Anda sering perlu mengonversi dokumen Anda ke file gambar raster). Ini sangat relevan jika Anda harus menyajikan dokumen Anda dalam format yang dapat dibaca dan dapat dicetak, tetapi tidak dapat diedit. Misalnya, Anda dapat menggunakan gambar raster dari halaman pertama dokumen Anda sebagai pratinjau. Artikel ini menjelaskan bagaimana mengkonversi dokumen ke gambar raster menggunakan contoh format TIFF - salah satu format gambar yang lebih populer.

## Mengkonversi DOC ke Multi-Page TIFF

Sitemap Aspose.Words, konversi dari DOC ke TIFF dapat dilakukan dengan satu baris kode, dengan cukup melewati jalur "memiliki ke" dan ekstensi file yang relevan ke [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) Login Login **Save** metode secara otomatis derives `SaveFormat` dari ekstensi nama file yang ditentukan di jalan. Contoh berikut menunjukkan bagaimana mengkonversi dokumen ke format TIFF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveAsMultipageTiff-SaveAsTIFF.java" >}}

## Tentukan Pilihan Tambahan Saat Memrender TIFF

Anda sering perlu menentukan opsi tambahan, yang mempengaruhi hasil rendering. Untuk tujuan ini, gunakan [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) kelas, yang berisi sifat yang menentukan bagaimana dokumen ditampilkan pada gambar. Anda dapat menentukan berikut:

- Simpan format untuk menentukan daftar pilihan yang tersedia ([SaveFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/saveformat/)Sitemap
- Resolusi ([HorizontalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getHorizontalResolution), [VerticalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getVerticalResolution), [Resolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#Resolution)Sitemap
- Sitemap[PageIndex](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), [PageCount](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#PageCount)Sitemap
- Pengaturan warna dan pencahayaan (warna)[PaperColor](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPaperColor), [ImageColorMode](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageColorMode), [ImageBrightness](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageBrightness), [ImageContrast](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#ImageContrast)Sitemap
- Kualitas gambar ([JpegQuality](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getJpegQuality), [Scale](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getScale), [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression), [GraphicsQualityOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#GraphicsQualityOptions)Sitemap
- Metode yang digunakan untuk membina gambar ([TiffBinarizationMethod](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffBinarizationMethod), [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#ThresholdForFloydSteinbergDithering)Sitemap
- Format pixel untuk gambar yang dihasilkan ([PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#PixelFormat)Sitemap
- Login Windows penanganan metafiles oleh Aspose.Words Sitemap[MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getMetafileRenderingOptions), [UseGdiEmfRenderer](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#UseGdiEmfRenderer)Sitemap
- Pilihan tambahan yang dapat Anda lihat di Meme it **ImageSaveOptions** Login

Contoh berikut menunjukkan bagaimana mengkonversi DOC ke TIFF dengan opsi yang dikonfigurasi:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.java" >}}

## Ambang untuk Binarisasi TIFF

Gambar TIFF dapat disimpan dalam format 1bpp b / w dengan mengatur [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat) properti ke format1bppIndexed pixel format jenis, dan [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression) properti untuk baik Ccitt3 atau Ccitt4.

Untuk segmentasi gambar, Aspose.Words menggunakan metode paling sederhana - ambang. Metode ini mengubah gambar TIFF berskala abu-abu menjadi gambar biner, menggunakan nilai ambang. Oleh karena itu, ketika dokumen perlu dikonversi ke format file TIFF, dimungkinkan untuk mendapatkan atau mengatur ambang untuk binarisasi TIFF melalui [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getThresholdForFloydSteinbergDithering) Login Nilai default untuk properti ini ditetapkan ke 128, dan nilai ini yang lebih tinggi, semakin gelap gambar.

Contoh berikut menunjukkan cara melakukan binarisasi TIFF dengan ambang yang ditentukan:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.java" >}}

Di bawah ini Anda dapat membandingkan gambar di mana binarisasi TIFF dilakukan pada berbagai nilai ambang:

<img src="/words/java/saving-a-document-as-a-multipage-tiff/saving-a-document-as-a-multipage-tiff-1.jpg" alt="saving-a-document-as-a-multipage-tiff-aspose-words-java" style="width:800px"/>
