---
title: Gunakan `DocumentBuilder` untuk Menyisipkan Elemen Dokumen
second_title: Aspose.Words untuk C++
articleTitle: Gunakan `DocumentBuilder` untuk Menyisipkan Elemen Dokumen
linktitle: Gunakan `DocumentBuilder` untuk Menyisipkan Elemen Dokumen
type: docs
description: "Sisipkan elemen dokumen menggunakan pembuat dokumen di C++."
weight: 80
url: /id/cpp/use-documentbuilder-to-insert-document-elements/
---

`DocumentBuilder` digunakan untuk memodifikasi dokumen. Artikel ini menjelaskan dan menjelaskan cara melakukan sejumlah tugas:

## Menyisipkan String Teks

Cukup berikan string teks yang perlu Anda sisipkan ke dalam dokumen ke metode `DocumentBuilder.Write`. Pemformatan teks ditentukan oleh properti `Font`. Objek ini berisi atribut font yang berbeda (nama font, ukuran font, warna, dan sebagainya). Beberapa atribut font penting juga diwakili oleh properti DocumentBuilder untuk memungkinkan Anda mengaksesnya secara langsung. Ini adalah properti Boolean `Font.Bold`, `Font.Italic`, dan `Font.Underline`.

Perhatikan bahwa pemformatan karakter yang Anda atur akan berlaku untuk semua teks yang disisipkan dari posisi saat ini dalam dokumen dan seterusnya.

Contoh di bawah ini Menyisipkan teks berformat menggunakan DocumentBuilder.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-WriteAndFont-WriteAndFont.cpp" >}}

## Menyisipkan Paragraf

 `DocumentBuilder.Writeln` menyisipkan string teks ke dalam dokumen juga, tetapi selain itu, menambahkan jeda paragraf. Pemformatan font saat ini juga ditentukan oleh properti `DocumentBuilder.Font` dan pemformatan paragraf saat ini ditentukan oleh properti `DocumentBuilder.ParagraphFormat`. Contoh di bawah ini menunjukkan cara menyisipkan paragraf ke dalam dokumen.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cpp" >}}

## Menyisipkan Tabel

Algoritma dasar untuk membuat tabel menggunakan DocumentBuilder sederhana:

1. Mulai tabel menggunakan `DocumentBuilder.StartTable`.
1. Sisipkan sel menggunakan `DocumentBuilder.InsertCell`. Ini secara otomatis memulai baris baru. Jika perlu, gunakan properti `DocumentBuilder.CellFormat` untuk menentukan pemformatan sel.
1. Sisipkan konten sel menggunakan metode `DocumentBuilder`.
1. Ulangi langkah 2 dan 3 hingga baris selesai.
1. Panggil `DocumentBuilder.EndRow` untuk mengakhiri baris saat ini. Jika perlu, gunakan properti `DocumentBuilder.RowFormat` untuk menentukan pemformatan baris.
1. Ulangi langkah 2 - 5 hingga tabel selesai.
1. Panggil `DocumentBuilder.EndTable` untuk menyelesaikan pembuatan tabel. Metode pembuatan tabel DocumentBuilder yang sesuai dijelaskan di bawah ini.

### Memulai sebuah Tabel

Memanggil `DocumentBuilder.StartTable` adalah langkah pertama dalam membuat tabel. Ini juga dapat dipanggil di dalam sel, dalam hal ini ia memulai tabel bersarang. Metode pemanggilan selanjutnya adalah `DocumentBuilder.InsertCell`.

### Menyisipkan Sel

Setelah Anda memanggil `DocumentBuilder->InsertCell`, sel baru dibuat dan konten apa pun yang Anda tambahkan menggunakan metode lain dari kelas `DocumentBuilder` akan ditambahkan ke sel saat ini. Untuk memulai sel baru di baris yang sama, panggil `DocumentBuilder->InsertCell` lagi. Gunakan properti `DocumentBuilder.CellFormat` untuk menentukan pemformatan sel. Ini mengembalikan objek `CellFormat` yang mewakili semua pemformatan untuk sel tabel.

### Mengakhiri Baris

Panggil `DocumentBuilder.EndRow` untuk menyelesaikan baris saat ini. Jika Anda memanggil `DocumentBuilder->InsertCell` segera setelah itu, maka tabel berlanjut di baris baru.

Gunakan properti `DocumentBuilder.RowFormat` untuk menentukan pemformatan baris. Ini mengembalikan objek `RowFormat` yang mewakili semua pemformatan untuk baris tabel.

### Mengakhiri sebuah Tabel

