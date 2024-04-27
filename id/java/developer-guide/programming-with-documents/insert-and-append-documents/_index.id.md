---
title: Menyisipkan dan Menerapkan Dokumen di Java
second_title: Aspose.Words Sitemap Java
articleTitle: Menyisipkan dan Menerapkan Dokumen
linktitle: Menyisipkan dan Menerapkan Dokumen
description: "Menggabungkan dokumen menjadi satu: memasukkan atau mengubah dokumen menjadi yang baru atau yang ada menggunakan menemukan dan mengganti, menggabungkan bidang, bookmark, atau hanya pada akhir dokumen di JavaSitemap"
type: docs
weight: 80
url: /id/java/insert-and-append-documents/
---

Terkadang diperlukan untuk menggabungkan beberapa dokumen menjadi satu. Anda dapat melakukan ini secara manual atau Anda dapat menggunakan Aspose.Words fitur insert atau append.

Operasi insert memungkinkan Anda untuk memasukkan konten dokumen yang sebelumnya dibuat menjadi yang baru atau ada.

Pada gilirannya, fitur append memungkinkan Anda untuk menambahkan dokumen hanya pada akhir dokumen lain.

Artikel ini menjelaskan bagaimana cara memasukkan atau mengubah dokumen ke yang lain dengan cara yang berbeda dan menggambarkan sifat umum yang dapat Anda oleskan saat memasukkan atau menyetujui dokumen.

## Masukkan Dokumen

Seperti disebutkan di atas, Aspose.Words dokumen diwakili sebagai pohon node, dan operasi memasukkan satu dokumen ke yang lain adalah menyalin node dari pohon dokumen pertama ke yang kedua.

Anda dapat memasukkan dokumen dalam berbagai lokasi dengan cara yang berbeda. Misalnya, Anda dapat memasukkan dokumen melalui operasi ganti, lapangan merge selama operasi gabungan, atau melalui bookmark.

Anda juga dapat menggunakan [InsertDocument](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocument-com.aspose.words.Document-int) atau [InsertDocumentInline](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocumentInline-com.aspose.words.Document-int-com.aspose.words.ImportFormatOptions) metode, yang mirip dengan memasukkan dokumen dalam Microsoft Word, untuk memasukkan seluruh dokumen pada posisi kursor saat ini tanpa mengimpor sebelumnya.

Contoh kode berikut menunjukkan cara memasukkan dokumen menggunakan **InsertDocument** metode:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-with-builder.java" >}}

Contoh kode berikut menunjukkan cara memasukkan dokumen menggunakan **InsertDocumentInline** metode:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-inline-with-builder.java" >}}

Bagian berikut menjelaskan opsi di mana Anda dapat memasukkan satu dokumen ke dalam dokumen lain.

### Masukkan Dokumen Selama Mencari dan Mengganti Operasi {#insert-a-document-during-find-and-replace-operation}

Anda dapat memasukkan dokumen sambil melakukan pencarian dan mengganti operasi. Sebagai contoh, dokumen dapat berisi paragraf dengan teks [INTRODUCTION] dan [CONCLUSION]. Tetapi dalam dokumen akhir, Anda perlu mengganti paragraf dengan konten yang diperoleh dari dokumen eksternal lainnya. Untuk mencapai itu, Anda harus membuat handler untuk acara ganti.

Contoh kode berikut menunjukkan cara membuat handler untuk penggantian acara untuk menggunakannya nanti dalam proses penyisipan:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-replace-handler.java" >}}

Contoh kode berikut menunjukkan bagaimana memasukkan konten satu dokumen ke yang lain selama menemukan dan mengganti operasi:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-replace.java" >}}

### Masukkan Dokumen Selama Mail Merge Sitemap {#insert-a-document-during-mail-merge-operation}

Anda dapat memasukkan dokumen ke dalam bidang gabungan selama mail merge operasi. Misalnya, contoh mail merge template dapat mengandung lapangan gabungan seperti [Summary]. Tetapi dalam dokumen akhir, Anda perlu memasukkan konten yang diperoleh dari dokumen eksternal lain ke dalam bidang merge ini. Untuk mencapai itu, Anda harus membuat handler untuk acara merge.

Contoh kode berikut menunjukkan cara membuat handler untuk acara merging untuk menggunakannya nanti dalam proses penyisipan:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-mail-merge-handler.java" >}}

Contoh kode berikut menunjukkan cara memasukkan dokumen ke dalam bidang merge menggunakan handler yang dibuat:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-mail-merge.java" >}}

### Masukkan Dokumen di Bookmark

Anda dapat mengimpor file teks ke dokumen dan memasukkannya tepat setelah bookmark yang telah Anda didefinisikan dalam dokumen. Untuk melakukan ini, buat paragraf bookmark di mana Anda ingin dokumen yang dimasukkan.

Contoh pengkodean berikut menunjukkan cara memasukkan konten satu dokumen ke bookmark dalam dokumen lain:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-bookmark.java" >}}

{{% alert color="primary" %}}

Perhatikan bahwa bookmark tidak boleh menutup beberapa ayat atau teks yang ingin Anda tampilkan dalam dokumen hasil akhir Anda.

{{% /alert %}}

## Daftarkan Dokumen

