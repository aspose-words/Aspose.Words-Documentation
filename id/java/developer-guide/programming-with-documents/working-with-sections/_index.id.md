---
title: Bekerja dengan Bagian dalam Java
second_title: Aspose.Words Sitemap Java
articleTitle: Bekerja dengan Bagian
linktitle: Bekerja dengan Bagian
description: "Memahami konsep bagian dokumen dan praktik manipulasi menggunakan JavaSitemap Masukkan bagian ke dalam dokumen JavaSitemap Hapus bagian JavaSitemap Bagian Copy antara Dokumen."
type: docs
weight: 120
url: /id/java/working-with-sections/
---

Kadang-kadang Anda ingin dokumen yang tidak memiliki format yang sama di semua halaman. Misalnya, Anda mungkin perlu memodifikasi format nomor halaman, memiliki ukuran halaman yang berbeda dan orientasi, atau memiliki halaman dokumen pertama sebagai halaman sampul tanpa nomor. Anda dapat mencapai itu dengan bagian.

Bagian adalah node tingkat yang mengontrol header dan footer, orientasi, kolom, margin, format nomor halaman, dan lain-lain.

Aspose.Words memungkinkan Anda untuk mengelola bagian, membagi dokumen menjadi bagian, dan membuat perubahan format yang hanya berlaku untuk bagian tertentu. Aspose.Words menyimpan informasi tentang format bagian seperti header dan footer, pengaturan halaman, dan pengaturan kolom di bagian istirahat.

Artikel ini menjelaskan cara bekerja dengan bagian dan bagian istirahat.

## Bagian dan Bagian Break Adalah

Bagian dokumen diwakili oleh [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) Login [SectionCollection](https://reference.aspose.com/words/java/com.aspose.words/sectioncollection/) kelas. Bagian objek adalah anak-anak langsung dari [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) node dan dapat diakses melalui [Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections) Login Anda dapat mengelola node tersebut dengan menggunakan beberapa metode seperti [Remove](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#remove-com.aspose.words.Node), [Add](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#add-com.aspose.words.Node), [IndexOf](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#indexOf-com.aspose.words.Node), dan lainnya.

Bagian istirahat adalah pilihan yang membagi halaman dokumen menjadi bagian dengan tata letak yang dapat disesuaikan.

## Jenis Bagian Break

Aspose.Words memungkinkan Anda untuk membagi dan memformat dokumen menggunakan bagian yang berbeda melanggar [BreakType](https://reference.aspose.com/words/java/com.aspose.words/breaktype/) Sitemap

- Login
- Login
- Sitemap
- Login
- Login

Anda juga dapat menggunakan [SectionStart](https://reference.aspose.com/words/java/com.aspose.words/sectionstart/) enumerasi untuk memilih jenis istirahat yang hanya berlaku untuk bagian pertama seperti NewColumn, NewPage, EvenPage, dan OddPage.

## Mengelola Bagian

Karena bagian adalah node komposit normal, seluruh manipulasi node API dapat digunakan untuk memanipulasi bagian: untuk menambahkan, menghapus, dan operasi lainnya pada bagian. Anda dapat membaca lebih banyak tentang node dalam artikel [Aspose.Words Document Object Model (DOM)](/words/id/java/aspose-words-document-object-model/)Sitemap

Di sisi lain, Anda juga dapat menggunakan `DocumentBuilder` API untuk bekerja dengan bagian. Dalam artikel ini, kami akan fokus pada cara kerja khusus ini dengan bagian.

## Masukkan atau Hapus Break Bagian

Aspose.Words memungkinkan Anda untuk memasukkan bagian istirahat ke teks menggunakan Meme it [InsertBreak](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertBreak-int) Login

Contoh kode berikut menunjukkan cara memasukkan bagian rusak ke dokumen:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "insert-section-breaks.java" >}}

Gunakan [Remove](https://reference.aspose.com/words/java/com.aspose.words/node/#remove) metode untuk menghapus istirahat bagian. Jika Anda tidak perlu menghapus istirahat bagian tertentu dan bukan menghapus konten bagian itu, Anda dapat menggunakan [ClearContent](https://reference.aspose.com/words/java/com.aspose.words/section/#clearContent) Login

Contoh kode berikut menunjukkan bagaimana menghapus bagian istirahat:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "remove-section-breaks.java" >}}

{{% alert color="primary" %}}

Perhatikan bahwa bagian istirahat memiliki informasi tentang bagian yang berjalan sebelum itu, bukan bagian yang berjalan setelah itu. Jadi jika Anda menghapus bagian istirahat, teks sebelum istirahat dihapus akan mendapatkan sifat bagian istirahat setelah itu. Ini dapat menyebabkan seluruh dokumen menjadi lansekap, atau header dan footer untuk mengubah atau sepenuhnya hilang.

{{% /alert %}}

## Pindahkan Bagian

Jika Anda ingin memindahkan bagian dari satu posisi ke dokumen lain, Anda perlu mendapatkan indeks bagian itu. Aspose.Words memungkinkan Anda untuk mendapatkan posisi bagian dari [SectionCollection](https://reference.aspose.com/words/java/com.aspose.words/sectioncollection/)Sitemap Anda dapat menggunakan [Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections) properti untuk mendapatkan semua bagian dalam dokumen Anda. Tetapi jika Anda ingin hanya mendapatkan bagian pertama, Anda dapat menggunakan [FirstSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getFirstSection) Login

Contoh kode berikut menunjukkan cara mengakses bagian pertama dan mengherankan melalui anak-anak dari simpul komposit:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "section-child-nodes.java" >}}

