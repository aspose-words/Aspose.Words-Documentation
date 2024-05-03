---
title: Bekerja dengan Komentar di Java
second_title: Aspose.Words Sitemap Java
articleTitle: Bekerja dengan Komentar
linktitle: Bekerja dengan Komentar
description: "Bekerja dengan komentar menggunakan JavaSitemap"
type: docs
weight: 260
url: /id/java/working-with-comments/
---

{{% alert color="primary" %}}

**Coba online**

Anda dapat mencoba fungsi ini dengan kami [Gratis online menghapus anotasi](https://products.aspose.app/words/annotation)Sitemap

{{% /alert %}}

Aspose.Words memungkinkan pengguna untuk bekerja dengan komentar - komentar dalam dokumen Aspose.Words diwakili oleh Meme it [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) Sitemap Juga gunakan [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) Login [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/) kelas untuk menentukan wilayah teks yang harus dikaitkan dengan komentar.

## Tambahkan Komentar

Aspose.Words memungkinkan Anda untuk menambahkan komentar dalam beberapa cara:

Sitemap Menggunakan [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) Login
2. di Menggunakan [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) Login [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/) Sitemap

Contoh kode berikut menunjukkan cara menambahkan komentar ke paragraf menggunakan **Comment** kelas:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AddComments-AddComments.java" >}}

Contoh kode berikut menunjukkan cara menambahkan komentar ke paragraf menggunakan wilayah teks dan **CommentRangeStart** Login **CommentRangeEnd** Kelas:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AnchorComment-AnchorComment.java" >}}

## Ekstrak atau Hapus Komentar

Menggunakan Komentar dalam dokumen Word (di samping Track Changes) adalah praktik umum ketika meninjau dokumen, terutama ketika ada beberapa peninjauan. Ada situasi di mana satu-satunya hal yang Anda butuhkan dari dokumen adalah komentar. Katakan Anda ingin menghasilkan daftar temuan ulasan, atau mungkin Anda telah mengumpulkan semua informasi yang berguna dari dokumen dan Anda hanya ingin menghapus komentar yang tidak perlu. Anda mungkin ingin melihat atau menghapus komentar dari peninjauan tertentu.

Dalam sampel ini, kita akan melihat beberapa metode sederhana untuk mengumpulkan informasi dari komentar dalam dokumen dan untuk menghapus komentar dari dokumen. Secara spesifik, kami akan membahas cara:

- Ekstrak semua komentar dari dokumen atau hanya yang dibuat oleh penulis tertentu.
- Hapus semua komentar dari dokumen atau hanya dari penulis tertentu.

### Cara Mengekstrak atau Hapus Komentar

Kode dalam sampel ini cukup sederhana dan semua metode didasarkan pada pendekatan yang sama. Komentar dalam dokumen Word diwakili oleh `Comment` objek dalam Aspose.Words model objek dokumen. Untuk mengumpulkan semua komentar dalam dokumen menggunakan [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) metode dengan parameter pertama yang ditetapkan untuk `NodeType.Comment`Sitemap Pastikan bahwa parameter kedua dari **Login** metode diatur untuk true: kekuatan ini **Login** untuk memilih dari semua node anak berulang, daripada hanya mengumpulkan anak-anak segera.

Untuk menggambarkan cara mengekstrak dan menghapus komentar dari dokumen, kita akan melalui langkah-langkah berikut:

Sitemap Buka dokumen Word menggunakan [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) Login
Sitemap Dapatkan semua komentar dari dokumen ke dalam koleksi
Sitemap Untuk mengekstrak komentar:
   1. Pergi melalui koleksi menggunakan operator
   1. Ekstrak dan daftar nama penulis, tanggal & waktu dan teks semua komentar
   1. Ekstrak dan daftar nama penulis, tanggal & waktu dan teks komentar yang ditulis oleh penulis tertentu, dalam kasus ini, penulis 'ks'
Sitemap Untuk menghapus komentar:
   1. Pergi mundur melalui koleksi menggunakan operator
   1. Hapus komentar
Sitemap Simpan perubahan.

Kita akan menggunakan dokumen Word berikut untuk latihan ini:

![extract-remove-comments-aspose-words-java-1](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-1.png)

Seperti yang dapat Anda lihat, mengandung beberapa Komentar dari dua penulis dengan awal "pm" dan "k".

### Cara Mengekstrak Semua Komentar

Login [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) metode sangat berguna dan Anda dapat menggunakannya setiap kali Anda perlu mendapatkan daftar node dokumen dari jenis apa pun. Pengumpulan yang dihasilkan tidak membuat overhead langsung karena node dipilih ke koleksi ini hanya ketika Anda menggandakan atau mengakses item di dalamnya.

Contoh kode berikut menunjukkan cara mengekstrak nama penulis, tanggal & waktu dan teks semua komentar dalam dokumen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-extractComments.java" >}}

### Bagaimana cara mengekstrak Komentar dari Penulis yang ditentukan

Setelah Anda memilih Komentar node ke dalam koleksi, semua yang harus Anda lakukan adalah mengekstrak informasi yang Anda butuhkan. Dalam sampel ini, awal penulis, tanggal, waktu dan teks biasa dari komentar digabungkan menjadi satu string; Anda dapat memilih untuk menyimpannya dengan beberapa cara lain bukan.

Metode yang berlebihan yang mengekstrak Komentar dari penulis tertentu hampir sama, itu hanya memeriksa nama penulis sebelum menambahkan info ke array.

Contoh kode berikut menunjukkan cara mengekstrak nama penulis, tanggal & waktu dan teks komentar oleh penulis yang ditentukan:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-extractComments_Author.java" >}}

### Cara Hapus Komentar

Jika Anda menghapus semua komentar, tidak perlu pindah melalui koleksi menghapus komentar satu per satu; Anda dapat menghapusnya dengan memanggil [clear](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#clear) pada koleksi komentar.

Contoh kode berikut menunjukkan bagaimana menghapus semua komentar dalam dokumen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-removeComments.java" >}}

Ketika Anda perlu menghapus komentar secara selektif, proses menjadi lebih mirip dengan kode yang kami gunakan untuk ekstraksi komentar.

Contoh kode berikut menunjukkan bagaimana menghapus komentar oleh penulis yang ditentukan:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-removeComments_Author.java" >}}

Titik utama untuk menyoroti di sini adalah penggunaan untuk operator. Tidak seperti ekstraksi sederhana, di sini Anda ingin menghapus komentar. Sebuah trik yang cocok adalah untuk menjauhkan koleksi mundur dari Komentar terakhir ke yang pertama. Alasan ini jika Anda mulai dari akhir dan bergerak mundur, indeks item sebelumnya tetap tidak berubah, dan Anda dapat bekerja dengan cara Anda kembali ke item pertama dalam koleksi.

Contoh kode berikut menunjukkan metode untuk ekstraksi komentar dan penghapusan:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-ProcessComments.java" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file sampel dari contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/com/aspose/words/examples/programming_documents/comments/ProcessComments/TestFile.doc)Sitemap

{{% /alert %}}

Ketika diluncurkan, sampel menampilkan hasil berikut. Pertama, daftar semua komentar oleh semua penulis, maka daftar komentar oleh penulis yang dipilih hanya. Akhirnya, kode menghapus semua komentar.

![extract-remove-comments-aspose-words-java-2](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-2.png)

Dokumen Word output sekarang telah dihapus darinya:

![extract-remove-comments-aspose-words-java-3](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-3.png)

### Cara Hapus Teks antara CommentRangeStart dan CommentRangeEnd

Sitemap Aspose.Words Anda juga dapat menghapus komentar antara CommentRangeStart dan CommentRangeEnd node.

Contoh kode berikut menunjukkan cara menghapus teks antara CommentRangeStart dan CommentRangeEnd:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-RemoveCommentRegionText-RemoveCommentRegionText.java" >}}

## Tambahkan atau Hapus Balasan Komentar

Login [addReply](https://reference.aspose.com/words/java/com.aspose.words/comment/#addReply-java.lang.String-java.lang.String-java.util.Date-java.lang.String) metode menambahkan balasan untuk komentar ini. Harap dicatat bahwa karena keterbatasan MS Office yang ada hanya satu (1) tingkat pengisian diperbolehkan dalam dokumen. Pengecualian jenis InvalidOperationException akan dibesarkan jika metode ini disebut pada komentar Balas yang ada.

Anda dapat menggunakan [removeReply](https://reference.aspose.com/words/java/com.aspose.words/comment/#removeReply-com.aspose.words.Comment) metode untuk menghapus jawaban yang ditentukan untuk komentar ini.

Contoh kode berikut menunjukkan cara menambahkan balasan ke komentar dan menghapus balasan komentar:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AddRemoveCommentReply-AddRemoveCommentReply.java" >}}

## Baca Balas Komentar

Aspose.Words dukungan untuk membaca balasan Komentar. Login [Replies](https://reference.aspose.com/words/java/com.aspose.words/comment/#getReplies) properti kembali koleksi [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) objek yang langsung anak-anak dari komentar yang ditentukan.

Contoh kode berikut menunjukkan cara menyertai melalui balasan komentar dan menyelesaikannya:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-CommentResolvedandReplies.java" >}}