Anda mungkin memiliki kasus penggunaan di mana Anda perlu menyertakan halaman tambahan dari dokumen ke akhir dokumen yang ada. Untuk melakukan ini, Anda hanya perlu memanggil Meme it [AppendDocument](https://reference.aspose.com/words/java/com.aspose.words/document/#appendDocument-com.aspose.words.Document-int) metode untuk menambahkan dokumen ke akhir yang lain.

{{% alert color="primary" %}}

Login [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/document/#appendChild-com.aspose.words.Node) adalah metode level node dalam dokumen. Misalnya, Anda dapat membuat paragraf, mengatur sifat format, dan kemudian mengubahnya sebagai anak ke tubuh menggunakan **AppendChild** Login

{{% /alert %}}

Contoh kode berikut menunjukkan bagaimana untuk mengakhiri dokumen lain:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "keep-source-formatting.java" >}}

## Impor dan Masukkan Nodes secara manual {#import-and-insert-nodes-manually}

Aspose.Words memungkinkan Anda untuk memasukkan dokumen secara otomatis tanpa persyaratan impor sebelumnya. Namun, jika Anda perlu memasukkan atau mengubah node spesifik dokumen Anda, seperti bagian atau paragraf, maka pertama-tama Anda perlu mengimpor node ini secara manual.

Ketika Anda perlu memasukkan atau menaikkan satu bagian atau paragraf ke yang lain, Anda pada dasarnya perlu mengimpor node dari pohon node dokumen pertama ke yang kedua menggunakan yang kedua [ImportNode](https://reference.aspose.com/words/java/com.aspose.words/document/#importNode-com.aspose.words.Node-boolean) Login Setelah mengimpor node, Anda perlu menggunakan [InsertAfter](https://reference.aspose.com/words/java/com.aspose.words/document/#insertBefore-com.aspose.words.Node-com.aspose.words.Node) metode untuk memasukkan node baru setelah / mencegah node referensi. Ini memungkinkan Anda untuk menyesuaikan proses penyisipan dengan mengimpor node dari dokumen dan memasukkannya pada posisi tertentu.

Anda juga dapat menggunakan [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/document/#appendChild-com.aspose.words.Node) metode untuk menambahkan node baru yang ditentukan untuk akhir daftar node anak, misalnya, jika Anda ingin mengisi konten di tingkat paragraf bukan pada tingkat bagian.

Contoh kode berikut menunjukkan cara mengimpor node secara manual dan memasukkannya setelah node tertentu menggunakan **InsertAfter** metode:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-as-nodes.java" >}}

{{% alert color="primary" %}}

Impor menciptakan simpul baru yang merupakan salinan node asli dan cocok untuk penyisipan ke dalam dokumen tujuan.

{{% /alert %}}

Konten diimpor ke bagian dokumen tujuan oleh bagian, yang berarti bahwa pengaturan, seperti pengaturan halaman dan header atau footer, dipertahankan selama impor. Hal ini juga berguna untuk dicatat bahwa Anda dapat menentukan pengaturan format ketika Anda memasukkan atau mengubah dokumen untuk menentukan bagaimana dua dokumen bergabung bersama.

## Properti Umum untuk Menyisipkan dan Menerapkan Dokumen {#common-properties-for-insert-and-append-documents}

Sitemap [InsertDocument](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocument-com.aspose.words.Document-int) Login [AppendDocument](https://reference.aspose.com/words/java/com.aspose.words/document/#appendDocument-com.aspose.words.Document-int) metode menerima [ImportFormatMode](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/) Login [ImportFormatOptions](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/) sebagai parameter input. Login **ImportFormatMode** memungkinkan Anda untuk mengontrol bagaimana format dokumen digabungkan ketika Anda mengimpor konten dari satu dokumen ke dokumen lain dengan memilih mode format yang berbeda seperti [UseDestinationStyles](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#USE-DESTINATION-STYLES), [KeepSourceFormatting](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#KEEP-SOURCE-FORMATTING), Login [KeepDifferentStyles](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#KEEP-DIFFERENT-STYLES)Sitemap Login **ImportFormatOptions** memungkinkan Anda untuk memilih opsi impor yang berbeda seperti [IgnoreHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getIgnoreHeaderFooter), [IgnoreTextBoxes](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getIgnoreTextBoxes), [KeepSourceNumbering](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getKeepSourceNumbering), [MergePastedLists](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getMergePastedLists), Login [SmartStyleBehavior](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getSmartStyleBehavior)Sitemap

Aspose.Words memungkinkan Anda untuk menyesuaikan visualisasi dokumen yang dihasilkan ketika dua dokumen ditambahkan bersama dalam operasi insert atau lampiran dengan menggunakan [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) Login [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) Sitemap Login **PageSetup** properti mengandung semua atribut dari bagian seperti [SectionStart](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getSectionStart), [RestartPageNumbering](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getRestartPageNumbering), [PageStartingNumber](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getPageStartingNumber), [Orientation](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOrientation), dan lainnya. Kasus penggunaan yang paling umum adalah untuk mengatur **SectionStart** properti untuk menentukan apakah konten tambahan akan muncul di halaman yang sama atau dibagi menjadi yang baru.

{{% alert color="primary" %}}

Login **Section** Login **PageSetup** properti tidak mengontrol bagaimana dua dokumen dimasukkan/diubah bersama. Mereka hanya memungkinkan Anda untuk mengubah tampilan dokumen hasil Anda.

{{% /alert %}}

Contoh kode berikut menunjukkan bagaimana untuk mengakhiri satu dokumen ke dokumen lain sambil menjaga konten dari membagi di dua halaman:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "different-page-setup.java" >}}
