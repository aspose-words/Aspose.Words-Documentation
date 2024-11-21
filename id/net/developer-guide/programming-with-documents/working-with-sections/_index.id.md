---
title: Bekerja dengan Bagian di C#
second_title: Aspose.Words untuk .NET
articleTitle: Bekerja dengan Bagian
linktitle: Bekerja dengan Bagian
description: "Memahami konsep bagian dokumen dan praktik manipulasi menggunakan C#. Sisipkan bagian ke dalam dokumen C#. Hapus bagian C#. Salin bagian antar Dokumen."
type: docs
weight: 120
url: /id/net/working-with-sections/
timestamp: 2024-09-25-11-08-55
---

Terkadang Anda menginginkan dokumen yang tidak memiliki format yang sama di semua halaman. Misalnya, Anda mungkin perlu mengubah format nomor halaman, memiliki ukuran dan orientasi halaman yang berbeda, atau menjadikan halaman dokumen pertama sebagai halaman sampul tanpa penomoran apa pun. Anda dapat mencapainya dengan beberapa bagian.

Bagian adalah node tingkat yang mengontrol header dan footer, orientasi, kolom, margin, format nomor halaman, dan lain-lain.

Aspose.Words memungkinkan Anda mengelola bagian, membagi dokumen menjadi beberapa bagian, dan membuat perubahan format yang hanya berlaku untuk bagian tertentu. Aspose.Words menyimpan informasi tentang pemformatan bagian seperti header dan footer, pengaturan halaman, dan pengaturan kolom di hentian bagian.

Artikel ini menjelaskan cara bekerja dengan bagian dan hentian bagian.

## Apa Bagian dan Bagian Istirahat Itu

Bagian dokumen diwakili oleh kelas [Section](https://reference.aspose.com/words/net/aspose.words/section/) dan [SectionCollection](https://reference.aspose.com/words/net/aspose.words/section/collection). Objek bagian adalah turunan langsung dari node [Document](https://reference.aspose.com/words/net/aspose.words/document/) dan dapat diakses melalui properti [Sections](https://reference.aspose.com/words/net/aspose.words/document//properties/sections). Anda dapat mengelola node tersebut dengan menggunakan beberapa metode seperti [Remove](https://reference.aspose.com/words/net/aspose.words/nodecollection/remove/), [Add](https://reference.aspose.com/words/net/aspose.words/nodecollection/add/), [IndexOf](https://reference.aspose.com/words/net/aspose.words/nodecollection/indexof/), dan lainnya.

Hentian bagian adalah opsi yang membagi halaman dokumen menjadi beberapa bagian dengan tata letak yang dapat disesuaikan.

## Jenis Bagian Istirahat

Aspose.Words memungkinkan Anda membagi dan memformat dokumen menggunakan hentian bagian berbeda dari enumerasi [BreakType](https://reference.aspose.com/words/net/aspose.words/breaktype/):

* BagianIstirahat Berkelanjutan
* BagianBreakKolom Baru
* BagianBreakHalaman Baru
* BagianBreakEvenPage
* BagianBreakOddPage

Anda juga dapat menggunakan enumerasi [SectionStart](https://reference.aspose.com/words/net/aspose.words/sectionstart/) untuk memilih jenis jeda yang hanya berlaku untuk bagian pertama seperti NewColumn, NewPage, EvenPage, dan OddPage.

## Kelola Bagian

Karena suatu bagian adalah node komposit normal, API manipulasi seluruh node dapat digunakan untuk memanipulasi bagian: untuk menambah, menghapus, dan operasi lain pada bagian. Anda dapat membaca lebih lanjut tentang node di artikel [Aspose.Words Document Object Model (DOM)](/words/id/net/aspose-words-document-object-model/).

Di sisi lain, Anda juga dapat menggunakan `DocumentBuilder` API untuk bekerja dengan bagian. Pada artikel ini, kami akan fokus pada cara khusus bekerja dengan bagian ini.

## Menyisipkan atau Menghapus Hentian Bagian

Aspose.Words memungkinkan Anda menyisipkan pemisah bagian ke dalam teks menggunakan metode [InsertBreak](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertbreak/).

Contoh kode berikut menunjukkan cara menyisipkan pemisah bagian ke dalam dokumen:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "insert-section-breaks.cs" >}}

Gunakan metode [Remove](https://reference.aspose.com/words/net/aspose.words/node/remove/) untuk menghapus hentian bagian. Jika Anda tidak perlu menghapus hentian bagian tertentu dan malah menghapus konten bagian tersebut, Anda dapat menggunakan metode [ClearContent](https://reference.aspose.com/words/net/aspose.words/section/clearcontent/).

Contoh kode berikut menunjukkan cara menghapus hentian bagian:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "remove-section-breaks.cs" >}}

