---
title: Menyimpan Dokumen sebagai Multipage TIFF di C++
second_title: Aspose.Words untuk C++
articleTitle: Menyimpan Dokumen sebagai Multipage TIFF
linktitle: Menyimpan Dokumen sebagai Multipage TIFF
description: "Konversikan dokumen menjadi multi-halaman TIFF menggunakan C++. Untuk menentukan bagaimana dokumen ditampilkan pada gambar, Anda perlu menentukan opsi tambahan: resolusi, jumlah halaman, binarisasi gambar, dll."
type: docs
weight: 40
url: /id/cpp/saving-a-document-as-a-multipage-tiff/
timestamp: 2024-01-27-14-07-04
---

Saat bekerja dengan dokumen, Anda sering kali perlu mengonversi dokumen Anda menjadi file gambar raster. Ini sangat relevan jika Anda harus menyajikan dokumen Anda dalam format yang dapat dibaca dan dicetak, tetapi tidak dapat diedit. Misalnya, Anda dapat menggunakan gambar raster dari halaman pertama dokumen Anda sebagai pratinjau. Artikel ini menjelaskan cara mengonversi dokumen menjadi gambar raster menggunakan contoh format TIFF - salah satu format gambar yang lebih populer.

## Mengonversi DOC menjadi Banyak Halaman TIFF

Dalam Aspose.Words, konversi dari DOC ke TIFF dapat dilakukan dengan satu baris kode, hanya dengan meneruskan jalur "simpan ke" dan ekstensi file yang relevan ke metode [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/). Metode **Save** secara otomatis mendapatkan `SaveFormat` dari ekstensi nama file yang ditentukan di jalur. Contoh berikut menunjukkan cara mengonversi dokumen ke format TIFF:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-File Formats and Conversions-Save Options-Working with ImageSaveOptions-SaveAsTIFF.h" >}}

## Menentukan opsi tambahan saat merender TIFF

Anda sering perlu menentukan opsi tambahan, yang memengaruhi hasil rendering. Untuk tujuan ini, gunakan kelas [ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/), yang berisi properti yang menentukan bagaimana dokumen ditampilkan pada gambar. Anda dapat menentukan hal berikut:

- Simpan format untuk menentukan daftar opsi yang tersedia ([SaveFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_saveformat/))
- Resolusi ([HorizontalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_verticalresolution/), [Resolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_resolution/))
- Jumlah halaman ([PageIndex](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pageset/), [PageCount](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pageset/))
- Pengaturan warna dan pencahayaan([PaperColor](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_papercolor/), [ImageColorMode](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagecolormode/), [ImageBrightness](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_imagebrightness/), [ImageContrast](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_imagecontrast/))
- Kualitas gambar([JpegQuality](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_jpegquality/), [Scale](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_scale/), [TiffCompression](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_tiffcompression/), GraphicsQualityOptions)
- Metode yang digunakan untuk membuat biner gambar ([TiffBinarizationMethod](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_tiffbinarizationmethod/), [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_thresholdforfloydsteinbergdithering/))
- Format piksel untuk gambar yang dihasilkan ([PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pixelformat/))
- Windows penanganan metafile oleh Aspose.Words ([MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_metafilerenderingoptions/), [UseGdiEmfRenderer](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_usegdiemfrenderer/))
- Opsi tambahan yang dapat Anda lihat di kelas **ImageSaveOptions**

Contoh berikut menunjukkan cara mengonversi DOC menjadi TIFF dengan opsi yang dikonfigurasi:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.cpp" >}}

## Ambang batas untuk Binarisasi TIFF

Gambar TIFF dapat disimpan dalam format 1bpp b / w dengan menyetel properti [PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pixelformat/) ke Format1 bppIndexed jenis format piksel, dan properti `TiffCompression` ke Ccitt3 atau Ccitt4.

Untuk segmentasi citra, Aspose.Words menggunakan metode paling sederhana - thresholding. Metode ini mengubah gambar TIFF skala abu-abu menjadi gambar biner, menggunakan nilai ambang batas. Oleh karena itu, ketika sebuah dokumen perlu dikonversi ke format file TIFF, dimungkinkan untuk mendapatkan atau menetapkan ambang batas untuk binarisasi TIFF melalui properti [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_thresholdforfloydsteinbergdithering/). Nilai default untuk properti ini disetel ke 128, dan semakin tinggi nilai ini, semakin gelap gambarnya.

Contoh berikut menunjukkan cara melakukan binarisasi TIFF dengan ambang batas yang ditentukan:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.cpp" >}}

Di bawah ini Anda dapat membandingkan gambar di mana binarisasi TIFF dilakukan pada berbagai nilai ambang batas:

![save-a-document-as-a-multipage-tiff-aspose-words-cpp](saving-a-document-as-a-multipage-tiff-1.jpg)
