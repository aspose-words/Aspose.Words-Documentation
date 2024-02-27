---
title: Simpan Dokumen di Python
second_title: Aspose.Words untuk Python via .NET
articleTitle: Simpan Dokumen
linktitle: Simpan Dokumen
type: docs
description: "Simpan dokumen dalam format apa pun yang didukung menggunakan Python."
keywords: "save a document python, save a document to file python, save a document to stream python, save a document Aspose python, save formats supported by Aspose.Words python"
weight: 20
url: /id/python-net/save-a-document/
---

Sebagian besar tugas yang perlu Anda lakukan dengan Aspose.Words melibatkan penyimpanan dokumen. Untuk menyimpan dokumen Aspose.Words menyediakan metode [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) dari kelas [Document](https://reference.aspose.com/words/python-net/aspose.words/document/). Ada kelebihan yang memungkinkan penyimpanan dokumen ke file atau aliran. Dokumen dapat disimpan dalam format penyimpanan apa pun yang didukung oleh Aspose.Words. Untuk daftar semua format penyimpanan yang didukung, lihat enumerasi [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/).

## Simpan Dokumen ke File {#save-a-document-to-a-file}

Cukup gunakan metode [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) dengan nama file. Aspose.Words akan menentukan format penyimpanan dari ekstensi file yang Anda tentukan.

Contoh kode berikut menunjukkan cara memuat dan menyimpan dokumen ke file:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-LoadAndSave.py" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file template contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

## Simpan Dokumen ke Stream {#save-a-document-to-a-stream}

Meneruskan objek aliran ke metode [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/). Penting untuk menentukan format penyimpanan secara eksplisit saat menyimpan ke aliran.

Contoh kode berikut menunjukkan cara memuat dan menyimpan dokumen ke aliran:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-LoadAndSaveToStream.py" >}}

Anda dapat mengunduh file template contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

## Simpan Dokumen ke PCL {#save-a-document-to-pcl}

Aspose.Words mendukung penyimpanan dokumen ke PCL (Printer Command Language). Aspose.Words dapat menyimpan dokumen ke dalam format PCL 6 (PCL 6 Enhanced atau PCL XL). Kelas [PclSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pclsaveoptions/) dapat digunakan untuk menentukan opsi tambahan saat menyimpan dokumen ke dalam format PCL.

Contoh kode berikut menunjukkan cara menyimpan dokumen ke PCL menggunakan opsi penyimpanan:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pcl_save_options-RasterizeTransformedElements.py" >}}

