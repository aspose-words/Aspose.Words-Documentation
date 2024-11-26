---
title: Bekerja dengan Bagian dalam C++
second_title: Aspose.Words untuk C++
articleTitle: Bekerja dengan Bagian
linktitle: Bekerja dengan Bagian
description: "Memahami konsep bagian dokumen dan praktik manipulasi menggunakan C++. Sisipkan bagian ke dalam dokumen C++. Hapus bagian C++. Salin bagian di antara Dokumen."
type: docs
weight: 120
url: /id/cpp/working-with-sections/
timestamp: 2024-01-31-14-23-37
---

Terkadang Anda menginginkan dokumen yang tidak memiliki pemformatan yang sama di semua halaman. Misalnya, Anda mungkin perlu mengubah format nomor halaman, memiliki ukuran dan orientasi halaman yang berbeda, atau memiliki halaman dokumen pertama sebagai halaman sampul tanpa penomoran apa pun. Anda dapat mencapainya dengan bagian.

Bagian adalah simpul level yang mengontrol header dan footer, orientasi, kolom, margin, pemformatan nomor halaman, dan lainnya.

Aspose.Words memungkinkan Anda mengelola bagian, membagi dokumen menjadi beberapa bagian, dan membuat perubahan pemformatan yang hanya berlaku untuk bagian tertentu. Aspose.Words menyimpan informasi tentang pemformatan bagian seperti header dan footer, pengaturan halaman, dan pengaturan kolom di pemisah bagian.

Artikel ini menjelaskan cara bekerja dengan bagian dan jeda bagian.

## Apa Bagian dan Pemisah Bagian Itu

Bagian dokumen diwakili oleh kelas [Section](https://reference.aspose.com/words/cpp/aspose.words/section/) dan [SectionCollection](https://reference.aspose.com/words/cpp/aspose.words/sectioncollection/). Objek bagian adalah turunan langsung dari simpul [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) dan dapat diakses melalui properti [Sections](https://reference.aspose.com/words/cpp/aspose.words/document/get_sections/). Anda dapat mengelola node tersebut dengan menggunakan beberapa metode seperti [Remove](https://reference.aspose.com/words/cpp/aspose.words/nodecollection/remove/), [Add](https://reference.aspose.com/words/cpp/aspose.words/nodecollection/add/), [IndexOf](https://reference.aspose.com/words/cpp/aspose.words/nodecollection/indexof/), dan lainnya.

Pemisah bagian adalah opsi yang membagi halaman dokumen menjadi beberapa bagian dengan tata letak yang dapat disesuaikan.

## Jenis Jeda Bagian

Aspose.Words memungkinkan Anda untuk membagi dan memformat dokumen menggunakan pemisah bagian yang berbeda dari pencacahan [BreakType](https://reference.aspose.com/words/cpp/aspose.words/breaktype/):

- SectionBreakContinuous
- SectionBreakNewColumn
- SectionBreakNewPage
- SectionBreakEvenPage
- SectionBreakOddPage

Anda juga dapat menggunakan pencacahan [SectionStart](https://reference.aspose.com/words/cpp/aspose.words/sectionstart/) untuk memilih jenis jeda yang hanya berlaku untuk bagian pertama seperti NewColumn, NewPage, EvenPage, dan OddPage.

## Kelola Bagian

Karena suatu bagian adalah simpul komposit normal, seluruh manipulasi simpul API dapat digunakan untuk memanipulasi bagian: untuk menambah, menghapus, dan operasi lain pada bagian. Anda dapat membaca lebih lanjut tentang node di artikel [Aspose.Words Model Objek Dokumen (DOM)](/words/cpp/aspose-words-document-object-model/).

Di sisi lain, Anda juga dapat menggunakan `DocumentBuilder` API untuk bekerja dengan bagian. Pada artikel ini, kami akan fokus pada cara khusus bekerja dengan bagian-bagian ini.

## Menyisipkan atau Menghapus Pemisah Bagian

Aspose.Words memungkinkan Anda menyisipkan pemisah bagian ke dalam teks menggunakan metode [InsertBreak](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertbreak/).

Contoh kode berikut menunjukkan cara menyisipkan pemisah bagian ke dalam dokumen:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "insert-section-breaks.cpp" >}}

Gunakan metode [Remove](https://reference.aspose.com/words/cpp/aspose.words/node/remove/) untuk menghapus pemisah bagian. Jika Anda tidak perlu menghapus pemisah bagian tertentu dan sebagai gantinya menghapus konten bagian tersebut, Anda dapat menggunakan metode [ClearContent](https://reference.aspose.com/words/cpp/aspose.words/section/clearcontent/).

Contoh kode berikut menunjukkan cara menghapus jeda bagian:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "remove-section-breaks.h" >}}

