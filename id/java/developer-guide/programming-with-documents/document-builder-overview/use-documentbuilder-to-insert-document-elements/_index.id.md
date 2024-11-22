---
title: Sitemap `DocumentBuilder` Masukkan Elemen Dokumen
second_title: Aspose.Words Sitemap Java
articleTitle: Sitemap `DocumentBuilder` Masukkan Elemen Dokumen
linktitle: Sitemap `DocumentBuilder` Masukkan Elemen Dokumen
type: docs
description: "Masukkan elemen dokumen menggunakan pembangun dokumen dalam JavaSitemap"
weight: 10
url: /id/java/use-documentbuilder-to-insert-document-elements/
timestamp: 2024-01-27-14-07-04
---

Login [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) digunakan untuk memodifikasi dokumen. Artikel ini menjelaskan dan menjelaskan cara melakukan sejumlah tugas.

## Masukkan String Teks

Cukup lewat string teks yang perlu Anda masukkan ke dalam dokumen ke [DocumentBuilder.write](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#write(java.lang.String)) metode. Format teks ditentukan oleh `Font` Login Objek ini mengandung atribut font yang berbeda (nama font, ukuran font, warna, dan sebagainya). Beberapa atribut font penting juga diwakili oleh [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) properti untuk memungkinkan Anda untuk mengaksesnya secara langsung. Ini adalah sifat Boolean [Font.getBold](https://reference.aspose.com/words/java/com.aspose.words/font/#getBold), [Font.getItalic](https://reference.aspose.com/words/java/com.aspose.words/font/#getItalic), Login [Font.getUnderline](https://reference.aspose.com/words/java/com.aspose.words/font/#getUnderline)Sitemap

{{% alert color="primary" %}}

Perhatikan bahwa format karakter yang Anda set akan berlaku untuk semua teks yang dimasukkan dari posisi saat ini di dokumen selanjutnya.

{{% /alert %}}

Contoh kode berikut Masukkan teks yang diformat menggunakan DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WriteAndFont-WriteAndFont.java" >}}

## Menyisipkan Paragraf

DocumentBuilder.writeln memasukkan string teks ke dalam dokumen juga tetapi selain itu, itu menambahkan istirahat paragraf. Format font saat ini juga ditentukan oleh DocumentBuilder. Sitemap Properti Font dan format paragraf saat ini ditentukan oleh properti DocumentBuilder.getParagraphFormat

Contoh kode berikut menunjukkan cara memasukkan paragraf ke dalam dokumen.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}

## Masukkan Tabel

Algoritme dasar untuk membuat meja menggunakan `DocumentBuilder` sederhana:

Sitemap Mulai tabel menggunakan [DocumentBuilder.startTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable)Sitemap
Sitemap Masukkan sel menggunakan [DocumentBuilder.insertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell)Sitemap Ini secara otomatis memulai baris baru. Jika diperlukan, gunakan [DocumentBuilder.getCellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) properti untuk menentukan format sel.
Sitemap Masukkan konten sel menggunakan `DocumentBuilder` Login
Sitemap Ulangi langkah 2 dan 3 sampai baris selesai.
Sitemap Login [DocumentBuilder.endRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) untuk mengakhiri baris saat ini. Jika diperlukan, gunakan [DocumentBuilder.RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) properti untuk menentukan format baris.
Sitemap Ulangi langkah 2 - 5 sampai tabel selesai.
Sitemap Login [DocumentBuilder.endTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) untuk menyelesaikan bangunan meja. Metode pembuatan tabel DocumentBuilder yang sesuai dijelaskan di bawah ini.

### Mulai Tabel

Login Tabel adalah langkah pertama dalam membangun meja. Ini juga dapat disebut dalam sel, dalam kasus ini, itu mulai tabel bersarang. Metode berikutnya untuk panggilan adalah DocumentBuilder.insertCell.

### Masukkan sel

Setelah Anda memanggil DocumentBuilder. Login Sel, sel baru dibuat dan konten apa pun yang Anda tambahkan menggunakan metode lain `DocumentBuilder` kelas akan ditambahkan ke sel saat ini. Untuk memulai sel baru di baris yang sama, hubungi DocumentBuilder. Login Login Menggunakan DocumentBuilder.getCell Format properti untuk menentukan format sel. Ini mengembalikan [getCellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) objek yang mewakili semua format untuk sel meja.

### Mengakhiri Baris

