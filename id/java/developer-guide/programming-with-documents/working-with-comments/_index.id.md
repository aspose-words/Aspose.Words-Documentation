---
title: Bekerja dengan Komentar di Java
second_title: Aspose.Words untuk Java
articleTitle: Bekerja dengan Komentar
linktitle: Bekerja dengan Komentar
description: "Bekerja dengan komentar menggunakan Java."
type: docs
weight: 260
url: /id/java/working-with-comments/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

**Coba online**

Anda dapat mencoba fungsi ini dengan kami [Solusi online gratis](https://products.aspose.app/words/annotation).

{{% /alert %}}

Aspose.Words memungkinkan pengguna untuk bekerja dengan komentar-komentar dalam dokumen di Aspose.Words diwakili oleh kelas [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/). Gunakan juga kelas [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) dan [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/) untuk menentukan wilayah teks yang harus dikaitkan dengan komentar.

## Tambahkan Komentar

Aspose.Words memungkinkan Anda menambahkan komentar dengan beberapa cara:

1. Menggunakan kelas [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/)
2. Menggunakan kelas [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) dan [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/)

Contoh kode berikut menunjukkan cara menambahkan komentar ke paragraf menggunakan kelas **Comment**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AddComments-AddComments.java" >}}

Contoh kode berikut menunjukkan cara menambahkan komentar ke paragraf menggunakan wilayah teks dan kelas **CommentRangeStart** dan **CommentRangeEnd**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AnchorComment-AnchorComment.java" >}}

## Ekstrak atau Hapus Komentar

Menggunakan Komentar dalam dokumen Word (selain untuk Melacak Perubahan) adalah praktik umum saat meninjau dokumen, terutama jika ada banyak pengulas. Mungkin ada situasi di mana satu-satunya hal yang Anda butuhkan dari sebuah dokumen adalah komentarnya. Katakanlah Anda ingin membuat daftar temuan tinjauan, atau mungkin Anda telah mengumpulkan semua informasi berguna dari dokumen dan Anda hanya ingin menghapus komentar yang tidak perlu. Anda mungkin ingin melihat atau menghapus komentar dari pengulas tertentu.

Dalam contoh ini, kita akan melihat beberapa metode sederhana untuk mengumpulkan informasi dari komentar di dalam dokumen dan untuk menghapus komentar dari dokumen. Secara khusus, kami akan membahas cara melakukannya:

- Ekstrak semua komentar dari dokumen atau hanya komentar yang dibuat oleh penulis tertentu.
- Hapus semua komentar dari dokumen atau hanya dari penulis tertentu.

### Cara Mengekstrak atau Menghapus Komentar

Kode dalam sampel ini cukup sederhana dan semua metode didasarkan pada pendekatan yang sama. Komentar dalam dokumen Word diwakili oleh objek `Comment` dalam model objek dokumen Aspose.Words. Untuk mengumpulkan semua komentar dalam dokumen, gunakan metode [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) dengan parameter pertama disetel ke `NodeType.Comment`. Pastikan parameter kedua dari metode **getChildNodes** disetel ke true: ini memaksa **getChildNodes** untuk memilih dari semua node turunan secara rekursif, bukan hanya mengumpulkan turunan terdekat.

Untuk mengilustrasikan cara mengekstrak dan menghapus komentar dari dokumen, kita akan melalui langkah-langkah berikut:

1. Buka dokumen Word menggunakan kelas [Document](https://reference.aspose.com/words/java/com.aspose.words/document/)
1. Dapatkan semua komentar dari dokumen ke dalam koleksi
1. Untuk mengekstrak komentar:
   1. Pergi melalui koleksi menggunakan untuk operator
   1. Ekstrak dan cantumkan nama penulis, tanggal & waktu, dan teks semua komentar
   1. Ekstrak dan cantumkan nama penulis, tanggal & waktu, dan teks komentar yang ditulis oleh penulis tertentu, dalam hal ini penulis 'ks'
1. Untuk menghapus komentar:
   1. Mundur melalui koleksi menggunakan untuk operator
   1. Hapus komentar
1. Simpan perubahannya.

Kita akan menggunakan dokumen Word berikut untuk latihan ini:

![extract-remove-comments-aspose-words-java-1](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-1.png)

Seperti yang Anda lihat, ini berisi beberapa Komentar dari dua penulis dengan inisial " pm "dan"ks".

### Cara Mengekstrak Semua Komentar

Metode [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) sangat berguna dan Anda dapat menggunakannya setiap kali Anda perlu mendapatkan daftar simpul dokumen jenis apa pun. Koleksi yang dihasilkan tidak membuat overhead langsung karena node dipilih ke dalam koleksi ini hanya saat Anda menghitung atau mengakses item di dalamnya.

Contoh kode berikut menunjukkan cara mengekstrak nama penulis, tanggal&waktu, dan teks dari semua komentar dalam dokumen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-extractComments.java" >}}

### Cara Mengekstrak Komentar dari Penulis Tertentu

Setelah Anda memilih simpul Komentar ke dalam kumpulan, yang harus Anda lakukan hanyalah mengekstrak informasi yang Anda butuhkan. Dalam contoh ini, inisial penulis, tanggal, waktu, dan teks biasa dari komentar digabungkan menjadi satu string; Anda dapat memilih untuk menyimpannya dengan beberapa cara lain.

Metode kelebihan beban yang mengekstrak Komentar dari penulis tertentu hampir sama, hanya memeriksa nama penulis sebelum menambahkan info ke dalam array.

Contoh kode berikut menunjukkan cara mengekstrak nama penulis, tanggal&waktu, dan teks komentar oleh penulis yang ditentukan:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-extractComments_Author.java" >}}

### Cara Menghapus Komentar

Jika Anda menghapus semua komentar, tidak perlu menelusuri koleksi menghapus komentar satu per satu; Anda dapat menghapusnya dengan memanggil [clear](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#clear) pada koleksi komentar.

Contoh kode berikut menunjukkan cara menghapus semua komentar dalam dokumen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-removeComments.java" >}}

Saat Anda perlu menghapus komentar secara selektif, prosesnya menjadi lebih mirip dengan kode yang kami gunakan untuk ekstraksi komentar.

Contoh kode berikut menunjukkan cara menghapus komentar oleh penulis yang ditentukan:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-removeComments_Author.java" >}}

Poin utama yang perlu disoroti di sini adalah penggunaan operator for. Berbeda dengan ekstraksi sederhana, di sini Anda ingin menghapus komentar. Trik yang cocok adalah mengulangi koleksi mundur dari Komentar terakhir ke komentar pertama. Alasan untuk ini jika Anda memulai dari akhir dan bergerak mundur, indeks item sebelumnya tetap tidak berubah, dan Anda dapat kembali ke item pertama dalam koleksi.

Contoh kode berikut menunjukkan metode untuk ekstraksi dan penghapusan komentar:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-ProcessComments.java" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file contoh contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/com/aspose/words/examples/programming_documents/comments/ProcessComments/TestFile.doc).

{{% /alert %}}

Saat diluncurkan, sampel menampilkan hasil berikut. Pertama, daftar semua komentar oleh semua penulis, lalu daftar komentar hanya oleh penulis yang dipilih. Akhirnya, kode menghapus semua komentar.

![extract-remove-comments-aspose-words-java-2](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-2.png)

Dokumen keluaran Word sekarang telah menghapus komentar darinya:

![extract-remove-comments-aspose-words-java-3](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-3.png)

### Cara Menghapus Teks antara CommentRangeStart dan CommentRangeEnd

Dengan menggunakan Aspose.Words Anda juga dapat menghapus komentar di antara simpul CommentRangeStart dan CommentRangeEnd.

Contoh kode berikut menunjukkan cara menghapus teks antara CommentRangeStart dan CommentRangeEnd:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-RemoveCommentRegionText-RemoveCommentRegionText.java" >}}

## Menambah atau Menghapus Balasan Komentar

Metode [addReply](https://reference.aspose.com/words/java/com.aspose.words/comment/#addReply-java.lang.String-java.lang.String-java.util.Date-java.lang.String) menambahkan balasan ke komentar ini. Harap perhatikan bahwa karena batasan Office MS yang ada, hanya satu (1) tingkat balasan yang diperbolehkan dalam dokumen. Pengecualian tipe InvalidOperationException akan dimunculkan jika metode ini dipanggil pada komentar Balasan yang ada.

Anda dapat menggunakan metode [removeReply](https://reference.aspose.com/words/java/com.aspose.words/comment/#removeReply-com.aspose.words.Comment) untuk menghapus balasan yang ditentukan untuk komentar ini.

Contoh kode berikut menunjukkan cara menambahkan balasan ke komentar dan menghapus balasan komentar:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AddRemoveCommentReply-AddRemoveCommentReply.java" >}}

## Baca Balasan Komentar

Aspose.Words dukungan untuk membaca balasan Komentar. Properti [Replies](https://reference.aspose.com/words/java/com.aspose.words/comment/#getReplies) mengembalikan kumpulan objek [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) yang merupakan turunan langsung dari komentar yang ditentukan.

Contoh kode berikut menunjukkan cara beralih melalui balasan komentar dan menyelesaikannya:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-CommentResolvedandReplies.java" >}}
