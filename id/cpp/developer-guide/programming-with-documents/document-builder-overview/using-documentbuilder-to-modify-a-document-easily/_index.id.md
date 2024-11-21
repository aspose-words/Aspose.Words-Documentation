---
title: Menggunakan `DocumentBuilder` untuk Memodifikasi Dokumen dengan Mudah
second_title: Aspose.Words untuk C++
articleTitle: Menggunakan `DocumentBuilder` untuk Memodifikasi Dokumen dengan Mudah
linktitle: Menggunakan `DocumentBuilder` untuk Memodifikasi Dokumen dengan Mudah
type: docs
description: "Gunakan pembuat dokumen untuk memodifikasi dokumen dengan mudah di C++."
weight: 190
url: /id/cpp/using-documentbuilder-to-modify-a-document-easily/
timestamp: 2024-01-27-14-07-04
---

## Menentukan Pemformatan

### Pemformatan Fonta

Pemformatan font saat ini diwakili oleh objek `Font` yang dikembalikan oleh properti `DocumentBuilder.Font`. Kelas `Font` berisi berbagai macam properti font yang dimungkinkan dalam Microsoft Word. Contoh di bawah ini menunjukkan cara mengatur pemformatan font.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetFontFormatting.cpp" >}}

### Pemformatan Paragraf

Pemformatan paragraf saat ini diwakili oleh objek `ParagraphFormat` yang dikembalikan oleh properti `DocumentBuilder.ParagraphFormat`. Objek ini merangkum berbagai properti pemformatan paragraf yang tersedia di Microsoft Word. Anda dapat dengan mudah mengatur ulang pemformatan paragraf ke default ke gaya Normal, rata kiri, tanpa lekukan, tanpa spasi, tanpa batas, dan tanpa bayangan dengan memanggil `ParagraphFormat.ClearFormatting`. Contoh di bawah ini menunjukkan cara mengatur pemformatan paragraf.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetParagraphFormatting.cpp" >}}

### Bekerja dengan Tipografi Asia

#### Secara Otomatis Menyesuaikan Spasi antara teks Asia dan Latin, Angka

Jika Anda mendesain templat dengan teks Asia Timur dan Latin, dan Anda ingin menyempurnakan tampilan templat formulir dengan mengontrol spasi di antara kedua jenis teks tersebut, Anda dapat mengonfigurasi templat formulir Anda untuk menyesuaikan spasi di antara kedua jenis ini secara otomatis. teks. Anda dapat menggunakan properti AddSpaceBetweenFarEastAndAlpha dan AddSpaceBetweenFarEastAndDigit dari kelas ParagraphFormat untuk mencapainya.

Contoh kode berikut menunjukkan cara menggunakan properti `ParagraphFormat.AddSpaceBetweenFarEastAndAlpha` dan `ParagraphFormat.AddSpaceBetweenFarEastAndDigit`.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cpp" >}}

#### Ubah Spasi dan Indentasi Paragraf Asia

Contoh kode berikut menunjukkan cara mengubah spasi dan indentasi paragraf Asia.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cpp" >}}

#### Setel Opsi Jeda Baris

Tab Tipografi Asia dari dialog properti `Paragraph` di MS Word memiliki grup pemisah baris. Opsi grup ini dapat diatur menggunakan FarEastLineBreakControl, WordWrap, HangingPunctuation properti dari kelas ParagraphFormat. Contoh Below code menunjukkan cara menggunakan properti ini.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetAsianTypographyLinebreakGroupProp.cpp" >}}

### Pemformatan Sel

Pemformatan sel digunakan selama pembuatan tabel. Ini diwakili oleh objek `CellFormat` yang dikembalikan oleh properti `DocumentBuilder.CellFormat`. CellFormat merangkum berbagai properti sel tabel seperti lebar atau perataan vertikal. Contoh di bawah ini menunjukkan cara membuat tabel yang berisi satu sel berformat.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetTableCellFormatting.cpp" >}}

### Pemformatan Baris

Pemformatan baris saat ini ditentukan oleh objek `RowFormat` yang dikembalikan oleh properti `DocumentBuilder.RowFormat`. Objek merangkum informasi tentang semua pemformatan baris tabel. Contoh di bawah ini menunjukkan cara membuat tabel yang berisi satu sel dan menerapkan pemformatan baris.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetTableRowFormatting.cpp" >}}

### Pemformatan Daftar

Aspose.Words memungkinkan pembuatan daftar dengan mudah dengan menerapkan pemformatan daftar. DocumentBuilder menyediakan properti `DocumentBuilder.ListFormat` yang mengembalikan objek `ListFormat`. Objek ini memiliki beberapa metode untuk memulai dan mengakhiri daftar dan untuk menambah / mengurangi indentasi. Ada dua jenis daftar umum dalam Microsoft Word: berpoin dan bernomor.

