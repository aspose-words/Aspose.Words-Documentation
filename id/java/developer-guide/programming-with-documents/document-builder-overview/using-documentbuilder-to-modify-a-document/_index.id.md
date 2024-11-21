---
title: Sitemap `DocumentBuilder` Modifikasi Dokumen
second_title: Aspose.Words Sitemap Java
articleTitle: Sitemap `DocumentBuilder` Modifikasi Dokumen
linktitle: Sitemap `DocumentBuilder` Modifikasi Dokumen
type: docs
description: "Gunakan pembangun dokumen untuk memodifikasi dokumen dengan mudah JavaSitemap"
weight: 20
url: /id/java/using-documentbuilder-to-modify-a-document/
timestamp: 2024-10-21-11-17-44
---

## Formatifikasi

### Sitemap

Format font saat ini diwakili oleh `Font` objek yang dikembalikan oleh `DocumentBuilder.Font` Login Login `Font` kelas mengandung berbagai macam properti font mungkin Microsoft WordSitemap

| ![font-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-1.png) |
|  :-  |
Contoh kode berikut menunjukkan cara mengatur format font.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetFontFormatting-DocumentBuilderSetFontFormatting.java" >}}


### Catalog

Format sel digunakan selama bangunan meja. Diwakili oleh `CellFormat` objek yang dikembalikan oleh `DocumentBuilder.CellFormat` Login CellFormat merangkum berbagai sifat sel meja seperti lebar atau penyelarasan vertikal.

| ![cell-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-2.png) |
|  :-  |
Contoh kode berikut menunjukkan cara membuat tabel yang mengandung sel berformat tunggal.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetTableCellFormatting-DocumentBuilderSetTableCellFormatting.java" >}}

### Login

Format baris saat ini ditentukan oleh `RowFormat` objek yang dikembalikan oleh `DocumentBuilder.RowFormat` Login Keberatan menimbulkan informasi tentang semua format baris tabel.

| ![row-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-3.png) |
|  :-  |
Sitemaplow code contoh menunjukkan bagaimana membuat tabel yang mengandung sel tunggal dan menerapkan format baris.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetTableRowFormatting-DocumentBuilderSetTableRowFormatting.java" >}}

### Daftar Format

Aspose.Words memungkinkan pembuatan daftar yang mudah dengan menerapkan format daftar. DocumentBuilder menyediakan `DocumentBuilder.ListFormat` properti yang mengembalikan `ListFormat` Sitemap Objek ini memiliki beberapa metode untuk memulai dan mengakhiri daftar dan untuk meningkatkan / mengurangi indent.

| ![list-fformatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-4.png) |
|  :-  |
Ada dua jenis daftar umum dalam Microsoft Word: buletin dan bernomor.

- Untuk memulai daftar yang dipeluru, panggilan [ListFormat.applyBulletDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyBulletDefault) Sitemap
- Untuk memulai daftar nomor, panggilan [ListFormat.applyNumberDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyNumberDefault) Sitemap

