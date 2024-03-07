---
title: Bekerja dengan Bagian di Python
second_title: Aspose.Words untuk Python via .NET
articleTitle: Bekerja dengan Bagian
linktitle: Bekerja dengan Bagian
description: "Buat dan kelola bagian dan hentian bagian dalam dokumen menggunakan Python. Sisipkan bagian ke dalam dokumen Python. Hapus bagian Python. Salin bagian antar Dokumen."
type: docs
weight: 120
url: /id/python-net/working-with-sections/
---

Terkadang Anda menginginkan dokumen yang tidak memiliki format yang sama di semua halaman. Misalnya, Anda mungkin perlu mengubah format nomor halaman, memiliki ukuran dan orientasi halaman yang berbeda, atau menjadikan halaman dokumen pertama sebagai halaman sampul tanpa penomoran apa pun. Anda dapat mencapainya dengan beberapa bagian.

Bagian adalah node tingkat yang mengontrol header dan footer, orientasi, kolom, margin, format nomor halaman, dan lain-lain.

Aspose.Words memungkinkan Anda mengelola bagian, membagi dokumen menjadi beberapa bagian, dan membuat perubahan format yang hanya berlaku untuk bagian tertentu. Aspose.Words menyimpan informasi tentang pemformatan bagian seperti header dan footer, pengaturan halaman, dan pengaturan kolom di hentian bagian.

Artikel ini menjelaskan cara bekerja dengan bagian dan hentian bagian.

## Apa Bagian dan Bagian Istirahat Itu

Bagian dokumen diwakili oleh kelas [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) dan [SectionCollection](https://reference.aspose.com/words/python-net/aspose.words/sectioncollection/). Objek bagian adalah turunan langsung dari node [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) dan dapat diakses melalui properti [Sections](https://reference.aspose.com/words/python-net/aspose.words/document/sections/). Anda dapat mengelola node tersebut dengan menggunakan beberapa metode seperti [Remove](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/remove/#node), [Add](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/add/#node), [IndexOf](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/index_of/#node), dan lainnya.

Hentian bagian adalah opsi yang membagi halaman dokumen menjadi beberapa bagian dengan tata letak yang dapat disesuaikan.

## Jenis Bagian Istirahat

Aspose.Words memungkinkan Anda membagi dan memformat dokumen menggunakan hentian bagian berbeda dari enumerasi [BreakType](https://reference.aspose.com/words/python-net/aspose.words/breaktype/):

- BagianIstirahat Berkelanjutan
- BagianBreakKolom Baru
- BagianBreakHalaman Baru
- BagianBreakEvenPage
- BagianBreakOddPage

Anda juga dapat menggunakan enumerasi [SectionStart](https://reference.aspose.com/words/python-net/aspose.words/sectionstart/) untuk memilih jenis jeda yang hanya berlaku untuk bagian pertama seperti NewColumn, NewPage, EvenPage, dan OddPage.

## Kelola Bagian

Karena suatu bagian adalah node komposit normal, API manipulasi seluruh node dapat digunakan untuk memanipulasi bagian: untuk menambah, menghapus, dan operasi lain pada bagian. Anda dapat membaca lebih lanjut tentang node di artikel [Aspose.Words Document Object Model (DOM)](/words/id/python-net/aspose-words-document-object-model/).

Di sisi lain, Anda juga dapat menggunakan `DocumentBuilder` API untuk bekerja dengan bagian. Pada artikel ini, kami akan fokus pada cara khusus bekerja dengan bagian ini.

## Menyisipkan atau Menghapus Hentian Bagian

Aspose.Words memungkinkan Anda menyisipkan pemisah bagian ke dalam teks menggunakan metode [InsertBreak](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_break/#breaktype).

Contoh kode berikut menunjukkan cara menyisipkan pemisah bagian ke dalam dokumen:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "insert-section-breaks.py" >}}

Gunakan metode [Remove](https://reference.aspose.com/words/python-net/aspose.words/node/remove/#default) untuk menghapus hentian bagian. Jika Anda tidak perlu menghapus hentian bagian tertentu dan malah menghapus konten bagian tersebut, Anda dapat menggunakan metode [ClearContent](https://reference.aspose.com/words/python-net/aspose.words/section/clear_content/#default).

Contoh kode berikut menunjukkan cara menghapus hentian bagian:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "remove-section-breaks.py" >}}

{{% alert color="primary" %}}

Perhatikan bahwa hentian bagian memiliki informasi tentang bagian sebelumnya, bukan bagian setelahnya. Jadi jika Anda menghapus hentian bagian, teks sebelum hentian bagian yang dihapus akan mendapatkan properti dari hentian bagian yang mengikutinya. Hal ini dapat menyebabkan seluruh dokumen menjadi lanskap, atau header dan footer berubah atau hilang sama sekali.

{{% /alert %}}

## Pindahkan Bagian

Jika Anda ingin memindahkan suatu bagian dari satu posisi ke posisi lain dalam dokumen Anda, Anda perlu mendapatkan indeks bagian tersebut. Aspose.Words memungkinkan Anda mendapatkan posisi bagian dari [SectionCollection](https://reference.aspose.com/words/python-net/aspose.words/sectioncollection/). Anda dapat menggunakan properti [Sections](https://reference.aspose.com/words/python-net/aspose.words/document/sections/) untuk mendapatkan semua bagian dalam dokumen Anda. Namun jika Anda ingin mendapatkan bagian pertama saja, Anda bisa menggunakan properti [FirstSection](https://reference.aspose.com/words/python-net/aspose.words/document/first_section/).

Contoh kode berikut menunjukkan cara mengakses bagian pertama dan melakukan iterasi melalui turunan node komposit:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "section-child-nodes.py" >}}

