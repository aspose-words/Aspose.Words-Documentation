---
title: Konversi Dokumen menjadi Gambar
second_title: Aspose.Words untuk Python via .NET
articleTitle: Konversi Dokumen menjadi Gambar
linktitle: Konversi Dokumen menjadi Gambar
type: docs
description: "Konversikan dokumen ke format gambar (JPG, PNG, dll). Buat pratinjau dokumen atau buat pemindaian dokumen untuk mengirim faktur menggunakan Python."
weight: 43
url: /id/python-net/convert-a-document-to-an-image/
timestamp: 2024-01-27-14-07-04
---

Terkadang diperlukan untuk mendapatkan gambar daripada dokumen dalam format lain, seperti DOCX atau PDF. Misalnya, Anda perlu menambahkan pratinjau halaman dokumen apa pun ke situs web atau aplikasi Anda, atau membuat "pindaian" dokumen untuk mengirim faktur. Ini adalah saat Anda mungkin perlu mengonversi dokumen dalam [format pemuatan yang didukung](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) apa pun menjadi gambar, sekali lagi, dalam [format penyimpanan yang didukung](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) apa pun.

## Konversikan ke Format Gambar {#convert-to-image-format}

Seperti semua contoh konversi yang telah dijelaskan, Anda perlu membuat dokumen baru atau memuat dokumen yang sudah ada dalam format apa pun yang didukung, membuat perubahan yang diperlukan, dan menyimpannya dalam format gambar apa pun yang tersedia, misalnya JPEG, PNG, atau BMP.

Contoh kode berikut menunjukkan cara mengonversi PDF ke JPEG:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-PdfToJpeg.py" >}}

## Tentukan Opsi Simpan saat Mengonversi ke {#specify-save-options-when-converting-to-an-image} Gambar

Aspose.Words memberi Anda kelas [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/), yang memberikan kontrol lebih besar atas bagaimana dokumen disimpan dalam berbagai format gambar. Beberapa properti kelas ini mewarisi atau membebani properti kelas dasar seperti [FixedPageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/) atau [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/), namun ada juga opsi khusus untuk menyimpan gambar.

Dimungkinkan untuk menentukan halaman yang akan dikonversi ke format gambar menggunakan properti [page_set](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/page_set/). Misalnya bisa diterapkan jika Anda hanya membutuhkan preview untuk halaman pertama atau halaman tertentu.

Dimungkinkan juga untuk mengontrol kualitas gambar keluaran dan format piksel menggunakan properti berikut – [horizontal_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/horizontal_resolution/), [vertical_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/vertical_resolution/), [scale](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/scale/), [pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/), serta mengatur pengaturan warna gambar, menggunakan properti berikut – [image_brightness](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_brightness/), [image_color_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_color_mode/), [image_contrast](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_contrast/), [paper_color](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/paper_color/).

Ada juga properti yang berlaku untuk format tertentu, misalnya [jpeg_quality](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/jpeg_quality/) atau [tiff_compression](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_compression/).

Contoh kode berikut menunjukkan cara membuat pratinjau halaman dokumen pertama dengan menerapkan beberapa pengaturan tambahan:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-GetJpegPageRange.py" >}}
