---
title: Menyisipkan dan Menambahkan Dokumen dalam Java
second_title: Aspose.Words untuk Java
articleTitle: Menyisipkan dan Menambahkan Dokumen
linktitle: Menyisipkan dan Menambahkan Dokumen
description: "Menggabungkan dokumen menjadi satu: menyisipkan atau menambahkan dokumen ke dokumen baru atau yang sudah ada menggunakan temukan dan ganti, gabungkan bidang, bookmark, atau cukup di akhir dokumen dengan Java."
type: docs
weight: 80
url: /id/java/insert-and-append-documents/
timestamp: 2024-01-27-14-07-04
---

Terkadang diperlukan untuk menggabungkan beberapa dokumen menjadi satu. Anda dapat melakukannya secara manual atau menggunakan fitur Aspose.Words insert atau append.

Operasi penyisipan memungkinkan Anda memasukkan konten dokumen yang dibuat sebelumnya ke dalam dokumen baru atau yang sudah ada.

Pada gilirannya, fitur append memungkinkan Anda menambahkan dokumen hanya di akhir dokumen lain.

Artikel ini menjelaskan cara menyisipkan atau menambahkan dokumen ke dokumen lain dengan berbagai cara dan menjelaskan properti umum yang dapat Anda terapkan saat menyisipkan atau menambahkan dokumen.

## Menyisipkan Dokumen

Seperti disebutkan di atas, dalam Aspose.Words sebuah dokumen direpresentasikan sebagai pohon simpul, dan operasi memasukkan satu dokumen ke dokumen lainnya adalah menyalin simpul dari pohon dokumen pertama ke pohon dokumen kedua.

Anda dapat menyisipkan dokumen di berbagai lokasi dengan berbagai cara. Misalnya, Anda dapat menyisipkan dokumen melalui operasi replace, bidang gabungan selama operasi penggabungan, atau melalui bookmark.

Anda juga dapat menggunakan metode [InsertDocument](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocument-com.aspose.words.Document-int) atau [InsertDocumentInline](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocumentInline-com.aspose.words.Document-int-com.aspose.words.ImportFormatOptions), yang mirip dengan menyisipkan dokumen di Microsoft Word, untuk menyisipkan seluruh dokumen pada posisi kursor saat ini tanpa pengimporan sebelumnya.

Contoh kode berikut menunjukkan cara menyisipkan dokumen menggunakan metode **InsertDocument**:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-with-builder.java" >}}

Contoh kode berikut menunjukkan cara menyisipkan dokumen menggunakan metode **InsertDocumentInline**:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-inline-with-builder.java" >}}

Subbagian berikut menjelaskan opsi di mana Anda dapat menyisipkan satu dokumen ke dokumen lainnya.

### Sisipkan Dokumen Selama Operasi Temukan dan Ganti {#insert-a-document-during-find-and-replace-operation}

Anda dapat menyisipkan dokumen saat melakukan operasi temukan dan ganti. Misalnya, dokumen dapat berisi paragraf dengan teks [INTRODUCTION] dan [CONCLUSION]. Namun di dokumen akhir, Anda perlu mengganti paragraf tersebut dengan konten yang diperoleh dari dokumen eksternal lain. Untuk mencapainya, Anda perlu membuat penangan untuk acara replace.

Contoh kode berikut menunjukkan cara membuat pengendali untuk peristiwa penggantian untuk digunakan nanti dalam proses penyisipan:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-replace-handler.java" >}}

Contoh kode berikut menunjukkan caranya menyisipkan konten dari satu dokumen ke dokumen lainnya selama operasi temukan dan ganti:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-replace.java" >}}

### Menyisipkan Dokumen Selama Operasi Mail Merge {#insert-a-document-during-mail-merge-operation}

Anda dapat menyisipkan dokumen ke dalam bidang gabungan selama operasi Mail Merge. Misalnya, templat Mail Merge dapat berisi bidang gabungan seperti [Ringkasan]. Namun di dokumen akhir, Anda perlu menyisipkan konten yang diperoleh dari dokumen eksternal lain ke dalam bidang penggabungan ini. Untuk mencapainya, Anda perlu membuat pengendali untuk acara penggabungan.

Contoh kode berikut menunjukkan cara membuat pengendali untuk peristiwa penggabungan untuk digunakan nanti dalam proses penyisipan:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-mail-merge-handler.java" >}}

Contoh kode berikut menunjukkan cara menyisipkan dokumen ke dalam bidang gabungan menggunakan penangan yang dibuat:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-mail-merge.java" >}}

### Sisipkan Dokumen di Bookmark

Anda dapat mengimpor file teks ke dalam dokumen dan menyisipkannya tepat setelah penanda yang telah Anda tentukan dalam dokumen. Untuk melakukannya, buat paragraf yang ditandai di tempat Anda ingin menyisipkan dokumen.

Contoh pengkodean berikut menunjukkan cara menyisipkan konten satu dokumen ke bookmark di dokumen lain:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-bookmark.java" >}}

{{% alert color="primary" %}}

Perhatikan bahwa penanda tidak boleh menyertakan beberapa paragraf atau teks yang Anda inginkan agar muncul di dokumen hasil akhir Anda.

{{% /alert %}}

## Tambahkan Dokumen