{{% alert color="primary" %}}

Perhatikan bahwa hentian bagian memiliki informasi tentang bagian sebelumnya, bukan bagian setelahnya. Jadi jika Anda menghapus hentian bagian, teks sebelum hentian bagian yang dihapus akan mendapatkan properti dari hentian bagian yang mengikutinya. Hal ini dapat menyebabkan seluruh dokumen menjadi lanskap, atau header dan footer berubah atau hilang sama sekali.

{{% /alert %}}

## Pindahkan Bagian

Jika Anda ingin memindahkan suatu bagian dari satu posisi ke posisi lain dalam dokumen Anda, Anda perlu mendapatkan indeks bagian tersebut. Aspose.Words memungkinkan Anda mendapatkan posisi bagian dari [SectionCollection](https://reference.aspose.com/words/net/aspose.words/sectioncollection/) dengan menggunakan properti [Item](https://reference.aspose.com/words/net/aspose.words/sectioncollection//properties/item). Anda dapat menggunakan properti [Sections](https://reference.aspose.com/words/net/aspose.words/document/sections/) untuk mendapatkan semua bagian dalam dokumen Anda. Namun jika Anda ingin mendapatkan bagian pertama saja, Anda bisa menggunakan properti [FirstSection](https://reference.aspose.com/words/net/aspose.words/document/firstsection/).

Contoh kode berikut menunjukkan cara mengakses bagian pertama dan melakukan iterasi melalui turunan node komposit:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "section-child-nodes.cs" >}}

## Tentukan Tata Letak Bagian

Terkadang Anda ingin dokumen Anda terlihat lebih baik dengan membuat tata letak kreatif untuk bagian dokumen yang berbeda. Jika Anda ingin menentukan tipe kisi bagian saat ini, Anda dapat memilih mode tata letak bagian menggunakan enumerasi [SectionLayoutMode](https://reference.aspose.com/words/net/aspose.words/sectionlayoutmode/):

* Bawaan
* Kisi
* GarisGrid
* SnapToChars

Contoh kode berikut menunjukkan cara membatasi jumlah baris yang dimiliki setiap halaman:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "line-grid-section-layout-mode.cs" >}}

## Edit Bagian

Saat Anda menambahkan bagian baru ke dokumen Anda, tidak akan ada isi atau paragraf yang dapat Anda edit. Aspose.Words memungkinkan Anda menjamin bahwa suatu bagian berisi badan dengan setidaknya satu paragraf menggunakan metode [EnsureMinimum](https://reference.aspose.com/words/net/aspose.words/section/ensureminimum/) – metode ini akan secara otomatis menambahkan simpul Badan (atau HeaderFooter) ke dokumen dan kemudian menambahkan Paragraf ke dalamnya.

Contoh kode berikut menunjukkan cara menyiapkan node bagian baru menggunakan **EnsureMinimum**:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "ensure-minimum.cs" >}}

### Tambahkan atau Tambahkan Konten

Jika Anda ingin menggambar suatu bentuk atau menambahkan teks atau gambar di awal/akhir bagian, Anda bisa menggunakan metode [AppendContent](https://reference.aspose.com/words/net/aspose.words/section/appendcontent/) dan [PrependContent](https://reference.aspose.com/words/net/aspose.words/section/prependcontent/) dari kelas [Section](https://reference.aspose.com/words/net/aspose.words/section/).

Contoh kode berikut menunjukkan cara menambahkan konten bagian yang sudah ada:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "append-section-content.cs" >}}

