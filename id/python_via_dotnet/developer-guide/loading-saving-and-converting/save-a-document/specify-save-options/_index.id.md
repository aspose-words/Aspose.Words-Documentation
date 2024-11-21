---
title: Tentukan Opsi Simpan di Python
second_title: Aspose.Words untuk Python via .NET
articleTitle: Tentukan Opsi Simpan
linktitle: Tentukan Opsi Simpan
description: "Kontrol proses penyimpanan lebih akurat menggunakan Python."
type: docs
weight: 10
url: /id/python-net/specify-save-options/
timestamp: 2024-01-27-14-07-04
---

Saat menyimpan dokumen, Anda dapat mengatur beberapa properti lanjutan. Aspose.Words memberi Anda kelas [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/), yang memungkinkan kontrol proses penyimpanan yang lebih tepat. Ada kelebihan metode [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) yang menerima objek [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/) – objek tersebut harus berupa objek kelas yang diturunkan dari kelas [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/). Setiap format penyimpanan memiliki kelas terkait yang berisi opsi penyimpanan untuk format penyimpanan ini, misalnya, ada [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) untuk menyimpan ke format PDF atau [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) untuk menyimpan ke gambar. Artikel ini memberikan contoh cara bekerja dengan beberapa kelas opsi yang diturunkan dari [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/).

Contoh kode berikut menunjukkan cara mengatur opsi penyimpanan sebelum menyimpan dokumen ke dalam HTML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportRoundtripInformation.py" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file template contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Artikel ini menjelaskan beberapa properti yang dapat Anda kontrol saat menyimpan dokumen.

## Enkripsi Dokumen Dengan Kata Sandi

Gunakan properti **kata sandi** untuk mendapatkan atau mengatur kata sandi untuk dokumen terenkripsi. Gunakan properti **kata sandi** dari kelas terkait untuk bekerja dengan format dokumen yang dipilih.

Misalnya, saat menyimpan dokumen ke format DOC atau DOT, gunakan properti [password](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/password/) dari kelas [DocSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/).

Contoh kode berikut menunjukkan cara mengatur kata sandi untuk mengenkripsi dokumen menggunakan metode enkripsi RC4:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_doc_save_options-EncryptDocumentWithPassword.py" >}}

Saat menyimpan dokumen ke format [password](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/password/), gunakan properti [password](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/password/) dari kelas [OoxmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/).

Contoh kode berikut menunjukkan cara memuat dan menyimpan Docx yang dienkripsi dengan kata sandi:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_ooxml_save_options-EncryptDocxWithPassword.py" >}}

Tidak semua format mendukung enkripsi dan penggunaan properti **kata sandi**.

## Perbarui Waktu Pembuatan Dokumen

Aspose.Words menyediakan kemampuan untuk menggunakan properti [created_time](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/created_time/) untuk mendapatkan atau mengatur tanggal pembuatan dokumen dalam UTC. Anda juga dapat memperbarui nilai ini sebelum menyimpan menggunakan opsi [update_created_time_property](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/update_created_time_property/).

Contoh kode berikut menunjukkan cara memperbarui waktu pembuatan dokumen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-UpdateIfLastPrinted.py" >}}

## Perbarui Properti Terakhir yang Disimpan

Aspose.Words menyediakan kemampuan untuk menggunakan properti [update_last_saved_time_property](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/update_last_saved_time_property/) untuk mendapatkan atau menetapkan nilai yang menentukan apakah properti [last_saved_time](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/last_saved_time/) diperbarui sebelum disimpan.

Contoh kode berikut menunjukkan cara mengatur properti ini dan menyimpan dokumen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_ooxml_save_options-UpdateLastSavedTimeProperty.py" >}}

## Simpan Gambar Hitam Putih dengan Format Satu Bit Per Piksel

Untuk mengontrol opsi penyimpanan gambar, kelas [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) digunakan. Misalnya, Anda dapat menggunakan properti [pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/) untuk mengatur format piksel untuk gambar yang dihasilkan. Harap dicatat bahwa format piksel gambar keluaran mungkin berbeda dari nilai yang ditetapkan karena pekerjaan skia.

Contoh kode berikut menunjukkan cara menyimpan gambar hitam putih dengan format satu bit per piksel:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-Format1BppIndexed.py" >}}
