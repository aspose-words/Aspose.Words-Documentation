---
title: Pilihan Saat Mengonversi ke PDF
second_title: Aspose.Words untuk .NET
articleTitle: Tentukan Opsi Rendering Saat Mengonversi ke PDF
linktitle: Tentukan Opsi Rendering Saat Mengonversi ke PDF
description: "Konversikan dokumen ke PDF dengan opsi lanjutan menggunakan C#. Konversikan formulir DOCX ke PDF C#. Gunakan PdfSaveOptions untuk mengubah hasil penyimpanan dokumen ke PDF."
type: docs
weight: 20
url: /id/net/specify-rendering-options-when-converting-to-pdf/
---

Format PDF merupakan format halaman tetap yang sangat populer di kalangan pengguna dan banyak didukung oleh berbagai aplikasi, karena dokumen PDF terlihat sama di perangkat apa pun. Oleh karena itu, mengonversi ke PDF adalah fitur penting Aspose.Words.

PDF adalah format yang kompleks. Ada beberapa tahapan perhitungan yang diperlukan dalam proses konversi suatu dokumen ke PDF, termasuk perhitungan layout. Karena tahapan ini mencakup perhitungan yang rumit, maka memakan waktu. Selain itu, format PDF itu sendiri agak rumit. Ini memiliki struktur file tertentu, model grafik, dan penyematan font. Selain itu, ia menampilkan beberapa fungsi keluaran yang kompleks, seperti tag struktur dokumen, enkripsi, tanda tangan digital, dan formulir yang dapat diedit.

Mesin tata letak Aspose.Words meniru cara kerja mesin tata letak halaman Microsoft Word. Oleh karena itu, Aspose.Words membuat dokumen keluaran PDF terlihat sedekat mungkin dengan apa yang Anda lihat di Microsoft Word. Terkadang perlu menentukan opsi tambahan, yang dapat memengaruhi hasil penyimpanan dokumen ke format PDF. Pilihan ini dapat ditentukan dengan menggunakan kelas [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/), yang berisi properti yang menentukan bagaimana keluaran PDF akan ditampilkan.

Beberapa contoh penggunaan **PdfSaveOptions** disediakan di bawah ini.

{{% alert color="primary" %}}

