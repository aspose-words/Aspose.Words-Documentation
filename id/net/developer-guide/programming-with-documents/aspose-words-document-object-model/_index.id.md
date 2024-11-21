---
title: Aspose.Words Document Object Model (DOM) di C#
second_title: Aspose.Words untuk .NET
articleTitle: Aspose.Words Document Object Model (DOM)
linktitle: Aspose.Words Document Object Model (DOM)
type: docs
description: "Document Object Model (DOM) adalah representasi dokumen Word dalam memori. Membaca, memanipulasi, dan memodifikasi konten dan format dokumen Word menggunakan C#."
weight: 10
url: /id/net/aspose-words-document-object-model/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words Document Object Model (DOM) adalah representasi dokumen Word dalam memori. Aspose.Words DOM memungkinkan Anda membaca, memanipulasi, dan memodifikasi konten dan format dokumen Word secara terprogram.

Bagian ini menjelaskan kelas utama Aspose.Words DOM dan hubungannya. Dengan menggunakan kelas Aspose.Words DOM, Anda bisa mendapatkan akses terprogram ke elemen dan pemformatan dokumen.

## Buat {#create-a-document-objects-tree} Pohon Objek `Document`

Ketika sebuah dokumen dibaca ke dalam Aspose.Words DOM, maka pohon objek dibangun dan berbagai jenis elemen dokumen sumber memiliki objek pohon DOM sendiri dengan berbagai properti.

### Bangun Pohon Node Dokumen {#build-document-nodes-tree}

Saat Aspose.Words membaca dokumen Word ke dalam memori, Aspose.Words membuat objek dengan tipe berbeda yang mewakili berbagai elemen dokumen. Setiap rangkaian teks, paragraf, tabel, atau bagian adalah sebuah simpul, dan bahkan dokumen itu sendiri adalah sebuah simpul. Aspose.Words mendefinisikan kelas untuk setiap tipe node dokumen.

Pohon dokumen di Aspose.Words mengikuti Pola Desain Komposit:

