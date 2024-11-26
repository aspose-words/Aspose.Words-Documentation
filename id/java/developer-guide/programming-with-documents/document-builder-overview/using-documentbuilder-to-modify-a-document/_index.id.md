---
title: Menggunakan DocumentBuilder untuk Memodifikasi Dokumen
second_title: Aspose.Words untuk Java
articleTitle: Menggunakan DocumentBuilder untuk Memodifikasi Dokumen
linktitle: Menggunakan DocumentBuilder untuk Memodifikasi Dokumen
type: docs
description: "Gunakan pembuat dokumen untuk memodifikasi dokumen dengan mudah di Java."
weight: 20
url: /id/java/using-documentbuilder-to-modify-a-document/
timestamp: 2024-10-21-11-17-44
---

## Menentukan Pemformatan

### Pemformatan Fonta

Pemformatan font saat ini diwakili oleh objek `Font` yang dikembalikan oleh properti `DocumentBuilder.Font`. Kelas `Font` berisi berbagai macam properti font yang dimungkinkan dalam Microsoft Word.

| ![font-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-1.png) |
| :- |
Contoh kode berikut menunjukkan cara mengatur pemformatan font.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetFontFormatting-DocumentBuilderSetFontFormatting.java" >}}


### Pemformatan Sel

Pemformatan sel digunakan selama pembuatan tabel. Ini diwakili oleh objek `CellFormat` yang dikembalikan oleh properti `DocumentBuilder.CellFormat`. CellFormat merangkum berbagai properti sel tabel seperti lebar atau perataan vertikal.

| ![cell-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-2.png) |
| :- |
Contoh kode berikut menunjukkan cara membuat tabel yang berisi satu sel berformat.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetTableCellFormatting-DocumentBuilderSetTableCellFormatting.java" >}}

### Pemformatan Baris

Pemformatan baris saat ini ditentukan oleh objek `RowFormat` yang dikembalikan oleh properti `DocumentBuilder.RowFormat`. Objek merangkum informasi tentang semua pemformatan baris tabel.

| ![row-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-3.png) |
| :- |
Contoh be low code menunjukkan cara membuat tabel yang berisi satu sel dan menerapkan pemformatan baris.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetTableRowFormatting-DocumentBuilderSetTableRowFormatting.java" >}}

### Pemformatan Daftar

Aspose.Words memungkinkan pembuatan daftar dengan mudah dengan menerapkan pemformatan daftar. DocumentBuilder menyediakan properti `DocumentBuilder.ListFormat` yang mengembalikan objek `ListFormat`. Objek ini memiliki beberapa metode untuk memulai dan mengakhiri daftar dan untuk menambah / mengurangi indentasi.

| ![list-fformatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-4.png) |
| :- |
Ada dua jenis daftar umum dalam Microsoft Word: berpoin dan bernomor.

- Untuk memulai daftar berpoin, panggil [ListFormat.applyBulletDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyBulletDefault).
- Untuk memulai daftar bernomor, panggil [ListFormat.applyNumberDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyNumberDefault).