Anda mungkin memiliki kasus penggunaan di mana Anda perlu menyertakan halaman tambahan dari dokumen hingga akhir dokumen yang ada. Untuk melakukan ini, Anda hanya perlu memanggil metode [AppendDocument](https://reference.aspose.com/words/java/com.aspose.words/document/#appendDocument-com.aspose.words.Document-int) untuk menambahkan dokumen ke akhir dokumen lainnya.

{{% alert color="primary" %}}

Perhatikan bahwa [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/document/#appendChild-com.aspose.words.Node) adalah metode tingkat simpul dalam dokumen. Misalnya, Anda dapat membuat paragraf, mengatur properti pemformatan, lalu menambahkannya sebagai turunan ke isi menggunakan metode **AppendChild**.

{{% /alert %}}

Contoh kode berikut menunjukkan cara menambahkan dokumen ke akhir dokumen lain:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "keep-source-formatting.java" >}}

## Impor dan Sisipkan Simpul Secara Manual {#import-and-insert-nodes-manually}

Aspose.Words memungkinkan Anda menyisipkan dan menambahkan dokumen secara otomatis tanpa persyaratan pengimporan sebelumnya. Namun, jika Anda perlu menyisipkan atau menambahkan simpul tertentu dari dokumen Anda, seperti bagian atau paragraf, maka pertama-tama Anda perlu mengimpor simpul ini secara manual.

Saat Anda perlu menyisipkan atau menambahkan satu bagian atau paragraf ke bagian lainnya, pada dasarnya Anda perlu mengimpor simpul dari pohon simpul dokumen pertama ke simpul kedua menggunakan metode [ImportNode](https://reference.aspose.com/words/java/com.aspose.words/document/#importNode-com.aspose.words.Node-boolean). Setelah mengimpor node Anda, Anda perlu menggunakan metode [InsertAfter](https://reference.aspose.com/words/java/com.aspose.words/document/#insertBefore-com.aspose.words.Node-com.aspose.words.Node) untuk menyisipkan node baru setelah / sebelum node referensi. Ini memungkinkan Anda untuk menyesuaikan proses penyisipan dengan mengimpor simpul dari dokumen dan memasukkannya pada posisi tertentu.

Anda juga dapat menggunakan metode [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/document/#appendChild-com.aspose.words.Node) untuk menambahkan simpul baru yang ditentukan ke akhir daftar simpul turunan, misalnya, jika Anda ingin menambahkan konten di tingkat paragraf, bukan di tingkat bagian.

Contoh kode berikut menunjukkan cara mengimpor node secara manual dan memasukkannya setelah node tertentu menggunakan metode **InsertAfter**:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-as-nodes.java" >}}

{{% alert color="primary" %}}

Impor membuat simpul baru yang merupakan salinan dari simpul asli dan cocok untuk dimasukkan ke dalam dokumen tujuan.

{{% /alert %}}

Konten diimpor ke dokumen tujuan bagian demi bagian, yang berarti bahwa pengaturan, seperti pengaturan halaman dan header atau footer, dipertahankan selama impor. Penting juga untuk dicatat bahwa Anda dapat menentukan pengaturan pemformatan saat Anda menyisipkan atau menambahkan dokumen untuk menentukan bagaimana dua dokumen digabungkan.

## Properti Umum untuk Menyisipkan dan Menambahkan Dokumen {#common-properties-for-insert-and-append-documents}

Metode [InsertDocument](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocument-com.aspose.words.Document-int) dan [AppendDocument](https://reference.aspose.com/words/java/com.aspose.words/document/#appendDocument-com.aspose.words.Document-int) menerima [ImportFormatMode](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/) dan [ImportFormatOptions](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/) sebagai parameter masukan. **ImportFormatMode** memungkinkan Anda mengontrol bagaimana pemformatan dokumen digabungkan saat Anda mengimpor konten dari satu dokumen ke dokumen lainnya dengan memilih mode format yang berbeda seperti [UseDestinationStyles](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#USE-DESTINATION-STYLES), [KeepSourceFormatting](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#KEEP-SOURCE-FORMATTING), dan [KeepDifferentStyles](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#KEEP-DIFFERENT-STYLES). **ImportFormatOptions** memungkinkan Anda memilih opsi impor yang berbeda seperti [IgnoreHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getIgnoreHeaderFooter), [IgnoreTextBoxes](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getIgnoreTextBoxes), [KeepSourceNumbering](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getKeepSourceNumbering), [MergePastedLists](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getMergePastedLists), dan [SmartStyleBehavior](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getSmartStyleBehavior).

Aspose.Words memungkinkan Anda menyesuaikan visualisasi dokumen yang dihasilkan saat dua dokumen dijumlahkan dalam operasi sisipkan atau tambahkan dengan menggunakan properti [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) dan [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/). Properti **PageSetup** berisi semua atribut bagian seperti [SectionStart](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getSectionStart), [RestartPageNumbering](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getRestartPageNumbering), [PageStartingNumber](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getPageStartingNumber), [Orientation](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOrientation), dan lainnya. Kasus penggunaan yang paling umum adalah menyetel properti **SectionStart** untuk menentukan apakah konten yang ditambahkan akan muncul di halaman yang sama atau dipecah menjadi yang baru.

{{% alert color="primary" %}}

Perhatikan bahwa properti **Section** dan **PageSetup** tidak mengontrol bagaimana dua dokumen disisipkan / ditambahkan bersama-sama. Mereka hanya mengizinkan Anda untuk mengubah tampilan dokumen hasil Anda.

{{% /alert %}}

Contoh kode berikut menunjukkan cara menambahkan satu dokumen ke dokumen lainnya sambil menjaga konten agar tidak terbagi menjadi dua halaman:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "different-page-setup.java" >}}
