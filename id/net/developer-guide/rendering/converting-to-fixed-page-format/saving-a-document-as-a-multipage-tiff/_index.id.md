---
title: Menyimpan Dokumen sebagai TIFF Multihalaman di C#
second_title: Aspose.Words untuk .NET
articleTitle: Menyimpan Dokumen sebagai TIFF Multihalaman
linktitle: Menyimpan Dokumen sebagai TIFF Multihalaman
description: "Konversikan dokumen menjadi TIFF multi-halaman menggunakan C#. Untuk menentukan bagaimana dokumen ditampilkan pada gambar, Anda perlu menentukan opsi tambahan: resolusi, jumlah halaman, binarisasi gambar, dll."
type: docs
weight: 30
url: /id/net/saving-a-document-as-a-multipage-tiff/
---

Saat bekerja dengan dokumen, Anda sering kali perlu mengonversi dokumen Anda menjadi file gambar raster. Hal ini sangat relevan jika Anda harus menyajikan dokumen Anda dalam format yang dapat dibaca dan dicetak, namun tidak dapat diedit. Misalnya, Anda bisa menggunakan gambar raster halaman pertama dokumen Anda sebagai pratinjau. Artikel ini menjelaskan cara mengonversi dokumen menjadi gambar raster menggunakan contoh format TIFF – salah satu format gambar yang lebih populer.

## Mengubah DOC menjadi TIFF Multi-Halaman

Di Aspose.Words, konversi dari DOC ke TIFF dapat dilakukan dengan satu baris kode, hanya dengan meneruskan jalur "simpan ke" dan ekstensi file yang relevan ke metode [Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save). Metode **Save** secara otomatis memperoleh `SaveFormat` dari ekstensi nama file yang ditentukan di jalur. Contoh berikut menunjukkan cara mengonversi dokumen ke format TIFF:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Rendering-Printing-SaveAsMultipageTiff-SaveAsTIFF.cs" >}}

## Menentukan Opsi Tambahan Saat Merender TIFF

Anda sering kali perlu menentukan opsi tambahan, yang memengaruhi hasil rendering. Untuk tujuan ini, gunakan kelas [ImageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/), yang berisi properti yang menentukan bagaimana dokumen ditampilkan pada gambar. Anda dapat menentukan hal berikut:

- Simpan format untuk menentukan daftar opsi yang tersedia ([SaveFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/saveformat))
- Resolusi ([HorizontalResolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/verticalresolution/), [Resolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/resolution))
- Jumlah halaman ([PageIndex](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/), [PageCount](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/))
- Pengaturan warna dan pencahayaan ([PaperColor](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/papercolor/), [ImageColorMode](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagecolormode/), [ImageBrightness](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagebrightness/), [ImageContrast](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/imagecontrast))
- Kualitas gambar ([JpegQuality](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/jpegquality/), [Scale](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/scale/), [TiffCompression](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/tiffcompression/), [GraphicsQualityOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/graphicsqualityoptions))
- Metode yang digunakan untuk binerisasi gambar ([TiffBinarizationMethod](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/tiffbinarizationmethod/), [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/thresholdforfloydsteinbergdithering))
- Format piksel untuk gambar yang dihasilkan ([PixelFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/pixelformat))
- Penanganan metafile Windows oleh Aspose.Words ([MetafileRenderingOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/metafilerenderingoptions/), [UseGdiEmfRenderer](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/usegdiemfrenderer))
- Opsi tambahan yang dapat Anda lihat di kelas **ImageSaveOptions**

Contoh berikut menunjukkan cara mengonversi DOC ke TIFF dengan opsi yang dikonfigurasi:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Rendering-Printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.cs" >}}

## Ambang batas untuk Binarisasi TIFF

Gambar TIFF dapat disimpan dalam format 1bpp b/w dengan mengatur properti [PixelFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/pixelformat/) ke jenis format piksel Format1bppIndexed, dan properti [TiffCompression](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/tiffcompression/) ke Ccitt3 atau Ccitt4.

Untuk segmentasi gambar, Aspose.Words menggunakan metode paling sederhana - ambang batas. Metode ini mengubah gambar TIFF skala abu-abu menjadi gambar biner, menggunakan nilai ambang batas. Oleh karena itu, ketika dokumen perlu dikonversi ke format file TIFF, dimungkinkan untuk mendapatkan atau menetapkan ambang binarisasi TIFF melalui properti [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/thresholdforfloydsteinbergdithering/). Nilai default untuk properti ini diatur ke 128, dan semakin tinggi nilainya, semakin gelap gambarnya.

Contoh berikut menunjukkan cara melakukan binarisasi TIFF dengan ambang batas yang ditentukan:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.cs" >}}

Di bawah ini Anda dapat membandingkan gambar di mana binarisasi TIFF dilakukan pada berbagai nilai ambang batas:

<img src="/words/net/saving-a-document-as-a-multipage-tiff/saving-a-document-as-a-multipage-tiff-1.jpg" alt="menyimpan-dokumen-sebagai-multihalaman-tiff-aspose-words-net" style="width:800px"/>
