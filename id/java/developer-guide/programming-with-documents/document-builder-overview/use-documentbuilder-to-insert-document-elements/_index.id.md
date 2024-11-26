---
title: Gunakan DocumentBuilder untuk Menyisipkan Elemen Dokumen
second_title: Aspose.Words untuk Java
articleTitle: Gunakan DocumentBuilder untuk Menyisipkan Elemen Dokumen
linktitle: Gunakan DocumentBuilder untuk Menyisipkan Elemen Dokumen
type: docs
description: "Sisipkan elemen dokumen menggunakan pembuat dokumen dalam Java."
weight: 10
url: /id/java/use-documentbuilder-to-insert-document-elements/
timestamp: 2024-01-27-14-07-04
---

[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) digunakan untuk memodifikasi dokumen. Artikel ini menjelaskan dan menjelaskan cara melakukan sejumlah tugas.

## Menyisipkan String Teks

Cukup berikan string teks yang perlu Anda sisipkan ke dalam dokumen ke metode [DocumentBuilder.write](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#write(java.lang.String)). Pemformatan teks ditentukan oleh properti `Font`. Objek ini berisi atribut font yang berbeda (nama font, ukuran font, warna, dan sebagainya). Beberapa atribut font penting juga diwakili oleh properti [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) untuk memungkinkan Anda mengaksesnya secara langsung. Ini adalah properti Boolean [Font.getBold](https://reference.aspose.com/words/java/com.aspose.words/font/#getBold), [Font.getItalic](https://reference.aspose.com/words/java/com.aspose.words/font/#getItalic), dan [Font.getUnderline](https://reference.aspose.com/words/java/com.aspose.words/font/#getUnderline).

{{% alert color="primary" %}}

Perhatikan bahwa pemformatan karakter yang Anda atur akan berlaku untuk semua teks yang disisipkan dari posisi saat ini dalam dokumen dan seterusnya.

{{% /alert %}}

Contoh kode berikut menyisipkan teks berformat menggunakan DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WriteAndFont-WriteAndFont.java" >}}

## Menyisipkan Paragraf

DocumentBuilder.writeln juga menyisipkan string teks ke dalam dokumen, tetapi selain itu, writeln menambahkan jeda paragraf. Pemformatan font saat ini juga ditentukan oleh DocumentBuilder.properti getFont dan pemformatan paragraf saat ini ditentukan oleh DocumentBuilder.getParagraphFormat properti.

Contoh kode berikut menunjukkan cara menyisipkan paragraf ke dalam dokumen.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}

## Menyisipkan Tabel

Algoritma dasar untuk membuat tabel menggunakan `DocumentBuilder` sederhana:

1. Mulai tabel menggunakan [DocumentBuilder.startTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable).
1. Sisipkan sel menggunakan [DocumentBuilder.insertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell). Ini secara otomatis memulai baris baru. Jika perlu, gunakan properti [DocumentBuilder.getCellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) untuk menentukan pemformatan sel.
1. Sisipkan konten sel menggunakan metode `DocumentBuilder`.
1. Ulangi langkah 2 dan 3 hingga baris selesai.
1. Panggil [DocumentBuilder.endRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) untuk mengakhiri baris saat ini. Jika perlu, gunakan properti [DocumentBuilder.RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) untuk menentukan pemformatan baris.
1. Ulangi langkah 2-5 hingga tabel selesai.
1. Panggil [DocumentBuilder.endTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) untuk menyelesaikan pembuatan tabel. Metode pembuatan tabel DocumentBuilder yang sesuai dijelaskan di bawah ini.

### Memulai sebuah Tabel

Memanggil DocumentBuilder.startTable adalah langkah pertama dalam membuat tabel. Itu juga bisa disebut di dalam sel, dalam hal ini, ia memulai tabel bersarang. Metode pemanggilan selanjutnya adalah DocumentBuilder.insertCell.

### Menyisipkan Sel

Setelah Anda menelepon DocumentBuilder.insertCell, sel baru dibuat dan konten apa pun yang Anda tambahkan menggunakan metode lain dari kelas `DocumentBuilder` akan ditambahkan ke sel saat ini. Untuk memulai sel baru di baris yang sama, panggil DocumentBuilder.insertCell lagi. Gunakan DocumentBuilder.properti getCellFormat untuk menentukan pemformatan sel. Ini mengembalikan objek [getCellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) yang mewakili semua pemformatan untuk sel tabel.

### Mengakhiri Baris

