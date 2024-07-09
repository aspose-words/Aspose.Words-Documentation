---
title: Bekerja dengan Bookmarks di Java
second_title: Aspose.Words Sitemap Java
articleTitle: Bekerja dengan Bookmarks
linktitle: Bekerja dengan Bookmarks
description: "Memahami konsep bookmark dan bagaimana bookmark dapat digunakan dalam program Anda menggunakan JavaSitemap"
type: docs
weight: 180
url: /id/java/working-with-bookmarks/
---

Bookmark mengidentifikasi dalam sebuah Microsoft Word dokumen lokasi atau fragmen yang Anda nama dan mengidentifikasi referensi masa depan. Misalnya, Anda mungkin menggunakan bookmark untuk mengidentifikasi teks yang ingin Anda revise nanti. Alih-alih menggulir melalui dokumen untuk menemukan teks, Anda dapat pergi kenya dengan menggunakan kotak dialog Bookmark.

Sitemap Aspose.Words, Anda dapat menggunakan bookmark dalam laporan atau dokumen untuk memasukkan beberapa data ke bookmark atau menerapkan format khusus ke kontennya. Anda juga dapat menggunakan bookmark untuk mengambil teks dari lokasi tertentu dalam dokumen Anda.

Tindakan yang dapat dilakukan dengan bookmark menggunakan Aspose.Words sama dengan yang dapat Anda lakukan dengan menggunakan Meme it Microsoft WordSitemap Anda dapat memasukkan bookmark baru, menghapus, pindah ke bookmark, mendapatkan atau mengatur nama bookmark, mendapatkan atau mengatur teks tertutup di dalamnya.

## Masukkan Bookmark

Sitemap [startBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startBookmark-java.lang.String) Login [endBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endBookmark-java.lang.String) untuk membuat bookmark dengan menandai awal dan berakhir, masing-masing. Jangan lupa untuk melewati nama bookmark yang sama untuk kedua metode. Bookmarks dalam dokumen dapat tumpang tindih dan rentangkan berbagai. bookmark atau bookmark yang terbentuk dengan nama duplikat akan diabaikan ketika dokumen disimpan.

{{% alert color="primary" %}}

Semua ruang putih di bookmark diganti dengan underscores. Pembatasan ini berasal dari format MS Word, karena bookmark dalam format MS Word, seperti DOCX atau DOC, tidak dapat memiliki ruang putih. Namun, PDF memungkinkan bookmark tersebut. Sekarang, jika Anda perlu menggunakan bookmark di PDF, XPS atau garis besar SWF, Anda dapat menggunakannya dengan ruang putih.

{{% /alert %}}

Contoh kode berikut menunjukkan cara membuat bookmark baru:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-CreateBookmark-CreateBookmark.java" >}}

## Dapatkan Bookmarks

Kadang-kadang perlu untuk mendapatkan koleksi bookmark untuk iterate melalui bookmark atau untuk tujuan lain. Gunakan **Login** properti yang terpapar oleh node dokumen yang mengembalikan **Range** objek mewakili bagian dokumen yang terkandung dalam node ini. Gunakan objek ini untuk mengambil **BookmarkCollection** dan kemudian gunakan indeks koleksi untuk mendapatkan bookmark tertentu.

{{% alert color="primary" %}}

Anda dapat mengunduh file sampel dari contoh berikut dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Bookmarks.docx)Sitemap

{{% /alert %}}

Contoh kode berikut menunjukkan cara mendapatkan bookmark dari koleksi bookmark:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-AccessBookmarks-AccessBookmarks.java" >}}

Contoh kode berikut menunjukkan cara mendapatkan atau mengatur nama bookmark dan teks:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkNameAndText-BookmarkNameAndText.java" >}}

Contoh kode berikut menunjukkan cara bookmark tabel:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkTable-BookmarkTable.java" >}}

Jika Anda mengubah nama bookmark ke nama yang sudah ada dalam dokumen, tidak ada kesalahan yang dihasilkan dan hanya bookmark pertama akan disimpan ketika Anda menyimpan dokumen.

Perhatikan bahwa beberapa bookmark dalam dokumen ditugaskan untuk membentuk bidang. Pindahkan ke teks bookmark dan sisipan seperti itu ada memasukkan teks ke dalam kode bidang formulir. Meskipun ini tidak akan membatalkan bidang formulir, teks yang dimasukkan tidak akan terlihat karena menjadi bagian dari kode lapangan.

Contoh kode berikut menunjukkan cara mengakses kolom tabel yang di bookmark:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkTable-BookmarkTableColumns.java" >}}

## Pindah ke Bookmark

Jika Anda perlu memasukkan konten yang kaya (tidak hanya teks biasa) ke bookmark, Anda harus menggunakan [moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String) untuk memindahkan kursor ke bookmark dan kemudian gunakan **DocumentBuilder** metode dan sifat untuk memasukkan konten.

## Tampilkan Konten Bookmark Hide

Seluruh Bookmark (* termasuk konten bookmark*) dapat diungkapkan dalam bagian Benar dari `IF` kolom menggunakan Aspose.WordsSitemap Ini bisa sedemikian rupa sehingga `IF` lapangan mengandung Lapangan Merge bersarang dalam ekspresi (*Left Operator*) dan tergantung pada nilai Lapangan Merge, `IF` acara lapangan atau menyembunyikan konten Bookmark di Word Document.

Contoh kode berikut menunjukkan cara menunjukkan/ menyembunyikan bookmark.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-ShowHideBookmarks-ShowHideBookmarks_call.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-ShowHideBookmarks-ShowHideBookmarks.java" >}}