## Tentukan Tata Letak Bagian

Terkadang Anda ingin dokumen Anda terlihat lebih baik dengan membuat tata letak kreatif untuk bagian dokumen yang berbeda. Jika Anda ingin menentukan tipe kisi bagian saat ini, Anda dapat memilih mode tata letak bagian menggunakan enumerasi [SectionLayoutMode](https://reference.aspose.com/words/python-net/aspose.words/sectionlayoutmode/):

- Bawaan
- Kisi
- GarisGrid
- SnapToChars

Contoh kode berikut menunjukkan cara membatasi jumlah baris yang dimiliki setiap halaman:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "line-grid-section-layout-mode.py" >}}

## Edit Bagian

Saat Anda menambahkan bagian baru ke dokumen Anda, tidak akan ada isi atau paragraf yang dapat Anda edit. Aspose.Words memungkinkan Anda menjamin bahwa suatu bagian berisi badan dengan setidaknya satu paragraf menggunakan metode [EnsureMinimum](https://reference.aspose.com/words/python-net/aspose.words/section/ensure_minimum/#default) – metode ini akan secara otomatis menambahkan simpul Badan (atau HeaderFooter) ke dokumen dan kemudian menambahkan Paragraf ke dalamnya.

Contoh kode berikut menunjukkan cara menyiapkan node bagian baru menggunakan **EnsureMinimum**:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "ensure-minimum.py" >}}

### Tambahkan atau Tambahkan Konten

Jika Anda ingin menggambar suatu bentuk atau menambahkan teks atau gambar di awal/akhir bagian, Anda bisa menggunakan metode [AppendContent](https://reference.aspose.com/words/python-net/aspose.words/section/append_content/#section) dan [PrependContent](https://reference.aspose.com/words/python-net/aspose.words/section/prepend_content/#section) dari kelas [Section](https://reference.aspose.com/words/python-net/aspose.words/section/).

Contoh kode berikut menunjukkan cara menambahkan konten bagian yang sudah ada:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "append-section-content.py" >}}

### Mengkloning Bagian

Aspose.Words memungkinkan Anda menduplikasi suatu bagian dengan membuat salinan lengkapnya menggunakan metode [Clone](https://reference.aspose.com/words/python-net/aspose.words/section/clone/#default).

Contoh kode berikut menunjukkan cara mengkloning bagian pertama dalam dokumen Anda:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "clone-section.py" >}}

### Salin Bagian antar Dokumen

Dalam beberapa kasus, Anda mungkin memiliki dokumen besar dengan banyak bagian dan Anda ingin menyalin konten suatu bagian dari satu dokumen ke dokumen lainnya.

Aspose.Words memungkinkan Anda menyalin bagian antar dokumen menggunakan metode [ImportNode](https://reference.aspose.com/words/python-net/aspose.words/nodeimporter/import_node/#node_bool).

Contoh kode berikut menunjukkan cara menyalin bagian antar dokumen:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "copy-section.py" >}}

### Bekerja dengan Bagian Header dan Footer

Aturan dasar untuk menampilkan header atau footer untuk setiap bagian cukup sederhana:

1. Jika bagian tersebut tidak memiliki header/footer jenis tertentu, maka diambil dari bagian sebelumnya.
2. Jenis header/footer yang ditampilkan pada halaman dikontrol oleh pengaturan bagian "Halaman Pertama Berbeda" dan "Halaman Ganjil &amp; Genap Berbeda" – jika dinonaktifkan, maka judul bagian itu sendiri akan diabaikan.

Contoh kode berikut menunjukkan cara membuat 2 bagian dengan header berbeda:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "link-to-previous-header-footer.py" >}}

Jika Anda ingin menghapus teks header dan footer tanpa menghapus objek [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/) di dokumen Anda, Anda dapat menggunakan metode [ClearHeadersFooters](https://reference.aspose.com/words/python-net/aspose.words/section/clear_headers_footers/#default). Selain itu, Anda bisa menggunakan metode [DeleteHeaderFooterShapes](https://reference.aspose.com/words/python-net/aspose.words/section/delete_header_footer_shapes/#default) untuk menghapus semua bentuk dari header dan footer di dokumen Anda.

Contoh kode berikut menunjukkan cara menghapus konten semua header dan footer di suatu bagian:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "delete-header-footer-content.py" >}}

Berikut contoh kode cara menghapus semua bentuk dari semua header dan footer dalam suatu bagian:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "delete-header-footer-shapes.py" >}}

## Sesuaikan Properti Halaman di Bagian

Sebelum mencetak halaman atau dokumen, Anda mungkin ingin menyesuaikan dan mengubah ukuran dan tata letak satu halaman atau keseluruhan dokumen. Dengan pengaturan halaman, Anda dapat mengubah pengaturan halaman dokumen seperti margin, orientasi, dan ukuran untuk mencetak halaman pertama atau halaman ganjil yang berbeda.

Aspose.Words memungkinkan Anda untuk menyesuaikan properti halaman dan bagian menggunakan kelas [PageSetup](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/).

Contoh kode berikut menunjukkan cara mengatur properti seperti ukuran halaman dan orientasi untuk bagian saat ini:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "page-setup-and-section-formatting.py" >}}

Contoh kode berikut menunjukkan cara mengubah properti halaman di semua bagian:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "modify-page-setup-in-all-sections.py" >}}

## Lihat juga

- [Tingkat Logis Node dalam Dokumen](https://docs.aspose.com/words/python-net/logical-levels-of-nodes-in-a-document/#document-and-section-logical-level)
- [Sisipkan dan Lampirkan Dokumen](/words/id/python-net/insert-and-append-documents/)