Panggil `DocumentBuilder.EndTable` untuk menyelesaikan tabel saat ini. Metode ini harus dipanggil hanya sekali setelah `DocumentBuilder->EndRow` dipanggil. Saat dipanggil, `DocumentBuilder.EndTable` memindahkan kursor keluar dari sel saat ini ke posisi tepat setelah tabel. Contoh berikut menunjukkan cara membuat tabel berformat yang berisi 2 baris dan 2 kolom.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderBuildTable-DocumentBuilderBuildTable.cpp" >}}

## Memasukkan Jeda

Jika Anda ingin memulai baris, paragraf, kolom, bagian, atau halaman baru secara eksplisit, panggil `DocumentBuilder.InsertBreak`. Berikan ke metode ini jenis jeda yang perlu Anda sisipkan yang diwakili oleh enumerasi `BreakType`. Contoh di bawah ini menunjukkan cara menyisipkan jeda halaman ke dalam dokumen.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertBreak-DocumentBuilderInsertBreak.cpp" >}}

## Menyisipkan Gambar

DocumentBuilder menyediakan beberapa kelebihan metode `DocumentBuilder->InsertImage` yang memungkinkan Anda menyisipkan gambar sebaris atau mengambang. Jika gambar adalah metafile EMF atau WMF, gambar tersebut akan disisipkan ke dalam dokumen dalam format metafile. Semua gambar lainnya akan disimpan dalam format PNG. Metode `DocumentBuilder->InsertImage` dapat menggunakan gambar dari berbagai sumber:

- Dari file atau `URL` dengan melewatkan parameter string `DocumentBuilder->InsertImage`.
- Dari aliran dengan melewatkan parameter `Stream` `DocumentBuilder->InsertImage`.
- Dari objek Gambar dengan melewatkan parameter Gambar `DocumentBuilder->InsertImage`.
- Dari array byte dengan melewatkan parameter array byte `DocumentBuilder.InsertImage`.Untuk masing-masing metode `DocumentBuilder->InsertImage`, ada kelebihan beban lebih lanjut yang memungkinkan Anda menyisipkan gambar dengan opsi berikut:
- Sebaris atau mengambang pada posisi tertentu, misalnya, `DocumentBuilder->InsertImage`.
- Skala persentase atau ukuran khusus, misalnya, `DocumentBuilder.InsertImage`. Selanjutnya metode `DocumentBuilder->InsertImage` mengembalikan objek `Shape` yang baru saja dibuat dan disisipkan sehingga Anda dapat memodifikasi properti Bentuk lebih lanjut.

### Menyisipkan Gambar Sebaris

Berikan satu string yang mewakili file yang berisi gambar ke `DocumentBuilder->InsertImage` untuk menyisipkan gambar ke dalam dokumen sebagai grafik sebaris. Contoh di bawah ini menunjukkan cara menyisipkan gambar sebaris pada posisi kursor ke dalam dokumen.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertInlineImage.cpp" >}}

### Menyisipkan Gambar Mengambang (Benar-benar Diposisikan)

Contoh ini menyisipkan gambar mengambang dari file atau `URL` pada posisi dan ukuran tertentu.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertFloatingImage.cpp" >}}

## Menyisipkan Bookmark

Untuk menyisipkan bookmark ke dalam dokumen, Anda harus melakukan hal berikut:

1. Panggil `DocumentBuilder->StartBookmark` berikan nama bookmark yang diinginkan.
1. Sisipkan teks penanda menggunakan metode DocumentBuilder.
1. Panggil `DocumentBuilder.EndBookmark` berikan nama yang sama dengan yang Anda gunakan dengan **DocumentBuilder->StartBookmark**.
1. Bookmark dapat tumpang tindih dan menjangkau rentang apa pun. Untuk membuat bookmark yang valid, Anda perlu memanggil `DocumentBuilder->StartBookmark` dan `DocumentBuilder->EndBookmark` dengan nama bookmark yang sama.

{{% alert color="primary" %}}

Bookmark atau bookmark yang terbentuk dengan buruk dengan nama duplikat akan diabaikan saat dokumen disimpan.

{{% /alert %}}

Contoh di bawah ini menunjukkan cara menyisipkan bookmark ke dalam dokumen menggunakan pembuat dokumen.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertBookmark-DocumentBuilderInsertBookmark.cpp" >}}

## Menyisipkan Bidang `Form`

Bidang formulir adalah kasus khusus bidang Kata yang memungkinkan "interaksi" dengan pengguna. Kolom formulir di Microsoft Word menyertakan kotak teks, kotak kombo, dan kotak centang.DocumentBuilder menyediakan metode khusus untuk menyisipkan setiap jenis bidang formulir ke dalam dokumen: `DocumentBuilder.InsertTextInput`, `DocumentBuilder->InsertCheckBox`, dan `DocumentBuilder.InsertComboBox`. Perhatikan bahwa jika Anda menentukan nama untuk bidang formulir, maka bookmark akan dibuat secara otomatis dengan nama yang sama.

