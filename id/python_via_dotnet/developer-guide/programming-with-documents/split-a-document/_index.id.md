---
title: Pisahkan Dokumen di Python
second_title: Aspose.Words untuk Python via .NET
articleTitle: Pisahkan Dokumen
linktitle: Pisahkan Dokumen
description: "Pisahkan dokumen menjadi beberapa file menggunakan Python. Gunakan fitur pemisahan untuk membagi dokumen secara efektif berdasarkan judul atau bagian, serta berdasarkan halaman atau rentang halaman."
type: docs
weight: 90
url: /id/python-net/split-a-document/
---

*Splitting* atau *membagi dokumen* adalah proses memecah dokumen besar menjadi beberapa file kecil. Ada berbagai alasan untuk membagi file. Misalnya, Anda hanya memerlukan beberapa halaman dari dokumen tertentu dan tidak keseluruhannya. Atau karena alasan privasi, Anda hanya ingin berbagi beberapa bagian dokumen dengan orang lain. Dengan fitur pemisahan, Anda hanya bisa mendapatkan bagian dokumen yang diperlukan dan melakukan tindakan yang diperlukan dengannya, misalnya, menandai, menyimpan, atau mengirim.

Aspose.Words memberi Anda cara efisien untuk membagi satu dokumen menjadi beberapa dokumen berdasarkan judul atau bagian. Anda juga dapat membagi dokumen berdasarkan halaman atau rentang halaman. Kedua opsi pemisahan akan dijelaskan dalam artikel ini.

Untuk membagi dokumen menjadi file yang lebih kecil menggunakan Aspose.Words, Anda perlu mengikuti langkah-langkah berikut:

1. Muat dokumen dalam format apa pun yang didukung.
1. Pisahkan dokumen.
1. Simpan dokumen keluaran.

Setelah Anda membagi dokumen, Anda akan dapat membuka semua dokumen keluaran yang dimulai dengan halaman, teks, dll yang diperlukan.

{{% alert color="primary" %}}

**Coba daring**

