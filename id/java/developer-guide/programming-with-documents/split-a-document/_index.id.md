---
title: Membagi Dokumen dalam Java
second_title: Aspose.Words untuk Java
articleTitle: Membagi Dokumen
linktitle: Membagi Dokumen
description: "Aspose.Words untuk Java memberi Anda cara yang efisien untuk membagi satu dokumen menjadi beberapa dokumen berdasarkan judul atau bagian, serta halaman atau rentang halaman."
type: docs
weight: 90
url: /id/java/split-a-document/
timestamp: 2024-01-27-14-07-04
---

*Splitting* atau *split a document* adalah proses memecah dokumen besar menjadi lebih banyak file yang lebih kecil. Ada berbagai alasan untuk membagi file. Misalnya, Anda hanya memerlukan beberapa halaman dari dokumen tertentu dan bukan keseluruhan. Atau karena alasan privasi, Anda hanya ingin membagikan beberapa bagian dokumen dengan orang lain. Dengan fitur pemisahan, Anda hanya bisa mendapatkan bagian dokumen yang diperlukan dan melakukan tindakan yang diperlukan dengannya, misalnya, untuk menandai, menyimpan, atau mengirim.

Aspose.Words memberi Anda cara yang efisien untuk membagi satu dokumen menjadi beberapa dokumen berdasarkan judul atau bagian. Anda juga dapat membagi dokumen berdasarkan halaman atau rentang halaman. Kedua opsi pemisahan akan dijelaskan dalam artikel ini.

Untuk membagi dokumen menjadi file yang lebih kecil menggunakan Aspose.Words, Anda harus mengikuti langkah-langkah berikut:

1. Muat dokumen dalam format apa pun yang didukung.
1. Pisahkan dokumen.
1. Simpan dokumen keluaran.

Setelah Anda membagi dokumen, Anda akan dapat membuka semua dokumen keluaran yang akan dimulai dengan halaman, teks, dll. yang diperlukan.

{{% alert color="primary" %}}

**Coba online**