Login Baris untuk menyelesaikan baris saat ini. Jika Anda memanggil DocumentBuilder. Login Sel segera setelah itu, maka tabel terus di baris baru. Gunakan `DocumentBuilder.RowFormat` properti untuk menentukan format baris. Ini kembali [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/) objek yang mewakili semua format untuk baris tabel.

### Mengakhiri Tabel

Login Tabel untuk menyelesaikan tabel saat ini. Metode ini harus dipanggil hanya sekali setelah DocumentBuilder. endRow disebut. Ketika disebut, DocumentBuilder.end Tabel memindahkan kursor dari sel saat ini ke posisi hanya setelah tabel. Contoh berikut menunjukkan bagaimana membangun tabel berformat yang berisi 2 baris dan 2 kolom.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderBuildTable-DocumentBuilderBuildTable.java" >}}

## Menyisihkan Break

Jika Anda ingin secara eksplisit memulai garis baru, paragraf, kolom, bagian, atau halaman, hubungi DocumentBuilder. Login Masukkan metode ini jenis istirahat yang perlu Anda masukkan yang diwakili oleh `BreakType` Sitemap
Contoh kode berikut menunjukkan cara memasukkan halaman rusak ke dalam dokumen.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertBreak-DocumentBuilderInsertBreak.java" >}}

## Masukkan Gambar

DocumentBuilder menyediakan beberapa kelebihan beban dari [DocumentBuilder.insertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte) metode yang memungkinkan Anda untuk memasukkan gambar inline atau mengambang. Jika gambar adalah metafile EMF atau WMF, itu akan dimasukkan ke dalam dokumen dalam format metafile. Semua gambar lain akan disimpan dalam format PNG. Login Metode gambar dapat menggunakan gambar dari berbagai sumber:

- Dari file atau `URL` melalui parameter string
- Dari aliran dengan melewati `Stream` Login
- Dari objek Gambar dengan melewati parameter Gambar
- Dari array byte dengan melewati parameter array byte
- Login Dan lain-lain

Untuk setiap DokumenBuilder. Login Metode gambar, ada kelebihan beban lebih lanjut yang memungkinkan Anda untuk memasukkan gambar dengan opsi berikut:

- Inline atau mengambang pada posisi tertentu
- Persentase skala atau ukuran kustom

Sitemap Metode gambar mengembalikan [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) objek yang hanya diciptakan dan dimasukkan sehingga Anda dapat lebih mengubah sifat Bentuk.

### Masukkan Gambar Inline

Masukkan string tunggal mewakili file yang berisi gambar ke DocumentBuilder. Login Gambar untuk memasukkan gambar ke dalam dokumen sebagai grafis inline. Contoh kode berikut menunjukkan cara memasukkan gambar inline pada posisi kursor ke dalam dokumen.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertInlineImage-DocumentBuilderInsertInlineImage.java" >}}

### Menyisipkan Gambar Mengambang (Absolutely Positioned)

Contoh ini memasukkan gambar mengambang dari file atau `URL` pada posisi dan ukuran tertentu.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertFloatingImage-DocumentBuilderInsertFloatingImage.java" >}}

## Menyisipkan Bookmark

Untuk memasukkan bookmark ke dalam dokumen, Anda harus melakukan berikut:

Sitemap Login [DocumentBuilder.startBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startBookmark-java.lang.String) melewati nama yang diinginkan dari bookmark.
Sitemap Masukkan teks bookmark menggunakan `DocumentBuilder` Login
Sitemap Login [DocumentBuilder.endBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endBookmark-java.lang.String) melewati nama yang sama yang Anda gunakan dengan DocumentBuilder.startBookmark.

Bookmark dapat tumpang tindih dan rentang rentang. Untuk membuat bookmark yang valid Anda perlu memanggil DokumenBuilder.startBookmark dan DocumentBuilder.endBookmark dengan nama bookmark yang sama.

Bookmark atau bookmark yang terbentuk dengan nama duplikat akan diabaikan ketika dokumen disimpan.

Contoh kode berikut menunjukkan cara memasukkan bookmark ke dokumen menggunakan pembangun dokumen.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertBookmark-DocumentBuilderInsertBookmark.java" >}}

## Menyisipkan Lapangan