- Untuk memulai daftar berpoin, panggil `ListFormat.ApplyBulletDefault`.
- Untuk memulai daftar bernomor, panggil `ListFormat.ApplyNumberDefault`.

Poin atau angka dan pemformatan ditambahkan ke paragraf saat ini dan semua paragraf selanjutnya dibuat menggunakan **DocumentBuilder** hingga `ListFormat.RemoveNumbers` dipanggil untuk menghentikan pemformatan daftar berpoin. Dalam dokumen Word, daftar dapat terdiri dari hingga sembilan level. Pemformatan daftar untuk setiap level menentukan poin atau angka apa yang digunakan, indentasi kiri, spasi antara poin dan teks, dll.

- Untuk menambah level daftar paragraf saat ini sebanyak satu level, panggil `ListFormat.ListIndent`.
- Untuk mengurangi level daftar paragraf saat ini sebanyak satu level, panggil `ListFormat.ListOutdent`.

Metode mengubah level daftar dan menerapkan properti pemformatan level baru.

{{% alert color="primary" %}}

Anda juga dapat menggunakan properti `ListFormat.ListLevelNumber` untuk mendapatkan atau menyetel level daftar untuk paragraf. Level daftar diberi nomor 0 hingga 8.

{{% /alert %}}

Contoh di bawah ini menunjukkan cara membuat daftar bertingkat.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetMultilevelListFormatting.cpp" >}}

### Pengaturan Halaman dan Pemformatan Bagian

Penyiapan halaman dan properti bagian dienkapsulasi dalam objek `PageSetup` yang dikembalikan oleh properti `DocumentBuilder.PageSetup`. Objek berisi semua atribut pengaturan halaman dari suatu bagian (margin kiri, margin bawah, ukuran kertas, dan sebagainya) sebagai properti. Contoh di bawah ini menunjukkan cara mengatur properti seperti ukuran halaman dan orientasi untuk bagian saat ini.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetPageSetupAndSectionFormatting.cpp" >}}

### Menerapkan Gaya

Beberapa objek pemformatan seperti Font atau ParagraphFormat mendukung gaya. Satu gaya bawaan atau yang ditentukan pengguna diwakili oleh objek `Style` yang berisi properti gaya yang sesuai seperti nama, gaya dasar, font, dan pemformatan paragraf gaya, dan seterusnya.

Selanjutnya, objek **Style** menyediakan properti `Style.StyleIdentifier` yang mengembalikan pengenal gaya lokal-independen yang diwakili oleh nilai enumerasi **Style.StyleIdentifier**. Intinya adalah bahwa nama-nama gaya bawaan dalam Microsoft Word dilokalkan untuk bahasa yang berbeda. Dengan menggunakan pengenal gaya, Anda dapat menemukan gaya yang benar apa pun bahasa dokumennya. Nilai pencacahan sesuai dengan gaya bawaan Microsoft Word seperti Normal, Heading 1, Heading 2, dll. Semua gaya yang ditentukan pengguna diberi **StyleIdentifier.User value**. Contoh di bawah ini menunjukkan cara menerapkan gaya paragraf.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyParagraphStyle.cpp" >}}

### Batas dan Bayangan

Batas diwakili oleh BorderCollection. Ini adalah kumpulan objek Batas yang diakses oleh indeks atau berdasarkan tipe batas. Jenis batas diwakili oleh pencacahan `BorderType`. Beberapa nilai pencacahan dapat diterapkan ke beberapa atau hanya satu elemen dokumen. Misalnya, `BorderType.Bottom` hanya berlaku untuk paragraf atau sel tabel, sedangkan `BorderType.DiagonalDown` hanya menentukan batas diagonal dalam sel tabel.

Kumpulan batas dan setiap batas terpisah memiliki atribut serupa seperti warna, gaya garis, lebar garis, jarak dari teks, dan bayangan opsional. Mereka diwakili oleh properti dengan nama yang sama. Anda dapat mencapai jenis batas yang berbeda dengan menggabungkan nilai properti. Selain itu, objek **BorderCollection** dan **Border** memungkinkan Anda menyetel ulang nilai ini ke default dengan memanggil metode `Border.ClearFormatting`. Perhatikan bahwa ketika properti batas disetel ulang ke nilai default, batas tersebut tidak terlihat. Kelas `Shading` berisi atribut bayangan untuk elemen dokumen. Anda dapat mengatur tekstur bayangan yang diinginkan dan warna yang diterapkan pada latar belakang dan latar depan elemen.

Tekstur bayangan diatur dengan nilai enumerasi `TextureIndex` yang memungkinkan penerapan berbagai pola ke objek **Shading**. Misalnya, untuk menyetel warna latar belakang untuk elemen dokumen, gunakan nilai `TextureIndex.TextureSolid` dan setel warna bayangan latar depan yang sesuai. Contoh di bawah ini menunjukkan cara menerapkan batas dan bayangan ke paragraf.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyBordersAndShadingToParagraph.cpp" >}}