{{% alert color="primary" %}}

Perhatikan bahwa pemisah bagian memiliki informasi tentang bagian sebelumnya, bukan bagian setelahnya. Jadi, jika Anda menghapus pemisah bagian, teks sebelum pemisah yang dihapus akan mendapatkan properti pemisah bagian yang mengikutinya. Hal ini dapat menyebabkan seluruh dokumen menjadi lanskap, atau header dan footer berubah atau hilang sama sekali.

{{% /alert %}}

## Memindahkan Bagian

Jika Anda ingin memindahkan bagian dari satu posisi ke posisi lain di dokumen Anda, Anda perlu mendapatkan indeks bagian tersebut. Aspose.Words memungkinkan Anda mendapatkan posisi bagian dari [SectionCollection](https://reference.aspose.com/words/cpp/aspose.words/sectioncollection/). Anda dapat menggunakan properti [Sections](https://reference.aspose.com/words/cpp/aspose.words/document/get_sections/) untuk mendapatkan semua bagian dalam dokumen Anda. Tetapi jika Anda hanya ingin mendapatkan bagian pertama, Anda dapat menggunakan properti [FirstSection](https://reference.aspose.com/words/cpp/aspose.words/document/get_firstsection/).

Contoh kode berikut menunjukkan cara mengakses bagian pertama dan beralih melalui turunan dari simpul komposit:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "section-child-nodes.h" >}}

## Tentukan Tata Letak Bagian

Terkadang Anda ingin dokumen Anda terlihat lebih baik dengan membuat tata letak kreatif untuk bagian dokumen yang berbeda. Jika Anda ingin menentukan jenis kisi bagian saat ini, Anda dapat memilih mode tata letak bagian menggunakan pencacahan [SectionLayoutMode](https://reference.aspose.com/words/cpp/aspose.words/sectionlayoutmode/):

- Standar
- Grid
- LineGrid
- SnapToChars

Contoh kode berikut menunjukkan cara membatasi jumlah baris yang mungkin dimiliki setiap halaman:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "line-grid-section-layout-mode.h" >}}

## Sunting Bagian

Saat Anda menambahkan bagian baru ke dokumen Anda, tidak akan ada isi atau paragraf yang dapat Anda edit. Aspose.Words memungkinkan Anda untuk menjamin bahwa suatu bagian berisi isi dengan setidaknya satu paragraf menggunakan metode [EnsureMinimum](https://reference.aspose.com/words/cpp/aspose.words/section/ensureminimum/) – ini akan secara otomatis menambahkan simpul Isi (atau HeaderFooter) ke dokumen dan kemudian menambahkan Paragraf ke dalamnya.

Contoh kode berikut menunjukkan cara menyiapkan simpul bagian baru menggunakan **EnsureMinimum**:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "ensure-minimum.h" >}}

### Tambahkan atau Tambahkan Konten

