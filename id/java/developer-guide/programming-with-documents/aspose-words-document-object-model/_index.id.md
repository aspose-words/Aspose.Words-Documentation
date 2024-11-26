---
title: Aspose.Words Model Objek Dokumen (DOM)
second_title: Aspose.Words untuk Java
articleTitle: Aspose.Words Model Objek Dokumen (DOM)
linktitle: Aspose.Words Model Objek Dokumen (DOM)
type: docs
description: "Model Objek Dokumen (DOM) adalah representasi dalam memori dari dokumen Word. Membaca, memanipulasi, dan memodifikasi konten dan pemformatan dokumen Word menggunakan Java."
weight: 10
url: /id/java/aspose-words-document-object-model/
timestamp: 2024-01-27-14-07-04
---

Model Objek Dokumen Aspose.Words (DOM) adalah representasi dalam memori dari dokumen Word. Aspose.Words DOM memungkinkan Anda membaca, memanipulasi, dan memodifikasi konten dan pemformatan dokumen Word secara terprogram.

Bagian ini menjelaskan kelas utama dari Aspose.Words DOM dan hubungannya. Dengan menggunakan kelas Aspose.Words DOM, Anda dapat memperoleh akses terprogram ke elemen dokumen dan pemformatan.

## Buat Pohon Objek Dokumen {#create-a-document-objects-tree}

Ketika sebuah dokumen dibaca ke dalam Aspose.Words DOM, maka pohon objek dibuat dan berbagai jenis elemen dokumen sumber memiliki objek pohon DOM sendiri dengan berbagai properti.

### Bangun Pohon Simpul Dokumen {#build-document-nodes-tree}

Ketika Aspose.Words membaca dokumen Word ke dalam memori, itu membuat objek dari berbagai jenis yang mewakili berbagai elemen dokumen. Setiap proses teks, paragraf, tabel, atau bagian adalah sebuah simpul, dan bahkan dokumen itu sendiri adalah sebuah simpul. Aspose.Words mendefinisikan kelas untuk setiap jenis simpul dokumen.

Pohon dokumen dalam Aspose.Words mengikuti Pola Desain Komposit:

- Semua kelas simpul pada akhirnya berasal dari kelas [Node](https://reference.aspose.com/words/java/com.aspose.words/node/), yang merupakan kelas dasar dalam Model Objek Dokumen Aspose.Words.
- Node yang dapat berisi node lain, misalnya, **Section** atau **Paragraph**, diturunkan dari kelas [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/), yang pada gilirannya diturunkan dari kelas **Node**.

Diagram yang disediakan di bawah ini menunjukkan pewarisan antara kelas simpul dari Model Objek Dokumen Aspose.Words (DOM). Nama-nama kelas abstrak dicetak miring.

<img src="/words/java/aspose-words-document-object-model/aspose-words-dom.png" alt="aspose-words-dom" style="width:700px"/>

{{% alert color="primary" %}}

Aspose.Words DOM juga berisi kelas non-simpul, seperti [Style](https://reference.aspose.com/words/java/com.aspose.words/style/) atau [Font](https://reference.aspose.com/words/java/com.aspose.words/font/), yang digunakan untuk menyesuaikan tampilan dan gaya dalam dokumen. Kelas-kelas ini tidak ditampilkan dalam diagram ini karena tidak diwarisi dari kelas `Node`.

{{% /alert %}}

Mari kita lihat sebuah contoh. Gambar berikut menunjukkan dokumen Microsoft Word dengan berbagai jenis konten.

<img src="/words/java/aspose-words-document-object-model/document-example.png" alt="document-example" style="width:700px"/>

Saat membaca dokumen di atas ke dalam Aspose.Words DOM, pohon objek dibuat, seperti yang ditunjukkan pada skema di bawah ini.

<img src="/words/java/aspose-words-document-object-model/document-example-dom.png" alt="document-example-dom" style="width:700px"/>

[Document](https://reference.aspose.com/words/java/com.aspose.words/document/), [Section](https://reference.aspose.com/words/java/com.aspose.words/section/), [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/), [Run](https://reference.aspose.com/words/java/com.aspose.words/run/), dan semua elips lainnya pada diagram adalah objek Aspose.Words yang mewakili elemen dari dokumen Word.

### Dapatkan Tipe `Node` {#get-a-node-type}

Meskipun kelas [Node](https://reference.aspose.com/words/java/com.aspose.words/node/) cukup memadai untuk membedakan node yang berbeda satu sama lain, Aspose.Words menyediakan pencacahan [NodeType](https://reference.aspose.com/words/java/com.aspose.words/nodetype/) untuk menyederhanakan beberapa tugas API, seperti memilih node dari tipe tertentu.

Jenis setiap simpul dapat diperoleh dengan menggunakan properti [NodeType](https://reference.aspose.com/words/java/com.aspose.words/node/#getNodeType). Properti ini mengembalikan nilai pencacahan **NodeType**. Misalnya, simpul paragraf yang diwakili oleh kelas **Paragraph** mengembalikan **NodeType**.**Paragraph**, dan simpul tabel yang diwakili oleh kelas **Table** mengembalikan **NodeType**.**Table**.

Contoh berikut menunjukkan cara mendapatkan tipe simpul menggunakan enumerasi **NodeType**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-GetNodeType-.java" >}}

## Navigasi Pohon Dokumen {#document-tree-navigation}

Aspose.Words merepresentasikan dokumen sebagai pohon simpul, yang memungkinkan Anda bernavigasi di antara simpul. Bagian ini menjelaskan cara menjelajahi dan menavigasi pohon dokumen di Aspose.Words.

Saat Anda membuka dokumen sampel, yang disajikan sebelumnya, di Penjelajah Dokumen, pohon simpul muncul persis seperti yang direpresentasikan dalam Aspose.Words.

<img src="/words/java/aspose-words-document-object-model/document-in-document-explorer.png" alt="document-in-document-explorer" style="width:680px"/>

{{% alert color="primary" %}}

Anda dapat mempelajari contoh proyek "Document Explorer" di [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Document_explorer).

{{% /alert %}}

### Hubungan Simpul Dokumen {#document-nodes-relationships}

Simpul-simpul di pohon memiliki hubungan di antara mereka:

- Sebuah simpul yang berisi simpul lain adalah *parent.*
- Simpul yang terdapat dalam simpul induk adalah *child.* Simpul turunan dari induk yang sama adalah *sibling* simpul.
- Simpul *root* selalu merupakan simpul [Document](https://reference.aspose.com/words/java/com.aspose.words/document/).

Node yang dapat berisi node lain berasal dari kelas [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/), dan semua node pada akhirnya berasal dari kelas [Node](https://reference.aspose.com/words/java/com.aspose.words/node/). Kedua kelas dasar ini menyediakan metode dan properti umum untuk navigasi dan modifikasi struktur pohon.

Diagram objek UML berikut menunjukkan beberapa simpul dari dokumen sampel dan hubungannya satu sama lain melalui properti induk, turunan, dan saudara kandung:

<img src="/words/java/aspose-words-document-object-model/document-nodes-relationships.png" alt="document-nodes-relationships" style="width:370px"/>

#### Dokumen adalah Pemilik Simpul

Sebuah simpul selalu menjadi milik dokumen tertentu, meskipun baru saja dibuat atau dihapus dari hierarki, karena struktur penting di seluruh dokumen seperti gaya dan daftar disimpan di simpul **Document**. Misalnya, tidak mungkin memiliki **Paragraph** tanpa **Document** karena setiap paragraf memiliki gaya yang ditetapkan yang didefinisikan secara global untuk dokumen tersebut. Aturan ini digunakan saat membuat node baru. Menambahkan **Paragraph** baru langsung ke DOM memerlukan objek dokumen yang diteruskan ke konstruktor.

{{% alert color="primary" %}}

Properti [Node.Document](https://reference.aspose.com/words/java/com.aspose.words/node/#getDocument) mengembalikan dokumen tempat node tersebut berada.

{{% /alert %}}

Saat membuat paragraf baru menggunakan [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/), pembuat selalu memiliki kelas **Document** yang ditautkan melalui properti [DocumentBuilder.Document](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#Document).

Contoh kode berikut menunjukkan bahwa saat membuat simpul apa pun, dokumen yang akan memiliki simpul selalu ditentukan:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-OwnerDocument-.java" >}}

#### Simpul Induk

Setiap node memiliki induk yang ditentukan oleh properti [ParentNode](https://reference.aspose.com/words/java/com.aspose.words/node/#getParentNode). Sebuah simpul tidak memiliki simpul induk, yaitu, **ParentNode** adalah nol, dalam kasus berikut:

- Simpul baru saja dibuat dan belum ditambahkan ke pohon.
- Simpul telah dihapus dari pohon.
- Ini adalah simpul root **Document** yang selalu memiliki simpul induk nol.

Anda dapat menghapus simpul dari induknya dengan memanggil metode [Remove](https://reference.aspose.com/words/java/com.aspose.words/node/#remove).Contoh kode berikut menunjukkan cara mengakses simpul induk:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-AccessParentNode-.java" >}}

#### Simpul Anak

Cara paling efisien untuk mengakses simpul turunan dari [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) adalah melalui properti [FirstChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#FirstChild) dan [LastChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#LastChild) yang masing-masing mengembalikan simpul turunan pertama dan terakhir. Jika tidak ada simpul turunan, properti ini mengembalikan *null*.

**CompositeNode**

Jika sebuah node tidak memiliki turunan, maka properti **ChildNodes** mengembalikan koleksi kosong. Anda dapat memeriksa apakah **CompositeNode** berisi simpul turunan apa pun menggunakan properti [HasChildNodes](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#hasChildNodes).

Contoh kode berikut menunjukkan cara menghitung simpul turunan langsung dari `CompositeNode` menggunakan pencacah yang disediakan oleh koleksi `ChildNodes`:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-ChildNodes-enumerateChildrenOfACompositeNodeUsingEnumeratorProvidedByChildNodesCollection.java" >}}

Contoh kode berikut menunjukkan cara menghitung simpul turunan langsung dari `CompositeNode` menggunakan akses terindeks:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-ChildNodes-enumerateChildrenOfACompositeNodeUsingIndexedAccess.java" >}}

#### Node Saudara Kandung

Anda dapat memperoleh simpul yang segera mendahului atau mengikuti simpul tertentu masing-masing menggunakan properti [PreviousSibling](https://reference.aspose.com/words/java/com.aspose.words/node/#getPreviousSibling) dan [NextSibling](https://reference.aspose.com/words/java/com.aspose.words/node/#getNextSibling). Jika sebuah simpul adalah turunan terakhir dari induknya, maka properti **NextSibling** adalah *null*. Sebaliknya, jika simpul adalah turunan pertama dari induknya, properti **PreviousSibling** adalah *null*.

Contoh kode berikut menunjukkan cara mengunjungi semua node turunan langsung dan tidak langsung dari node komposit secara efisien:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-SiblingNodes-.java" >}}

### Mengetik Akses ke Node Anak dan Induk

Sejauh ini, kita telah membahas properti yang mengembalikan salah satu tipe dasar - **Node** atau **CompositeNode**. Namun terkadang ada situasi di mana Anda mungkin perlu memberikan nilai ke kelas simpul tertentu, seperti **Run** atau **Paragraph**. Artinya, Anda tidak dapat sepenuhnya melepaskan diri dari casting saat bekerja dengan Aspose.Words DOM, yang merupakan komposit.

Untuk mengurangi kebutuhan casting, sebagian besar kelas Aspose.Words menyediakan properti dan koleksi yang menyediakan akses bertipe kuat. Ada tiga pola dasar akses yang diketik:

- Simpul induk memperlihatkan properti **FirstXXX** dan **LastXXX** yang diketik. Misalnya, **Document** memiliki properti [FirstSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getFirstSection) dan [LastSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getLastSection). Demikian pula, **Table** memiliki properti seperti [FirstRow](https://reference.aspose.com/words/java/com.aspose.words/table/#getFirstRow), [LastRow](https://reference.aspose.com/words/java/com.aspose.words/table/#getLastRow), dan lainnya.
- Simpul induk memperlihatkan kumpulan simpul turunan yang diketik, seperti [Document.Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections), [Body.Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/story/#getParagraphs), dan lainnya.
- Simpul turunan menyediakan akses yang diketik ke induknya, seperti [Run.ParentParagraph](https://reference.aspose.com/words/java/com.aspose.words/inline/#getParentParagraph), [Paragraph.ParentSection](https://reference.aspose.com/words/java/com.aspose.words/paragraph/#getParentSection), dan lainnya.

Properti yang diketik hanyalah pintasan berguna yang terkadang memberikan akses lebih mudah daripada properti umum yang diwarisi dari [Node.ParentNode](https://reference.aspose.com/words/java/com.aspose.words/node/#getParentNode) dan [CompositeNode.FirstChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getFirstChild).

Contoh kode berikut menunjukkan cara menggunakan properti yang diketik untuk mengakses node dari pohon dokumen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-TypedAccessToChildrenAndParent-.java" >}}