### Mengkloning Bagian

Aspose.Words memungkinkan Anda menduplikasi suatu bagian dengan membuat salinan lengkapnya menggunakan metode [Clone](https://reference.aspose.com/words/net/aspose.words/section/clone/).

Contoh kode berikut menunjukkan cara mengkloning bagian pertama dalam dokumen Anda:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "clone-section.cs" >}}

### Salin Bagian antar Dokumen

Dalam beberapa kasus, Anda mungkin memiliki dokumen besar dengan banyak bagian dan Anda ingin menyalin konten suatu bagian dari satu dokumen ke dokumen lainnya.

Aspose.Words memungkinkan Anda menyalin bagian antar dokumen menggunakan metode [ImportNode](https://reference.aspose.com/words/net/aspose.words/nodeimporter/importnode/).

Contoh kode berikut menunjukkan cara menyalin bagian antar dokumen:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "copy-section.cs" >}}

### Bekerja dengan Bagian Header dan Footer

Aturan dasar untuk menampilkan header atau footer untuk setiap bagian cukup sederhana:

1. Jika bagian tersebut tidak memiliki header/footer jenis tertentu, maka diambil dari bagian sebelumnya.
2. Jenis header/footer yang ditampilkan pada halaman dikontrol oleh pengaturan bagian "Halaman Pertama Berbeda" dan "Halaman Ganjil &amp; Genap Berbeda" – jika dinonaktifkan, maka judul bagian itu sendiri akan diabaikan.

Contoh kode berikut menunjukkan cara membuat 2 bagian dengan header berbeda:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "link-to-previous-header-footer.cs" >}}

Jika Anda ingin menghapus teks header dan footer tanpa menghapus objek [HeaderFooter](https://reference.aspose.com/words/net/aspose.words/headerfooter/) di dokumen Anda, Anda dapat menggunakan metode [ClearHeadersFooters](https://reference.aspose.com/words/net/aspose.words/section/clearheadersfooters/). Selain itu, Anda bisa menggunakan metode [DeleteHeaderFooterShapes](https://reference.aspose.com/words/net/aspose.words/section/deleteheaderfootershapes/) untuk menghapus semua bentuk dari header dan footer di dokumen Anda.

Contoh kode berikut menunjukkan cara menghapus konten semua header dan footer di suatu bagian:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "delete-header-footer-content.cs" >}}

Berikut contoh kode cara menghapus semua bentuk dari semua header dan footer dalam suatu bagian:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "delete-header-footer-shapes.cs" >}}

## Sesuaikan Properti Halaman di Bagian

Sebelum mencetak halaman atau dokumen, Anda mungkin ingin menyesuaikan dan mengubah ukuran dan tata letak satu halaman atau keseluruhan dokumen. Dengan pengaturan halaman, Anda dapat mengubah pengaturan halaman dokumen seperti margin, orientasi, dan ukuran untuk mencetak halaman pertama atau halaman ganjil yang berbeda.

Aspose.Words memungkinkan Anda untuk menyesuaikan properti halaman dan bagian menggunakan kelas [PageSetup](https://reference.aspose.com/words/net/aspose.words/pagesetup/).

Contoh kode berikut menunjukkan cara mengatur properti seperti ukuran halaman dan orientasi untuk bagian saat ini:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "page-setup-and-section-formatting.cs" >}}

Contoh kode berikut menunjukkan cara mengubah properti halaman di semua bagian:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "modify-page-setup-in-all-sections.cs" >}}

## Lihat juga

* [Tingkat Logis Node dalam Dokumen](/words/net/logical-levels-of-nodes-in-a-document/#document-and-section-logical-level)
* [Sisipkan dan Lampirkan Dokumen](/words/id/net/insert-and-append-documents/)

