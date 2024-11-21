---
title: Aspose.Words Model Objek Dokumen (DOM) dalam C++
second_title: Aspose.Words untuk C++
articleTitle: Aspose.Words Model Objek Dokumen (DOM)
linktitle: Aspose.Words Model Objek Dokumen (DOM)
type: docs
description: "Model Objek Dokumen (DOM) adalah representasi dalam memori dari dokumen Word. Membaca, memanipulasi, dan memodifikasi konten dan pemformatan dokumen Word menggunakan C++."
weight: 10
url: /id/cpp/aspose-words-document-object-model/
timestamp: 2024-01-27-14-07-04
---

Model Objek Dokumen Aspose.Words (DOM) adalah representasi dalam memori dari dokumen Word. Aspose.Words DOM memungkinkan Anda membaca, memanipulasi, dan memodifikasi konten dan pemformatan dokumen Word secara terprogram.

Bagian ini menjelaskan kelas utama dari Aspose.Words DOM dan hubungannya. Dengan menggunakan kelas Aspose.Words DOM, Anda dapat memperoleh akses terprogram ke elemen dokumen dan pemformatan.

## Buat Pohon Objek Dokumen {#create-a-document-objects-tree}

Ketika sebuah dokumen dibaca ke dalam Aspose.Words DOM, maka pohon objek dibuat dan berbagai jenis elemen dokumen sumber memiliki objek pohon DOM sendiri dengan berbagai properti.

### Bangun Pohon Simpul Dokumen {#build-document-nodes-tree}

Saat Aspose.Words membaca dokumen Word ke dalam memori, dokumen tersebut membuat objek dari berbagai jenis yang mewakili berbagai elemen dokumen. Setiap proses teks, paragraf, tabel, atau bagian adalah sebuah simpul, dan bahkan dokumen itu sendiri adalah sebuah simpul. Aspose.Words mendefinisikan kelas untuk setiap jenis simpul dokumen.

Pohon dokumen dalam Aspose.Words mengikuti Pola Desain Komposit:

- Semua kelas simpul pada akhirnya berasal dari kelas [Node](https://reference.aspose.com/words/cpp/aspose.words/node/), yang merupakan kelas dasar dalam Model Objek Dokumen Aspose.Words.
- Node yang dapat berisi node lain, misalnya, **Section** atau **Paragraph**, diturunkan dari kelas [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/), yang pada gilirannya diturunkan dari kelas **Node**.

Diagram yang disediakan di bawah ini menunjukkan pewarisan antara kelas simpul dari Model Objek Dokumen Aspose.Words (DOM). Nama-nama kelas abstrak dicetak miring.

<img src="aspose-words-dom.png" alt="aspose-words-dom-aspose-words-cpp" style="width:700px"/>

{{% alert color="primary" %}}

Aspose.Words DOM juga berisi kelas non-simpul, seperti [Style](https://reference.aspose.com/words/cpp/aspose.words/style/) atau [Font](https://reference.aspose.com/words/cpp/aspose.words/font/), yang digunakan untuk menyesuaikan tampilan dan gaya dalam dokumen. Kelas-kelas ini tidak ditampilkan dalam diagram ini karena tidak diwarisi dari kelas `Node`.

{{% /alert %}}

Mari kita lihat sebuah contoh. Gambar berikut menunjukkan dokumen Microsoft Word dengan berbagai jenis konten.

<img src="document-example.png" alt="document-example-aspose-words-cpp" style="width:700px"/>

Saat membaca dokumen di atas ke dalam Aspose.Words DOM, pohon objek dibuat, seperti yang ditunjukkan pada skema di bawah ini.

<img src="document-example-dom.png" alt="document-example-dom-aspose-words-cpp" style="width:700px"/>

[Document](https://reference.aspose.com/words/cpp/aspose.words/document/), [Section](https://reference.aspose.com/words/cpp/aspose.words/section/), [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/), [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape), [Run](https://reference.aspose.com/words/cpp/aspose.words/run/), dan semua elips lain pada diagram adalah objek Aspose.Words yang mewakili elemen dokumen Word.

### Dapatkan Tipe `Node` {#get-a-node-type}

Meskipun kelas [Node](https://reference.aspose.com/words/cpp/aspose.words/node/) cukup memadai untuk membedakan node yang berbeda satu sama lain, Aspose.Words menyediakan pencacahan [NodeType](https://reference.aspose.com/words/cpp/aspose.words/nodetype/) untuk menyederhanakan beberapa tugas API, seperti memilih node dari tipe tertentu.

Jenis setiap simpul dapat diperoleh dengan menggunakan properti [NodeType](https://reference.aspose.com/words/cpp/aspose.words/node/get_nodetype/). Properti ini mengembalikan **NodeType** enumeration value. For example, a paragraph node represented by the **Paragraph** class returns **NodeType**.**Paragraph**, dan simpul tabel yang diwakili oleh **Table** class returns **NodeType**.**Table**.

Contoh berikut menunjukkan cara mendapatkan tipe simpul menggunakan enumerasi **NodeType**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-UseNodeType.cpp" >}}

## Navigasi Pohon Dokumen {#document-tree-navigation}

Aspose.Words merepresentasikan dokumen sebagai pohon simpul, yang memungkinkan Anda bernavigasi di antara simpul. Bagian ini menjelaskan cara menjelajahi dan menavigasi pohon dokumen di Aspose.Words.

Saat Anda membuka dokumen sampel, yang disajikan sebelumnya, di Penjelajah Dokumen, pohon simpul muncul persis seperti yang direpresentasikan dalam Aspose.Words.

<img src="document-in-document-explorer.png" alt="document-in-document-explorer-aspose-words-cpp" style="width:680px"/>

### Hubungan Simpul Dokumen {#document-nodes-relationships}

Simpul-simpul di pohon memiliki hubungan di antara mereka:

- Sebuah simpul yang berisi simpul lain adalah *parent.*
- Simpul yang terdapat dalam simpul induk adalah *child.* Simpul turunan dari induk yang sama adalah *sibling* simpul.
- Simpul *root* selalu merupakan simpul [Document](https://reference.aspose.com/words/cpp/aspose.words/document/).

Node yang dapat berisi node lain berasal dari kelas [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode), dan semua node pada akhirnya berasal dari kelas [Node](https://reference.aspose.com/words/cpp/aspose.words/node/). Kedua kelas dasar ini menyediakan metode dan properti umum untuk navigasi dan modifikasi struktur pohon.

Diagram objek UML berikut menunjukkan beberapa simpul dari dokumen sampel dan hubungannya satu sama lain melalui properti induk, turunan, dan saudara kandung:

<img src="document-nodes-relationships.png" alt="document-nodes-relationships-aspose-words-cpp" style="width:370px"/>

#### Dokumen adalah Pemilik Simpul

Sebuah simpul selalu menjadi milik dokumen tertentu, meskipun baru saja dibuat atau dihapus dari hierarki, karena struktur penting di seluruh dokumen seperti gaya dan daftar disimpan di simpul **Document**. Misalnya, tidak mungkin memiliki **Paragraph** tanpa **Document** karena setiap paragraf memiliki gaya yang ditetapkan yang didefinisikan secara global untuk dokumen tersebut. Aturan ini digunakan saat membuat node baru. Menambahkan **Paragraph** baru langsung ke DOM memerlukan objek dokumen yang diteruskan ke konstruktor.

{{% alert color="primary" %}}

Properti [Node.Document](https://reference.aspose.com/words/cpp/aspose.words/node/get_document/) mengembalikan dokumen tempat node tersebut berada.

{{% /alert %}}

Saat membuat paragraf baru menggunakan [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/), pembuat selalu memiliki kelas **Document** yang ditautkan melalui properti [DocumentBuilder.Document](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_document/).

Contoh kode berikut menunjukkan bahwa saat membuat simpul apa pun, dokumen yang akan memiliki simpul selalu ditentukan:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-OwnerDocument.cpp" >}}

#### Simpul Induk

Setiap node memiliki induk yang ditentukan oleh properti [ParentNode](https://reference.aspose.com/words/cpp/aspose.words/node/get_parentnode/). Sebuah simpul tidak memiliki simpul induk, yaitu, **ParentNode** adalah nol, dalam kasus berikut:

- Simpul baru saja dibuat dan belum ditambahkan ke pohon.
- Simpul telah dihapus dari pohon.
- Ini adalah simpul root **Document** yang selalu memiliki simpul induk nol.

Anda dapat menghapus simpul dari induknya dengan memanggil metode [Remove](https://reference.aspose.com/words/cpp/aspose.words/node/remove/).Contoh kode berikut menunjukkan cara mengakses simpul induk:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-GetParentNode.cpp" >}}

#### Simpul Anak

Cara paling efisien untuk mengakses simpul turunan dari [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/) adalah melalui properti [FirstChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_firstchild/) dan [LastChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_lastchild/) yang masing-masing mengembalikan simpul turunan pertama dan terakhir. Jika tidak ada simpul turunan, properti ini mengembalikan *null*.

**CompositeNode**

Jika sebuah node tidak memiliki turunan, maka properti **ChildNodes** mengembalikan koleksi kosong. Anda dapat memeriksa apakah **CompositeNode** berisi simpul turunan apa pun menggunakan properti [HasChildNodes](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_haschildnodes/).

Contoh kode berikut menunjukkan cara menghitung simpul turunan langsung dari `CompositeNode` menggunakan pencacah yang disediakan oleh koleksi `ChildNodes`:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-EnumerateChildNodes.cpp" >}}

Contoh kode berikut menunjukkan cara menghitung simpul turunan langsung dari `CompositeNode` menggunakan akses terindeks:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-IndexChildNodes.cpp" >}}

#### Node Saudara Kandung

Anda dapat memperoleh simpul yang segera mendahului atau mengikuti simpul tertentu masing-masing menggunakan properti [PreviousSibling](https://reference.aspose.com/words/cpp/aspose.words/node/get_previoussibling/) dan [NextSibling](https://reference.aspose.com/words/cpp/aspose.words/node/get_nextsibling/). Jika sebuah simpul adalah turunan terakhir dari induknya, maka properti **NextSibling** adalah *null*. Sebaliknya, jika simpul adalah turunan pertama dari induknya, properti **PreviousSibling** adalah *null*.

Contoh kode berikut menunjukkan cara mengunjungi semua node turunan langsung dan tidak langsung dari node komposit secara efisien:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-RecurseAllNodes.cpp" >}}

### Mengetik Akses ke Node Anak dan Induk

Sejauh ini, kita telah membahas properti yang mengembalikan salah satu tipe dasar - **Node** atau **CompositeNode**. Namun terkadang ada situasi di mana Anda mungkin perlu memberikan nilai ke kelas simpul tertentu, seperti **Run** atau **Paragraph**. Artinya, Anda tidak dapat sepenuhnya melepaskan diri dari casting saat bekerja dengan Aspose.Words DOM, yang merupakan komposit.

Untuk mengurangi kebutuhan casting, sebagian besar kelas Aspose.Words menyediakan properti dan koleksi yang menyediakan akses bertipe kuat. Ada tiga pola dasar akses yang diketik:

- Simpul induk memperlihatkan properti **FirstXXX** dan **LastXXX** yang diketik. Misalnya, **Document** memiliki properti [FirstSection](https://reference.aspose.com/words/cpp/aspose.words/document/get_firstsection/) dan [LastSection](https://reference.aspose.com/words/cpp/aspose.words/document/get_lastsection/). Demikian pula, **Table** memiliki properti seperti [FirstRow](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_firstrow/), [LastRow](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_lastrow/), dan lainnya.
- Simpul induk memperlihatkan kumpulan simpul turunan yang diketik, seperti [Document.Sections](https://reference.aspose.com/words/cpp/aspose.words/document/get_sections/), [Body.Paragraphs](https://reference.aspose.com/words/cpp/aspose.words/story/get_paragraphs/), dan lainnya.
- Simpul turunan menyediakan akses yang diketik ke induknya, seperti [Run.ParentParagraph](https://reference.aspose.com/words/cpp/aspose.words/inline/get_parentparagraph/), [Paragraph.ParentSection](https://reference.aspose.com/words/cpp/aspose.words/paragraph/get_parentsection/), dan lainnya.

Properti yang diketik hanyalah pintasan berguna yang terkadang memberikan akses lebih mudah daripada properti umum yang diwarisi dari [Node.ParentNode](https://reference.aspose.com/words/cpp/aspose.words/node/get_parentnode/) dan [CompositeNode.FirstChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_firstchild/).

Contoh kode berikut menunjukkan cara menggunakan properti yang diketik untuk mengakses node dari pohon dokumen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-TypedAccess.cpp" >}}