Saat ini, Anda dapat menyimpan ke format PDF 1.7, PDF 2.0, PDF/A-1a, PDF/A-1b, PDF/A-2a, PDF/A-2u, dan PDF/UA-1. Gunakan enumerasi [PdfCompliance](https://reference.aspose.com/words/net/aspose.words.saving/pdfcompliance/) untuk menetapkan tingkat kepatuhan standar PDF. Perhatikan bahwa dengan format PDF/A, ukuran file keluaran lebih besar daripada ukuran file PDF biasa.

[PdfCompliance.PdfA1a](https://reference.aspose.com/words/net/aspose.words.saving/pdfcompliance/) dan [PdfCompliance.PdfA1b](https://reference.aspose.com/words/net/aspose.words.saving/pdfcompliance/) ditandai sebagai usang.

Untuk informasi lebih lanjut tentang PDF/A, lihat artikel berikutnya, "Pelajari Fitur Konversi ke PDF/A".

{{% /alert %}}

## Membuat Dokumen PDF dengan Formulir yang Dapat Diisi

Dimungkinkan juga untuk mengekspor formulir yang dapat diisi dari dokumen Microsoft Word ke PDF keluaran, yang memiliki formulir yang dapat diisi dan bukan teks biasa. Gunakan properti [PreserveFormFields](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/preserveformfields/) untuk menyimpan dokumen sebagai PDF dengan formulir yang dapat diisi.

Perhatikan bahwa berbeda dengan Microsoft Word, format PDF memiliki sejumlah opsi terbatas untuk formulir yang dapat diedit, seperti kotak teks, kotak kombo, dan kotak centang. Microsoft Word memiliki lebih banyak jenis formulir, misalnya pemilih tanggal kalender. Secara umum, tidak mungkin meniru sepenuhnya perilaku Microsoft Word di PDF. Oleh karena itu, dalam beberapa kasus kompleks, keluaran PDF mungkin berbeda dari apa yang Anda lihat di Microsoft Word.

Contoh kode di bawah ini menunjukkan cara menyimpan dokumen sebagai PDF dengan formulir yang dapat diisi dengan kompresi dan kualitas Jpeg tertentu:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-Working with PdfSaveOptions-PdfImageCompression.cs" >}}

## Mengekspor Struktur Dokumen dan Properti Kustom

Properti [https://reference.aspose.com/words/net/aspose.words. saving/pdfsaveoptions/properties/exportdocumentstructure) memungkinkan Anda mengekspor struktur dokumen ke keluaran PDF.

Fasilitas struktur logis PDF menyediakan mekanisme untuk memasukkan informasi, mengenai struktur konten dokumen, ke dalam file PDF. Aspose.Words menyimpan informasi tentang struktur dari dokumen Microsoft Word, seperti paragraf, daftar, tabel, catatan kaki/catatan akhir, dll.

Contoh berikut menunjukkan cara menyimpan dokumen ke format PDF, sambil mempertahankan struktur dokumen:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithPdfSaveOptions-ExportDocumentStructure.cs" >}}

Aspose.Words juga memungkinkan Anda mengekspor properti kustom dokumen ke PDF, yang ditunjukkan oleh contoh berikut:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithPdfSaveOptions-CustomPropertiesExport.cs" >}}

## Mengekspor Garis Besar dari Penanda dan Judul dalam Output PDF

Jika Anda ingin mengekspor bookmark sebagai kerangka dalam keluaran PDF, Anda dapat menggunakan properti [DefaultBookmarksOutlineLevel](https://reference.aspose.com/words/net/aspose.words.saving/outlineoptions/defaultbookmarksoutlinelevel/). Properti ini menentukan tingkat default dalam kerangka dokumen, di mana bookmark Microsoft Word ditampilkan. Jika dokumen berisi bookmark di header/footer dokumen, Anda dapat mengatur properti [HeaderFooterBookmarksExportMode](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/headerfooterbookmarksexportmode/) ke [First](https://reference.aspose.com/words/net/aspose.words.saving/headerfooterbookmarksexportmode/) atau [All](https://reference.aspose.com/words/net/aspose.words.saving/headerfooterbookmarksexportmode/) untuk menentukan cara mengekspornya dalam PDF keluaran. Bookmark di header/footer tidak diekspor bila nilai **HeaderFooterBookmarksExportMode** adalah [None](https://reference.aspose.com/words/net/aspose.words.saving/headerfooterbookmarksexportmode/).

Contoh kode di bawah ini menunjukkan cara mengekspor bookmark dari header/footer pertama suatu bagian:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithPdfSaveOptions-ExportHeaderFooterBookmarks.cs" >}}

Output PDF dari contoh ini ditunjukkan di bawah ini:

![specify-rendering-options-when-converting-to-pdf_1](/words/net/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-1.png)

Ketika **HeaderFooterBookmarksExportMode** diatur ke [First](https://reference.aspose.com/words/net/aspose.words.saving/headerfooterbookmarksexportmode/) dan dokumen memiliki header/footer genap dan ganjil atau header/footer halaman pertama yang berbeda, bookmark diekspor untuk header/footer unik pertama di suatu bagian.

Anda juga dapat mengekspor judul dalam PDF keluaran, menggunakan properti [HeadingsOutlineLevels](https://reference.aspose.com/words/net/aspose.words.saving/outlineoptions/headingsoutlinelevels/). Properti ini menentukan berapa banyak tingkat judul yang disertakan dalam kerangka dokumen.

Contoh kode di bawah ini menunjukkan cara mengekspor judul dengan tiga level:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithPdfSaveOptions-SaveToPdfWithOutline.cs" >}}

PDF keluaran dari contoh ini digambarkan di bawah ini:

![specify-rendering-options-when-converting-to-pdf_2](/words/net/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-2.png)

{{% alert color="primary" %}}

Navigasi penanda atau judul mungkin memiliki tampilan berbeda di berbagai penampil PDF. Selain itu, di beberapa aplikasi, bookmark dan navigasi judul tidak tersedia di UI.

{{% /alert %}}

## Downsampling Gambar untuk Mengurangi Ukuran Dokumen

Aspose.Words menyediakan kemampuan untuk melakukan downsample gambar untuk mengurangi ukuran PDF keluaran, menggunakan properti [DownsampleOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/downsampleoptions/). Downsampling diaktifkan secara default di properti [DownsampleImages](https://reference.aspose.com/words/net/aspose.words.saving/downsampleoptions/downsampleimages/).

Perhatikan bahwa dimungkinkan juga untuk menetapkan resolusi tertentu di properti [Resolution](https://reference.aspose.com/words/net/aspose.words.saving/downsampleoptions/resolution/), atau ambang resolusi di properti [ResolutionThreshold](https://reference.aspose.com/words/net/aspose.words.saving/downsampleoptions/resolution/threshold). Dalam kasus kedua, jika resolusi gambar kurang dari nilai ambang batas, maka downsampling tidak akan diterapkan.

Contoh kode di bawah ini menampilkan cara mengubah resolusi gambar dalam dokumen PDF keluaran:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithPdfSaveOptions-DownsamplingImages.cs" >}}

Resolusi dihitung berdasarkan ukuran gambar sebenarnya pada halaman.

## Menanamkan Font dalam Format Adobe PDF

Aspose.Words juga memungkinkan Anda mengontrol bagaimana font disematkan ke dalam dokumen PDF yang dihasilkan. Font harus disematkan ke dalam dokumen Adobe PDF apa pun untuk memastikan bahwa dokumen tersebut dapat dirender dengan benar di mesin mana pun (lihat detail lebih lanjut tentang rendering font di bagian [Menggunakan Font TrueType](/words/id/net/using-truetype-fonts/)). Secara default, Aspose.Words menyematkan subset font yang digunakan dalam dokumen ke dalam PDF yang dihasilkan. Dalam hal ini, hanya glyph (karakter) yang digunakan dalam dokumen yang disimpan ke PDF.

### Kapan Menggunakan Font Penuh dan Kapan Menggunakan Subset

Ada cara untuk menentukan opsi bagi Aspose.Words untuk menyematkan font lengkap. Rincian lebih lanjut, beserta beberapa kelebihan dan kekurangan masing-masing pengaturan dijelaskan pada tabel di bawah ini.

| Mode Sematkan Font |  Keuntungan | Kekurangan |
|  :-  |  :-  |  :-  |
|  `Full`  | Berguna ketika Anda ingin mengedit PDF yang dihasilkan nanti dengan menambahkan atau memodifikasi teks. Semua font disertakan, maka semua glyph ada. | Karena beberapa font berukuran besar (beberapa megabita), menyematkannya tanpa membuat subset dapat menghasilkan file output yang besar. |
|  `Subset`  | Subsetting berguna jika Anda ingin memperkecil ukuran file keluaran. | <p>Pengguna tidak dapat sepenuhnya menambahkan atau mengedit teks menggunakan font subset dalam dokumen PDF keluaran. Ini karena tidak semua glyph font tersebut ada.</p>

<p>Jika beberapa PDF disimpan dengan font subset dan dirangkai bersama, maka dokumen PDF gabungan mungkin memiliki font yang berisi banyak subset yang tidak diperlukan.</p> |

### Menyematkan Font Lengkap dalam PDF

Properti [EmbedFullFonts](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/embedfullfonts/) memungkinkan Anda menentukan bagaimana Aspose.Words menyematkan font ke dalam dokumen PDF keluaran.

- Untuk menyematkan font lengkap ke dalam dokumen PDF keluaran, atur **EmbedFullFonts** ke true
- Untuk mengelompokkan font saat menyimpan ke PDF, atur **EmbedFullFonts** ke false

Contoh berikut menunjukkan cara menyematkan font lengkap di dokumen PDF keluaran:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-EmbeddedFontsInPDF-EmbeddAllFonts.cs" >}}

Contoh berikut menunjukkan cara mengatur Aspose.Words ke subset font di output PDF:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-EmbeddedFontsInPDF-EmbeddSubsetFonts.cs" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file templat untuk contoh-contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Cara Mengontrol Penyematan Font Inti dan Font Standar Windows

Font inti dan font Standar Windows adalah kumpulan font "standar", yang biasanya ada di mesin target atau disediakan oleh pembaca dokumen, oleh karena itu tidak perlu disematkan dalam output PDF. Dengan tidak menyematkan font ini, Anda dapat memperkecil ukuran dokumen PDF yang dirender namun tetap menjaga portabilitas.

Aspose.Words menyediakan opsi untuk memilih bagaimana font diekspor ke PDF. Anda dapat memilih untuk menyematkan font inti dan font standar ke dalam PDF keluaran atau melewatkan penyematannya dan menggunakan font PDF inti standar atau font sistem pada mesin target. Menggunakan salah satu opsi ini biasanya menghasilkan pengurangan ukuran file yang signifikan untuk dokumen PDF yang dihasilkan oleh Aspose.Words.

- Karena opsi ini saling eksklusif, Anda sebaiknya memilih satu saja dalam satu waktu.
- Saat menyimpan dengan kepatuhan PDF/A-1, semua font yang digunakan harus disematkan dengan dokumen PDF. Saat menyimpan dengan kepatuhan ini, properti [UseCoreFonts](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usecorefonts/) harus disetel ke false dan properti [FontEmbeddingMode](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/fontembeddingmode/) harus disetel ke [EmbedAll](https://reference.aspose.com/words/net/aspose.words.saving/pdffontembeddingmode/).

### Menyematkan Font Inti

Opsi untuk menyematkan font Inti dapat diaktifkan atau dinonaktifkan dengan menggunakan properti [UseCoreFonts](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usecorefonts/). Jika diatur ke true, font "True Type" terpopuler berikut ini (font Basis 14) tidak disematkan dalam dokumen PDF keluaran:

- `Arial`
- `Times New Roman`
- `Courier New`
- `Symbol`

Font ini diganti dengan font inti Tipe 1 yang sesuai, yang disediakan oleh pembaca saat PDF dibuka.

Contoh yang diberikan di bawah ini menunjukkan cara mengatur Aspose.Words untuk menghindari penyematan font inti dan membiarkan pembaca menggantinya dengan font PDF Tipe 1:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-EmbeddingWindowsStandardFonts-AvoidEmbeddingCoreFonts.cs" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file templat untuk contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Karena penampil PDF menyediakan font inti pada platform apa pun yang didukung, opsi ini juga berguna ketika diperlukan portabilitas dokumen yang lebih besar. Namun, font inti mungkin terlihat berbeda dari font sistem.

{{% alert color="primary" %}}

Pengaturan ini hanya berfungsi untuk pengkodean teks ANSI (Windows-1252). Menulis teks non-ANSI ke PDF akan selalu memerlukan penyematan font yang sesuai.

{{% /alert %}}

### Menanamkan Font Sistem

Opsi ini dapat diaktifkan atau dinonaktifkan dengan menggunakan properti [FontEmbeddingMode](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/fontembeddingmode/). Ketika properti ini diatur ke [EmbedNonstandard](https://reference.aspose.com/words/net/aspose.words.saving/pdffontembeddingmode/), font jenis true "Arial" dan "Times New Roman" tidak disematkan ke dalam dokumen PDF. Dalam hal ini, penampil klien bergantung pada font yang diinstal pada sistem operasi klien. Ketika properti **FontEmbeddingMode** diatur ke [EmbedNone](https://reference.aspose.com/words/net/aspose.words.saving/pdffontembeddingmode/), Aspose.Words tidak menyematkan font apa pun.

Contoh di bawah ini menunjukkan cara mengatur Aspose.Words agar tidak menyematkan font Arial dan Times New Roman ke dalam dokumen PDF:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-EmbeddedFontsInPDF-SetFontEmbeddingMode.cs" >}}

Mode ini paling berguna ketika Anda ingin melihat dokumen Anda pada platform yang sama, menjaga tampilan font yang sama persis di PDF keluaran.

{{% alert color="primary" %}}

Pengaturan ini hanya berfungsi untuk pengkodean teks ANSI (Windows-1252). Menulis teks non-ANSI ke PDF memerlukan penyematan font yang sesuai.

{{% /alert %}}