Panggil DocumentBuilder.endRow untuk menyelesaikan baris saat ini. Jika Anda menelepon DocumentBuilder.insertCell segera setelah itu, tabel dilanjutkan pada baris baru. Gunakan properti `DocumentBuilder.RowFormat` untuk menentukan pemformatan baris. Ini mengembalikan objek [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/) yang mewakili semua pemformatan untuk baris tabel.

### Mengakhiri sebuah Tabel

Panggil DocumentBuilder.endTable untuk menyelesaikan tabel saat ini. Metode ini harus dipanggil hanya sekali setelah DocumentBuilder.endRow dipanggil. Saat dipanggil, DocumentBuilder.endTable memindahkan kursor keluar dari sel saat ini ke posisi tepat setelah tabel. Contoh berikut menunjukkan cara membuat tabel berformat yang berisi 2 baris dan 2 kolom.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderBuildTable-DocumentBuilderBuildTable.java" >}}

## Memasukkan Jeda

Jika Anda ingin memulai baris, paragraf, kolom, bagian, atau halaman baru secara eksplisit, panggil DocumentBuilder.insertBreak. Berikan ke metode ini jenis jeda yang perlu Anda sisipkan yang diwakili oleh enumerasi `BreakType`.
Contoh kode berikut menunjukkan cara menyisipkan jeda halaman ke dalam dokumen.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertBreak-DocumentBuilderInsertBreak.java" >}}

## Menyisipkan Gambar

DocumentBuilder menyediakan beberapa kelebihan metode [DocumentBuilder.insertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte) yang memungkinkan Anda menyisipkan gambar sebaris atau mengambang. Jika gambar adalah metafile EMF atau WMF, gambar tersebut akan disisipkan ke dalam dokumen dalam format metafile. Semua gambar lainnya akan disimpan dalam format PNG. Itu DocumentBuilder.metode insertImage dapat menggunakan gambar dari berbagai sumber:

- Dari file atau `URL` dengan melewatkan parameter string
- Dari aliran dengan melewatkan parameter `Stream`
- Dari objek Gambar dengan melewatkan parameter Gambar
- Dari array byte dengan melewatkan parameter array byte
- Dan lainnya

Untuk setiap DocumentBuilder.metode insertImage, ada kelebihan beban lebih lanjut yang memungkinkan Anda menyisipkan gambar dengan opsi berikut:

- Inline atau mengambang pada posisi tertentu
- Skala persentase atau ukuran khusus

Selanjutnya, DocumentBuilder.metode insertImage mengembalikan objek [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) yang baru saja dibuat dan disisipkan sehingga Anda dapat memodifikasi properti Bentuk lebih lanjut.

### Menyisipkan Gambar Sebaris

Berikan satu string yang mewakili file yang berisi gambar ke DocumentBuilder.insertImage untuk menyisipkan gambar ke dalam dokumen sebagai grafik sebaris. Contoh kode berikut menunjukkan cara menyisipkan gambar sebaris pada posisi kursor ke dalam dokumen.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertInlineImage-DocumentBuilderInsertInlineImage.java" >}}

### Menyisipkan Gambar Mengambang (Benar-benar Diposisikan)

Contoh ini menyisipkan gambar mengambang dari file atau `URL` pada posisi dan ukuran tertentu.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertFloatingImage-DocumentBuilderInsertFloatingImage.java" >}}

## Menyisipkan Bookmark

Untuk menyisipkan bookmark ke dalam dokumen, Anda harus melakukan hal berikut:

1. Panggil [DocumentBuilder.startBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startBookmark-java.lang.String) berikan nama bookmark yang diinginkan.
1. Sisipkan teks penanda menggunakan metode `DocumentBuilder`.
1. Panggil [DocumentBuilder.endBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endBookmark-java.lang.String) berikan nama yang sama dengan yang Anda gunakan dengan DocumentBuilder.startBookmark.

Bookmark dapat tumpang tindih dan menjangkau rentang apa pun. Untuk membuat bookmark yang valid, Anda perlu memanggil keduanya DocumentBuilder.startBookmark dan DocumentBuilder.endBookmark dengan nama bookmark yang sama.

Bookmark atau bookmark yang terbentuk dengan buruk dengan nama duplikat akan diabaikan saat dokumen disimpan.

Contoh kode berikut menunjukkan cara menyisipkan bookmark ke dalam dokumen menggunakan pembuat dokumen.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertBookmark-DocumentBuilderInsertBookmark.java" >}}

## Menyisipkan Bidang

