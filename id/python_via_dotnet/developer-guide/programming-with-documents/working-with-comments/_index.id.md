---
title: Bekerja dengan Komentar di Python
second_title: Aspose.Words untuk Python via .NET
articleTitle: Bekerja dengan Komentar
linktitle: Bekerja dengan Komentar
description: "Cara menambah, menghapus, atau memanipulasi komentar dalam dokumen menggunakan Python."
type: docs
weight: 260
url: /id/python-net/working-with-comments/
---

{{% alert color="primary" %}}

**Coba daring**

Anda dapat mencoba fungsi ini dengan [Hapus anotasi online gratis](https://products.aspose.app/words/annotation) kami.

{{% /alert %}}

Aspose.Words memungkinkan pengguna untuk bekerja dengan komentar – komentar dalam dokumen di Aspose.Words diwakili oleh kelas [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/). Gunakan juga kelas [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) dan [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) untuk menentukan wilayah teks yang harus dikaitkan dengan komentar.

## Tambahkan komentar

Aspose.Words memungkinkan Anda menambahkan komentar dengan beberapa cara:

1. Menggunakan kelas [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/)
2. Menggunakan kelas [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) dan [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/)

Contoh kode berikut menunjukkan cara menambahkan komentar ke paragraf menggunakan kelas **Comment**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-AddComments.py" >}}

Contoh kode berikut menunjukkan cara menambahkan komentar ke paragraf menggunakan wilayah teks dan kelas **CommentRangeStart** dan **CommentRangeEnd**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-AnchorComment.py" >}}

## Ekstrak atau Hapus Komentar

Menggunakan Komentar di dokumen Word (selain Lacak Perubahan) adalah praktik umum saat meninjau dokumen, terutama ketika terdapat beberapa peninjau. Mungkin ada situasi di mana satu-satunya hal yang Anda butuhkan dari sebuah dokumen adalah komentar. Katakanlah Anda ingin membuat daftar temuan tinjauan, atau mungkin Anda telah mengumpulkan semua informasi berguna dari dokumen dan Anda hanya ingin menghapus komentar yang tidak perlu. Anda mungkin ingin melihat atau menghapus komentar dari pengulas tertentu.

Dalam contoh ini kita akan melihat beberapa metode sederhana untuk mengumpulkan informasi dari komentar dalam dokumen dan untuk menghapus komentar dari dokumen. Secara khusus kami akan membahas cara:

- Ekstrak semua komentar dari dokumen atau hanya komentar yang dibuat oleh penulis tertentu.
- Hapus semua komentar dari dokumen atau hanya dari penulis tertentu.

### Cara Mengekstrak atau Menghapus Komentar

Kode dalam contoh ini sebenarnya cukup sederhana dan semua metode didasarkan pada pendekatan yang sama. Komentar dalam dokumen Word diwakili oleh objek [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) dalam model objek dokumen Aspose.Words. Untuk mengumpulkan semua komentar dalam dokumen gunakan metode [get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) dengan parameter pertama disetel ke [NodeType.COMMENT](https://reference.aspose.com/words/python-net/aspose.words/nodetype/#comment). Pastikan parameter kedua metode **dapatkan_child_nodes** diatur ke true: ini memaksa **dapatkan_child_nodes** untuk memilih dari semua node anak secara rekursif, bukan hanya mengumpulkan anak langsung.

Untuk mengilustrasikan cara mengekstrak dan menghapus komentar dari dokumen, kita akan melalui langkah-langkah berikut:

1. Buka dokumen Word menggunakan kelas [Document](https://reference.aspose.com/words/python-net/aspose.words/document/)
1. Dapatkan semua komentar dari dokumen ke dalam koleksi
1. Untuk mengekstrak komentar:
   1. Telusuri koleksi menggunakan operator foreach
   1. Ekstrak dan cantumkan nama penulis, tanggal &amp; waktu serta teks semua komentar
   1. Ekstrak dan cantumkan nama penulis, tanggal &amp; waktu serta teks komentar yang ditulis oleh penulis tertentu, dalam hal ini penulis 'ks'
1. Untuk menghapus komentar:
   1. Kembali ke koleksi menggunakan operator for
   1. Hapus komentar
1. Simpan perubahannya

### Cara Mengekstrak Semua Komentar

Metode [get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) sangat berguna dan Anda dapat menggunakannya setiap kali Anda perlu mendapatkan daftar node dokumen jenis apa pun. Koleksi yang dihasilkan tidak menimbulkan overhead langsung karena node dipilih ke dalam koleksi ini hanya ketika Anda menghitung atau mengakses item di dalamnya.

Contoh kode berikut menunjukkan cara mengekstrak nama penulis, tanggal &amp; waktu dan teks semua komentar di dokumen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-ExtractComments.py" >}}

### Cara Mengekstrak Komentar dari Penulis Tertentu

Setelah Anda memilih node [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) ke dalam koleksi, yang harus Anda lakukan adalah mengekstrak informasi yang Anda perlukan. Dalam contoh ini, inisial penulis, tanggal, waktu dan teks biasa dari komentar digabungkan menjadi satu string; Anda dapat memilih untuk menyimpannya dengan cara lain.

Metode kelebihan beban untuk mengekstrak Komentar dari penulis tertentu hampir sama, hanya memeriksa nama penulis sebelum menambahkan info ke dalam array.

Contoh kode berikut menunjukkan cara mengekstrak nama penulis, tanggal &amp; waktu dan teks komentar oleh penulis yang ditentukan:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-ExtractCommentsByAuthor.py" >}}

### Cara Menghapus Komentar

Jika Anda menghapus semua komentar, Anda tidak perlu menelusuri koleksi untuk menghapus komentar satu per satu; Anda dapat menghapusnya dengan memanggil [clear](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/clear/) di koleksi komentar.

Contoh kode berikut menunjukkan cara menghapus semua komentar di dokumen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-RemoveComments.py" >}}

Saat Anda perlu menghapus komentar secara selektif, prosesnya menjadi lebih mirip dengan kode yang kami gunakan untuk ekstraksi komentar.

Contoh kode berikut menunjukkan cara menghapus komentar dari penulis tertentu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-RemoveCommentsByAuthor.py" >}}

Poin utama yang perlu disoroti di sini adalah penggunaan operator for. Berbeda dengan ekstraksi sederhana, di sini Anda ingin menghapus komentar. Trik yang cocok adalah dengan mengulangi koleksi dari [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) terakhir ke [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) pertama. Alasannya adalah jika Anda memulai dari akhir dan bergerak mundur, indeks item sebelumnya tetap tidak berubah, dan Anda dapat kembali ke item pertama dalam koleksi.

Contoh kode berikut menunjukkan metode ekstraksi dan penghapusan komentar:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-ProcessComments.py" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file contoh contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Comments.docx).

{{% /alert %}}

### Cara Menghapus Komentar antara CommentRangeStart dan CommentRangeEnd

Menggunakan Aspose.Words Anda juga dapat menghapus komentar antara node **CommentRangeStart** dan **CommentRangeEnd**.

Contoh kode berikut menunjukkan cara menghapus teks antara **CommentRangeStart** dan **CommentRangeEnd**:

{{< highlight python >}}
# Open the document.
doc = aw.Document(docs_base.my_dir + "Comments.docx")

commentStart = doc.get_child(aw.NodeType.COMMENT_RANGE_START, 0, True).as_comment_range_start()
commentEnd = doc.get_child(aw.NodeType.COMMENT_RANGE_END, 0, True).as_comment_range_end()

currentNode = commentStart
isRemoving = True
while (currentNode != None and isRemoving) :
    if (currentNode.node_type == aw.NodeType.COMMENT_RANGE_END) :
        isRemoving = False

    nextNode = currentNode.next_pre_order(doc)
    currentNode.remove()
    currentNode = nextNode

# Save the document.
doc.save(docs_base.artifacts_dir + "WorkingWithComments.remove_region_text.docx")
{{< /highlight >}}

## Tambah atau Hapus Balasan Komentar

Metode [add_reply](https://reference.aspose.com/words/python-net/aspose.words/comment/add_reply/) menambahkan balasan pada komentar ini. Harap dicatat bahwa karena keterbatasan Microsoft Office yang ada, hanya 1 tingkat balasan yang diperbolehkan dalam dokumen. Pengecualian tipe **InvalidOperationException** akan dimunculkan jika metode ini dipanggil pada komentar Balasan yang ada.

Anda dapat menggunakan metode [remove_reply](https://reference.aspose.com/words/python-net/aspose.words/comment/remove_reply/) untuk menghapus balasan tertentu pada komentar ini.

Contoh kode berikut menunjukkan cara menambahkan balasan ke komentar dan menghapus balasan komentar:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-AddRemoveCommentReply.py" >}}

## Baca Balasan Komentar

Properti [replies](https://reference.aspose.com/words/python-net/aspose.words/comment/replies/) mengembalikan kumpulan objek [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) yang merupakan turunan langsung dari komentar tertentu.

Contoh kode berikut menunjukkan cara mengulangi balasan komentar dan menyelesaikannya:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-CommentResolvedandReplies.py" >}}