Sitemap Microsoft Word dokumen terdiri dari kode lapangan dan hasil lapangan. Kode lapangan seperti formula dan hasil lapangan adalah nilai yang dihasilkan formula. Kode lapangan juga dapat mengandung sakelar lapangan yang merupakan instruksi tambahan untuk melakukan tindakan tertentu. Anda dapat beralih antara menampilkan kode lapangan dan hasil dalam dokumen Anda Microsoft Word menggunakan keyboard shortcut Alt + F9. Kode lapangan muncul antara kawat gigi keriting ( { } Sitemap [DocumentBuilder.insertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) untuk membuat bidang dalam dokumen. Anda perlu menentukan jenis lapangan, kode lapangan dan nilai lapangan. Jika Anda tidak yakin tentang sintaks kode bidang tertentu, buat lapangan di Microsoft Word pertama dan beralih untuk melihat kode lapangan
Contoh kode berikut menyisipkan lapangan merge ke dokumen menggunakan DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertField-DocumentBuilderInsertField.java" >}}

## Masukkan a `Form` Login

Bidang bentuk adalah kasus tertentu dari bidang Word yang memungkinkan "interaksi" dengan pengguna. Bidang bentuk dalam Microsoft Word termasuk kotak teks, Combobox dan kotak centang. DocumentBuilder menyediakan metode khusus untuk memasukkan setiap jenis bidang bentuk ke dalam dokumen: [DocumentBuilder.insertTextInput](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTextInput-java.lang.String-int-java.lang.String-java.lang.String-int) Login [DocumentBuilder.insertCheckBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-boolean-int), Login [DocumentBuilder.insertComboBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertComboBox-java.lang.String-java.lang.String---int)Sitemap Perhatikan bahwa jika Anda menentukan nama untuk bidang formulir, maka bookmark secara otomatis dibuat dengan nama yang sama.

### Menyisipkan Masukan Teks

DocumentBuilder.insertTextInput untuk memasukkan kotak teks ke dalam dokumen. Contoh kode berikut menunjukkan cara memasukkan kolom formulir input teks ke dalam dokumen.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTextInputFormField-DocumentBuilderInsertTextInputFormField.java" >}}

### Masukkan a `CheckBox`

Login CekBox untuk memasukkan kotak centang ke dokumen. Contoh kode berikut menunjukkan cara memasukkan kolom formulir kotak centang ke dokumen.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertCheckBoxFormField-DocumentBuilderInsertCheckBoxFormField.java" >}}

### Masukkan kotak Combo

LoginComboBox untuk memasukkan kotak combo ke dalam dokumen. Contoh kode berikut menunjukkan cara memasukkan kolom bentuk kotak combo ke dalam dokumen.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertComboBoxFormField-DocumentBuilderInsertComboBoxFormField.java" >}}

## Menyisipkan Locale di Tingkat Lapangan

Pelanggan dapat menentukan Lokal di tingkat lapangan sekarang dan dapat mencapai kontrol yang lebih baik. Login Ids dapat dikaitkan dengan setiap bidang di dalam DokumenBuilder. Contoh di bawah ini menggambarkan cara menggunakan opsi ini.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.java" >}}

## Login

Anda dapat dengan mudah memasukkan string HTML yang mengandung fragmen HTML atau seluruh dokumen HTML ke dalam dokumen Word. Masukkan string ini ke DocumentBuilder. Login Metode Html. Salah satu implementasi yang berguna dari metode ini menyimpan string HTML dalam database dan memasukkannya ke dalam dokumen selama Mail Merge untuk mendapatkan konten yang diformat ditambahkan daripada membangunnya menggunakan berbagai metode pembangun dokumen. Contoh kode berikut menunjukkan memasukkan HTML ke dalam dokumen menggunakan DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHtml-DocumentBuilderInsertHtml.java" >}}

## Menyisipkan Hyperlink

Gunakan DocumentBuilder.insertHyperlink untuk memasukkan hyperlink ke dokumen. Metode ini menerima tiga parameter: teks tautan yang akan ditampilkan dalam dokumen, tujuan tautan (URL atau nama bookmark di dalam dokumen), dan parameter boolean yang harus ditampilkan dalam dokumen, tujuan tautan (URL atau nama bookmark di dalam dokumen), dan parameter boolean yang harus dilakukan true Sitemap `URL` adalah nama bookmark di dalam dokumen. DocumentBuilder.insertHyperlink panggilan internal DocumentBuilder.insertField. Metode selalu menambahkan apostrophes pada awal dan akhir URL. Perhatikan bahwa Anda perlu menentukan format font untuk teks tampilan hyperlink secara eksplisit menggunakan `Font` Login Contoh kode berikut memasukkan hyperlink ke dokumen menggunakan DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHyperlink-DocumentBuilderInsertHyperlink.java" >}}

## Menyisipkan Tabel Konten

Anda dapat memasukkan `TOC` (table of contents) ke dalam dokumen pada posisi saat ini dengan memanggil [DocumentBuilder.insertTableOfContents](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTableOfContents-java.lang.String) Login Metode DocumentBuilder.insertTableOfContents hanya akan memasukkan `TOC` ke dalam dokumen. Untuk membangun tabel konten dan menampilkannya sesuai dengan nomor halaman, keduanya **Document.UpdateFields**metode harus disebut setelah penyisipan lapangan. Contoh kode berikut menunjukkan cara memasukkan tabel kolom Konten ke dalam dokumen.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTableOfContents-DocumentBuilderInsertTableOfContents.java" >}}

## Masukkan Objek Ole

Jika Anda ingin panggilan Ole Object [DocumentBuilder.insertOleObjectAsIcon](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObjectAsIcon-java.lang.String-boolean-java.lang.String-java.lang.String)Sitemap

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertOleObject-DocumentBuilderInsertOleObject.java" >}}

## Mengatur Nama File dan Ekstensi ketika Menyisipkan Ole Object

Paket OLE adalah warisan dan cara "tidak didokumentasikan" untuk menyimpan benda-benda tertanam jika pegangan OLE tidak diketahui. Sitemap Windows versi seperti Windows 3.1, 95 dan 98 memiliki Paket. Aplikasi exe yang dapat digunakan untuk menanamkan jenis data ke dalam dokumen. Sekarang, aplikasi ini dikecualikan dari Windows tetapi MS Word dan aplikasi lain masih menggunakannya untuk mengatur data jika handler OLE hilang atau tidak diketahui. Kelas OlePackage memungkinkan mengakses properti Paket OLE. Contoh kode berikut menunjukkan cara mengatur nama file, ekstensi dan nama tampilan untuk Paket OLE.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.java" >}}

## Dapatkan akses ke OLE Object Raw Data

Contoh kode berikut menunjukkan bagaimana untuk mendapatkan OLE Objek data mentah menggunakan `OleFormat.GetRawData`() metode.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.java" >}}

## Masukkan Horizontal Login

Contoh kode berikut menunjukkan cara memasukkan bentuk aturan horisontal ke dalam dokumen menggunakan `DocumentBuilder.InsertHorizontalRule` Login

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.java" >}}

## Bekerja dengan Bentuk

### Masukkan Inline dan Bentuk Bebas-mengambang

Anda dapat memasukkan bentuk inline dengan jenis dan ukuran yang ditentukan dan bentuk mengambang bebas dengan posisi yang ditentukan, ukuran dan jenis pembungkus teks ke dalam dokumen yang menggunakan `DocumentBuilder.InsertShape` Login Login `DocumentBuilder.InsertShape` metode memungkinkan untuk memasukkan bentuk DML ke dalam model dokumen. Dokumen harus disimpan dalam format, yang mendukung bentuk DML, jika node tersebut akan dikonversi ke bentuk VML, sementara penghematan dokumen. Contoh kode berikut menunjukkan cara memasukkan jenis bentuk ini ke dalam dokumen.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.java" >}}

### Membuat Snip Corner Rectangle

Anda dapat membuat sudut snip persegi panjang menggunakan Aspose.WordsSitemap Jenis bentuk adalah SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRounded OneSnipped, SingleCornerRounded, TopCornersRounded, dan DiagonalCornersRounded. Bentuk DML dibuat menggunakan `DocumentBuilder.InsertShape` metode dengan jenis bentuk ini. Jenis-jenis ini tidak dapat digunakan untuk membuat bentuk VML. Tempt untuk membuat bentuk dengan menggunakan konstruktor publik dari kelas "Shape" meningkatkan pengecualian "NotSupportedException". Contoh kode berikut menunjukkan cara memasukkan jenis bentuk ini ke dalam dokumen.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-AddCornersSnipped.java" >}}

### Bentuk impor dengan Math XML sebagai Bentuk menjadi DOM

Anda dapat menggunakan `LoadOptions.ConvertShapeToOfficeMath` properti untuk mengubah bentuk dengan EquationXML ke objek Matematika Kantor. Nilai default dari properti ini sesuai dengan perilaku MS Word i.e. bentuk dengan persamaan XML tidak dikonversi ke objek matematika Office.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-ConvertShapeToOfficeMath.java" >}}