Bidang dalam dokumen Microsoft Word terdiri dari kode bidang dan hasil bidang. Kode bidang seperti rumus dan hasil bidang adalah nilai yang dihasilkan rumus. Kode bidang juga dapat berisi sakelar bidang yang merupakan instruksi tambahan untuk melakukan tindakan tertentu. Anda dapat beralih antara menampilkan kode bidang dan hasil dalam dokumen Anda di Microsoft Word menggunakan pintasan keyboard Alt+F9. Kode bidang muncul di antara kurung kurawal (`{ }`).Gunakan [DocumentBuilder.insertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) untuk membuat kolom dalam dokumen. Anda perlu menentukan jenis bidang, kode bidang, dan nilai bidang. Jika Anda tidak yakin tentang sintaks kode bidang tertentu, buat bidang dalam Microsoft Word terlebih dahulu dan alihkan untuk melihat kode bidangnya.
Contoh kode berikut menyisipkan bidang gabungan ke dalam dokumen menggunakan DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertField-DocumentBuilderInsertField.java" >}}

## Menyisipkan Bidang `Form`

Bidang formulir adalah kasus khusus dari bidang Word yang memungkinkan "interaksi" dengan pengguna. Kolom formulir di Microsoft Word menyertakan kotak teks, Combobox, dan checkbox.DocumentBuilder menyediakan metode khusus untuk menyisipkan setiap jenis bidang formulir ke dalam dokumen: [DocumentBuilder.insertTextInput](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTextInput-java.lang.String-int-java.lang.String-java.lang.String-int), [DocumentBuilder.insertCheckBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-boolean-int), dan [DocumentBuilder.insertComboBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertComboBox-java.lang.String-java.lang.String---int). Perhatikan bahwa jika Anda menentukan nama untuk bidang formulir, maka bookmark akan dibuat secara otomatis dengan nama yang sama.

### Menyisipkan Input Teks

DocumentBuilder.insertTextInput untuk menyisipkan kotak teks ke dalam dokumen. Contoh kode berikut menunjukkan cara menyisipkan bidang formulir input teks ke dalam dokumen.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTextInputFormField-DocumentBuilderInsertTextInputFormField.java" >}}

### Menyisipkan `CheckBox`

Panggil DocumentBuilder.insertCheckBox untuk menyisipkan checkbox ke dalam dokumen. Contoh kode berikut menunjukkan cara menyisipkan bidang formulir checkbox ke dalam dokumen.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertCheckBoxFormField-DocumentBuilderInsertCheckBoxFormField.java" >}}

### Memasukkan Kotak Kombo

Panggil DocumentBuilder.insertComboBox untuk menyisipkan kotak kombo ke dalam dokumen. Contoh kode berikut menunjukkan cara menyisipkan bidang formulir kotak kombo ke dalam dokumen.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertComboBoxFormField-DocumentBuilderInsertComboBoxFormField.java" >}}

## Menyisipkan Lokal di Tingkat Bidang

Pelanggan dapat menentukan Lokal di tingkat lapangan sekarang dan dapat mencapai kontrol yang lebih baik. Id Lokal dapat dikaitkan dengan setiap bidang di dalam DocumentBuilder. Contoh di bawah ini mengilustrasikan cara menggunakan opsi ini.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.java" >}}

## Menyisipkan HTML

Anda dapat dengan mudah menyisipkan string HTML yang berisi fragmen HTML atau seluruh dokumen HTML ke dalam dokumen Word. Cukup berikan string ini ke DocumentBuilder.insertHtml metode. Salah satu implementasi yang berguna dari metode ini adalah menyimpan string HTML dalam database dan memasukkannya ke dalam dokumen selama Mail Merge untuk menambahkan konten berformat alih-alih membuatnya menggunakan berbagai metode pembuat dokumen. Contoh kode berikut menunjukkan menyisipkan HTML ke dalam dokumen menggunakan DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHtml-DocumentBuilderInsertHtml.java" >}}

## Menyisipkan Hyperlink

Gunakan DocumentBuilder.insertHyperlink untuk menyisipkan hyperlink ke dalam dokumen. Metode ini menerima tiga parameter: teks tautan yang akan ditampilkan dalam dokumen, tujuan tautan (URL atau nama penanda di dalam dokumen), dan parameter boolean yang seharusnya true jika `URL` adalah nama penanda di dalam dokumen.DocumentBuilder.insertHyperlink memanggil secara internal DocumentBuilder.insertField. Metode ini selalu menambahkan apostrof di awal dan akhir URL. Perhatikan bahwa Anda perlu menentukan pemformatan font untuk teks tampilan hyperlink secara eksplisit menggunakan properti `Font`. Contoh kode berikut menyisipkan hyperlink ke dalam dokumen menggunakan DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHyperlink-DocumentBuilderInsertHyperlink.java" >}}

