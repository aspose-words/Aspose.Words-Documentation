---
title: Membagi Dokumen dalam Java
second_title: Aspose.Words Sitemap Java
articleTitle: Sitemap
linktitle: Sitemap
description: "Aspose.Words Sitemap Java menyediakan Anda dengan cara yang efisien untuk membagi satu dokumen ke beberapa dokumen dengan judul atau bagian, serta halaman atau rentang halaman."
type: docs
weight: 90
url: /id/java/split-a-document/
timestamp: 2024-01-27-14-07-04
---

*Splitting* atau * pasang dokumen * adalah proses memecah dokumen besar menjadi sejumlah besar file yang lebih kecil. Ada berbagai alasan untuk membagi file. Misalnya, Anda hanya perlu beberapa halaman dari dokumen tertentu dan bukan keseluruhannya. Atau untuk alasan privasi, Anda ingin berbagi hanya beberapa bagian dokumen dengan orang lain. Dengan fitur splitting, Anda hanya bisa mendapatkan bagian yang diperlukan dari dokumen dan melakukan tindakan yang diperlukan dengan mereka, misalnya, untuk menandai, menyimpan, atau mengirim.

Aspose.Words menyediakan Anda dengan cara yang efisien untuk membagi satu dokumen ke beberapa dokumen dengan judul atau bagian. Anda juga dapat membagi dokumen dengan halaman atau dengan rentang halaman. Kedua opsi splitting akan dijelaskan dalam artikel ini.

Untuk membagi dokumen ke file yang lebih kecil menggunakan Aspose.Words, Anda perlu mengikuti langkah-langkah ini:

Sitemap Mengisi dokumen dalam format yang didukung.
Sitemap Terpisah dokumen.
Sitemap Simpan dokumen output.

Setelah Anda membagi dokumen, Anda akan dapat membuka semua dokumen output yang akan dimulai dengan halaman yang diperlukan, teks, dll.

{{% alert color="primary" %}}

**Coba online**