Anda dapat mencoba fungsi ini dengan [Pemisah dokumen online gratis](https://products.aspose.app/words/splitter) kami.

{{% /alert %}}

## Pisahkan Dokumen Menggunakan {#split-a-document-using-different-criteria} Kriteria Berbeda

Aspose.Words memungkinkan Anda membagi dokumen EPUB atau HTML menjadi beberapa bab sesuai dengan berbagai kriteria. Dalam prosesnya, gaya dan tata letak dokumen sumber dipertahankan untuk dokumen keluaran.

Anda dapat menentukan kriteria menggunakan enumerasi [DocumentSplitCriteria](https://reference.aspose.com/words/python-net/aspose.words.saving/documentsplitcriteria/). Jadi, Anda dapat membagi dokumen menjadi beberapa bab menggunakan salah satu kriteria berikut atau menggabungkan lebih dari satu kriteria menjadi satu:

- judul paragraf,
- bagian istirahat,
- istirahat kolom,
- jeda halaman.

Saat menyimpan output ke HTML, Aspose.Words menyimpan setiap bab sebagai file HTML terpisah. Akibatnya, dokumen tersebut akan dipecah menjadi beberapa file HTML. Saat menyimpan keluaran ke EPUB, Aspose.Words menyimpan hasilnya dalam satu file EPUB terlepas dari nilai [DocumentSplitCriteria](https://reference.aspose.com/words/python-net/aspose.words.saving/documentsplitcriteria/) yang Anda gunakan. Jadi, penggunaan [DocumentSplitCriteria](https://reference.aspose.com/words/python-net/aspose.words.saving/documentsplitcriteria/) untuk dokumen EPUB hanya memengaruhi tampilan kontennya di aplikasi pembaca: konten akan dibagi menjadi beberapa bab dan dokumen tidak lagi tampak bersambung.

{{% alert color="primary" %}}

Anda tidak dapat membagi dokumen menggunakan properti [document_split_criteria](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/document_split_criteria/) saat menyimpan ke format MHTML.

{{% /alert %}}

Pada bagian ini, kami hanya mempertimbangkan beberapa kemungkinan kriteria pemisahan.

### Pisahkan Dokumen berdasarkan Judul {#split-a-document-by-headings}

Untuk membagi dokumen menjadi beberapa bab berdasarkan judul, gunakan nilai [HEADING_PARAGRAPH](https://reference.aspose.com/words/python-net/aspose.words.saving/documentsplitcriteria/#HEADING_PARAGRAPH) dari properti [document_split_criteria](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/document_split_criteria/).

Jika Anda perlu membagi dokumen berdasarkan tingkat paragraf judul tertentu, seperti judul 1, 2, dan 3, gunakan juga properti [document_split_heading_level](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/document_split_heading_level/). Outputnya akan dibagi berdasarkan paragraf yang diformat dengan level heading yang ditentukan.

Contoh kode berikut menunjukkan cara membagi dokumen menjadi bagian-bagian yang lebih kecil dengan judul:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-SplitDocumentByHeadingsHtml.py" >}}

Perlu diketahui bahwa untuk kriteria ini, Aspose.Words hanya mendukung penyimpanan ke format HTML saat dipecah.

Saat menyimpan ke EPUB, dokumen tidak dipecah menjadi beberapa file, dan hanya akan ada satu file keluaran.

### Pisahkan Dokumen berdasarkan Bagian {#split-a-document-by-sections}

Aspose.Words juga memungkinkan Anda menggunakan hentian bagian untuk memisahkan dokumen dan menyimpannya ke HTML. Untuk tujuan ini, gunakan [SECTION_BREAK](https://reference.aspose.com/words/python-net/aspose.words.saving/documentsplitcriteria/#section_break) sebagai [document_split_criteria](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/document_split_criteria/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-SplitDocumentBySectionsHtml.py" >}}

Ada cara lain untuk membagi dokumen sumber menjadi beberapa dokumen keluaran, dan Anda dapat memilih format keluaran apa pun yang didukung oleh Aspose.Words.

Contoh kode berikut menunjukkan cara membagi dokumen menjadi bagian-bagian yang lebih kecil berdasarkan hentian bagian (tanpa menggunakan properti [document_split_criteria](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/document_split_criteria/)):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-SplitDocumentBySections.py" >}}

## Memisahkan berdasarkan Halaman {#splitting-by-pages}

Anda juga dapat membagi dokumen halaman demi halaman, berdasarkan rentang halaman, atau dimulai dengan nomor halaman yang ditentukan. Dalam hal ini metode [extract_pages](https://reference.aspose.com/words/python-net/aspose.words/document/extract_pages/) dapat melakukan pekerjaan tersebut.

Bagian ini menjelaskan beberapa kasus penggunaan pembagian dokumen berdasarkan halaman menggunakan kelas [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) dan metode [extract_pages](https://reference.aspose.com/words/python-net/aspose.words/document/extract_pages/).

{{% alert color="primary" %}}

Anda dapat menggunakan [Format Dokumen yang Didukung](/words/id/python-net/supported-document-formats/) apa pun.

{{% /alert %}}

{{% alert color="primary" %}}

Karena banyaknya nuansa yang muncul saat mengurangi jumlah halaman, pencocokan penuh dengan tata letak Microsoft Word merupakan tugas yang cukup rumit. Oleh karena itu, tergantung pada kompleksitas dokumen, mungkin terdapat sedikit perbedaan pada tata letak dokumen yang dihasilkan dari dokumen aslinya.

{{% /alert %}}

### Pisahkan Halaman Dokumen demi Halaman {#split-a-document-page-by-page}

Aspose.Words memungkinkan Anda membagi dokumen multi-halaman halaman demi halaman.

Contoh kode berikut menunjukkan cara membagi dokumen dan menyimpan setiap halaman sebagai dokumen terpisah:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-SplitDocumentPageByPage.py" >}}

### Pisahkan Dokumen berdasarkan Rentang Halaman {#split-a-document-by-page-ranges}

Aspose.Words memungkinkan pemisahan dokumen multi-halaman berdasarkan rentang halaman. Anda dapat membagi satu file menjadi beberapa file dengan rentang halaman yang berbeda, atau cukup pilih satu rentang dan simpan hanya bagian ini dari dokumen sumber. Perhatikan bahwa Anda dapat memilih rentang halaman berdasarkan nomor halaman maksimum dan minimum suatu dokumen.

Contoh kode berikut menunjukkan cara membagi dokumen menjadi bagian-bagian yang lebih kecil berdasarkan rentang halaman dengan indeks awal dan akhir yang spesifik:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-SplitDocumentByPageRange.py" >}}

## Gabungkan Dokumen Terpisah dengan File {#merge-the-split-document-with-another-file} Lain

Aspose.Words memungkinkan Anda menggabungkan dokumen pemisahan keluaran dengan dokumen lain untuk membentuk dokumen baru. Ini bisa disebut penggabungan dokumen.

Contoh kode berikut menunjukkan cara menggabungkan dokumen terpisah dengan dokumen lain:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-MergeSplitDocuments.py" >}}
