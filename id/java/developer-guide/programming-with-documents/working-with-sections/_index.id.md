---
title: Bekerja dengan Bagian dalam Java
second_title: Aspose.Words untuk Java
articleTitle: Bekerja dengan Bagian
linktitle: Bekerja dengan Bagian
description: "Memahami konsep bagian dokumen dan praktik manipulasi menggunakan Java. Sisipkan bagian ke dalam dokumen Java. Hapus bagian Java. Salin bagian di antara Dokumen."
type: docs
weight: 120
url: /id/java/working-with-sections/
timestamp: 2024-01-31-14-23-37
---

Terkadang Anda menginginkan dokumen yang tidak memiliki pemformatan yang sama di semua halaman. Misalnya, Anda mungkin perlu mengubah format nomor halaman, memiliki ukuran dan orientasi halaman yang berbeda, atau memiliki halaman dokumen pertama sebagai halaman sampul tanpa penomoran apa pun. Anda dapat mencapainya dengan bagian.

Bagian adalah simpul level yang mengontrol header dan footer, orientasi, kolom, margin, pemformatan nomor halaman, dan lainnya.

Aspose.Words memungkinkan Anda mengelola bagian, membagi dokumen menjadi beberapa bagian, dan membuat perubahan pemformatan yang hanya berlaku untuk bagian tertentu. Aspose.Words menyimpan informasi tentang pemformatan bagian seperti header dan footer, pengaturan halaman, dan pengaturan kolom di pemisah bagian.

Artikel ini menjelaskan cara bekerja dengan bagian dan jeda bagian.

## Apa Bagian dan Pemisah Bagian Itu

Bagian dokumen diwakili oleh kelas [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) dan [SectionCollection](https://reference.aspose.com/words/java/com.aspose.words/sectioncollection/). Objek bagian adalah turunan langsung dari simpul [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) dan dapat diakses melalui properti [Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections). Anda dapat mengelola node tersebut dengan menggunakan beberapa metode seperti [Remove](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#remove-com.aspose.words.Node), [Add](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#add-com.aspose.words.Node), [IndexOf](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#indexOf-com.aspose.words.Node), dan lainnya.

Pemisah bagian adalah opsi yang membagi halaman dokumen menjadi beberapa bagian dengan tata letak yang dapat disesuaikan.

## Jenis Jeda Bagian

Aspose.Words memungkinkan Anda untuk membagi dan memformat dokumen menggunakan pemisah bagian yang berbeda dari pencacahan [BreakType](https://reference.aspose.com/words/java/com.aspose.words/breaktype/):

- SectionBreakContinuous
- SectionBreakNewColumn
- SectionBreakNewPage
- SectionBreakEvenPage
- SectionBreakOddPage

Anda juga dapat menggunakan pencacahan [SectionStart](https://reference.aspose.com/words/java/com.aspose.words/sectionstart/) untuk memilih jenis jeda yang hanya berlaku untuk bagian pertama seperti NewColumn, NewPage, EvenPage, dan OddPage.

## Kelola Bagian

Karena suatu bagian adalah simpul komposit normal, seluruh manipulasi simpul API dapat digunakan untuk memanipulasi bagian: untuk menambah, menghapus, dan operasi lain pada bagian. Anda dapat membaca lebih lanjut tentang node di artikel [Aspose.Words Model Objek Dokumen (DOM)](/words/java/aspose-words-document-object-model/).

Di sisi lain, Anda juga dapat menggunakan `DocumentBuilder` API untuk bekerja dengan bagian. Pada artikel ini, kami akan fokus pada cara khusus bekerja dengan bagian-bagian ini.

## Menyisipkan atau Menghapus Pemisah Bagian

Aspose.Words memungkinkan Anda menyisipkan pemisah bagian ke dalam teks menggunakan metode [InsertBreak](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertBreak-int).

Contoh kode berikut menunjukkan cara menyisipkan pemisah bagian ke dalam dokumen:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "insert-section-breaks.java" >}}

Gunakan metode [Remove](https://reference.aspose.com/words/java/com.aspose.words/node/#remove) untuk menghapus pemisah bagian. Jika Anda tidak perlu menghapus pemisah bagian tertentu dan sebagai gantinya menghapus konten bagian tersebut, Anda dapat menggunakan metode [ClearContent](https://reference.aspose.com/words/java/com.aspose.words/section/#clearContent).

Contoh kode berikut menunjukkan cara menghapus jeda bagian:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "remove-section-breaks.java" >}}

{{% alert color="primary" %}}

Perhatikan bahwa pemisah bagian memiliki informasi tentang bagian sebelumnya, bukan bagian setelahnya. Jadi, jika Anda menghapus pemisah bagian, teks sebelum pemisah yang dihapus akan mendapatkan properti pemisah bagian yang mengikutinya. Hal ini dapat menyebabkan seluruh dokumen menjadi lanskap, atau header dan footer berubah atau hilang sama sekali.

{{% /alert %}}

## Memindahkan Bagian

Jika Anda ingin memindahkan bagian dari satu posisi ke posisi lain di dokumen Anda, Anda perlu mendapatkan indeks bagian tersebut. Aspose.Words memungkinkan Anda mendapatkan posisi bagian dari [SectionCollection](https://reference.aspose.com/words/java/com.aspose.words/sectioncollection/). Anda dapat menggunakan properti [Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections) untuk mendapatkan semua bagian dalam dokumen Anda. Tetapi jika Anda hanya ingin mendapatkan bagian pertama, Anda dapat menggunakan properti [FirstSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getFirstSection).

Contoh kode berikut menunjukkan cara mengakses bagian pertama dan beralih melalui turunan dari simpul komposit:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "section-child-nodes.java" >}}