## Menyisipkan Daftar Isi

Anda dapat menyisipkan bidang `TOC` (daftar isi) ke dalam dokumen pada posisi saat ini dengan memanggil metode [DocumentBuilder.insertTableOfContents](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTableOfContents-java.lang.String). Itu DocumentBuilder.metode insertTableOfContents hanya akan menyisipkan bidang `TOC` ke dalam dokumen. Untuk membuat daftar isi dan menampilkannya menurut nomor halaman, metode both **Document.UpdateFields**harus dipanggil setelah penyisipan bidang. Contoh kode berikut menunjukkan cara menyisipkan bidang Daftar Isi ke dalam dokumen.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTableOfContents-DocumentBuilderInsertTableOfContents.java" >}}

## Menyisipkan Objek Ole

Jika Anda menginginkan Objek Ole, panggil [DocumentBuilder.insertOleObjectAsIcon](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObjectAsIcon-java.lang.String-boolean-java.lang.String-java.lang.String).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertOleObject-DocumentBuilderInsertOleObject.java" >}}

## Setel Nama File dan Ekstensi saat Menyisipkan Objek Ole

Paket OLE adalah cara lama dan "tidak berdokumen" untuk menyimpan objek yang disematkan jika penangan OLE tidak diketahui. Versi Windows awal seperti Windows 3.1, 95 dan 98 memiliki aplikasi Packager.exe yang dapat digunakan untuk menyematkan semua jenis data ke dalam dokumen. Sekarang, aplikasi ini dikecualikan dari Windows tetapi MS Word dan aplikasi lain masih menggunakannya untuk menyematkan data jika penangan OLE hilang atau tidak diketahui. kelas OlePackage memungkinkan mengakses properti OLE Package.Contoh kode berikut menunjukkan cara mengatur nama file, ekstensi, dan nama tampilan untuk OLE Package.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.java" >}}

## Dapatkan Akses ke Data Mentah Objek OLE

Contoh kode berikut menunjukkan cara mendapatkan data mentah Objek OLE menggunakan metode `OleFormat.GetRawData` ().

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.java" >}}

## Sisipkan Aturan Horizontal ke dalam Dokumen

Contoh kode berikut menunjukkan cara menyisipkan bentuk aturan horizontal ke dalam dokumen menggunakan metode `DocumentBuilder.InsertHorizontalRule`.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.java" >}}

## Bekerja dengan Bentuk

### Menyisipkan Bentuk Sebaris dan Mengambang Bebas

Anda dapat menyisipkan bentuk sebaris dengan tipe dan ukuran tertentu dan bentuk mengambang bebas dengan posisi, ukuran, dan jenis pembungkus teks yang ditentukan ke dalam dokumen menggunakan metode `DocumentBuilder.InsertShape`. Metode `DocumentBuilder.InsertShape` memungkinkan untuk menyisipkan bentuk DML ke dalam model dokumen. Dokumen harus disimpan dalam format, yang mendukung bentuk DML, jika tidak, simpul tersebut akan dikonversi menjadi bentuk VML, saat menyimpan dokumen. Contoh kode berikut menunjukkan cara menyisipkan jenis bentuk ini ke dalam dokumen.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.java" >}}

### Buat Persegi Panjang Sudut Snip

Anda dapat membuat persegi panjang sudut snip menggunakan Aspose.Words. Jenis bentuknya adalah SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded, dan DiagonalCornersRounded. Bentuk DML dibuat menggunakan metode `DocumentBuilder.InsertShape` dengan tipe bentuk ini. Tipe ini tidak dapat digunakan untuk membuat bentuk VML. Mencoba membuat bentuk dengan menggunakan konstruktor publik dari kelas "Bentuk" memunculkan pengecualian " NotSupportedException". Contoh kode berikut menunjukkan cara menyisipkan jenis bentuk ini ke dalam dokumen.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-AddCornersSnipped.java" >}}

### Impor Bentuk dengan Math XML sebagai Bentuk menjadi DOM

Anda dapat menggunakan properti `LoadOptions.ConvertShapeToOfficeMath` untuk mengonversi bentuk dengan EquationXML ke objek Office Math. Nilai default properti ini sesuai dengan perilaku MS Word yaitu bentuk dengan persamaan XML tidak dikonversi ke objek Office math.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-ConvertShapeToOfficeMath.java" >}}