### Menyisipkan Input Teks

 `DocumentBuilder.InsertTextInput` untuk menyisipkan kotak teks ke dalam dokumen. Contoh di bawah ini menunjukkan cara menyisipkan bidang formulir input teks ke dalam dokumen.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertTextInputFormField.cpp" >}}

### Menyisipkan Kotak Centang

Panggil `DocumentBuilder.InsertCheckBox` untuk menyisipkan kotak centang ke dalam dokumen. Contoh di bawah ini menunjukkan cara menyisipkan bidang formulir kotak centang ke dalam dokumen.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertCheckBoxFormField.cpp" >}}

### Memasukkan Kotak Kombo

Panggil `DocumentBuilder.InsertComboBox` untuk menyisipkan kotak kombo ke dalam dokumen. Contoh di bawah ini menunjukkan cara menyisipkan bidang formulir kotak kombo ke dalam dokumen.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertComboBoxFormField.cpp" >}}

## Menyisipkan Lokal di Tingkat Bidang

Pelanggan dapat menentukan Lokal di tingkat lapangan sekarang dan dapat mencapai kontrol yang lebih baik. Id Lokal dapat dikaitkan dengan setiap bidang di dalam DocumentBuilder. Contoh di bawah ini mengilustrasikan cara menggunakan opsi ini.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.cpp" >}}

## Menyisipkan Hyperlink

Gunakan `DocumentBuilder.InsertHyperlink` untuk menyisipkan hyperlink ke dalam dokumen. Metode ini menerima tiga parameter: teks tautan yang akan ditampilkan dalam dokumen, tujuan tautan (URL atau nama penanda di dalam dokumen), dan parameter boolean yang seharusnya true jika `URL` adalah nama penanda di dalam dokumen.DocumentBuilder.InsertHyperlink memanggil secara internal `DocumentBuilder.InsertField`.Metode ini selalu menambahkan apostrof di awal dan akhir URL. Perhatikan bahwa Anda perlu menentukan pemformatan font untuk teks tampilan hyperlink secara eksplisit menggunakan properti `Font`. Contoh di bawah ini menyisipkan hyperlink ke dalam dokumen menggunakan DocumentBuilder.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHyperlink.cpp" >}}

## Menyisipkan Objek Ole

Jika Anda menginginkan Objek Ole, panggil `DocumentBuilder.InsertOleObject`. Berikan ke metode ini `ProgId` secara eksplisit dengan parameter lain. Contoh di bawah ini menunjukkan cara menyisipkan Objek Ole ke dalam dokumen.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertOleObject.cpp" >}}

## Setel Nama File dan Ekstensi saat Menyisipkan Objek Ole

Paket OLE adalah cara lama dan "tidak berdokumen" untuk menyimpan objek yang disematkan jika penangan OLE tidak diketahui. Versi Windows awal seperti Windows 3.1, 95 dan 98 memiliki Packager.aplikasi exe yang dapat digunakan untuk menyematkan semua jenis data ke dalam dokumen. Sekarang, aplikasi ini dikecualikan dari Windows tetapi MS Word dan aplikasi lain masih menggunakannya untuk menyematkan data jika penangan OLE hilang atau tidak diketahui. kelas OlePackage memungkinkan untuk mengakses properti Paket OLE. Contoh di bawah ini menunjukkan cara mengatur nama file, ekstensi, dan nama tampilan untuk Paket OLE.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.cpp" >}}

## Menyisipkan HTML

Anda dapat dengan mudah menyisipkan string HTML yang berisi fragmen HTML atau seluruh dokumen HTML ke dalam dokumen Word. Cukup berikan string ini ke metode `DocumentBuilder->InsertHtml`. Salah satu implementasi yang berguna dari metode ini adalah menyimpan string HTML dalam database dan memasukkannya ke dalam dokumen selama mail merge untuk menambahkan konten berformat alih-alih membuatnya menggunakan berbagai metode pembuat dokumen. Contoh di bawah ini menunjukkan menyisipkan HTML ke dalam dokumen menggunakan DocumentBuilder.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHtml.cpp" >}}

## Sisipkan Aturan Horizontal ke dalam Dokumen

Contoh Below code menunjukkan cara menyisipkan bentuk aturan horizontal ke dalam dokumen menggunakan metode `DocumentBuilder->InsertHorizontalRule`.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.cpp" >}}
