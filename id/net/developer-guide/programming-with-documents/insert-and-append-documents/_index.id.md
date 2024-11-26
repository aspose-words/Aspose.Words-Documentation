---
title: Sisipkan dan Tambahkan Dokumen di C#
second_title: Aspose.Words untuk .NET
articleTitle: Sisipkan dan Lampirkan Dokumen
linktitle: Sisipkan dan Lampirkan Dokumen
description: "Gabungkan dokumen menjadi satu: masukkan atau tambahkan dokumen ke dokumen baru atau yang sudah ada menggunakan cari dan ganti, gabungkan bidang, bookmark, atau cukup di akhir dokumen di C#."
type: docs
weight: 80
url: /id/net/insert-and-append-documents/
timestamp: 2024-01-27-14-07-04
---

Terkadang diperlukan untuk menggabungkan beberapa dokumen menjadi satu. Anda dapat melakukan ini secara manual atau Anda dapat menggunakan fitur penyisipan atau penambahan Aspose.Words.

Operasi penyisipan memungkinkan Anda memasukkan konten dokumen yang dibuat sebelumnya ke dalam dokumen baru atau yang sudah ada.

Pada gilirannya, fitur tambahkan memungkinkan Anda menambahkan dokumen hanya di akhir dokumen lain.

Artikel ini menjelaskan cara menyisipkan atau menambahkan dokumen ke dokumen lain dengan berbagai cara dan menjelaskan properti umum yang dapat Anda terapkan saat menyisipkan atau menambahkan dokumen.

## Masukkan Dokumen {#insert-a-document}

Seperti disebutkan di atas, di Aspose.Words, sebuah dokumen direpresentasikan sebagai pohon node, dan operasi memasukkan satu dokumen ke dokumen lain adalah menyalin node dari pohon dokumen pertama ke pohon dokumen kedua.

Anda dapat menyisipkan dokumen di berbagai lokasi dengan cara berbeda. Misalnya, Anda bisa menyisipkan dokumen melalui operasi penggantian, bidang penggabungan selama operasi penggabungan, atau melalui penanda.

