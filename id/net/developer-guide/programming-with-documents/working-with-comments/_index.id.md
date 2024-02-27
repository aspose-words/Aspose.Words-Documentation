---
title: Bekerja dengan Komentar di C#
second_title: Aspose.Words untuk .NET
articleTitle: Bekerja dengan Komentar
linktitle: Bekerja dengan Komentar
description: "Bekerja dengan komentar menggunakan C#."
type: docs
weight: 260
url: /id/net/working-with-comments/
---

{{% alert color="primary" %}}

**Coba daring**

Anda dapat mencoba fungsi ini dengan [Hapus anotasi online gratis](https://products.aspose.app/words/annotation) kami.

{{% /alert %}}

Aspose.Words memungkinkan pengguna untuk bekerja dengan komentar – komentar dalam dokumen di Aspose.Words diwakili oleh kelas [Comment](https://reference.aspose.com/words/net/aspose.words/comment/). Gunakan juga kelas [CommentRangeStart](https://reference.aspose.com/words/net/aspose.words/commentrangestart/) dan [CommentRangeEnd](https://reference.aspose.com/words/net/aspose.words/commentrangeend/) untuk menentukan wilayah teks yang harus dikaitkan dengan komentar.

## Tambahkan komentar

Aspose.Words memungkinkan Anda menambahkan komentar dengan beberapa cara:

1. Menggunakan kelas [Comment](https://reference.aspose.com/words/net/aspose.words/comment/)
2. Menggunakan kelas [CommentRangeStart](https://reference.aspose.com/words/net/aspose.words/commentrangestart/) dan [CommentRangeEnd](https://reference.aspose.com/words/net/aspose.words/commentrangeend/)

Contoh kode berikut menunjukkan cara menambahkan komentar ke paragraf menggunakan kelas **Comment**:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-AddComments-AddComments.cs" >}}

Contoh kode berikut menunjukkan cara menambahkan komentar ke paragraf menggunakan wilayah teks dan kelas **CommentRangeStart** dan **CommentRangeEnd**:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-AnchorComment-AnchorComment.cs" >}}

## Ekstrak atau Hapus Komentar

Menggunakan Komentar di dokumen Word (selain Lacak Perubahan) adalah praktik umum saat meninjau dokumen, terutama ketika terdapat beberapa peninjau. Mungkin ada situasi di mana satu-satunya hal yang Anda butuhkan dari sebuah dokumen adalah komentar. Katakanlah Anda ingin membuat daftar temuan tinjauan, atau mungkin Anda telah mengumpulkan semua informasi berguna dari dokumen dan Anda hanya ingin menghapus komentar yang tidak perlu. Anda mungkin ingin melihat atau menghapus komentar dari pengulas tertentu.

Dalam contoh ini kita akan melihat beberapa metode sederhana untuk mengumpulkan informasi dari komentar dalam dokumen dan untuk menghapus komentar dari dokumen. Secara khusus kami akan membahas cara:

- Ekstrak semua komentar dari dokumen atau hanya komentar yang dibuat oleh penulis tertentu
- Hapus semua komentar dari dokumen atau hanya dari penulis tertentu

### Cara Mengekstrak atau Menghapus Komentar

Kode dalam contoh ini sebenarnya cukup sederhana dan semua metode didasarkan pada pendekatan yang sama. Komentar dalam dokumen Word diwakili oleh objek [Comment](https://reference.aspose.com/words/net/aspose.words/comment/) dalam model objek dokumen Aspose.Words. Untuk mengumpulkan semua komentar dalam dokumen gunakan metode [GetChildNodes](https://reference.aspose.com/words/net/aspose.words/compositenode/getchildnodes/) dengan parameter pertama disetel ke [NodeType.Comment](https://reference.aspose.com/words/net/aspose.words/nodetype/). Pastikan parameter kedua metode **GetChildNodes** diatur ke true: ini memaksa **GetChildNodes** untuk memilih dari semua node anak secara rekursif, bukan hanya mengumpulkan anak langsung.

Untuk mengilustrasikan cara mengekstrak dan menghapus komentar dari dokumen, kita akan melalui langkah-langkah berikut:

1. Buka dokumen Word menggunakan kelas [Document](https://reference.aspose.com/words/net/aspose.words/document/)
2. Dapatkan semua komentar dari dokumen ke dalam koleksi
3. Untuk mengekstrak komentar:
   1. Telusuri koleksi menggunakan operator foreach
   2. Ekstrak dan cantumkan nama penulis, tanggal &amp; waktu serta teks semua komentar
   3. Ekstrak dan cantumkan nama penulis, tanggal &amp; waktu serta teks komentar yang ditulis oleh penulis tertentu, dalam hal ini penulis 'ks'
4. Untuk menghapus komentar:
   1. Kembali ke koleksi menggunakan operator for
   2. Hapus komentar
5. Simpan perubahannya

### Cara Mengekstrak Semua Komentar

Metode **GetChildNodes** sangat berguna dan Anda dapat menggunakannya setiap kali Anda perlu mendapatkan daftar node dokumen jenis apa pun. Koleksi yang dihasilkan tidak menimbulkan overhead langsung karena node dipilih ke dalam koleksi ini hanya ketika Anda menghitung atau mengakses item di dalamnya.

Contoh kode berikut menunjukkan cara mengekstrak nama penulis, tanggal &amp; waktu dan teks semua komentar di dokumen:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-ExtractComments.cs" >}}

### Cara Mengekstrak Komentar dari Penulis Tertentu

Setelah Anda memilih node **Comment** ke dalam koleksi, yang harus Anda lakukan adalah mengekstrak informasi yang Anda perlukan. Dalam contoh ini, inisial penulis, tanggal, waktu dan teks biasa dari komentar digabungkan menjadi satu string; Anda dapat memilih untuk menyimpannya dengan cara lain.

Metode kelebihan beban untuk mengekstrak Komentar dari penulis tertentu hampir sama, hanya memeriksa nama penulis sebelum menambahkan info ke dalam array.

Contoh kode berikut menunjukkan cara mengekstrak nama penulis, tanggal &amp; waktu dan teks komentar oleh penulis yang ditentukan:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-ExtractCommentsByAuthor.cs" >}}

### Cara Menghapus Komentar

Jika Anda menghapus semua komentar, tidak perlu menelusuri koleksi menghapus komentar satu per satu. Anda dapat menghapusnya dengan memanggil metode [Clear](https://reference.aspose.com/words/net/aspose.words/nodecollection/clear/) pada kumpulan komentar.

Contoh kode berikut menunjukkan cara menghapus semua komentar di dokumen:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-RemoveComments.cs" >}}

Saat Anda perlu menghapus komentar secara selektif, prosesnya menjadi lebih mirip dengan kode yang kami gunakan untuk ekstraksi komentar.

Contoh kode berikut menunjukkan cara menghapus komentar dari penulis tertentu:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-RemoveCommentsByAuthor.cs" >}}

Poin utama yang perlu disoroti di sini adalah penggunaan operator for. Berbeda dengan ekstraksi sederhana, di sini Anda ingin menghapus komentar. Trik yang cocok adalah dengan mengulangi koleksi dari Komentar terakhir ke Komentar pertama. Alasannya adalah jika Anda memulai dari akhir dan bergerak mundur, indeks item sebelumnya tetap tidak berubah, dan Anda dapat kembali ke item pertama dalam koleksi.

Contoh kode berikut menunjukkan metode ekstraksi dan penghapusan komentar:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-ProcessComments.cs" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file contoh contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Comments.docx).

{{% /alert %}}

### Cara Menghapus Komentar antara CommentRangeStart dan CommentRangeEnd

Menggunakan Aspose.Words Anda juga dapat menghapus komentar antara node **CommentRangeStart** dan **CommentRangeEnd**.

Contoh kode berikut menunjukkan cara menghapus teks antara **CommentRangeStart** dan **CommentRangeEnd**:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-RemoveRegionText-RemoveRegionText.cs" >}}

## Tambah atau Hapus Balasan Komentar

Metode [AddReply](https://reference.aspose.com/words/net/aspose.words/comment/addreply/) menambahkan balasan pada komentar ini. Harap dicatat bahwa karena keterbatasan Microsoft Office yang ada, hanya 1 tingkat balasan yang diperbolehkan dalam dokumen. Pengecualian tipe *InvalidOperationException* akan dimunculkan jika metode ini dipanggil pada komentar Balasan yang ada.

Anda dapat menggunakan metode [RemoveReply](https://reference.aspose.com/words/net/aspose.words/comment/removereply/) untuk menghapus balasan tertentu pada komentar ini.

Contoh kode berikut menunjukkan cara menambahkan balasan ke komentar dan menghapus balasan komentar:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-CommentReply-AddRemoveCommentReply.cs" >}}

## Baca Balasan Komentar

Properti [Replies](https://reference.aspose.com/words/net/aspose.words/comment/replies/) mengembalikan kumpulan objek [Comment](https://reference.aspose.com/words/net/aspose.words/comment/) yang merupakan turunan langsung dari komentar tertentu.

Contoh kode berikut menunjukkan cara mengulangi balasan komentar dan menyelesaikannya:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-CommentResolvedandReplies.cs" >}}
