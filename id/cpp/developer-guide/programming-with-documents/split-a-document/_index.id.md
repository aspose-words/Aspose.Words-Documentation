---
title: Membagi Dokumen dalam C++
second_title: Aspose.Words untuk C++
articleTitle: Membagi Dokumen
linktitle: Membagi Dokumen
description: "Membagi dokumen menjadi beberapa file menggunakan C++. Gunakan fitur split untuk membagi dokumen secara efektif berdasarkan judul atau bagian, serta berdasarkan halaman atau rentang halaman."
type: docs
weight: 90
url: /id/cpp/split-a-document/
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

Anda dapat mencoba fungsi ini dengan kami [Pembagi dokumen online gratis](https://products.aspose.app/words/splitter).

{{% /alert %}}

## Membagi Dokumen Menggunakan Kriteria Berbeda {#split-a-document-using-different-criteria}

Aspose.Words memungkinkan Anda membagi dokumen EPUB atau HTML menjadi beberapa bab menurut berbagai kriteria. Dalam prosesnya, gaya dan tata letak dokumen sumber dipertahankan untuk dokumen keluaran.

Anda dapat menentukan kriteria menggunakan pencacahan [DocumentSplitCriteria](https://reference.aspose.com/words/cpp/aspose.words.saving/documentsplitcriteria/). Jadi, Anda dapat membagi dokumen menjadi beberapa bab menggunakan salah satu kriteria berikut atau menggabungkan lebih dari satu kriteria menjadi satu:

- judul paragraf,
- istirahat bagian,
- jeda kolom,
- jeda halaman.

Saat menyimpan output ke HTML, Aspose.Words simpan setiap bab sebagai file HTML terpisah. Hasilnya, dokumen akan dipecah menjadi beberapa file HTML. Saat menyimpan output ke EPUB, Aspose.Words simpan hasilnya dalam satu file EPUB terlepas dari nilai `DocumentSplitCriteria` yang Anda gunakan. Jadi, menggunakan dokumen DocumentSplitCriteria untuk EPUB hanya memengaruhi tampilan kontennya di aplikasi pembaca: konten akan dibagi menjadi beberapa bab dan dokumen tidak lagi tampak berkelanjutan.

{{% alert color="primary" %}}

Anda tidak dapat membagi dokumen menggunakan properti [DocumentSplitCriteria](https://reference.aspose.com/words/cpp/aspose.words.saving/documentsplitcriteria/) saat menyimpan ke format MHTML.

{{% /alert %}}

Di bagian ini, kami hanya mempertimbangkan beberapa kemungkinan kriteria pemisahan.

### Membagi Dokumen menurut Bagian {#split-a-document-by-sections}

Aspose.Words juga memungkinkan Anda menggunakan pemisah bagian untuk membagi dokumen dan menyimpannya ke HTML. Untuk tujuan ini, gunakan **SectionBreak** sebagai **DocumentSplitCriteria**:

Contoh kode berikut menunjukkan cara membagi dokumen menjadi beberapa bagian yang lebih kecil dengan pemisah bagian (tanpa menggunakan properti `DocumentSplitCriteria`):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-SplitDocument-SplitDocumentBySections.cpp" >}}

## Dibagi berdasarkan Halaman {#splitting-by-pages}

Anda juga dapat membagi halaman dokumen berdasarkan halaman, berdasarkan rentang halaman, atau dimulai dengan nomor halaman yang ditentukan. Dalam kasus seperti itu, metode [ExtractPages](https://reference.aspose.com/words/cpp/aspose.words/document/extractpages/) dapat melakukan tugasnya.

Bagian ini menjelaskan beberapa kasus penggunaan untuk membagi dokumen dengan paging menggunakan kelas [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) dan metode **ExtractPages**.

{{% alert color="primary" %}}

Anda dapat menggunakan apa saja [format keluaran yang didukung oleh Aspose.Words](/words/cpp/supported-document-formats/).

{{% /alert %}}

{{% alert color="primary" %}}

Karena banyaknya nuansa yang muncul sekaligus mengurangi jumlah halaman, pencocokan penuh dengan tata letak Microsoft Word merupakan tugas yang cukup rumit. Oleh karena itu, tergantung pada kompleksitas dokumen, mungkin ada sedikit perbedaan dalam tata letak dokumen yang dihasilkan dari dokumen asli.

{{% /alert %}}

### Membagi Halaman Dokumen dengan Halaman {#split-a-document-page-by-page}

Aspose.Words memungkinkan Anda membagi dokumen multi-halaman halaman demi halaman.

Contoh kode berikut menunjukkan cara membagi dokumen dan menyimpan setiap halaman sebagai dokumen terpisah:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Split Documents-Split document-SplitDocumentPageByPage.h" >}}

### Membagi Dokumen berdasarkan Rentang Halaman {#split-a-document-by-page-ranges}

Aspose.Words memungkinkan pemisahan dokumen multi-halaman berdasarkan rentang halaman. Anda dapat membagi satu file menjadi beberapa file dengan rentang halaman yang berbeda atau cukup pilih satu rentang dan simpan hanya bagian dokumen sumber ini. Perhatikan bahwa Anda dapat memilih rentang halaman sesuai dengan jumlah halaman maksimum dan minimum dokumen.

Contoh kode berikut menunjukkan cara membagi dokumen menjadi bagian-bagian yang lebih kecil berdasarkan rentang halaman dengan indeks awal dan akhir tertentu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Split Documents-Split document-SplitDocumentByPageRange.h" >}}

## Menggabungkan Dokumen Terpisah dengan Dokumen Lain {#merge-the-split-document-with-another-file}

Aspose.Words memungkinkan Anda menggabungkan dokumen split keluaran dengan dokumen lain untuk membentuk dokumen baru. Ini bisa disebut penggabungan dokumen.

Contoh kode berikut menunjukkan cara menggabungkan dokumen terpisah dengan dokumen lain:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-SplitDocument-MergeSplitDocuments.cpp" >}}