Anda dapat mencoba fungsi ini dengan kami [Berbagi dokumen online gratis](https://products.aspose.app/words/splitter).

{{% /alert %}}

## Membagi Dokumen Menggunakan Kriteria Berbeda {#split-a-document-using-different-criteria}

Aspose.Words memungkinkan Anda membagi dokumen EPUB atau HTML menjadi beberapa bab menurut berbagai kriteria. Dalam prosesnya, gaya dan tata letak dokumen sumber dipertahankan untuk dokumen keluaran.

Anda dapat menentukan kriteria menggunakan pencacahan [DocumentSplitCriteria](https://reference.aspose.com/words/java/com.aspose.words/documentsplitcriteria/). Jadi, Anda dapat membagi dokumen menjadi beberapa bab menggunakan salah satu kriteria berikut atau menggabungkan lebih dari satu kriteria menjadi satu:

- judul paragraf,
- istirahat bagian,
- jeda kolom,
- jeda halaman.

Saat menyimpan output ke HTML, Aspose.Words simpan setiap bab sebagai file HTML terpisah. Hasilnya, dokumen akan dipecah menjadi beberapa file HTML. Saat menyimpan output ke EPUB, Aspose.Words simpan hasilnya dalam satu file EPUB terlepas dari nilai `DocumentSplitCriteria` yang Anda gunakan. Jadi, menggunakan dokumen DocumentSplitCriteria untuk EPUB hanya memengaruhi tampilan kontennya di aplikasi pembaca: konten akan dibagi menjadi beberapa bab dan dokumen tidak lagi tampak berkelanjutan.

{{% alert color="primary" %}}

Anda tidak dapat membagi dokumen menggunakan properti [DocumentSplitCriteria](https://reference.aspose.com/words/java/com.aspose.words/documentsplitcriteria/) saat menyimpan ke format MHTML.

{{% /alert %}}

Di bagian ini, kami hanya mempertimbangkan beberapa kemungkinan kriteria pemisahan.

### Membagi Dokumen dengan Judul {#split-a-document-by-headings}

Untuk membagi dokumen menjadi beberapa bab berdasarkan judul, gunakan nilai **HeadingParagraph** dari properti **DocumentSplitCriteria**.

Jika Anda perlu membagi dokumen dengan tingkat paragraf judul tertentu, seperti judul 1, 2, dan 3, gunakan juga properti [DocumentSplitHeadingLevel](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getDocumentSplitHeadingLevel). Output akan dibagi dengan paragraf yang diformat dengan level heading yang ditentukan.

Contoh kode berikut menunjukkan cara membagi dokumen menjadi bagian-bagian yang lebih kecil dengan judul:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-SplitDocumentByHeadingsHTML.java" >}}

Harap perhatikan bahwa untuk kriteria ini, Aspose.Words hanya mendukung penyimpanan ke format HTML saat pemisahan.

Saat menyimpan ke EPUB, dokumen tidak dipecah menjadi beberapa file, dan hanya akan ada satu file keluaran.

### Membagi Dokumen menurut Bagian {#split-a-document-by-sections}

Aspose.Words juga memungkinkan Anda menggunakan pemisah bagian untuk membagi dokumen dan menyimpannya ke HTML. Untuk tujuan ini, gunakan **SectionBreak** sebagai **DocumentSplitCriteria**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-SplitDocumentBySectionsHTML.java" >}}

Ada cara lain untuk membagi dokumen sumber menjadi beberapa dokumen keluaran, dan Anda dapat memilih format keluaran apa pun yang didukung oleh Aspose.Words.

Contoh kode berikut menunjukkan cara membagi dokumen menjadi beberapa bagian yang lebih kecil dengan pemisah bagian (tanpa menggunakan properti `DocumentSplitCriteria`):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentBySections.java" >}}

## Dibagi berdasarkan Halaman {#splitting-by-pages}

Anda juga dapat membagi halaman dokumen berdasarkan halaman, berdasarkan rentang halaman, atau dimulai dengan nomor halaman yang ditentukan. Dalam kasus seperti itu, metode [ExtractPages](https://reference.aspose.com/words/java/com.aspose.words/document/#extractPages-int-int) dapat melakukan tugasnya.

Bagian ini menjelaskan beberapa kasus penggunaan untuk membagi dokumen dengan paging menggunakan kelas [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) dan metode **ExtractPages**.

{{% alert color="primary" %}}

Anda dapat menggunakan apa saja [format keluaran yang dihasilkan oleh Aspose.Words](/words/java/supported-document-formats/).

{{% /alert %}}

{{% alert color="primary" %}}

Karena banyaknya nuansa yang muncul sekaligus mengurangi jumlah halaman, pencocokan penuh dengan tata letak Microsoft Word merupakan tugas yang cukup rumit. Oleh karena itu, tergantung pada kompleksitas dokumen, mungkin ada sedikit perbedaan dalam tata letak dokumen yang dihasilkan dari dokumen asli.

{{% /alert %}}

### Membagi Halaman Dokumen dengan Halaman {#split-a-document-page-by-page}

Aspose.Words memungkinkan Anda membagi dokumen multi-halaman halaman demi halaman.

Contoh kode berikut menunjukkan cara membagi dokumen dan menyimpan setiap halaman sebagai dokumen terpisah:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentPageByPage.java" >}}

### Membagi Dokumen berdasarkan Rentang Halaman {#split-a-document-by-page-ranges}

Aspose.Words memungkinkan pemisahan dokumen multi-halaman berdasarkan rentang halaman. Anda dapat membagi satu file menjadi beberapa file dengan rentang halaman yang berbeda atau cukup pilih satu rentang dan simpan hanya bagian dokumen sumber ini. Perhatikan bahwa Anda dapat memilih rentang halaman sesuai dengan jumlah halaman maksimum dan minimum dokumen.

Contoh kode berikut menunjukkan cara membagi dokumen menjadi bagian-bagian yang lebih kecil berdasarkan rentang halaman dengan indeks awal dan akhir tertentu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentByPageRange.java" >}}

## Opsi Panggilan Balik untuk Menyimpan Dokumen {#callback-option-for-saving-a-document}

Anda dapat menggunakan properti [DocumentPartSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getDocumentPartSavingCallback) untuk mengontrol bagaimana Aspose.Words menyimpan bagian dokumen saat dokumen ini diekspor ke format HTML. Properti ini memungkinkan Anda untuk mengganti nama file keluaran atau bahkan mengarahkannya ke aliran khusus.

Harap dicatat bahwa panggilan balik ini tidak berguna saat menyimpan ke EPUB karena semua bagian keluaran harus disimpan ke dalam satu wadah – the .berkas epub. Jadi, pengalihan aliran tidak didukung, dan efek penggantian nama tidak terlihat karena file diganti namanya di dalam wadah.

## Menggabungkan Dokumen Terpisah dengan Dokumen Lain {#merge-the-split-document-with-another-file}

Aspose.Words memungkinkan Anda menggabungkan dokumen split keluaran dengan dokumen lain untuk membentuk dokumen baru. Ini bisa disebut penggabungan dokumen.

Contoh kode berikut menunjukkan cara menggabungkan dokumen terpisah dengan dokumen lain:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-MergeDocuments.java" >}}
