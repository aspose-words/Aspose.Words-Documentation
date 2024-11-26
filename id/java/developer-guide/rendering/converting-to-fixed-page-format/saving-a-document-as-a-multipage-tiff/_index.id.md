---
title: Menyimpan Dokumen sebagai Multipage TIFF dalam Java
second_title: Aspose.Words untuk Java
articleTitle: Menyimpan Dokumen sebagai Multipage TIFF
linktitle: Menyimpan Dokumen sebagai Multipage TIFF
description: "Konversikan dokumen menjadi gambar raster, yang dibahas pada contoh format TIFF. Untuk menentukan bagaimana TIFF ditampilkan, Anda perlu menentukan opsi tambahan: resolusi, jumlah halaman, binarisasi gambar, dll menggunakan Java."
type: docs
weight: 30
url: /id/java/saving-a-document-as-a-multipage-tiff/
timestamp: 2024-01-27-14-07-04
---

Saat bekerja dengan dokumen, Anda sering kali perlu mengonversi dokumen Anda menjadi file gambar raster. Ini sangat relevan jika Anda harus menyajikan dokumen Anda dalam format yang dapat dibaca dan dicetak, tetapi tidak dapat diedit. Misalnya, Anda dapat menggunakan gambar raster dari halaman pertama dokumen Anda sebagai pratinjau. Artikel ini menjelaskan cara mengonversi dokumen menjadi gambar raster menggunakan contoh format TIFF - salah satu format gambar yang lebih populer.

## Mengonversi DOC menjadi Banyak Halaman TIFF

Dalam Aspose.Words, konversi dari DOC ke TIFF dapat dilakukan dengan satu baris kode, hanya dengan meneruskan jalur "simpan ke" dan ekstensi file yang relevan ke metode [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions). Metode **Save** secara otomatis mendapatkan `SaveFormat` dari ekstensi nama file yang ditentukan di jalur. Contoh berikut menunjukkan cara mengonversi dokumen ke format TIFF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveAsMultipageTiff-SaveAsTIFF.java" >}}

## Menentukan opsi tambahan saat merender TIFF

Anda sering perlu menentukan opsi tambahan, yang memengaruhi hasil rendering. Untuk tujuan ini, gunakan kelas [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), yang berisi properti yang menentukan bagaimana dokumen ditampilkan pada gambar. Anda dapat menentukan hal berikut:

- Simpan format untuk menentukan daftar opsi yang tersedia ([SaveFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/saveformat/))
- Resolusi ([HorizontalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getHorizontalResolution), [VerticalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getVerticalResolution), [Resolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#Resolution))
- Jumlah halaman ([PageIndex](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), [PageCount](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#PageCount))
- Pengaturan warna dan pencahayaan([PaperColor](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPaperColor), [ImageColorMode](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageColorMode), [ImageBrightness](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageBrightness), [ImageContrast](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#ImageContrast))
- Kualitas gambar([JpegQuality](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getJpegQuality), [Scale](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getScale), [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression), [GraphicsQualityOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#GraphicsQualityOptions))
- Metode yang digunakan untuk membuat biner gambar ([TiffBinarizationMethod](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffBinarizationMethod), [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#ThresholdForFloydSteinbergDithering))
- Format piksel untuk gambar yang dihasilkan ([PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#PixelFormat))
- Windows penanganan metafile oleh Aspose.Words ([MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getMetafileRenderingOptions), [UseGdiEmfRenderer](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#UseGdiEmfRenderer))
- Opsi tambahan yang dapat Anda lihat di kelas **ImageSaveOptions**

Contoh berikut menunjukkan cara mengonversi DOC menjadi TIFF dengan opsi yang dikonfigurasi:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.java" >}}

## Ambang batas untuk Binarisasi TIFF

Gambar TIFF dapat disimpan dalam format 1bpp b / w dengan menyetel properti [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat) ke tipe format piksel Format1bppIndexed, dan properti [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression) ke Ccitt3 atau Ccitt4.

Untuk segmentasi citra, Aspose.Words menggunakan metode paling sederhana - thresholding. Metode ini mengubah gambar TIFF skala abu-abu menjadi gambar biner, menggunakan nilai ambang batas. Oleh karena itu, ketika sebuah dokumen perlu dikonversi ke format file TIFF, dimungkinkan untuk mendapatkan atau menetapkan ambang batas untuk binarisasi TIFF melalui properti [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getThresholdForFloydSteinbergDithering). Nilai default untuk properti ini disetel ke 128, dan semakin tinggi nilai ini, semakin gelap gambarnya.

Contoh berikut menunjukkan cara melakukan binarisasi TIFF dengan ambang batas yang ditentukan:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.java" >}}

Di bawah ini Anda dapat membandingkan gambar di mana binarisasi TIFF dilakukan pada berbagai nilai ambang batas:

<img src="/words/java/saving-a-document-as-a-multipage-tiff/saving-a-document-as-a-multipage-tiff-1.jpg" alt="saving-a-document-as-a-multipage-tiff-aspose-words-java" style="width:800px"/>
