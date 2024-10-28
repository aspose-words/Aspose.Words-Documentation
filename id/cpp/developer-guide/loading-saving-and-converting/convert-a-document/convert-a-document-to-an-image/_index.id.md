---
title: Mengonversi Dokumen menjadi Gambar dalam C++
second_title: Aspose.Words untuk C++
articleTitle: Mengonversi Dokumen menjadi Gambar
linktitle: Mengonversi Dokumen menjadi Gambar
type: docs
description: "Konversikan dokumen ke format gambar (JPG, PNG, dll). Buat pratinjau dokumen atau buat pemindaian dokumen untuk mengirim faktur."
weight: 43
url: /id/cpp/convert-a-document-to-an-image/
---

Terkadang diperlukan untuk mendapatkan gambar alih-alih dokumen dalam format lain, seperti DOCX atau PDF. Misalnya, Anda perlu menambahkan pratinjau halaman dokumen apa pun ke situs web atau aplikasi Anda, atau membuat "pemindaian" dokumen untuk mengirim faktur. Ini adalah saat Anda mungkin perlu mengonversi dokumen dalam [supported load format](https://reference.aspose.com/words/cpp/aspose.words/loadformat/) apa pun menjadi gambar, sekali lagi, dalam [supported save format](https://reference.aspose.com/words/cpp/aspose.words/saveformat/) apa pun.

## Konversi ke Format Gambar

Seperti semua contoh konversi yang telah dijelaskan, Anda perlu membuat dokumen baru atau memuat dokumen yang sudah ada dalam format apa pun yang didukung, membuat perubahan yang diperlukan, dan menyimpannya dalam format gambar apa pun yang tersedia, misalnya, JPEG, PNG, atau BMP.

Contoh kode berikut menunjukkan cara mengonversi DOCX menjadi JPEG:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-File Formats and Conversions-Base conversions-DocxToJpeg.h" >}}

## Tentukan Opsi Penyimpanan saat Mengonversi ke Gambar

Aspose.Words memberi Anda kelas [ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/), yang memberikan kontrol lebih besar atas bagaimana dokumen disimpan dalam berbagai format gambar. Beberapa properti kelas ini mewarisi atau membebani properti kelas dasar seperti [FixedPageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/) atau [SaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/), tetapi ada juga opsi khusus untuk menyimpan gambar.

Dimungkinkan untuk menentukan halaman yang akan dikonversi ke format gambar menggunakan properti [PageSet](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pageset/). Misalnya, ini dapat diterapkan jika Anda hanya memerlukan pratinjau untuk halaman pertama atau halaman tertentu.

Dimungkinkan juga untuk mengontrol kualitas gambar keluaran dan format piksel menggunakan properti berikut– [HorizontalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_verticalresolution/), [Resolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_resolution/), [Scale](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_scale/), [PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pixelformat/), serta mengatur pengaturan warna gambar, menggunakan properti berikut– [ImageBrightness](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagebrightness/), [ImageColorMode](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagecolormode/), [ImageContrast](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagecontrast/), [PaperColor](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_papercolor/).

Ada juga properti yang berlaku untuk format tertentu, misalnya, [JpegQuality](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_jpegquality/) atau [TiffCompression](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_tiffcompression/).

Contoh kode berikut menunjukkan cara membuat pratinjau halaman dokumen pertama dengan menerapkan beberapa pengaturan tambahan:


{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertWordDocument-ConvertDocumentToImage.cpp" >}}