Jika Anda ingin menggambar beberapa bentuk atau menambahkan teks atau gambar di awal / akhir bagian, Anda dapat menggunakan metode [AppendContent](https://reference.aspose.com/words/cpp/aspose.words/section/appendcontent/) dan [PrependContent](https://reference.aspose.com/words/cpp/aspose.words/section/prependcontent/) dari kelas [Section](https://reference.aspose.com/words/cpp/aspose.words/section/).

Contoh kode berikut menunjukkan cara menambahkan konten dari bagian yang ada:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "append-section-content.h" >}}

### Mengkloning Bagian

Aspose.Words memungkinkan Anda menduplikasi bagian dengan membuat salinan lengkapnya menggunakan metode [Clone](https://reference.aspose.com/words/cpp/aspose.words/section/clone/).

Contoh kode berikut menunjukkan cara mengkloning bagian pertama dalam dokumen Anda:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "clone-section.h" >}}

### Salin Bagian antar Dokumen

Dalam beberapa kasus, Anda mungkin memiliki dokumen besar dengan banyak bagian dan Anda ingin menyalin konten bagian dari satu dokumen ke dokumen lainnya.

Aspose.Words memungkinkan Anda menyalin bagian antar dokumen menggunakan metode [ImportNode](https://reference.aspose.com/words/cpp/aspose.words/documentbase/importnode/).

Contoh kode berikut menunjukkan cara menyalin bagian di antara dokumen:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "copy-section.h" >}}

### Bekerja dengan Header dan Footer Bagian

Aturan dasar untuk menampilkan header atau footer untuk setiap bagian cukup sederhana:

1. Jika bagian tersebut tidak memiliki header/footer sendiri dari jenis tertentu, maka diambil dari bagian sebelumnya.
2. Jenis header / footer yang ditampilkan pada halaman dikontrol oleh pengaturan bagian "Halaman Pertama Berbeda" dan "Halaman Ganjil & Genap Berbeda" – jika dinonaktifkan, judul bagian itu sendiri akan diabaikan.

Contoh kode berikut menunjukkan cara membuat bagian 2 dengan header berbeda:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "link-to-previous-header-footer.h" >}}

Jika Anda ingin menghapus teks header dan footer tanpa menghapus objek [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/) di dokumen Anda, Anda dapat menggunakan metode [ClearHeadersFooters](https://reference.aspose.com/words/cpp/aspose.words/section/clearheadersfooters/). Selain itu, Anda dapat menggunakan metode [DeleteHeaderFooterShapes](https://reference.aspose.com/words/cpp/aspose.words/section/deleteheaderfootershapes/) untuk menghapus semua bentuk dari header dan footer di dokumen Anda.

Contoh kode berikut menunjukkan cara menghapus konten semua header dan footer di suatu bagian:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "delete-header-footer-content.h" >}}

Contoh kode berikut cara menghapus semua bentuk dari semua header footer di suatu bagian:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "delete-header-footer-shapes.h" >}}

## Sesuaikan Properti Halaman di Bagian

Sebelum mencetak halaman atau dokumen, Anda mungkin ingin menyesuaikan dan memodifikasi ukuran dan tata letak satu halaman atau seluruh dokumen. Dengan pengaturan halaman, Anda dapat mengubah pengaturan halaman dokumen seperti margin, orientasi, dan ukuran untuk mencetak halaman pertama atau halaman ganjil yang berbeda.

Aspose.Words memungkinkan Anda menyesuaikan properti halaman dan bagian menggunakan kelas [PageSetup](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/).

Contoh kode berikut menunjukkan cara mengatur properti seperti ukuran halaman dan orientasi untuk bagian saat ini:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "page-setup-and-section-formatting.h" >}}

Contoh kode berikut menunjukkan cara mengubah properti halaman di semua bagian:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "modify-page-setup-in-all-sections.h" >}}

## Lihat Juga

- [Tingkat Logis dari Node dalam Dokumen](/words/cpp/logical-levels-of-nodes-in-a-document/)
- [Menyisipkan dan Menambahkan Dokumen](/words/cpp/insert-and-append-documents/)
