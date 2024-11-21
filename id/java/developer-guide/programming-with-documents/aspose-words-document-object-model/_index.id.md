---
title: Aspose.Words Document Object Model (DOM)
second_title: Aspose.Words Sitemap Java
articleTitle: Aspose.Words Document Object Model (DOM)
linktitle: Aspose.Words Document Object Model (DOM)
type: docs
description: "Document Object Model SitemapDOM) adalah representasi dalam dokumen Word. Baca, manipulasi, dan memodifikasi konten dan format dokumen Word menggunakan JavaSitemap"
weight: 10
url: /id/java/aspose-words-document-object-model/
timestamp: 2024-01-27-14-07-04
---

Login Aspose.Words Document Object Model SitemapDOM) adalah representasi dalam dokumen Word. Login Aspose.Words DOM memungkinkan Anda untuk membaca secara programmatik, memanipulasi, dan memodifikasi konten dan memformat dokumen Word.

Bagian ini menjelaskan kelas utama dari Aspose.Words DOM dan hubungan mereka. Dengan menggunakan Aspose.Words DOM Kelas, Anda dapat memperoleh akses programmatic ke elemen dokumen dan format.

## Buat Dokumen Pohon objek {#create-a-document-objects-tree}

Ketika dokumen dibaca ke dalam Meme it Aspose.Words <span notrans="<span notrans=" DOM"=""></span>Sitemap kemudian pohon objek dibangun dan berbagai jenis elemen dokumen sumber memiliki mereka sendiri DOM objek pohon dengan berbagai properti.

### Membangun Dokumen Nodes Pohon {#build-document-nodes-tree}

Sitemap Aspose.Words membaca dokumen Word ke dalam memori, itu menciptakan objek dari berbagai jenis yang mewakili berbagai elemen dokumen. Setiap menjalankan teks, paragraf, tabel, atau bagian adalah node, dan bahkan dokumen itu sendiri adalah sebuah node. Aspose.Words mendefinisikan kelas untuk setiap jenis node dokumen.

Pohon dokumen di Aspose.Words mengikuti Pola Desain Komposit:

- Semua kelas node akhirnya berasal dari Meme it [Node](https://reference.aspose.com/words/java/com.aspose.words/node/) kelas, yang merupakan kelas dasar dalam Aspose.Words Document Object ModelSitemap
- Tidak ada yang dapat mengandung node lain, misalnya, **Section** Sitemap **Paragraph**, Login [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) kelas, yang pada gilirannya berasal dari Meme it **Node** Sitemap

Diagram yang disediakan di bawah menunjukkan warisan antara kelas node dari Aspose.Words Document Object Model SitemapDOMSitemap Nama kelas abstrak di Italics.

<img src="/words/java/aspose-words-document-object-model/aspose-words-dom.png" alt="aspose-words-dom" style="width:700px"/>

{{% alert color="primary" %}}

Login Aspose.Words DOM juga mengandung kelas non-node, seperti [Style](https://reference.aspose.com/words/java/com.aspose.words/style/) Sitemap [Font](https://reference.aspose.com/words/java/com.aspose.words/font/), yang digunakan untuk menyesuaikan penampilan dan gaya dalam dokumen. Kelas-kelas ini tidak ditampilkan dalam diagram ini karena tidak diwariskan dari `Node` Sitemap

{{% /alert %}}

Mari kita lihat contoh. Gambar berikut menunjukkan Microsoft Word dokumen dengan berbagai jenis konten.

<img src="/words/java/aspose-words-document-object-model/document-example.png" alt="document-example" style="width:700px"/>

Saat membaca dokumen di atas ke Aspose.Words DOM, pohon benda diciptakan, seperti yang ditunjukkan dalam skema di bawah ini.

<img src="/words/java/aspose-words-document-object-model/document-example-dom.png" alt="document-example-dom" style="width:700px"/>

[Document](https://reference.aspose.com/words/java/com.aspose.words/document/), [Section](https://reference.aspose.com/words/java/com.aspose.words/section/), [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/), [Run](https://reference.aspose.com/words/java/com.aspose.words/run/), dan semua elips lain pada diagram Aspose.Words objek yang mewakili unsur-unsur dokumen Word.

### Sitemap `Node` Login {#get-a-node-type}

Walaupun [Node](https://reference.aspose.com/words/java/com.aspose.words/node/) kelas cukup untuk membedakan node yang berbeda dari satu sama lain, Aspose.Words Sitemap [NodeType](https://reference.aspose.com/words/java/com.aspose.words/nodetype/) enumerasi untuk menyederhanakan beberapa API tugas, seperti memilih node dari jenis tertentu.

Jenis setiap node dapat diperoleh menggunakan [NodeType](https://reference.aspose.com/words/java/com.aspose.words/node/#getNodeType) Login Properti ini mengembalikan **NodeType** Nilai numerasi. Misalnya, simpul paragraf yang diwakili oleh **Paragraph** kelas kembali **NodeType**Sitemap**Paragraph**, dan node tabel yang diwakili oleh **Table** kelas kembali **NodeType**Sitemap**Table**Sitemap

Contoh berikut menunjukkan bagaimana untuk mendapatkan jenis simpul menggunakan **NodeType** Sitemap

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-GetNodeType-.java" >}}

## Navigasi Pohon Dokumen {#document-tree-navigation}

Aspose.Words mewakili dokumen sebagai pohon node, yang memungkinkan Anda untuk menavigasi antara node. Bagian ini menjelaskan cara menjelajahi dan menavigasi pohon dokumen di Aspose.WordsSitemap

Ketika Anda membuka dokumen sampel, disajikan sebelumnya, di Dokumen Explorer, pohon node muncul persis seperti itu diwakili Aspose.WordsSitemap

<img src="/words/java/aspose-words-document-object-model/document-in-document-explorer.png" alt="document-in-document-explorer" style="width:680px"/>

{{% alert color="primary" %}}

Anda dapat mempelajari proyek sampel "Document Explorer" di [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Document_explorer)Sitemap

{{% /alert %}}

### Hubungan Node Dokumen {#document-nodes-relationships}

Node di pohon memiliki hubungan antara mereka:

- Sebuah node yang mengandung node lain adalah *parent.*
- Login Node yang terkandung dalam node induk adalah *child.* Node anak orang tua yang sama *sibling* Login
- Sitemap *root* Login [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) Login

Node yang dapat mengandung node lain berasal dari [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) kelas, dan semua node akhirnya berasal dari Meme it [Node](https://reference.aspose.com/words/java/com.aspose.words/node/) Sitemap Kelas dasar dua ini memberikan metode dan sifat umum untuk navigasi dan modifikasi struktur pohon.

Diagram objek UML berikut menunjukkan beberapa node dokumen sampel dan hubungan mereka satu sama lain melalui induk, anak, dan sifat saudara:

<img src="/words/java/aspose-words-document-object-model/document-nodes-relationships.png" alt="document-nodes-relationships" style="width:370px"/>

#### Dokumen adalah Pemilik Node

Sebuah node selalu milik dokumen tertentu, bahkan jika itu baru saja diciptakan atau dihapus dari pohon, karena struktur berukuran dokumen penting seperti gaya dan daftar disimpan dalam **Document** Login Misalnya, tidak mungkin untuk memiliki Meme it **Paragraph** tanpa **Document** karena setiap paragraf memiliki gaya yang ditetapkan secara global untuk dokumen. Aturan ini digunakan ketika membuat node baru. Menambahkan baru **Paragraph** langsung ke DOM mengharuskan objek dokumen yang dilewatkan ke konstruktor.

{{% alert color="primary" %}}

Login [Node.Document](https://reference.aspose.com/words/java/com.aspose.words/node/#getDocument) properti mengembalikan dokumen yang dimiliki node.

{{% /alert %}}

Saat membuat paragraf baru menggunakan [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/), pembangun selalu memiliki **Document** kelas terkait dengannya melalui Meme it [DocumentBuilder.Document](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#Document) Login

Contoh kode berikut menunjukkan bahwa ketika membuat node, dokumen yang akan memiliki node selalu didefinisikan:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-OwnerDocument-.java" >}}

#### Orang tua Node

Setiap node memiliki orang tua yang ditentukan oleh [ParentNode](https://reference.aspose.com/words/java/com.aspose.words/node/#getParentNode) Login A node tidak memiliki node induk, yaitu, **ParentNode** adalah null, dalam kasus berikut:

- Login Node telah dibuat dan belum ditambahkan ke pohon.
- Login Node telah dihapus dari pohon.
- Login Ini adalah akar **Document** node yang selalu memiliki simpul induk null.

Anda dapat menghapus node dari orang tuanya dengan memanggil Meme it [Remove](https://reference.aspose.com/words/java/com.aspose.words/node/#remove) Login Contoh kode berikut menunjukkan cara mengakses node induk:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-AccessParentNode-.java" >}}

#### Node Anak

Cara yang paling efisien untuk mengakses node anak dari [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) Sitemap [FirstChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#FirstChild) Login [LastChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#LastChild) properti yang mengembalikan simpul anak pertama dan terakhir, masing-masing. Jika tidak ada node anak, sifat ini kembali *null*Sitemap

**CompositeNode** juga menyediakan [ChildNodes](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getChildNodes) koleksi memungkinkan akses yang diindeks atau dihitung ke node anak. Login **ChildNodes** properti adalah koleksi langsung dari node, yang berarti bahwa setiap kali dokumen diubah, seperti ketika node dihapus atau ditambahkan, **ChildNodes** koleksi diperbarui secara otomatis.

Jika sebuah node tidak memiliki anak, maka **ChildNodes** properti kembali koleksi kosong. Anda dapat memeriksa apakah **CompositeNode** mengandung node anak yang menggunakan [HasChildNodes](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#hasChildNodes) Login

Contoh kode berikut menunjukkan cara menghitung simpul anak langsung dari `CompositeNode` menggunakan enumerator yang disediakan oleh `ChildNodes` Sitemap

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-ChildNodes-enumerateChildrenOfACompositeNodeUsingEnumeratorProvidedByChildNodesCollection.java" >}}

Contoh kode berikut menunjukkan cara menghitung simpul anak langsung dari `CompositeNode` menggunakan akses yang diindeks:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-ChildNodes-enumerateChildrenOfACompositeNodeUsingIndexedAccess.java" >}}

#### Login

Anda dapat memperoleh node yang segera sebelumnya atau mengikuti node tertentu menggunakan [PreviousSibling](https://reference.aspose.com/words/java/com.aspose.words/node/#getPreviousSibling) Login [NextSibling](https://reference.aspose.com/words/java/com.aspose.words/node/#getNextSibling) properti, masing-masing. Jika sebuah node adalah anak terakhir dari orang tuanya, maka **NextSibling** properti *null*Sitemap Sebaliknya, jika node adalah anak pertama orang tuanya, **PreviousSibling** properti *null*Sitemap

Contoh kode berikut menunjukkan cara untuk secara efisien mengunjungi semua simpul anak langsung dan tidak langsung dari simpul komposit:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-SiblingNodes-.java" >}}

### Akses ke Anak dan Orang Tua Nodes

Sejauh ini, kami telah membahas sifat yang mengembalikan salah satu jenis dasar – **Node** Sitemap **CompositeNode**Sitemap Tapi kadang-kadang ada situasi di mana Anda mungkin perlu untuk melemparkan nilai ke kelas node tertentu, seperti **Run** Sitemap **Paragraph**Sitemap Itu, Anda tidak bisa benar-benar pergi dari casting ketika bekerja dengan Meme it Aspose.Words DOM, yang komposit.

Untuk mengurangi kebutuhan untuk pengecoran, sebagian besar Aspose.Words Kelas menyediakan properti dan koleksi yang memberikan akses yang sangat berjenis. Ada tiga pola dasar akses ketik:

- Sebuah node induk mengekspos ketik **FirstXXX** Login **LastXXX** Sitemap Sebagai contoh, **Document** Login [FirstSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getFirstSection) Login [LastSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getLastSection) Sitemap Sitemap **Table** memiliki sifat seperti Meme it [FirstRow](https://reference.aspose.com/words/java/com.aspose.words/table/#getFirstRow), [LastRow](https://reference.aspose.com/words/java/com.aspose.words/table/#getLastRow), dan lainnya.
- Sebuah node induk mengekspos koleksi node anak yang diketik, seperti [Document.Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections), [Body.Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/story/#getParagraphs), dan lainnya.
- Sebuah node anak memberikan akses ke orang tuanya, seperti [Run.ParentParagraph](https://reference.aspose.com/words/java/com.aspose.words/inline/#getParentParagraph), [Paragraph.ParentSection](https://reference.aspose.com/words/java/com.aspose.words/paragraph/#getParentSection), dan lainnya.

Properti yang diketik hanya berguna pintas yang kadang-kadang memberikan akses yang lebih mudah daripada sifat generik yang diwariskan dari [Node.ParentNode](https://reference.aspose.com/words/java/com.aspose.words/node/#getParentNode) Login [CompositeNode.FirstChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getFirstChild)Sitemap

Contoh kode berikut menunjukkan bagaimana menggunakan sifat berjenis untuk mengakses node dari pohon dokumen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-TypedAccessToChildrenAndParent-.java" >}}