- Semua kelas node pada akhirnya berasal dari kelas [Node](https://reference.aspose.com/words/net/aspose.words/node/), yang merupakan kelas dasar dalam Document Object Model Aspose.Words.
- Node yang dapat berisi node lain, misalnya **Section** atau **Paragraph**, berasal dari kelas [CompositeNode](https://reference.aspose.com/words/net/aspose.words/compositenode/), yang selanjutnya berasal dari kelas **Node**.

Diagram di bawah ini menunjukkan pewarisan antar kelas node Aspose.Words Document Object Model (DOM). Nama kelas abstrak dicetak miring.

<img src="/words/net/aspose-words-document-object-model/aspose-words-dom.png" alt="asumsi-kata-dom" style="width:700px"/>

{{% alert color="primary" %}}

Aspose.Words DOM juga berisi kelas non-node, seperti [Style](https://reference.aspose.com/words/net/aspose.words/style/) atau [Font](https://reference.aspose.com/words/net/aspose.words/font/), yang digunakan untuk menyesuaikan tampilan dan gaya dalam dokumen. Kelas-kelas ini tidak ditampilkan dalam diagram ini karena tidak diwarisi dari kelas `Node`.

{{% /alert %}}

Mari kita lihat sebuah contoh. Gambar berikut menunjukkan dokumen Microsoft Word dengan tipe konten berbeda.

<img src="/words/net/aspose-words-document-object-model/document-example.png" alt="dokumen-contoh-aspose-kata-kata" style="width:700px"/>

Saat membaca dokumen di atas ke dalam Aspose.Words DOM, pohon objek dibuat, seperti yang ditunjukkan pada skema di bawah ini.

<img src="/words/net/aspose-words-document-object-model/document-example-dom.png" alt="kata-kata dom-aspose" style="width:700px"/>

[Document](https://reference.aspose.com/words/net/aspose.words/document/), [Section](https://reference.aspose.com/words/net/aspose.words/section/), [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/), [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/), [Run](https://reference.aspose.com/words/net/aspose.words/run/), dan semua elips lainnya pada diagram adalah objek Aspose.Words yang mewakili elemen dokumen Word.

### Dapatkan `Node` Tipe {#get-a-node-type}

Meskipun kelas [Node](https://reference.aspose.com/words/net/aspose.words/node/) cukup memadai untuk membedakan node yang berbeda satu sama lain, Aspose.Words menyediakan enumerasi [NodeType](https://reference.aspose.com/words/net/aspose.words/node/nodetype/) untuk menyederhanakan beberapa tugas API, seperti memilih node dengan tipe tertentu.

Jenis setiap node dapat diperoleh dengan menggunakan properti [NodeType](https://reference.aspose.com/words/net/aspose.words/node/nodetype/). Properti ini mengembalikan nilai enumerasi **NodeType**. Misalnya, node paragraf yang diwakili oleh kelas **Paragraph** mengembalikan **NodeType**.**Paragraph**, dan node tabel yang diwakili oleh kelas **Table** mengembalikan **NodeType**.**Table**.

Contoh berikut menunjukkan cara mendapatkan tipe node menggunakan enumerasi **NodeType**:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-UseNodeType.cs" >}}

## Navigasi Pohon Dokumen {#document-tree-navigation}

Aspose.Words mewakili dokumen sebagai pohon simpul, yang memungkinkan Anda bernavigasi antar simpul. Bagian ini menjelaskan cara menjelajahi dan menavigasi pohon dokumen di Aspose.Words.

Saat Anda membuka dokumen sampel, yang disajikan sebelumnya, di Penjelajah Dokumen, pohon simpul muncul persis seperti yang direpresentasikan dalam Aspose.Words.

<img src="/words/net/aspose-words-document-object-model/document-in-document-explorer.png" alt="penjelajahan dokumen-dalam-dokumen" style="width:680px"/>

{{% alert color="primary" %}}

Anda dapat mempelajari contoh proyek "Document Explorer" di [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples/DocumentExplorer).

{{% /alert %}}

### Hubungan Node Dokumen {#document-nodes-relationships}

Node-node pada pohon mempunyai hubungan di antara mereka:

- Sebuah node yang berisi node lain adalah *parent.*
- Node yang terdapat pada node induk adalah *child.* Node anak dari induk yang sama adalah node *sibling*.
- Node *root* selalu merupakan node [Document](https://reference.aspose.com/words/net/aspose.words/document/).

Node yang dapat berisi node lain berasal dari kelas [CompositeNode](https://reference.aspose.com/words/net/aspose.words/compositenode/), dan semua node pada akhirnya berasal dari kelas [Node](https://reference.aspose.com/words/net/aspose.words/node/). Kedua kelas dasar ini menyediakan metode dan properti umum untuk navigasi dan modifikasi struktur pohon.

Diagram objek UML berikut memperlihatkan beberapa node dari dokumen sampel dan hubungannya satu sama lain melalui properti induk, anak, dan saudara:

<img src="/words/net/aspose-words-document-object-model/document-nodes-relationships.png" alt="dokumen-node-hubungan-aspose-kata-kata" style="width:370px"/>

#### Dokumen adalah Pemilik Node

Sebuah node selalu menjadi milik dokumen tertentu, meskipun baru saja dibuat atau dihapus dari pohon, karena struktur penting seluruh dokumen seperti gaya dan daftar disimpan di node **Document**. Misalnya, tidak mungkin memiliki **Paragraph** tanpa **Document** karena setiap paragraf memiliki gaya yang ditentukan secara global untuk dokumen tersebut. Aturan ini digunakan saat membuat node baru. Menambahkan **Paragraph** baru langsung ke DOM memerlukan objek dokumen yang diteruskan ke konstruktor.

{{% alert color="primary" %}}

Properti [Node.Document](https://reference.aspose.com/words/net/aspose.words/node/document/) mengembalikan dokumen milik node tersebut.

{{% /alert %}}

Saat membuat paragraf baru menggunakan [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/), pembuatnya selalu memiliki kelas **Document** yang ditautkan melalui properti [DocumentBuilder.Document](https://reference.aspose.com/words/net/aspose.words/documentbuilder/document/).

Contoh kode berikut menunjukkan bahwa saat membuat node apa pun, dokumen yang akan memiliki node tersebut selalu ditentukan:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-OwnerDocument.cs" >}}

#### Node Induk

Setiap node memiliki induk yang ditentukan oleh properti [ParentNode](https://reference.aspose.com/words/net/aspose.words/node/parentnode/). Sebuah node tidak memiliki node induk, yaitu **ParentNode** adalah null, dalam kasus berikut:

- Node baru saja dibuat dan belum ditambahkan ke pohon.
- Node telah dihapus dari pohon.
- Ini adalah node root **Document** yang selalu memiliki node induk nol.

Anda dapat menghapus sebuah node dari induknya dengan memanggil metode [Remove](https://reference.aspose.com/words/net/aspose.words/node/remove/). Contoh kode berikut menunjukkan cara mengakses node induk:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-GetParentNode.cs" >}}

#### Node Anak

Cara paling efisien untuk mengakses node anak [CompositeNode](https://reference.aspose.com/words/net/aspose.words/compositenode/) adalah melalui properti [FirstChild](https://reference.aspose.com/words/net/aspose.words/compositenode/firstchild/) dan [LastChild](https://reference.aspose.com/words/net/aspose.words/compositenode/lastchild/) yang masing-masing mengembalikan node anak pertama dan terakhir. Jika tidak ada node anak, properti ini mengembalikan *null*.

**CompositeNode** juga menyediakan metode [GetChildNodes](https://reference.aspose.com/words/net/aspose.words/compositenode/getchildnodes/) yang memungkinkan akses yang diindeks atau dihitung ke node anak. Properti **ChildNodes** adalah kumpulan node yang aktif, artinya setiap kali dokumen diubah, misalnya saat node dihapus atau ditambahkan, koleksi **ChildNodes** secara otomatis diperbarui.

Jika sebuah node tidak memiliki anak, maka properti **ChildNodes** mengembalikan koleksi kosong. Anda dapat memeriksa apakah **CompositeNode** berisi node anak menggunakan properti [HasChildNodes](https://reference.aspose.com/words/net/aspose.words/compositenode/haschildnodes/).

Contoh kode berikut menunjukkan cara menghitung node anak langsung dari `CompositeNode` menggunakan enumerator yang disediakan oleh koleksi `ChildNodes`:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-EnumerateChildNodes.cs" >}}

Contoh kode berikut menunjukkan cara menghitung node anak langsung dari `CompositeNode` menggunakan akses yang diindeks:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-IndexChildNodes.cs" >}}

#### Node Saudara

Anda bisa mendapatkan node yang mendahului atau mengikuti node tertentu menggunakan properti [PreviousSibling](https://reference.aspose.com/words/net/aspose.words/node/previoussibling/) dan [NextSibling](https://reference.aspose.com/words/net/aspose.words/node/nextsibling/). Jika sebuah node adalah anak terakhir dari induknya, maka properti **NextSibling**nya adalah *null*. Sebaliknya, jika node adalah anak pertama dari induknya, properti **PreviousSibling**-nya adalah *null*.

Contoh kode berikut menunjukkan cara mengunjungi semua node turunan langsung dan tidak langsung dari node komposit secara efisien:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-RecurseAllNodes.cs" >}}

### Akses yang Diketik ke Node Anak dan Induk {#typed-access-to-child-and-parent-nodes}

Sejauh ini, kita telah membahas properti yang mengembalikan salah satu tipe dasar – **Node** atau **CompositeNode**. Namun terkadang ada situasi di mana Anda mungkin perlu memberikan nilai ke kelas node tertentu, seperti **Run** atau **Paragraph**. Artinya, Anda tidak dapat sepenuhnya melepaskan diri dari casting saat bekerja dengan Aspose.Words DOM, yang merupakan komposit.

Untuk mengurangi kebutuhan casting, sebagian besar kelas Aspose.Words menyediakan properti dan koleksi yang menyediakan akses yang diketik dengan kuat. Ada tiga pola dasar akses yang diketik:

- Node induk memperlihatkan properti **FirstXXX** dan **LastXXX** yang diketik. Misalnya, **Document** memiliki properti [FirstSection](https://reference.aspose.com/words/net/aspose.words/document/firstsection/) dan [LastSection](https://reference.aspose.com/words/net/aspose.words/document/lastsection/). Begitu pula **Table** yang memiliki properti seperti [FirstRow](https://reference.aspose.com/words/net/aspose.words.tables/table/firstrow/), [LastRow](https://reference.aspose.com/words/net/aspose.words.tables/table/lastrow/), dan lain-lain.
- Node induk memperlihatkan kumpulan node anak yang diketik, seperti [Document.Sections](https://reference.aspose.com/words/net/aspose.words/document/sections/), [Body.Paragraphs](https://reference.aspose.com/words/net/aspose.words/story/paragraphs/), dan lainnya.
- Node anak memberikan akses yang diketik ke induknya, seperti [Run.ParentParagraph](https://reference.aspose.com/words/net/aspose.words/inline/parentparagraph/), [Paragraph.ParentSection](https://reference.aspose.com/words/net/aspose.words/paragraph/parentsection/), dan lainnya.

Properti yang diketik hanyalah pintasan berguna yang terkadang memberikan akses lebih mudah daripada properti umum yang diwarisi dari [Node.ParentNode](https://reference.aspose.com/words/net/aspose.words/node/parentnode/) dan [CompositeNode.FirstChild](https://reference.aspose.com/words/net/aspose.words/compositenode/firstchild/).

Contoh kode berikut menunjukkan cara menggunakan properti yang diketik untuk mengakses node pohon dokumen:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-TypedAccess.cs" >}}