### Jepret ke Kisi

Aspose.Words menyediakan dua properti `ParagraphFormat.SnapToGrid` dan `Font.SnapToGrid` untuk mendapatkan dan menyetel properti paragraf ke kisi.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetSnapToGrid.cpp" >}}

## Memindahkan Kursor

### Mendeteksi Posisi Kursor Saat Ini

Anda dapat memperoleh posisi kursor pembuat saat ini kapan saja. Properti `DocumentBuilder.CurrentNode` mengembalikan simpul yang saat ini dipilih di pembuat ini. Node adalah turunan langsung dari sebuah paragraf. Setiap operasi penyisipan yang Anda lakukan menggunakan `DocumentBuilder` akan disisipkan sebelum `DocumentBuilder.CurrentNode`. Saat paragraf saat ini kosong atau kursor diposisikan tepat sebelum akhir paragraf, `DocumentBuilder.CurrentNode` mengembalikan null.

Selain itu, Anda dapat menggunakan properti `DocumentBuilder.CurrentParagraph`, yang mendapatkan paragraf yang saat ini dipilih dalam **DocumentBuilder** ini. Contoh di bawah ini menunjukkan cara mengakses simpul saat ini di pembuat dokumen. Anda dapat mengunduh file templat contoh ini dari sini.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderCursorPosition.cpp" >}}

### Pindah ke Simpul Mana Pun (Paragraf dan Turunannya)

Jika Anda memiliki simpul objek dokumen, yang merupakan paragraf atau turunan langsung dari paragraf, Anda dapat mengarahkan kursor pembuat ke simpul ini. Gunakan metode `DocumentBuilder.MoveTo` untuk melakukan ini. Contoh di bawah ini menunjukkan cara memindahkan posisi kursor ke simpul tertentu. Anda dapat mengunduh file templat contoh ini dari sini.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToNode.cpp" >}}

### Pindah ke Awal/Akhir Dokumen

Jika Anda perlu pindah ke awal dokumen, panggil `DocumentBuilder.MoveToDocumentStart`. Jika Anda perlu pindah ke akhir dokumen, panggil `DocumentBuilder.MoveToDocumentEnd`. Contoh di bawah ini menunjukkan cara memindahkan posisi kursor ke awal atau akhir dokumen. Anda dapat mengunduh file templat contoh ini dari sini.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToDocumentStartEnd.cpp" >}}

### Pindah ke Bagian

Jika Anda bekerja dengan dokumen yang berisi beberapa bagian, Anda dapat pindah ke bagian yang diinginkan menggunakan `DocumentBuilder.MoveToSection`. Metode ini memindahkan kursor ke awal bagian tertentu dan menerima indeks bagian yang diperlukan. Ketika indeks bagian lebih besar dari atau sama dengan 0, itu menentukan indeks dari awal dokumen dengan 0 sebagai bagian pertama. Ketika indeks bagian kurang dari 0, itu menentukan indeks dari akhir dokumen dengan -1 sebagai bagian terakhir. Contoh di bawah ini menunjukkan cara memindahkan posisi kursor ke bagian yang ditentukan. Anda dapat mengunduh file templat contoh ini dari sini.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToSection.cpp" >}}

### Pindah ke Header / Footer

Saat Anda perlu menempatkan beberapa data ke dalam header atau footer, Anda harus memindahkannya terlebih dahulu menggunakan `DocumentBuilder.MoveToHeaderFooter`. Metode ini menerima nilai enumerasi HeaderFooterType yang mengidentifikasi jenis header atau footer ke tempat kursor harus dipindahkan. Jika Anda ingin membuat header dan footer yang berbeda untuk halaman pertama, Anda perlu menyetel properti `PageSetup.DifferentFirstPageHeaderFooter` ke **true**. Jika Anda ingin membuat header dan footer yang berbeda untuk halaman genap dan ganjil, Anda perlu menyetel `PageSetup.OddAndEvenPagesHeaderFooter` ke **true**.

Jika Anda perlu kembali ke cerita utama, gunakan **DocumentBuilder.MoveToSection** untuk keluar dari header atau footer. Contoh di bawah ini membuat header dan footer dalam dokumen menggunakan DocumentBuilder.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderHeadersAndFooters.cpp" >}}

### Pindah ke Paragraf

Gunakan `DocumentBuilder.MoveToParagraph` untuk memindahkan kursor ke paragraf yang diinginkan di bagian saat ini. Anda harus meneruskan dua parameter ke metode ini: paragraphIndex (indeks paragraf yang akan dipindahkan) dan characterIndex (indeks karakter di dalam paragraf).

