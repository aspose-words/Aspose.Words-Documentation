---
title: Menyimpan Dokumen sebagai TIFF Multihalaman
second_title: Aspose.Words untuk Python via .NET
articleTitle: Menyimpan Dokumen sebagai TIFF Multihalaman
linktitle: Menyimpan Dokumen sebagai TIFF Multihalaman
description: "Konversikan dokumen menjadi TIFF multi-halaman menggunakan Python. Untuk menentukan bagaimana dokumen ditampilkan pada gambar, Anda perlu menentukan opsi tambahan: resolusi, jumlah halaman, binarisasi gambar, dll."
type: docs
weight: 30
url: /id/python-net/saving-a-document-as-a-multipage-tiff/
---

Saat bekerja dengan dokumen, Anda sering kali perlu mengonversi dokumen Anda menjadi file gambar raster. Hal ini sangat relevan jika Anda harus menyajikan dokumen Anda dalam format yang dapat dibaca dan dicetak, namun tidak dapat diedit. Misalnya, Anda bisa menggunakan gambar raster halaman pertama dokumen Anda sebagai pratinjau. Artikel ini menjelaskan cara mengonversi dokumen menjadi gambar raster menggunakan contoh format TIFF – salah satu format gambar yang lebih populer.

## Mengubah DOC menjadi TIFF Multi-Halaman

Di Aspose.Words, konversi dari DOC ke TIFF dapat dilakukan dengan satu baris kode, hanya dengan meneruskan jalur "simpan ke" dan ekstensi file yang relevan ke metode [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/). Metode [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) secara otomatis mendapatkan [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) dari ekstensi nama file yang ditentukan di jalur. Contoh berikut menunjukkan cara mengonversi dokumen ke format TIFF:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-SaveAsTIFF.py" >}}

## Menentukan Opsi Tambahan Saat Merender TIFF

Anda sering kali perlu menentukan opsi tambahan, yang memengaruhi hasil rendering. Untuk tujuan ini, gunakan kelas [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/), yang berisi properti yang menentukan bagaimana dokumen ditampilkan pada gambar. Anda dapat menentukan hal berikut:

- Simpan format untuk menentukan daftar opsi yang tersedia ([save_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/save_format/))
- Resolusi ([horizontal_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/horizontal_resolution/), [vertical_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/vertical_resolution/))
- Jumlah halaman ([page_set](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/page_set/))
- Pengaturan warna dan pencahayaan ([paper_color](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/paper_color/), [image_color_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_color_mode/), [image_brightness](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_brightness/), [image_contrast](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_contrast/))
- Kualitas gambar ([jpeg_quality](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/jpeg_quality/), [scale](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/scale/), [tiff_compression](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_compression/))
- Metode yang digunakan untuk binerisasi gambar ([tiff_binarization_method](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_binarization_method/), [threshold_for_floyd_steinberg_dithering](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/threshold_for_floyd_steinberg_dithering/))
- Format piksel untuk gambar yang dihasilkan ([pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/))
- Penanganan metafile Windows oleh Aspose.Words ([metafile_rendering_options](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/metafile_rendering_options/), [use_gdi_emf_renderer](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/use_gdi_emf_renderer/))
- Opsi tambahan yang dapat Anda lihat di kelas [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/)

Contoh berikut menunjukkan cara mengonversi DOC ke TIFF dengan opsi yang dikonfigurasi:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-GetTiffPageRange.py" >}}

## Ambang batas untuk Binarisasi TIFF

Gambar TIFF dapat disimpan dalam format 1bpp b/w dengan mengatur properti [pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/) ke jenis format piksel [FORMAT1BPP_INDEXED](https://reference.aspose.com/words/python-net/aspose.words.saving/imagepixelformat/#format1bpp_indexed), dan properti [tiff_compression](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_compression/) ke [CCITT3](https://reference.aspose.com/words/python-net/aspose.words.saving/tiffcompression/#ccitt3) atau [CCITT4](https://reference.aspose.com/words/python-net/aspose.words.saving/tiffcompression/#ccitt4).

Untuk segmentasi gambar, Aspose.Words menggunakan metode paling sederhana - ambang batas. Metode ini mengubah gambar TIFF skala abu-abu menjadi gambar biner, menggunakan nilai ambang batas. Oleh karena itu, ketika dokumen perlu dikonversi ke format file TIFF, dimungkinkan untuk mendapatkan atau menetapkan ambang binarisasi TIFF melalui properti [threshold_for_floyd_steinberg_dithering](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/threshold_for_floyd_steinberg_dithering/). Nilai default untuk properti ini diatur ke 128, dan semakin tinggi nilainya, semakin gelap gambarnya.

Contoh berikut menunjukkan cara melakukan binarisasi TIFF dengan ambang batas yang ditentukan:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-ExposeThresholdControlForTiffBinarization.py" >}}

Di bawah ini Anda dapat membandingkan gambar di mana binarisasi TIFF dilakukan pada berbagai nilai ambang batas:

<img src="/words/python-net/saving-a-document-as-a-multipage-tiff/saving-a-document-as-a-multipage-tiff-1.jpg" alt="menyimpan-dokumen-sebagai-multihalaman-tiff-aspose-words-net" style="width:800px"/>