Bullet atau nomor dan format ditambahkan ke paragraf saat ini dan semua paragraf lebih lanjut yang dibuat menggunakan **DocumentBuilder** Sitemap [ListFormat.removeNumbers](https://reference.aspose.com/words/java/com.aspose.words/listformat/#removeNumbers) disebut untuk menghentikan format daftar yang dipeluru.

Dalam dokumen Word, daftar dapat terdiri dari hingga sembilan tingkat. Daftar format untuk setiap tingkat menentukan apa peluru atau nomor digunakan, meninggalkan indent, ruang antara peluru dan teks dll.

- Login Untuk meningkatkan tingkat daftar paragraf saat ini dengan satu tingkat, panggilan [ListFormat.listIndent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listIndent)Sitemap
- Login Untuk menurunkan tingkat daftar paragraf saat ini dengan satu tingkat, panggilan [ListFormat.listOutdent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listOutdent)Sitemap

Metode mengubah tingkat daftar dan menerapkan sifat pemformatan tingkat baru.

{{% alert color="primary" %}}

Anda juga dapat menggunakan [ListFormat.listLevelNumber](https://reference.aspose.com/words/java/com.aspose.words/listformat/#setListLevelNumber-int) properti untuk mendapatkan atau mengatur tingkat daftar untuk paragraf. Tingkat daftar dihitung 0 hingga 8.

{{% /alert %}}

Contoh kode berikut menunjukkan cara membangun daftar multilevel.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetMultilevelListFormatting-DocumentBuilderSetMultilevelListFormatting.java" >}}

### Pengaturan Halaman dan Format Bagian

Properti pengaturan dan bagian halaman ditekapkan dalam `PageSetup` objek yang dikembalikan oleh `DocumentBuilder.PageSetup` Login Objek berisi semua atribut pengaturan halaman dari suatu bagian (kiri margin, margin bawah, ukuran kertas, dan sebagainya) sebagai properti.

| ![section-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-5.png) |
|  :-  |
Contoh kode berikut menunjukkan cara mengatur sifat seperti ukuran halaman dan orientasi untuk bagian saat ini.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetPageSetupAndSectionFormatting-DocumentBuilderSetPageSetupAndSectionFormatting.java" >}}

### Menerapkan gaya

Beberapa objek format seperti gaya dukungan Font atau ParagraphFormat. Gaya bawaan atau yang ditentukan pengguna diwakili oleh gaya `Style` objek yang mengandung sifat gaya yang sesuai seperti nama, gaya dasar, font dan format paragraf dari gaya, dan sebagainya.

Sitemap **Style** objek memberikan [Style.getStyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/style/#getStyleIdentifier) properti yang mengembalikan pengidentifikasi gaya lokal yang diwakili oleh **Style.StyleIdentifier** Nilai numerasi. Titiknya adalah nama gaya built-in di Microsoft Word lokal untuk berbagai bahasa. Menggunakan pengidentifikasi gaya, Anda dapat menemukan gaya yang benar terlepas dari bahasa dokumen. Nilai numerasi sesuai dengan Microsoft Word built-in gaya seperti Normal, Heading 1, Heading 2 dll. Semua gaya yang ditentukan pengguna ditugaskan **Login Nilai pengguna**Sitemap

| ![apply-style-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-6.png) |
|  :-  |
Contoh kode berikut menunjukkan cara menerapkan gaya paragraf.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyParagraphStyle.java" >}}

### Perbatasan dan Shading

Perbatasan diwakili oleh BorderCollection. Ini adalah koleksi objek Perbatasan yang diakses oleh indeks atau dengan tipe perbatasan. Jenis perbatasan diwakili oleh `BorderType` Sitemap Beberapa nilai enumerasi berlaku untuk beberapa atau hanya satu elemen dokumen. Sitemap `BorderType.Bottom` berlaku untuk sel paragraf atau meja sementara `BorderType.DiagonalDown` menentukan batas diagonal dalam sel meja saja.

Kedua koleksi perbatasan dan setiap perbatasan terpisah memiliki atribut serupa seperti warna, gaya garis, lebar garis, jarak dari teks, dan bayangan opsional. Mereka diwakili oleh sifat nama yang sama. Anda dapat mencapai berbagai jenis perbatasan dengan menggabungkan nilai properti. Selain itu, keduanya **BorderCollection** Login **Border** objek memungkinkan Anda untuk mengatur ulang nilai-nilai ini secara default dengan memanggil [Border.clearFormatting](https://reference.aspose.com/words/java/com.aspose.words/border/#clearFormatting) Login Perhatikan bahwa ketika properti perbatasan direset ke nilai default, perbatasan tidak terlihat.

| ![set-borders-shading-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-7.png) |
|  :-  |
Login [Shading](https://reference.aspose.com/words/java/com.aspose.words/shading/) kelas mengandung atribut shading untuk elemen dokumen. Anda dapat mengatur tekstur membentuk yang diinginkan dan warna-warna yang diterapkan pada latar belakang dan latar belakang elemen.

Tekstur membentuk diatur dengan [Sitemap](https://www.aspose.com/api/java/words/com.aspose.words/constants/TextureIndex) nilai numerasi yang memungkinkan penerapan berbagai pola ke **Shading** Sitemap Misalnya, untuk mengatur warna latar belakang untuk elemen dokumen, gunakan [Sitemap](https://www.aspose.com/api/java/words/com.aspose.words/constants/TextureIndex) nilai dan set warna pencukur tanah sesuai.

| ![borders-and-shading-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-8.png) |
|  :-  |
Contoh di bawah ini menunjukkan bagaimana menerapkan perbatasan dan membentuk paragraf.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyBordersAndShadingToParagraph.java" >}}

### Login

Aspose.Words menyediakan dua properti `ParagraphFormat.SnapToGrid` Login `Font.SnapToGrid` untuk mendapatkan dan mengatur properti paragraf untuk grid

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-SetSnapToGrid.java" >}}

### Pindahkan Cursor

### Mendeteksi Posisi Cursor Saat Ini

Anda dapat memperoleh di mana kursor pembangun saat ini diposisikan setiap saat. Login [DocumentBuilder.getCurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentNode) properti kembali node yang saat ini dipilih dalam pembangun ini. Node adalah anak langsung paragraf. Setiap operasi insert yang Anda lakukan menggunakan `DocumentBuilder` akan memasukkan sebelum `DocumentBuilder.CurrentNode`Sitemap Ketika paragraf saat ini kosong atau kursor diposisikan hanya sebelum akhir paragraf, `DocumentBuilder.CurrentNode` kembali null.

Juga, Anda dapat menggunakan Meme it [DocumentBuilder.getCurrentParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentParagraph) properti, yang mendapat paragraf yang saat ini dipilih dalam hal ini **DocumentBuilder**Sitemap Sitemaplow code Contoh menunjukkan cara mengakses node saat ini dalam pembangun dokumen.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderCursorPosition-DocumentBuilderCursorPosition.java" >}}

### Pindah ke Node (Paragraf dan Anak-anak mereka)

Jika Anda memiliki node objek dokumen, yang merupakan paragraf atau anak langsung paragraf, Anda dapat menunjuk kursor pembangun ke node ini. Gunakan [DocumentBuilder.moveTo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveTo-com.aspose.words.Node) metode untuk melakukan ini.
Contoh kode berikut menunjukkan cara memindahkan posisi kursor ke node yang ditentukan.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToNode-DocumentBuilderMoveToNode.java" >}}

### Pindahkan ke Dokumen Start/End

Jika Anda perlu pindah ke awal dokumen, panggilan [DocumentBuilder.moveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart)Sitemap Jika Anda perlu pindah ke akhir dokumen, panggilan [DocumentBuilder.moveToDocumentEnd](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentEnd)Sitemap

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToDocumentStartEnd-DocumentBuilderMoveToDocumentStartEnd.java" >}}

### Bergerak ke Bagian

Jika Anda bekerja dengan dokumen yang mengandung beberapa bagian, Anda dapat pindah ke bagian yang diinginkan menggunakan [DocumentBuilder.moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int)Sitemap Metode ini memindahkan kursor ke awal bagian yang ditentukan dan menerima indeks bagian yang diperlukan. Ketika indeks bagian lebih besar dari atau sama dengan 0, itu menentukan indeks dari awal dokumen dengan 0 menjadi bagian pertama. Ketika indeks bagian kurang dari 0, itu menentukan indeks dari akhir dokumen dengan -1 menjadi bagian terakhir. Sitemaplow code contoh menunjukkan cara memindahkan posisi kursor ke bagian yang ditentukan. Anda dapat mengunduh file template dari contoh ini dari [Sitemap](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx)Sitemap

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToSection-DocumentBuilderMoveToSection.java" >}}

### Pindah ke Header / Footer

Ketika Anda perlu menempatkan beberapa data ke header atau footer, Anda harus bergerak di sana terlebih dahulu menggunakan [DocumentBuilder.moveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int)Sitemap Metode menerima nilai numerasi Header FooterType yang mengidentifikasi jenis header atau footer ke mana kursor harus dipindahkan.

Jika Anda ingin membuat header dan footer yang berbeda untuk halaman pertama, Anda perlu mengatur [PageSetup.getDifferentFirstPageHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getDifferentFirstPageHeaderFooter) properti **true**Sitemap Jika Anda ingin membuat header dan footers yang berbeda untuk halaman yang bahkan dan aneh, Anda perlu mengatur [PageSetup.getOddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOddAndEvenPagesHeaderFooter) Login **true**Sitemap

Jika Anda perlu kembali ke cerita utama, gunakan[DocumentBuilder.moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int) untuk memindahkan keluar dari header atau footer. Berikut contoh membuat header dan footer dalam dokumen menggunakan DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderHeadersAndFooters-DocumentBuilderHeaderAndFooters.java" >}}

### Pindahkan ke Paragraf

Sitemap[DocumentBuilder.moveToParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToParagraph-int-int) untuk memindahkan kursor ke paragraf yang diinginkan di bagian saat ini. Anda harus melewati dua parameter ke metode ini: paragrafIndex (indeks paragraf untuk pindah ke) dan karakterIndex (indeks karakter di dalam paragraf).

Navigasi dilakukan dalam cerita saat ini dari bagian saat ini. Itu, jika Anda memindahkan kursor ke header utama dari bagian pertama, maka paragrafIndex menentukan indeks paragraf di dalam header bagian itu.

Ketika paragrafIndex lebih besar dari atau sama dengan 0, itu menentukan indeks dari awal bagian dengan 0 menjadi paragraf pertama. Ketika paragrafIndex kurang dari 0, itu menentukan indeks dari akhir bagian dengan -1 menjadi paragraf terakhir. Indeks karakter saat ini hanya dapat ditentukan sebagai 0 untuk pindah ke awal paragraf atau -1 untuk bergerak ke ujung paragraf. Contoh kode berikut menunjukkan cara memindahkan posisi kursor ke paragraf yang ditentukan. Anda dapat mengunduh file template dari contoh ini dari [Sitemap](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx)Sitemap

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToParagraph-DocumentBuilderMoveToParagraph.java" >}}

### Pindah ke Sel Meja

Sitemap [DocumentBuilder.moveToCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToCell-int-int-int-int) jika Anda perlu memindahkan kursor ke sel tabel di bagian saat ini. Metode ini menerima empat parameter:

- tabelIndex - indeks tabel untuk bergerak ke.
- barisIndex - indeks baris di meja.
- kolomIndex - indeks kolom di meja.
- karakterIndex - indeks karakter di dalam sel.

Navigasi dilakukan dalam cerita saat ini dari bagian saat ini.

Untuk parameter indeks, ketika indeks lebih besar dari atau sama dengan 0, itu menentukan indeks dari awal dengan 0 menjadi elemen pertama. Ketika indeks kurang dari 0, itu menentukan indeks dari akhir dengan -1 menjadi elemen terakhir.

Juga, perhatikan bahwa karakterIndex saat ini hanya dapat menentukan 0 untuk pindah ke awal sel atau -1 untuk bergerak ke ujung sel. Contoh kode berikut menunjukkan cara memindahkan posisi kursor ke sel tabel yang ditentukan. Anda dapat mengunduh file template dari contoh ini dari [Sitemap](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx)Sitemap

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToTableCell-DocumentBuilderMoveToTableCell.java" >}}

### Bergerak ke Bookmark

Bookmark sering digunakan untuk menandai tempat tertentu dalam dokumen di mana elemen baru harus dimasukkan. Untuk pindah ke bookmark, gunakan [DocumentBuilder.moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String)Sitemap Metode ini memiliki dua kelebihan beban. Yang paling sederhana menerima apa-apa tetapi nama bookmark di mana kursor akan dipindahkan. Contoh kode berikut menunjukkan cara memindahkan posisi kursor ke bookmark.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmark-DocumentBuilderMoveToBookmark.java" >}}

Beban ini memindahkan kursor ke posisi hanya setelah awal bookmark dengan nama yang ditentukan. Kelebihan lain [DocumentBuilder.moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String-boolean-boolean) memindahkan kursor ke bookmark dengan presisi yang lebih besar. Ini menerima dua parameter boolean tambahan:

- isStart menentukan apakah untuk memindahkan kursor ke awal atau akhir bookmark.
-Setelah menentukan apakah untuk memindahkan kursor menjadi setelah posisi awal bookmark atau akhir, atau untuk memindahkan kursor menjadi sebelum posisi awal bookmark atau akhir.

Contoh kode berikut menunjukkan cara memindahkan posisi kursor hanya setelah akhir bookmark.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmarkEnd-DocumentBuilderMoveToBookmarkEnd.java" >}}

Masukkan teks baru dengan cara ini tidak menggantikan teks yang ada dari bookmark. Perhatikan bahwa beberapa bookmark dalam dokumen ditugaskan untuk membentuk bidang. Pindahkan ke teks bookmark dan sisipan seperti itu ada memasukkan teks ke dalam kode bidang formulir. Meskipun ini tidak akan membatalkan bidang formulir, teks yang dimasukkan tidak akan terlihat karena menjadi bagian dari kode lapangan.

### Sitemap `Merge` Login

Kadang-kadang Anda mungkin perlu melakukan "manual" mail merge Login `DocumentBuilder` atau mengisi lapangan merge dengan cara khusus di dalam mail merge event handler. Sitemap [DocumentBuilder.moveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField-java.lang.String) bisa berguna. Metode menerima nama lapangan merge. Ini memindahkan kursor ke posisi di luar bidang gabungan yang ditentukan dan menghapus lapangan merge. Contoh kode berikut menunjukkan cara memindahkan kursor ke posisi di luar bidang gabungan yang ditentukan.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToMergeField-DocumentBuilderMoveToMergeField.java" >}}

## Cara Mengkonversi Antara Unit Pengukuran

Sebagian besar sifat objek yang diberikan dalam Aspose.Words API yang mewakili beberapa pengukuran (lebar/tinggi, margin dan berbagai jarak) menerima nilai dalam poin (1 inci sama 72 poin). Kadang-kadang ini tidak nyaman sehingga ada Meme it `ConvertUtil` kelas yang menyediakan fungsi pembantu untuk mengkonversi antara berbagai unit pengukuran. Hal ini memungkinkan mengkonversi inci ke poin, poin ke inci, piksel ke poin, dan poin ke piksel. Ketika piksel dikonversi ke titik dan sebaliknya, dapat dilakukan pada resolusi 96 dpi (dot per inci) atau pada resolusi dpi yang ditentukan.

**ConvertUtil** sangat berguna ketika mengatur sifat halaman yang berbeda karena misalnya inci lebih normal unit pengukuran daripada poin. Contoh berikut menunjukkan cara mengatur properti halaman di inci.

Contoh kode berikut menunjukkan bagaimana menentukan properti halaman dalam inci.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ConvertBetweenMeasurementUnits-ConvertBetweenMeasurementUnits.java" >}}
