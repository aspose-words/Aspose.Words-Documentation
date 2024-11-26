---
title: Bekerja dengan Penanda di Java
second_title: Aspose.Words untuk Java
articleTitle: Bekerja dengan Bookmark
linktitle: Bekerja dengan Bookmark
description: "Memahami konsep bookmark dan bagaimana bookmark dapat digunakan dalam program Anda menggunakan Java."
type: docs
weight: 180
url: /id/java/working-with-bookmarks/
timestamp: 2024-01-27-14-07-04
---

Penanda mengidentifikasi dalam dokumen Microsoft Word lokasi atau fragmen yang Anda beri nama dan identifikasi untuk referensi di masa mendatang. Misalnya, Anda dapat menggunakan penanda untuk mengidentifikasi teks yang ingin Anda revisi nanti. Alih-alih menggulir dokumen untuk menemukan teks, Anda dapat membukanya dengan menggunakan kotak dialog Bookmark.

Dengan Aspose.Words, Anda dapat menggunakan penanda di laporan atau dokumen untuk menyisipkan beberapa data ke dalam penanda atau menerapkan pemformatan khusus pada kontennya. Anda juga dapat menggunakan penanda untuk mengambil teks dari lokasi tertentu di dokumen Anda.

Tindakan yang dapat dilakukan dengan penanda menggunakan Aspose.Words sama dengan tindakan yang dapat Anda lakukan menggunakan Microsoft Word. Anda dapat menyisipkan bookmark baru, menghapus, memindahkan ke bookmark, mendapatkan atau menyetel nama bookmark, mendapatkan atau menyetel teks yang terlampir di dalamnya.

## Sisipkan Penanda Buku

Gunakan [startBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startBookmark-java.lang.String) dan [endBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endBookmark-java.lang.String) untuk membuat bookmark dengan menandai awal dan akhir masing-masing. Jangan lupa untuk meneruskan nama bookmark yang sama ke kedua metode. Penanda dalam dokumen dapat tumpang tindih dan menjangkau rentang apa pun. Bookmark atau bookmark yang terbentuk dengan buruk dengan nama duplikat akan diabaikan saat dokumen disimpan.

{{% alert color="primary" %}}

Semua spasi putih di bookmark diganti dengan garis bawah. Pembatasan ini berasal dari format MS Word, karena penanda dalam format MS Word, seperti DOCX atau DOC, tidak boleh diberi spasi. Namun, PDF mengizinkan penanda tersebut. Jadi sekarang, jika Anda perlu menggunakan penanda dalam garis PDF, XPS atau SWF, Anda dapat menggunakannya dengan spasi putih.

{{% /alert %}}

Contoh kode berikut menunjukkan cara membuat bookmark baru:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-CreateBookmark-CreateBookmark.java" >}}

## Dapatkan Bookmark

Kadang-kadang perlu untuk mendapatkan koleksi bookmark untuk beralih melalui bookmark atau untuk tujuan lain. Gunakan properti **Node.getRange** yang diekspos oleh simpul dokumen apa pun yang mengembalikan objek **Range** yang mewakili bagian dokumen yang terdapat dalam simpul ini. Gunakan objek ini untuk mengambil **BookmarkCollection** lalu gunakan pengindeks koleksi untuk mendapatkan penanda tertentu.

{{% alert color="primary" %}}

Anda dapat mengunduh file sampel dari contoh berikut dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Bookmarks.docx).

{{% /alert %}}

Contoh kode berikut menunjukkan cara mendapatkan bookmark dari koleksi bookmark:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-AccessBookmarks-AccessBookmarks.java" >}}

Contoh kode berikut menunjukkan cara mendapatkan atau menyetel nama dan teks bookmark:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkNameAndText-BookmarkNameAndText.java" >}}

Contoh kode berikut menunjukkan cara menandai tabel:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkTable-BookmarkTable.java" >}}

Jika Anda mengubah nama penanda menjadi nama yang sudah ada di dokumen, tidak akan ada kesalahan dan hanya penanda pertama yang akan disimpan saat Anda menyimpan dokumen.

Perhatikan bahwa beberapa penanda dalam dokumen ditetapkan ke bidang formulir. Pindah ke bookmark seperti itu dan menyisipkan teks di sana menyisipkan teks ke dalam kode bidang formulir. Meskipun ini tidak akan membatalkan bidang formulir, teks yang disisipkan tidak akan terlihat karena menjadi bagian dari kode bidang.

Contoh kode berikut menunjukkan cara mengakses kolom tabel yang di-bookmark:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkTable-BookmarkTableColumns.java" >}}

## Pindah ke Bookmark

Jika Anda perlu menyisipkan konten kaya (bukan hanya teks biasa) ke dalam bookmark, Anda harus menggunakan [moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String) untuk memindahkan kursor ke bookmark, lalu menggunakan metode dan properti **DocumentBuilder** untuk menyisipkan konten.

## Tampilkan Sembunyikan Konten Bookmark

Seluruh Penanda (*including the bookmarked content*) dapat dienkapsulasi dalam bagian Sebenarnya dari bidang `IF` menggunakan Aspose.Words. Bisa sedemikian rupa sehingga bidang `IF` berisi Bidang Penggabungan bersarang dalam ekspresi (*Left of Operator*) dan bergantung pada nilai Bidang Penggabungan, bidang `IF` menampilkan atau menyembunyikan konten Bookmark dalam Dokumen Word.

Contoh kode berikut menunjukkan cara menampilkan / menyembunyikan bookmark.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-ShowHideBookmarks-ShowHideBookmarks_call.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-ShowHideBookmarks-ShowHideBookmarks.java" >}}