Poin atau angka dan pemformatan ditambahkan ke paragraf saat ini dan semua paragraf selanjutnya dibuat menggunakan **DocumentBuilder** hingga [ListFormat.removeNumbers](https://reference.aspose.com/words/java/com.aspose.words/listformat/#removeNumbers) dipanggil untuk menghentikan pemformatan daftar berpoin.

Dalam dokumen Word, daftar dapat terdiri dari hingga sembilan level. Pemformatan daftar untuk setiap level menentukan poin atau angka apa yang digunakan, indentasi kiri, spasi antara poin dan teks, dll.

- Untuk menambah level daftar paragraf saat ini sebanyak satu level, panggil [ListFormat.listIndent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listIndent).
- Untuk mengurangi level daftar paragraf saat ini sebanyak satu level, panggil [ListFormat.listOutdent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listOutdent).

Metode mengubah level daftar dan menerapkan properti pemformatan level baru.

{{% alert color="primary" %}}

Anda juga dapat menggunakan properti [ListFormat.listLevelNumber](https://reference.aspose.com/words/java/com.aspose.words/listformat/#setListLevelNumber-int) untuk mendapatkan atau menyetel level daftar untuk paragraf. Level daftar diberi nomor 0 hingga 8.

{{% /alert %}}

Contoh kode berikut menunjukkan cara membuat daftar bertingkat.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetMultilevelListFormatting-DocumentBuilderSetMultilevelListFormatting.java" >}}

### Pengaturan Halaman dan Pemformatan Bagian

Penyiapan halaman dan properti bagian dienkapsulasi dalam objek `PageSetup` yang dikembalikan oleh properti `DocumentBuilder.PageSetup`. Objek berisi semua atribut pengaturan halaman dari suatu bagian (margin kiri, margin bawah, ukuran kertas, dan sebagainya) sebagai properti.

| ![section-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-5.png) |
| :- |
Contoh kode berikut menunjukkan cara mengatur properti seperti ukuran halaman dan orientasi untuk bagian saat ini.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetPageSetupAndSectionFormatting-DocumentBuilderSetPageSetupAndSectionFormatting.java" >}}

### Menerapkan Gaya

Beberapa objek pemformatan seperti Font atau ParagraphFormat mendukung gaya. Satu gaya bawaan atau yang ditentukan pengguna diwakili oleh objek `Style` yang berisi properti gaya yang sesuai seperti nama, gaya dasar, font, dan pemformatan paragraf gaya, dan seterusnya.

Selanjutnya, objek **Style** menyediakan properti [Style.getStyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/style/#getStyleIdentifier) yang mengembalikan pengenal gaya lokal-independen yang diwakili oleh nilai enumerasi **Style.StyleIdentifier**. Intinya adalah bahwa nama-nama gaya bawaan dalam Microsoft Word dilokalkan untuk bahasa yang berbeda. Dengan menggunakan pengenal gaya, Anda dapat menemukan gaya yang benar apa pun bahasa dokumennya. Nilai pencacahan sesuai dengan gaya bawaan Microsoft Word seperti Normal, Heading 1, Heading 2, dll. Semua gaya yang ditentukan pengguna diberi **StyleIdentifier.User value**.

| ![apply-style-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-6.png) |
| :- |
Contoh kode berikut menunjukkan cara menerapkan gaya paragraf.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyParagraphStyle.java" >}}

### Batas dan Bayangan

Batas diwakili oleh BorderCollection. Ini adalah kumpulan objek Batas yang diakses oleh indeks atau berdasarkan tipe batas. Jenis batas diwakili oleh pencacahan `BorderType`. Beberapa nilai pencacahan dapat diterapkan ke beberapa atau hanya satu elemen dokumen. Misalnya, `BorderType.Bottom` hanya berlaku untuk paragraf atau sel tabel, sedangkan `BorderType.DiagonalDown` hanya menentukan batas diagonal dalam sel tabel.

Kumpulan batas dan setiap batas terpisah memiliki atribut serupa seperti warna, gaya garis, lebar garis, jarak dari teks, dan bayangan opsional. Mereka diwakili oleh properti dengan nama yang sama. Anda dapat mencapai jenis batas yang berbeda dengan menggabungkan nilai properti. Selain itu, objek **BorderCollection** dan **Border** memungkinkan Anda menyetel ulang nilai ini ke default dengan memanggil metode [Border.clearFormatting](https://reference.aspose.com/words/java/com.aspose.words/border/#clearFormatting). Perhatikan bahwa ketika properti batas disetel ulang ke nilai default, batas tersebut tidak terlihat.

| ![set-borders-shading-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-7.png) |
| :- |
Kelas [Shading](https://reference.aspose.com/words/java/com.aspose.words/shading/) berisi atribut bayangan untuk elemen dokumen. Anda dapat mengatur tekstur bayangan yang diinginkan dan warna yang diterapkan pada latar belakang dan latar depan elemen.

Tekstur bayangan diatur dengan a [TextureIndex](https://www.aspose.com/api/java/words/com.aspose.words/constants/TextureIndex) nilai pencacahan yang memungkinkan penerapan berbagai pola pada objek **Shading**. Misalnya, untuk mengatur warna latar belakang untuk elemen dokumen, gunakan [TextureIndex.TextureSolid](https://www.aspose.com/api/java/words/com.aspose.words/constants/TextureIndex) nilai dan atur warna bayangan latar depan yang sesuai.

| ![borders-and-shading-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-8.png) |
| :- |
Contoh di bawah ini menunjukkan cara menerapkan batas dan bayangan ke paragraf.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyBordersAndShadingToParagraph.java" >}}

### Jepret ke Kisi

Aspose.Words menyediakan dua properti `ParagraphFormat.SnapToGrid` dan `Font.SnapToGrid` untuk mendapatkan dan menyetel properti paragraf ke kisi.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-SetSnapToGrid.java" >}}

### Memindahkan Kursor

### Mendeteksi Posisi Kursor Saat Ini

Anda dapat memperoleh posisi kursor pembuat saat ini kapan saja. Properti [DocumentBuilder.getCurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentNode) mengembalikan simpul yang saat ini dipilih di pembuat ini. Node adalah turunan langsung dari sebuah paragraf. Setiap operasi penyisipan yang Anda lakukan menggunakan `DocumentBuilder` akan disisipkan sebelum `DocumentBuilder.CurrentNode`. Saat paragraf saat ini kosong atau kursor diposisikan tepat sebelum akhir paragraf, `DocumentBuilder.CurrentNode` mengembalikan null.

Selain itu, Anda dapat menggunakan properti [DocumentBuilder.getCurrentParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentParagraph), yang mendapatkan paragraf yang saat ini dipilih dalam **DocumentBuilder** ini. Contoh below code menunjukkan cara mengakses simpul saat ini di pembuat dokumen.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderCursorPosition-DocumentBuilderCursorPosition.java" >}}

### Pindah ke Simpul Mana Pun (Paragraf dan Turunannya)

Jika Anda memiliki simpul objek dokumen, yang merupakan paragraf atau turunan langsung dari paragraf, Anda dapat mengarahkan kursor pembuat ke simpul ini. Gunakan metode [DocumentBuilder.moveTo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveTo-com.aspose.words.Node) untuk melakukan ini.
Contoh kode berikut menunjukkan cara memindahkan posisi kursor ke simpul tertentu.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToNode-DocumentBuilderMoveToNode.java" >}}

### Pindah ke Awal/Akhir Dokumen

Jika Anda perlu pindah ke awal dokumen, panggil [DocumentBuilder.moveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart). Jika Anda perlu pindah ke akhir dokumen, panggil [DocumentBuilder.moveToDocumentEnd](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentEnd).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToDocumentStartEnd-DocumentBuilderMoveToDocumentStartEnd.java" >}}

### Pindah ke Bagian

Jika Anda bekerja dengan dokumen yang berisi beberapa bagian, Anda dapat pindah ke bagian yang diinginkan menggunakan [DocumentBuilder.moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int). Metode ini memindahkan kursor ke awal bagian tertentu dan menerima indeks bagian yang diperlukan. Ketika indeks bagian lebih besar dari atau sama dengan 0, itu menentukan indeks dari awal dokumen dengan 0 sebagai bagian pertama. Ketika indeks bagian kurang dari 0, itu menentukan indeks dari akhir dokumen dengan -1 sebagai bagian terakhir. Contoh be low code menunjukkan cara memindahkan posisi kursor ke bagian yang ditentukan. Anda dapat mengunduh file templat contoh ini dari [di sini](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToSection-DocumentBuilderMoveToSection.java" >}}

### Pindah ke Header / Footer

Saat Anda perlu menempatkan beberapa data ke dalam header atau footer, Anda harus memindahkannya terlebih dahulu menggunakan [DocumentBuilder.moveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int).Metode ini menerima nilai enumerasi HeaderFooterType yang mengidentifikasi jenis header atau footer ke tempat kursor harus dipindahkan.

Jika Anda ingin membuat header dan footer yang berbeda untuk halaman pertama, Anda perlu menyetel properti [PageSetup.getDifferentFirstPageHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getDifferentFirstPageHeaderFooter) ke **true**. Jika Anda ingin membuat header dan footer yang berbeda untuk halaman genap dan ganjil, Anda perlu menyetel [PageSetup.getOddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOddAndEvenPagesHeaderFooter) ke **true**.

Jika Anda perlu kembali ke cerita utama, gunakan[DocumentBuilder.moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int) untuk keluar dari header atau footer. Contoh di bawah ini membuat header dan footer dalam dokumen menggunakan DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderHeadersAndFooters-DocumentBuilderHeaderAndFooters.java" >}}

### Pindah ke Paragraf

Gunakan[DocumentBuilder.moveToParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToParagraph-int-int) untuk memindahkan kursor ke paragraf yang diinginkan di bagian saat ini. Anda harus meneruskan dua parameter ke metode ini: paragraphIndex (indeks paragraf yang akan dipindahkan) dan characterIndex (indeks karakter di dalam paragraf).

Navigasi dilakukan di dalam cerita saat ini dari bagian saat ini. Artinya, jika Anda memindahkan kursor ke header utama bagian pertama, maka paragraphIndex menentukan indeks paragraf di dalam header bagian tersebut.

Ketika paragraphIndex lebih besar dari atau sama dengan 0, itu menentukan indeks dari awal bagian dengan 0 sebagai paragraf pertama. Ketika paragraphIndex kurang dari 0, itu menentukan indeks dari akhir bagian dengan -1 sebagai paragraf terakhir. Indeks karakter saat ini hanya dapat ditentukan sebagai 0 untuk pindah ke awal paragraf atau -1 untuk pindah ke akhir paragraf. Contoh kode berikut menunjukkan cara memindahkan posisi kursor ke paragraf yang ditentukan. Anda dapat mengunduh file templat contoh ini dari [di sini](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToParagraph-DocumentBuilderMoveToParagraph.java" >}}

### Pindah ke Sel Tabel

Gunakan [DocumentBuilder.moveToCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToCell-int-int-int-int) jika Anda perlu memindahkan kursor ke sel tabel di bagian saat ini. Metode ini menerima empat parameter:

- tableIndex - indeks tabel yang akan dipindahkan.
- rowIndex - indeks baris dalam tabel.
- columnIndex - indeks kolom dalam tabel.
- characterIndex - indeks karakter di dalam sel.

Navigasi dilakukan di dalam cerita saat ini dari bagian saat ini.

Untuk parameter indeks, ketika indeks lebih besar dari atau sama dengan 0, itu menentukan indeks dari awal dengan 0 sebagai elemen pertama. Ketika indeks kurang dari 0, itu menentukan indeks dari akhir dengan -1 menjadi elemen terakhir.

Perhatikan juga bahwa characterIndex saat ini hanya dapat menentukan 0 untuk berpindah ke awal sel atau -1 untuk berpindah ke akhir sel. Contoh kode berikut menunjukkan cara memindahkan posisi kursor ke sel tabel yang ditentukan. Anda dapat mengunduh file templat contoh ini dari [di sini](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToTableCell-DocumentBuilderMoveToTableCell.java" >}}

### Pindah ke Bookmark

Penanda sering digunakan untuk menandai tempat-tempat tertentu dalam dokumen tempat elemen baru akan disisipkan. Untuk memindahkan ke penanda, gunakan [DocumentBuilder.moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String). Metode ini memiliki dua kelebihan. Yang paling sederhana tidak menerima apa pun selain nama bookmark tempat kursor akan dipindahkan. Contoh kode berikut menunjukkan cara memindahkan posisi kursor ke bookmark.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmark-DocumentBuilderMoveToBookmark.java" >}}

Kelebihan beban ini memindahkan kursor ke posisi tepat setelah bookmark dimulai dengan nama yang ditentukan. Kelebihan lainnya [DocumentBuilder.moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String-boolean-boolean) memindahkan kursor ke penanda dengan presisi yang lebih tinggi. Ini menerima dua parameter boolean tambahan:

- isStart menentukan apakah akan memindahkan kursor ke awal atau ke akhir bookmark.
- isAfter menentukan apakah akan memindahkan kursor setelah posisi awal atau akhir bookmark, atau memindahkan kursor sebelum posisi awal atau akhir bookmark.

Contoh kode berikut menunjukkan cara memindahkan posisi kursor tepat setelah bookmark berakhir.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmarkEnd-DocumentBuilderMoveToBookmarkEnd.java" >}}

Menyisipkan teks baru dengan cara ini tidak menggantikan teks bookmark yang ada. Perhatikan bahwa beberapa penanda dalam dokumen ditetapkan ke bidang formulir. Pindah ke bookmark seperti itu dan menyisipkan teks di sana menyisipkan teks ke dalam kode bidang formulir. Meskipun ini tidak akan membatalkan bidang formulir, teks yang disisipkan tidak akan terlihat karena menjadi bagian dari kode bidang.

### Pindah ke Bidang `Merge`

Terkadang Anda mungkin perlu melakukan" manual " Mail Merge menggunakan `DocumentBuilder` atau mengisi bidang gabungan dengan cara khusus di dalam pengendali peristiwa Mail Merge. Saat itulah [DocumentBuilder.moveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField-java.lang.String) bisa berguna. Metode menerima nama bidang gabungan. Ini memindahkan kursor ke posisi tepat di luar bidang penggabungan yang ditentukan dan menghapus bidang penggabungan. Contoh kode berikut menunjukkan cara memindahkan kursor ke posisi tepat di luar bidang penggabungan yang ditentukan.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToMergeField-DocumentBuilderMoveToMergeField.java" >}}

## Bagaimana Mengkonversi Antara Unit Pengukuran

Sebagian besar properti objek yang disediakan dalam Aspose.Words API yang mewakili beberapa pengukuran (lebar / tinggi, margin, dan berbagai jarak) menerima nilai dalam poin (1 inci sama dengan 72 poin). Terkadang ini tidak nyaman sehingga ada kelas `ConvertUtil` yang menyediakan fungsi pembantu untuk mengonversi antara berbagai unit pengukuran. Ini memungkinkan konversi inci ke poin, poin ke inci, piksel ke poin, dan poin ke piksel. Saat piksel diubah menjadi titik dan sebaliknya, piksel dapat dilakukan pada resolusi 96 dpi (titik per inci) atau pada resolusi dpi yang ditentukan.

**ConvertUtil**

Contoh kode berikut menunjukkan cara menentukan properti halaman dalam inci.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ConvertBetweenMeasurementUnits-ConvertBetweenMeasurementUnits.java" >}}