## Tentukan Tata Letak Bagian

Terkadang Anda ingin dokumen Anda terlihat lebih baik dengan membuat tata letak kreatif untuk bagian dokumen yang berbeda. Jika Anda ingin menentukan jenis grid bagian saat ini, Anda dapat memilih mode tata letak bagian menggunakan [SectionLayoutMode](https://reference.aspose.com/words/java/com.aspose.words/sectionlayoutmode/) Sitemap

- Login
- Login
- Login
- Login

Contoh kode berikut menunjukkan bagaimana membatasi jumlah garis yang masing-masing halaman mungkin memiliki:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "line-grid-section-layout-mode.java" >}}

## Edit Bagian

Ketika Anda menambahkan bagian baru ke dokumen Anda, tidak akan ada tubuh atau paragraf yang dapat Anda edit. Aspose.Words memungkinkan Anda untuk menjamin bahwa bagian mengandung tubuh dengan setidaknya satu ayat menggunakan [EnsureMinimum](https://reference.aspose.com/words/java/com.aspose.words/section/#ensureMinimum) metode - itu akan secara otomatis menambahkan node Body (atau Header Footer) ke dokumen dan kemudian tambahkan Paragraf ke dalamnya.

Contoh kode berikut menunjukkan cara menyiapkan simpul bagian baru menggunakan **EnsureMinimum**Sitemap

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "ensure-minimum.java" >}}

### Mempersiapkan atau Mempersiapkan Konten

Jika Anda ingin menggambar beberapa bentuk atau menambahkan teks atau gambar pada awal / akhir bagian, Anda dapat menggunakan [AppendContent](https://reference.aspose.com/words/java/com.aspose.words/section/#appendContent-com.aspose.words.Section) Login [PrependContent](https://reference.aspose.com/words/java/com.aspose.words/section/#prependContent-com.aspose.words.Section) metode [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) Sitemap

Contoh kode berikut menunjukkan bagaimana mengendapan konten bagian yang ada:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "append-section-content.java" >}}

### Klon Bagian

Aspose.Words memungkinkan Anda untuk menggandakan bagian dengan membuat salinan penuh menggunakannya [deepClone](https://reference.aspose.com/words/java/com.aspose.words/section/#deepClone) Login

Contoh kode berikut menunjukkan bagaimana untuk mengkloning bagian pertama dalam dokumen Anda:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "clone-section.java" >}}

### Bagian Copy antara Dokumen

Dalam beberapa kasus, Anda mungkin memiliki dokumen besar dengan banyak bagian dan Anda ingin menyalin konten bagian dari satu dokumen ke dokumen lain.

Aspose.Words memungkinkan Anda untuk menyalin bagian antara dokumen menggunakan Meme it [ImportNode](https://reference.aspose.com/words/java/com.aspose.words/documentbase/#importNode-com.aspose.words.Node-boolean) Login

Contoh kode berikut menunjukkan cara menyalin bagian antara dokumen:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "copy-section.java" >}}

### Bekerja dengan Header Bagian dan Footer

Aturan dasar untuk menampilkan header atau footer untuk setiap bagian cukup sederhana:

Sitemap Jika bagian tidak memiliki header / footers sendiri dari jenis tertentu, maka diambil dari bagian sebelumnya.
2. di Jenis header / footer ditampilkan di halaman dikendalikan oleh "Different First Page" dan "Different Odd & Bahkan halaman" pengaturan bagian - jika mereka dinonaktifkan, maka judul sendiri bagian diabaikan.

Contoh kode berikut menunjukkan cara membuat 2 bagian dengan header yang berbeda:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "link-to-previous-header-footer.java" >}}

Jika Anda ingin menghapus teks header dan footer tanpa menghapus [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) objek dalam dokumen Anda, Anda dapat menggunakan [ClearHeadersFooters](https://reference.aspose.com/words/java/com.aspose.words/section/#clearHeadersFooters) Login Selain itu, Anda dapat menggunakan [DeleteHeaderFooterShapes](https://reference.aspose.com/words/java/com.aspose.words/section/#deleteHeaderFooterShapes) metode untuk menghapus semua bentuk dari header dan footer dalam dokumen Anda.

Contoh kode berikut menunjukkan bagaimana menghapus konten semua header dan footer di bagian:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "delete-header-footer-content.java" >}}

Contoh kode berikut cara menghapus semua bentuk dari semua header footer di bagian:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "delete-header-footer-shapes.java" >}}

## Sesuaikan Properti Halaman di Bagian

Sebelum mencetak halaman atau dokumen Anda mungkin ingin menyesuaikan dan memodifikasi ukuran dan tata letak satu halaman atau seluruh dokumen. Dengan pengaturan halaman, Anda dapat mengubah pengaturan halaman dokumen seperti margin, orientasi, dan ukuran untuk mencetak halaman pertama yang berbeda atau halaman aneh.

Aspose.Words memungkinkan Anda untuk menyesuaikan properti halaman dan bagian menggunakan [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) Sitemap

Contoh kode berikut menunjukkan cara mengatur sifat seperti ukuran halaman dan orientasi untuk bagian saat ini:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "page-setup-and-section-formatting.java" >}}

Contoh kode berikut menunjukkan cara memodifikasi properti halaman di semua bagian:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "modify-page-setup-in-all-sections.java" >}}

## Lihat Juga

- [Login](/words/id/java/logical-levels-of-nodes-in-a-document/)
- [Login](/words/id/java/insert-and-append-documents/)