Anda dapat mencoba fungsi ini dengan kami [Pemutus dokumen online](https://products.aspose.app/words/splitter)Sitemap

{{% /alert %}}

## Membagi Dokumen Menggunakan Criteria Berbeda {#split-a-document-using-different-criteria}

Aspose.Words memungkinkan Anda untuk membagi dokumen EPUB atau HTML menjadi bab sesuai dengan berbagai kriteria. Dalam proses, gaya dan tata letak dokumen sumber dipertahankan untuk dokumen output.

Anda dapat menentukan kriteria menggunakan [DocumentSplitCriteria](https://reference.aspose.com/words/java/com.aspose.words/documentsplitcriteria/) Sitemap Jadi Anda dapat membagi dokumen menjadi bab menggunakan salah satu kriteria berikut atau menggabungkan lebih dari satu kriteria bersama:

- paragraf kepala,
- bagian istirahat,
- istirahat kolom,
- Sitemap

Saat menyimpan output ke HTML, Aspose.Words Simpan setiap bab individu sebagai file HTML terpisah. Sebagai hasilnya, dokumen akan dibagi menjadi beberapa file HTML. Saat menyimpan output ke EPUB, Aspose.Words menyimpan hasilnya dalam satu file EPUB terlepas dari `DocumentSplitCriteria` nilai yang Anda gunakan. Jadi, menggunakan DokumenSplitCriteria untuk dokumen EPUB hanya mempengaruhi penampilan konten mereka dalam aplikasi pembaca: konten akan dibagi menjadi bab dan dokumen tidak akan lagi muncul terus menerus.

{{% alert color="primary" %}}

Anda tidak dapat membagi dokumen menggunakan Meme it [DocumentSplitCriteria](https://reference.aspose.com/words/java/com.aspose.words/documentsplitcriteria/) properti saat menyimpan ke format MHTML.

{{% /alert %}}

Di bagian ini, kami mempertimbangkan hanya beberapa kriteria split yang mungkin.

### Membagi Dokumen dengan Headings {#split-a-document-by-headings}

Untuk membagi dokumen menjadi bab dengan judul, gunakan **HeadingParagraph** nilai **DocumentSplitCriteria** Login

Jika Anda perlu membagi dokumen dengan tingkat paragraf kepala tertentu, seperti judul 1, 2, dan 3, gunakan juga [DocumentSplitHeadingLevel](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getDocumentSplitHeadingLevel) Login Output akan dibagi oleh paragraf yang diformat dengan tingkat judul yang ditentukan.

Contoh kode berikut menunjukkan bagaimana membagi dokumen menjadi bagian yang lebih kecil dengan judul:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-SplitDocumentByHeadingsHTML.java" >}}

Harap dicatat bahwa untuk kriteria ini, Aspose.Words hanya mendukung format HTML ketika membelah.

Ketika menyimpan ke EPUB, dokumen tidak dibagi menjadi beberapa file, dan hanya akan ada satu file output.

### Membagi Dokumen dengan Bagian {#split-a-document-by-sections}

Aspose.Words juga memungkinkan Anda untuk menggunakan bagian istirahat untuk membagi dokumen dan menyimpannya ke HTML. Untuk tujuan ini, gunakan **SectionBreak** Sitemap **DocumentSplitCriteria**Sitemap

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-SplitDocumentBySectionsHTML.java" >}}

Ada cara lain untuk membagi dokumen sumber menjadi beberapa dokumen output, dan Anda dapat memilih format output yang didukung oleh Aspose.WordsSitemap

Contoh kode berikut menunjukkan bagaimana membagi dokumen menjadi bagian yang lebih kecil dengan istirahat bagian (tanpa menggunakan `DocumentSplitCriteria` Login

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentBySections.java" >}}

## Sitemap {#splitting-by-pages}

Anda juga dapat membagi halaman dokumen dengan halaman, dengan rentang halaman, atau mulai dengan nomor halaman yang ditentukan. Dalam kasus seperti itu [ExtractPages](https://reference.aspose.com/words/java/com.aspose.words/document/#extractPages-int-int) metode dapat melakukan pekerjaan.

Bagian ini menjelaskan beberapa kasus penggunaan dokumen membagi dengan menggunakan halaman [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) kelas dan **ExtractPages** Login

{{% alert color="primary" %}}

Anda dapat menggunakan [Login](/words/id/java/supported-document-formats/)Sitemap

{{% /alert %}}

{{% alert color="primary" %}}

Karena banyak nuansa muncul sambil mengurangi jumlah halaman, pertandingan penuh dengan Microsoft Word tata letak adalah tugas yang cukup rumit. Oleh karena itu, tergantung pada kompleksitas dokumen, mungkin ada perbedaan sedikit dalam tata letak dokumen yang dihasilkan dari dokumen asli.

{{% /alert %}}

### Membagi Halaman Dokumen dengan Halaman {#split-a-document-page-by-page}

Aspose.Words memungkinkan Anda untuk membagi halaman dokumen multi-halaman dengan halaman.

Contoh kode berikut menunjukkan bagaimana membagi dokumen dan menyimpan setiap halaman sebagai dokumen terpisah:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentPageByPage.java" >}}

### Membagi Dokumen dengan Rentang Halaman {#split-a-document-by-page-ranges}

Aspose.Words memungkinkan membagi dokumen multi-halaman dengan rentang halaman. Anda dapat membagi satu file ke beberapa file dengan berbagai rentang halaman atau hanya pilih satu rentang dan hanya menyimpan bagian dokumen sumber ini. Perhatikan bahwa Anda dapat memilih rentang halaman sesuai dengan jumlah halaman maksimum dan minimum dokumen.

Contoh kode berikut menunjukkan bagaimana membagi dokumen menjadi bagian yang lebih kecil dengan rentang halaman dengan indeks awal dan akhir tertentu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentByPageRange.java" >}}

## Opsi Callback untuk Simpan Dokumen {#callback-option-for-saving-a-document}

Anda dapat menggunakan [DocumentPartSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getDocumentPartSavingCallback) properti untuk mengontrol bagaimana Aspose.Words menyimpan bagian dokumen saat dokumen ini diekspor ke format HTML. Properti ini memungkinkan Anda untuk mengubah nama file output atau bahkan untuk mengarahkan mereka ke aliran kustom.

Harap dicatat bahwa callback ini tidak berguna ketika menyimpan ke EPUB karena semua bagian output harus disimpan ke dalam wadah tunggal - file .epub. Jadi, aliran redirection tidak didukung, dan efek renaming tidak terlihat karena file berganti nama di dalam wadah.

## Merge Dokumen Split dengan Dokumen Lain {#merge-the-split-document-with-another-file}

Aspose.Words memungkinkan Anda untuk menggabungkan dokumen split output dengan dokumen lain untuk membentuk dokumen baru. Ini dapat disebut dokumen merging.

Contoh kode berikut menunjukkan cara menggabungkan dokumen split dengan dokumen lain:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-MergeDocuments.java" >}}
