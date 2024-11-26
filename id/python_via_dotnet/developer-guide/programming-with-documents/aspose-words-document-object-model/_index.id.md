---
title: Aspose.Words DOM
second_title: Aspose.Words untuk Python via .NET
articleTitle: Aspose.Words Document Object Model (DOM)
linktitle: Aspose.Words Document Object Model (DOM)
type: docs
description: "Document Object Model (DOM) adalah representasi dokumen Word dalam memori. Membaca, memanipulasi, dan memodifikasi konten dan format dokumen Word menggunakan Python."
weight: 10
url: /id/python-net/aspose-words-document-object-model/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words Document Object Model (DOM) adalah representasi dokumen Word dalam memori. Aspose.Words DOM memungkinkan Anda membaca, memanipulasi, dan memodifikasi konten dan format dokumen Word secara terprogram.

Bagian ini menjelaskan kelas utama Aspose.Words DOM dan hubungannya. Dengan menggunakan kelas Aspose.Words DOM, Anda bisa mendapatkan akses terprogram ke elemen dan pemformatan dokumen.

## Buat {#create-a-document-objects-tree} Pohon Objek `Document`

Ketika sebuah dokumen dibaca ke dalam Aspose.Words DOM, maka pohon objek dibangun dan berbagai jenis elemen dokumen sumber memiliki objek pohon DOM sendiri dengan berbagai properti.

### Bangun Pohon Node Dokumen {#build-document-nodes-tree}

Saat Aspose.Words membaca dokumen Word ke dalam memori, Aspose.Words membuat objek dengan tipe berbeda yang mewakili berbagai elemen dokumen. Setiap rangkaian teks, paragraf, tabel, atau bagian adalah sebuah simpul, dan bahkan dokumen itu sendiri adalah sebuah simpul. Aspose.Words mendefinisikan kelas untuk setiap tipe node dokumen.

Pohon dokumen di Aspose.Words mengikuti Pola Desain Komposit:

- Semua kelas node pada akhirnya berasal dari kelas [Node](https://reference.aspose.com/words/python-net/aspose.words/node/), yang merupakan kelas dasar dalam Document Object Model Aspose.Words.
- Node yang dapat berisi node lain, misalnya [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) atau [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), berasal dari kelas [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/), yang selanjutnya berasal dari kelas [Node](https://reference.aspose.com/words/python-net/aspose.words/node/).

Diagram di bawah ini menunjukkan pewarisan antar kelas node Aspose.Words Document Object Model (DOM). Nama kelas abstrak dicetak miring.

<img src="/words/python-net/aspose-words-document-object-model/aspose-words-dom.png" alt="asumsi-kata-dom" style="width:700px"/>

{{% alert color="primary" %}}

Aspose.Words DOM juga berisi kelas non-node, seperti [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) atau [Font](https://reference.aspose.com/words/python-net/aspose.words/font/), yang digunakan untuk menyesuaikan tampilan dan gaya dalam dokumen. Kelas-kelas ini tidak ditampilkan dalam diagram ini karena tidak diwarisi dari kelas [Node](https://reference.aspose.com/words/python-net/aspose.words/node/).

{{% /alert %}}

Mari kita lihat sebuah contoh. Gambar berikut menunjukkan dokumen Microsoft Word dengan tipe konten berbeda.

<img src="/words/python-net/aspose-words-document-object-model/document-example.png" alt="dokumen-contoh-aspose-kata-kata" style="width:700px"/>

Saat membaca dokumen di atas ke dalam Aspose.Words DOM, pohon objek dibuat, seperti yang ditunjukkan pada skema di bawah ini.

<img src="/words/python-net/aspose-words-document-object-model/document-example-dom.png" alt="kata-kata dom-aspose" style="width:700px"/>

[Document](https://reference.aspose.com/words/python-net/aspose.words/document/), [Section](https://reference.aspose.com/words/python-net/aspose.words/section/), [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/), [Run](https://reference.aspose.com/words/python-net/aspose.words/run/), dan semua elips lainnya pada diagram adalah objek Aspose.Words yang mewakili elemen dokumen Word.

### Dapatkan `Node` Tipe {#get-a-node-type}

Meskipun kelas [Node](https://reference.aspose.com/words/python-net/aspose.words/node/) cukup memadai untuk membedakan node yang berbeda satu sama lain, Aspose.Words menyediakan enumerasi [NodeType](https://reference.aspose.com/words/python-net/aspose.words/nodetype/) untuk menyederhanakan beberapa tugas API, seperti memilih node dengan tipe tertentu.

Jenis setiap node dapat diperoleh dengan menggunakan properti [Node.node_type](https://reference.aspose.com/words/python-net/aspose.words/node/node_type/). Properti ini mengembalikan nilai enumerasi [NodeType](https://reference.aspose.com/words/python-net/aspose.words/nodetype/). Misalnya, node paragraf yang diwakili oleh kelas [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) mengembalikan [NodeType.PARAGRAPH](https://reference.aspose.com/words/python-net/aspose.words/nodetype/#paragraph), dan node tabel yang diwakili oleh kelas [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) mengembalikan [NodeType.TABLE](https://reference.aspose.com/words/python-net/aspose.words/nodetype/#table).

Contoh berikut menunjukkan cara mendapatkan tipe node menggunakan enumerasi [NodeType](https://reference.aspose.com/words/python-net/aspose.words/nodetype/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-UseNodeType.py" >}}

## Navigasi Pohon Dokumen {#document-tree-navigation}

Aspose.Words mewakili dokumen sebagai pohon simpul, yang memungkinkan Anda bernavigasi antar simpul. Bagian ini menjelaskan cara menjelajahi dan menavigasi pohon dokumen di Aspose.Words.

Saat Anda membuka dokumen sampel, yang disajikan sebelumnya, di Penjelajah Dokumen, pohon simpul muncul persis seperti yang direpresentasikan dalam Aspose.Words.

<img src="/words/python-net/aspose-words-document-object-model/document-in-document-explorer.png" alt="penjelajahan dokumen-dalam-dokumen" style="width:680px"/>

{{% alert color="primary" %}}

Anda dapat mempelajari contoh proyek "Document Explorer" di [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples).

{{% /alert %}}

### Hubungan Node Dokumen {#document-nodes-relationships}

Node-node pada pohon mempunyai hubungan di antara mereka:

- Sebuah node yang berisi node lain adalah *parent.*
- Node yang terdapat pada node induk adalah *child.* Node anak dari induk yang sama adalah node *sibling*.
- Node *root* selalu merupakan node [Document](https://reference.aspose.com/words/python-net/aspose.words/document/).

Node yang dapat berisi node lain berasal dari kelas [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/), dan semua node pada akhirnya berasal dari kelas [Node](https://reference.aspose.com/words/python-net/aspose.words/node/). Kedua kelas dasar ini menyediakan metode dan properti umum untuk navigasi dan modifikasi struktur pohon.

Diagram objek UML berikut memperlihatkan beberapa node dari dokumen sampel dan hubungannya satu sama lain melalui properti induk, anak, dan saudara:

<img src="/words/python-net/aspose-words-document-object-model/document-nodes-relationships.png" alt="dokumen-node-hubungan-aspose-kata-kata" style="width:370px"/>

#### Dokumen adalah Pemilik Node

Sebuah node selalu menjadi milik dokumen tertentu, meskipun baru saja dibuat atau dihapus dari pohon, karena struktur penting seluruh dokumen seperti gaya dan daftar disimpan di node [Document](https://reference.aspose.com/words/python-net/aspose.words/document/). Misalnya, tidak mungkin memiliki [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) tanpa [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) karena setiap paragraf memiliki gaya yang ditentukan secara global untuk dokumen tersebut. Aturan ini digunakan saat membuat node baru. Menambahkan [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) baru langsung ke DOM memerlukan objek dokumen yang diteruskan ke konstruktor.

{{% alert color="primary" %}}

Properti [Node.document](https://reference.aspose.com/words/python-net/aspose.words/node/document/) mengembalikan dokumen milik node tersebut.

{{% /alert %}}

Saat membuat paragraf baru menggunakan [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/), pembuatnya selalu memiliki kelas [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) yang ditautkan melalui properti [DocumentBuilder.document](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/document/).

Contoh kode berikut menunjukkan bahwa saat membuat node apa pun, dokumen yang akan memiliki node tersebut selalu ditentukan:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-OwnerDocument.py" >}}

#### Node Induk

Setiap node memiliki induk yang ditentukan oleh properti [parent_node](https://reference.aspose.com/words/python-net/aspose.words/node/parent_node/). Sebuah node tidak memiliki node induk, yaitu [parent_node](https://reference.aspose.com/words/python-net/aspose.words/node/parent_node/) adalah *None*, dalam kasus berikut:

- Node baru saja dibuat dan belum ditambahkan ke pohon.
- Node telah dihapus dari pohon.
- Ini adalah node root [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) yang selalu memiliki node induk Tidak Ada.

Anda dapat menghapus sebuah node dari induknya dengan memanggil metode [Node.remove](https://reference.aspose.com/words/python-net/aspose.words/node/remove/). Contoh kode berikut menunjukkan cara mengakses node induk:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-GetParentNode.py" >}}

#### Node Anak

Cara paling efisien untuk mengakses node anak [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) adalah melalui properti [first_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/first_child/) dan [last_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/last_child/) yang masing-masing mengembalikan node anak pertama dan terakhir. Jika tidak ada node anak, properti ini mengembalikan *None*.

[CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) juga menyediakan koleksi [get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) yang memungkinkan akses yang diindeks atau dihitung ke node anak. Metode [get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) mengembalikan kumpulan node yang aktif, yang berarti setiap kali dokumen diubah, misalnya saat node dihapus atau ditambahkan, koleksi **dapatkan_child_nodes** secara otomatis diperbarui.

Jika sebuah node tidak memiliki anak, maka metode **dapatkan_child_nodes** mengembalikan koleksi kosong. Anda dapat memeriksa apakah [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) berisi node anak menggunakan properti [has_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/has_child_nodes/).

Contoh kode berikut menunjukkan cara menghitung node anak langsung dari [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) menggunakan enumerator yang disediakan oleh koleksi **dapatkan_child_nodes**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-EnumerateChildNodes.py" >}}

#### Node Saudara

Anda bisa mendapatkan node yang mendahului atau mengikuti node tertentu menggunakan properti [previous_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/previous_sibling/) dan [next_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/next_sibling/). Jika sebuah node adalah anak terakhir dari induknya, maka properti [next_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/next_sibling/) adalah *None*. Sebaliknya, jika node adalah anak pertama dari induknya, properti [previous_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/previous_sibling/)-nya adalah *None*.

Contoh kode berikut menunjukkan cara mengunjungi semua node turunan langsung dan tidak langsung dari node komposit secara efisien:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-RecurseAllNodes.py" >}}

### Akses yang Diketik ke Node Anak dan Induk {#typed-access-to-child-and-parent-nodes}

Sejauh ini, kita telah membahas properti yang mengembalikan salah satu tipe dasar – [Node](https://reference.aspose.com/words/python-net/aspose.words/node/) atau [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/). Namun terkadang ada situasi di mana Anda mungkin perlu memberikan nilai ke kelas node tertentu, seperti [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) atau [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/). Artinya, Anda tidak dapat sepenuhnya melepaskan diri dari casting saat bekerja dengan Aspose.Words DOM, yang merupakan komposit.

Untuk mengurangi kebutuhan casting, sebagian besar kelas Aspose.Words menyediakan properti dan koleksi yang menyediakan akses yang diketik dengan kuat. Ada tiga pola dasar akses yang diketik:

- Node induk memperlihatkan properti **pertama_XXX** dan **terakhir_XXX** yang diketik. Misalnya, [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) memiliki properti [first_section](https://reference.aspose.com/words/python-net/aspose.words/document/first_section/) dan [last_section](https://reference.aspose.com/words/python-net/aspose.words/document/last_section/). Begitu pula [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) yang memiliki properti seperti [first_row](https://reference.aspose.com/words/python-net/aspose.words.tables/table/first_row/), [last_row](https://reference.aspose.com/words/python-net/aspose.words.tables/table/last_row/), dan lain-lain.
- Node induk memperlihatkan kumpulan node anak yang diketik, seperti [Document.sections](https://reference.aspose.com/words/python-net/aspose.words/document/sections/), [Body.paragraphs](https://reference.aspose.com/words/python-net/aspose.words/story/paragraphs/), dan lainnya.
- Node anak memberikan akses yang diketik ke induknya, seperti [Run.parent_paragraph](https://reference.aspose.com/words/python-net/aspose.words/inline/parent_paragraph/), [Paragraph.parent_section](https://reference.aspose.com/words/python-net/aspose.words/paragraph/parent_section/), dan lainnya.

Properti yang diketik hanyalah pintasan berguna yang terkadang memberikan akses lebih mudah daripada properti umum yang diwarisi dari [Node.parent_node](https://reference.aspose.com/words/python-net/aspose.words/node/parent_node/) dan [CompositeNode.first_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/first_child/).

Contoh kode berikut menunjukkan cara menggunakan properti yang diketik untuk mengakses node pohon dokumen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-TypedAccess.py" >}}