Navigasi dilakukan di dalam cerita saat ini dari bagian saat ini. Artinya, jika Anda memindahkan kursor ke header utama bagian pertama, maka paragraphIndex menentukan indeks paragraf di dalam header bagian tersebut.

Ketika paragraphIndex lebih besar dari atau sama dengan 0, itu menentukan indeks dari awal bagian dengan 0 sebagai paragraf pertama. Ketika paragraphIndex kurang dari 0, itu menentukan indeks dari akhir bagian dengan -1 sebagai paragraf terakhir.

Indeks karakter saat ini hanya dapat ditentukan sebagai 0 untuk berpindah ke awal paragraf atau -1 untuk berpindah ke akhir paragraf. Contoh di bawah ini menunjukkan cara memindahkan posisi kursor ke paragraf yang ditentukan. Anda dapat mengunduh file templat contoh ini dari sini.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToParagraph.cpp" >}}

### Pindah ke Sel Tabel

Gunakan `DocumentBuilder.MoveToCell` jika Anda perlu memindahkan kursor ke sel tabel di bagian saat ini. Metode ini menerima empat parameter:

- tableIndex - indeks tabel yang akan dipindahkan.
- rowIndex - indeks baris dalam tabel.
- columnIndex - indeks kolom dalam tabel.
- characterIndex - indeks karakter di dalam sel.

Navigasi dilakukan di dalam cerita saat ini dari bagian saat ini. Untuk parameter indeks, ketika indeks lebih besar dari atau sama dengan 0, ini menentukan indeks dari awal dengan 0 sebagai elemen pertama. Ketika indeks kurang dari 0, itu menentukan indeks dari akhir dengan -1 menjadi elemen terakhir.

Perhatikan juga bahwa characterIndex saat ini hanya dapat menentukan 0 untuk pindah ke awal sel atau -1 untuk pindah ke akhir sel. Contoh di bawah ini menunjukkan cara memindahkan posisi kursor ke sel tabel yang ditentukan. Anda dapat mengunduh file templat contoh ini dari sini.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToTableCell.cpp" >}}

### Pindah ke Bookmark

Penanda sering digunakan untuk menandai tempat-tempat tertentu dalam dokumen tempat elemen baru akan disisipkan. Untuk memindahkan ke penanda, gunakan `DocumentBuilder.MoveToBookmark`. Metode ini memiliki dua kelebihan. Yang paling sederhana tidak menerima apa pun selain nama bookmark tempat kursor akan dipindahkan. Contoh di bawah ini menunjukkan cara memindahkan posisi kursor ke bookmark. Anda dapat mengunduh file templat contoh ini dari sini.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmark.cpp" >}}

Kelebihan beban ini memindahkan kursor ke posisi tepat setelah bookmark dimulai dengan nama yang ditentukan. Kelebihan lainnya `DocumentBuilder.MoveToBookmark` memindahkan kursor ke penanda dengan presisi yang lebih tinggi. Ini menerima dua parameter boolean tambahan:

- isStart menentukan apakah akan memindahkan kursor ke awal atau ke akhir bookmark.
- isAfter menentukan apakah akan memindahkan kursor setelah posisi awal atau akhir bookmark, atau memindahkan kursor sebelum posisi awal atau akhir bookmark.

Contoh di bawah ini menunjukkan cara memindahkan posisi kursor tepat setelah bookmark berakhir.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmarkEnd.cpp" >}}

Perbandingan untuk kedua metode ini tidak peka huruf besar-kecil.

Menyisipkan teks baru dengan cara ini tidak menggantikan teks bookmark yang ada. Perhatikan bahwa beberapa penanda dalam dokumen ditetapkan ke bidang formulir. Pindah ke bookmark seperti itu dan menyisipkan teks di sana menyisipkan teks ke dalam kode bidang formulir. Meskipun ini tidak akan membatalkan bidang formulir, teks yang disisipkan tidak akan terlihat karena menjadi bagian dari kode bidang.

## Bagaimana Mengkonversi Antara Unit Pengukuran

Sebagian besar properti objek yang disediakan dalam Aspose.Words API yang mewakili beberapa pengukuran (lebar / tinggi, margin, dan berbagai jarak) menerima nilai dalam poin (1 inci sama dengan 72 poin). Terkadang ini tidak nyaman sehingga ada kelas `ConvertUtil` yang menyediakan fungsi pembantu untuk mengonversi antara berbagai unit pengukuran. Ini memungkinkan konversi inci ke poin, poin ke inci, piksel ke poin, dan poin ke piksel. Saat piksel diubah menjadi titik dan sebaliknya, piksel dapat dilakukan pada resolusi 96 dpi (titik per inci) atau pada resolusi dpi yang ditentukan.
**ConvertUtil**

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-ConvertUtil-UtilityClasses-ConvertBetweenMeasurementUnits.cpp" >}}