## Tentukan Tata Letak Bagian

Terkadang Anda ingin dokumen Anda terlihat lebih baik dengan membuat tata letak kreatif untuk bagian dokumen yang berbeda. Jika Anda ingin menentukan jenis kisi bagian saat ini, Anda dapat memilih mode tata letak bagian menggunakan pencacahan [SectionLayoutMode](https://reference.aspose.com/words/java/com.aspose.words/sectionlayoutmode/):

- Standar
- Grid
- LineGrid
- SnapToChars

Contoh kode berikut menunjukkan cara membatasi jumlah baris yang mungkin dimiliki setiap halaman:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "line-grid-section-layout-mode.java" >}}

## Sunting Bagian

Saat Anda menambahkan bagian baru ke dokumen Anda, tidak akan ada isi atau paragraf yang dapat Anda edit. Aspose.Words memungkinkan Anda untuk menjamin bahwa suatu bagian berisi isi dengan setidaknya satu paragraf menggunakan metode [EnsureMinimum](https://reference.aspose.com/words/java/com.aspose.words/section/#ensureMinimum) – ini akan secara otomatis menambahkan simpul Isi (atau HeaderFooter) ke dokumen dan kemudian menambahkan Paragraf ke dalamnya.

Contoh kode berikut menunjukkan cara menyiapkan simpul bagian baru menggunakan **EnsureMinimum**:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "ensure-minimum.java" >}}

### Tambahkan atau Tambahkan Konten

Jika Anda ingin menggambar beberapa bentuk atau menambahkan teks atau gambar di awal / akhir bagian, Anda dapat menggunakan metode [AppendContent](https://reference.aspose.com/words/java/com.aspose.words/section/#appendContent-com.aspose.words.Section) dan [PrependContent](https://reference.aspose.com/words/java/com.aspose.words/section/#prependContent-com.aspose.words.Section) dari kelas [Section](https://reference.aspose.com/words/java/com.aspose.words/section/).

Contoh kode berikut menunjukkan cara menambahkan konten dari bagian yang ada:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "append-section-content.java" >}}

### Mengkloning Bagian

Aspose.Words memungkinkan Anda menduplikasi bagian dengan membuat salinan lengkapnya menggunakan metode [deepClone](https://reference.aspose.com/words/java/com.aspose.words/section/#deepClone).

Contoh kode berikut menunjukkan cara mengkloning bagian pertama dalam dokumen Anda:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "clone-section.java" >}}

### Salin Bagian antar Dokumen

Dalam beberapa kasus, Anda mungkin memiliki dokumen besar dengan banyak bagian dan Anda ingin menyalin konten bagian dari satu dokumen ke dokumen lainnya.

Aspose.Words memungkinkan Anda menyalin bagian antar dokumen menggunakan metode [ImportNode](https://reference.aspose.com/words/java/com.aspose.words/documentbase/#importNode-com.aspose.words.Node-boolean).

Contoh kode berikut menunjukkan cara menyalin bagian di antara dokumen:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "copy-section.java" >}}

### Bekerja dengan Header dan Footer Bagian

Aturan dasar untuk menampilkan header atau footer untuk setiap bagian cukup sederhana:

1. Jika bagian tersebut tidak memiliki header/footer sendiri dari jenis tertentu, maka diambil dari bagian sebelumnya.
2. Jenis header / footer yang ditampilkan pada halaman dikontrol oleh pengaturan bagian "Halaman Pertama Berbeda" dan "Halaman Ganjil & Genap Berbeda" – jika dinonaktifkan, judul bagian itu sendiri akan diabaikan.

Contoh kode berikut menunjukkan cara membuat 2 bagian dengan header berbeda:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "link-to-previous-header-footer.java" >}}

Jika Anda ingin menghapus teks header dan footer tanpa menghapus objek [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) di dokumen Anda, Anda dapat menggunakan metode [ClearHeadersFooters](https://reference.aspose.com/words/java/com.aspose.words/section/#clearHeadersFooters). Selain itu, Anda dapat menggunakan metode [DeleteHeaderFooterShapes](https://reference.aspose.com/words/java/com.aspose.words/section/#deleteHeaderFooterShapes) untuk menghapus semua bentuk dari header dan footer di dokumen Anda.

Contoh kode berikut menunjukkan cara menghapus konten semua header dan footer di suatu bagian:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "delete-header-footer-content.java" >}}

Contoh kode berikut cara menghapus semua bentuk dari semua header footer di suatu bagian:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "delete-header-footer-shapes.java" >}}

## Sesuaikan Properti Halaman di Bagian

Sebelum mencetak halaman atau dokumen, Anda mungkin ingin menyesuaikan dan memodifikasi ukuran dan tata letak satu halaman atau seluruh dokumen. Dengan pengaturan halaman, Anda dapat mengubah pengaturan halaman dokumen seperti margin, orientasi, dan ukuran untuk mencetak halaman pertama atau halaman ganjil yang berbeda.

Aspose.Words memungkinkan Anda menyesuaikan properti halaman dan bagian menggunakan kelas [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/).

Contoh kode berikut menunjukkan cara mengatur properti seperti ukuran halaman dan orientasi untuk bagian saat ini:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "page-setup-and-section-formatting.java" >}}

Contoh kode berikut menunjukkan cara mengubah properti halaman di semua bagian:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "modify-page-setup-in-all-sections.java" >}}

## Lihat Juga

- [Tingkat Logis dari Node dalam Dokumen](/words/java/logical-levels-of-nodes-in-a-document/)
- [Mengidentifikasi dan Menambah Dokumen](/words/java/insert-and-append-documents/)