Anda juga dapat menggunakan metode [InsertDocument](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertdocument/#insertdocument/) atau [InsertDocumentInline](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertdocumentinline/), yang mirip dengan menyisipkan dokumen dalam Microsoft Word, untuk menyisipkan seluruh dokumen pada posisi kursor saat ini tanpa perlu mengimpor sebelumnya.

Contoh kode berikut menunjukkan cara menyisipkan dokumen menggunakan metode **InsertDocument**:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-with-builder.cs" >}}

Contoh kode berikut menunjukkan cara menyisipkan dokumen menggunakan metode **InsertDocumentInline**:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-inline-with-builder.cs" >}}

Subbagian berikut menjelaskan opsi di mana Anda dapat menyisipkan satu dokumen ke dokumen lain.

### Masukkan Dokumen Selama Operasi Temukan dan Ganti {#insert-a-document-during-find-and-replace-operation}

Anda dapat menyisipkan dokumen saat melakukan operasi pencarian dan penggantian. Misalnya, sebuah dokumen dapat berisi paragraf dengan teks [PENDAHULUAN] dan [KESIMPULAN]. Namun di dokumen akhir, Anda perlu mengganti paragraf tersebut dengan konten yang diperoleh dari dokumen eksternal lain. Untuk mencapai hal tersebut, Anda perlu membuat handler untuk event replace.

Contoh kode berikut menunjukkan cara membuat handler untuk event pengganti untuk digunakan nanti dalam proses penyisipan:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-replace-handler.cs" >}}

Contoh kode berikut menunjukkan cara memasukkan konten dari satu dokumen ke dokumen lain selama operasi pencarian dan penggantian:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-replace.cs" >}}

### Masukkan Dokumen Selama Operasi Mail Merge {#insert-a-document-during-mail-merge-operation}

Anda dapat menyisipkan dokumen ke dalam bidang gabungan selama operasi mail merge. Misalnya, templat Mail Merge bisa berisi bidang gabungan seperti [Ringkasan]. Namun di dokumen akhir, Anda perlu memasukkan konten yang diperoleh dari dokumen eksternal lain ke dalam bidang gabungan ini. Untuk mencapai hal tersebut, Anda perlu membuat handler untuk acara penggabungan.

Contoh kode berikut menunjukkan cara membuat handler untuk peristiwa penggabungan untuk digunakan nanti dalam proses penyisipan:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-mail-merge-handler.cs" >}}

Contoh kode berikut menunjukkan cara menyisipkan dokumen ke dalam bidang gabungan menggunakan pengendali yang dibuat:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-mail-merge.cs" >}}

### Masukkan Dokumen di Bookmark {#insert-a-document-at-bookmark}

Anda dapat mengimpor file teks ke dalam dokumen dan menyisipkannya tepat setelah penanda yang telah Anda tetapkan dalam dokumen. Untuk melakukan ini, buat paragraf yang diberi bookmark di mana Anda ingin dokumen disisipkan.

Contoh pengkodean berikut menunjukkan cara menyisipkan konten satu dokumen ke bookmark di dokumen lain:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-bookmark.cs" >}}

{{% alert color="primary" %}}

Perhatikan bahwa penanda tidak boleh menyertakan beberapa paragraf atau teks yang Anda inginkan untuk muncul di dokumen hasil akhir Anda.

{{% /alert %}}

## Tambahkan Dokumen {#append-a-document}

Anda mungkin memiliki kasus penggunaan di mana Anda perlu menyertakan halaman tambahan dari dokumen ke akhir dokumen yang sudah ada. Untuk melakukan ini, Anda hanya perlu memanggil metode [AppendDocument](https://reference.aspose.com/words/net/aspose.words/document/appenddocument/) untuk menambahkan dokumen ke akhir dokumen lainnya.

{{% alert color="primary" %}}

Perhatikan bahwa [AppendChild](https://reference.aspose.com/words/net/aspose.words/compositenode/appendchild/) adalah metode tingkat simpul dalam dokumen. Misalnya, Anda bisa membuat paragraf, mengatur properti pemformatan, lalu menambahkannya sebagai turunan ke badan menggunakan metode **AppendChild**.

{{% /alert %}}

Contoh kode berikut menunjukkan cara menambahkan dokumen ke akhir dokumen lain:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "keep-source-formatting.cs" >}}

## Impor dan Sisipkan Node Secara Manual {#import-and-insert-nodes-manually}

Aspose.Words memungkinkan Anda menyisipkan dan menambahkan dokumen secara otomatis tanpa persyaratan impor sebelumnya. Namun, jika Anda perlu menyisipkan atau menambahkan simpul tertentu pada dokumen Anda, seperti bagian atau paragraf, Anda harus mengimpor simpul tersebut secara manual terlebih dahulu.

Saat Anda perlu menyisipkan atau menambahkan satu bagian atau paragraf ke bagian atau paragraf lainnya, pada dasarnya Anda perlu mengimpor node dari pohon simpul dokumen pertama ke bagian atau paragraf kedua menggunakan metode [ImportNode](https://reference.aspose.com/words/net/aspose.words/nodeimporter/importnode/). Setelah mengimpor node, Anda perlu menggunakan metode [InsertAfter](https://reference.aspose.com/words/net/aspose.words/compositenode/insertafter/)/[InsertBefore](https://reference.aspose.com/words/net/aspose.words/compositenode/insertbefore/) untuk memasukkan node baru setelah/sebelum node referensi. Hal ini memungkinkan Anda untuk menyesuaikan proses penyisipan dengan mengimpor node dari dokumen dan menyisipkannya pada posisi tertentu.

Anda juga dapat menggunakan metode [AppendChild](https://reference.aspose.com/words/net/aspose.words/compositenode/appendchild/) untuk menambahkan simpul baru yang ditentukan ke akhir daftar simpul anak, misalnya, jika Anda ingin menambahkan konten di tingkat paragraf, bukan di tingkat bagian.

Contoh kode berikut menunjukkan cara mengimpor node secara manual dan menyisipkannya setelah node tertentu menggunakan metode **InsertAfter**:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-as-nodes.cs" >}}

{{% alert color="primary" %}}

Impor membuat node baru yang merupakan salinan dari node asli dan cocok untuk dimasukkan ke dalam dokumen tujuan.

{{% /alert %}}

Konten diimpor ke dokumen tujuan bagian demi bagian, yang berarti bahwa pengaturan, seperti pengaturan halaman dan header atau footer, dipertahankan selama impor. Penting juga untuk dicatat bahwa Anda dapat menentukan pengaturan pemformatan saat Anda menyisipkan atau menambahkan dokumen untuk menentukan bagaimana dua dokumen digabungkan.

## Properti Umum untuk Menyisipkan dan Menambahkan Dokumen {#common-properties-for-insert-and-append-documents}

Metode [InsertDocument](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertdocument/) dan [AppendDocument](https://reference.aspose.com/words/net/aspose.words/document/appenddocument/) menerima [ImportFormatMode](https://reference.aspose.com/words/net/aspose.words/importformatmode/) dan [ImportFormatOptions](https://reference.aspose.com/words/net/aspose.words/importformatoptions/) sebagai parameter masukan. **ImportFormatMode** memungkinkan Anda mengontrol bagaimana pemformatan dokumen digabungkan saat Anda mengimpor konten dari satu dokumen ke dokumen lain dengan memilih mode format berbeda seperti [UseDestinationStyles](https://reference.aspose.com/words/net/aspose.words/importformatmode/), [KeepSourceFormatting](https://reference.aspose.com/words/net/aspose.words/importformatmode/), dan [KeepDifferentStyles](https://reference.aspose.com/words/net/aspose.words/importformatmode/). **ImportFormatOptions** memungkinkan Anda memilih opsi impor yang berbeda seperti [IgnoreHeaderFooter](https://reference.aspose.com/words/net/aspose.words/importformatoptions/ignoreheaderfooter/), [IgnoreTextBoxes](https://reference.aspose.com/words/net/aspose.words/importformatoptions/ignoretextboxes/), [KeepSourceNumbering](https://reference.aspose.com/words/net/aspose.words/importformatoptions/keepsourcenumbering/), [MergePastedLists](https://reference.aspose.com/words/net/aspose.words/importformatoptions/mergepastedlists/), dan [SmartStyleBehavior](https://reference.aspose.com/words/net/aspose.words/importformatoptions/smartstylebehavior/).

Aspose.Words memungkinkan Anda menyesuaikan visualisasi dokumen yang dihasilkan ketika dua dokumen ditambahkan bersama dalam operasi penyisipan atau penambahan dengan menggunakan properti [Section](https://reference.aspose.com/words/net/aspose.words/section/) dan [PageSetup](https://reference.aspose.com/words/net/aspose.words/documentbuilder/pagesetup/). Properti **PageSetup** berisi semua atribut suatu bagian seperti [SectionStart](https://reference.aspose.com/words/net/aspose.words/pagesetup/sectionstart/), [RestartPageNumbering](https://reference.aspose.com/words/net/aspose.words/pagesetup/restartpagenumbering/), [PageStartingNumber](https://reference.aspose.com/words/net/aspose.words/pagesetup/pagestartingnumber/), [Orientation](https://reference.aspose.com/words/net/aspose.words/pagesetup/orientation/), dan lain-lain. Kasus penggunaan yang paling umum adalah menyetel properti **SectionStart** untuk menentukan apakah konten yang ditambahkan akan muncul di halaman yang sama atau dipecah menjadi halaman baru.

{{% alert color="primary" %}}

Perhatikan bahwa properti **Section** dan **PageSetup** tidak mengontrol bagaimana dua dokumen disisipkan/ditambahkan bersama-sama. Mereka hanya mengizinkan Anda mengubah tampilan dokumen hasil Anda.

{{% /alert %}}

Contoh kode berikut menunjukkan cara menambahkan satu dokumen ke dokumen lain sambil menjaga agar konten tidak terpecah menjadi dua halaman:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "different-page-setup.cs" >}}
