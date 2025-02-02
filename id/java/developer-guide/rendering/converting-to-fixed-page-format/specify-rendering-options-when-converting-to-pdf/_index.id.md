﻿---
title: Tentukan Opsi Rendering Saat Mengonversi ke PDF
second_title: Aspose.Words untuk Java
articleTitle: Tentukan Opsi Rendering Saat Mengonversi ke PDF
linktitle: Tentukan Opsi Rendering Saat Mengonversi ke PDF
description: "Konversikan dokumen menjadi PDF dengan opsi lanjutan. Gunakan PdfSaveOptions untuk mengubah hasil penyimpanan dokumen ke format PDF menggunakan Java."
type: docs
weight: 20
url: /id/java/specify-rendering-options-when-converting-to-pdf/
timestamp: 2024-10-21-11-17-44
---

Format PDF adalah format halaman tetap yang sangat populer di kalangan pengguna dan didukung secara luas oleh berbagai aplikasi karena dokumen PDF terlihat sama di perangkat apa pun. Oleh karena itu, mengonversi ke PDF merupakan fitur penting dari Aspose.Words.

PDF adalah format yang kompleks. Beberapa tahapan perhitungan diperlukan dalam proses pengubahan dokumen menjadi PDF, termasuk perhitungan tata letak. Karena tahapan ini mencakup komputasi yang kompleks, tahapan ini memakan waktu. Juga, format PDF agak rumit dengan sendirinya. Ini memiliki struktur file tertentu, model grafik, dan penyematan font. Selain itu, ia menampilkan beberapa fungsionalitas keluaran yang kompleks, seperti tag struktur dokumen, enkripsi, tanda tangan digital, dan formulir yang dapat diedit.

Aspose.Words mesin tata letak meniru cara kerja mesin tata letak halaman Microsoft Word. Oleh karena itu, Aspose.Words membuat dokumen keluaran PDF terlihat sedekat mungkin dengan apa yang dapat Anda lihat di Microsoft Word. Terkadang perlu untuk menentukan opsi tambahan, yang dapat memengaruhi hasil penyimpanan dokumen ke dalam format PDF. Opsi ini dapat ditentukan dengan menggunakan kelas [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/), yang berisi properti yang menentukan bagaimana output PDF akan ditampilkan.

Beberapa contoh penggunaan **PdfSaveOptions** disediakan di bawah ini.

{{% alert color="primary" %}}

Saat ini, Anda dapat menyimpan ke PDF 1.7, PDF 2.0, PDF/A-1a, PDF/A-1b, PDF/A-2a, PDF/A-2u, dan format PDF/UA-1. Gunakan pencacahan [PdfCompliance](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/) untuk menetapkan tingkat kepatuhan standar PDF. Perhatikan bahwa dengan format PDF/A, ukuran file keluaran lebih besar dari ukuran file PDF biasa.

[PdfCompliance.PdfA1a](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/#PDF-17) dan [PdfCompliance.PdfA1b](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/#PDF-17) ditandai sebagai usang.

Untuk informasi selengkapnya tentang PDF/A, lihat artikel berikutnya, " Pelajari Fitur Konversi ke PDF/A".

{{% /alert %}}

## Membuat Dokumen PDF dengan Formulir yang Dapat Diisi

Dimungkinkan juga untuk mengekspor formulir yang dapat diisi dari dokumen Microsoft Word ke output PDF, yang memiliki formulir yang dapat diisi alih-alih teks biasa. Gunakan properti [PreserveFormFields](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getPreserveFormFields) untuk menyimpan dokumen sebagai PDF dengan formulir yang dapat diisi.

Perhatikan bahwa berbeda dengan Microsoft Word, format PDF memiliki sejumlah opsi terbatas untuk formulir yang dapat diedit, seperti kotak teks, kotak kombo, dan checkbox. Microsoft Word memiliki lebih banyak jenis formulir, misalnya pemilih tanggal kalender. Secara umum, tidak mungkin untuk sepenuhnya meniru perilaku Microsoft Word dalam PDF. Oleh karena itu, dalam beberapa kasus kompleks, keluaran PDF mungkin berbeda dari yang Anda lihat di Microsoft Word.

Contoh kode di bawah ini menunjukkan cara menyimpan dokumen sebagai PDF dengan formulir yang dapat diisi dengan kompresi dan kualitas Jpeg yang ditentukan:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-PdfImageCompression.java" >}}

## Mengekspor Struktur Dokumen dan Properti Khusus

Properti [ExportDocumentStructure](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getExportDocumentStructure) memungkinkan Anda mengekspor struktur dokumen ke keluaran PDF.

PDF fasilitas struktur logis menyediakan mekanisme untuk menggabungkan informasi, mengenai struktur isi dokumen, ke dalam file PDF. Aspose.Words menyimpan informasi tentang struktur dari dokumen Microsoft Word, seperti paragraf, daftar, tabel, catatan kaki/catatan akhir, dll.

Contoh berikut menunjukkan cara menyimpan dokumen ke format PDF, mempertahankan struktur dokumen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-ExportDocumentStructure.java" >}}

Aspose.Words juga memungkinkan Anda mengekspor properti kustom dokumen ke PDF, yang ditunjukkan dengan contoh berikut:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-CustomPropertiesExport.java" >}}

## Mengekspor Garis Besar dari Penanda dan Judul dalam Output PDF

Jika Anda ingin mengekspor bookmark sebagai outline di output PDF, Anda dapat menggunakan properti [DefaultBookmarksOutlineLevel](https://reference.aspose.com/words/java/com.aspose.words/outlineoptions/#getDefaultBookmarksOutlineLevel). Properti ini menentukan level default dalam kerangka dokumen, di mana penanda Microsoft Word ditampilkan. Jika dokumen berisi penanda di header / footer dokumen, Anda dapat menyetel properti [HeaderFooterBookmarksExportMode](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getHeaderFooterBookmarksExportMode) ke [First](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#FIRST) atau [All](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#ALL) untuk menentukan bagaimana penanda tersebut diekspor dalam output PDF. Penanda di header / footer tidak diekspor jika nilai **HeaderFooterBookmarksExportMode** adalah [None](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#NONE).

Contoh kode di bawah ini menunjukkan cara mengekspor bookmark dari header / footer pertama suatu bagian:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-ExportHeaderFooterBookmarks.java" >}}

Output PDF dari contoh ini ditunjukkan di bawah ini:

![rendering-options-when-converting-to-pdf-aspose-words-java-1](/words/java/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-1.png)

Saat **HeaderFooterBookmarksExportMode** disetel ke [First](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#FIRST) dan dokumen memiliki header/footer genap dan ganjil atau header/footer halaman pertama yang berbeda, bookmark diekspor untuk header/footer unik pertama di suatu bagian.

Anda juga dapat mengekspor judul dalam output PDF, menggunakan properti [HeadingsOutlineLevels](https://reference.aspose.com/words/java/com.aspose.words/outlineoptions/#getHeadingsOutlineLevels). Properti ini menentukan berapa banyak level judul yang disertakan dalam kerangka dokumen.

Contoh kode di bawah ini menunjukkan cara mengekspor judul dengan tiga level:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-SaveToPdfWithOutline.java" >}}

Output PDF dari contoh ini digambarkan di bawah ini:

![rendering-options-when-converting-to-pdf-aspose-words-java-2](/words/java/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-2.png)

{{% alert color="primary" %}}

Penanda atau navigasi judul mungkin memiliki tampilan yang berbeda di berbagai pemirsa PDF. Selain itu, di beberapa aplikasi, bookmark dan navigasi judul tidak tersedia di UI.

{{% /alert %}}

## Downsampling Gambar untuk Memperkecil Ukuran Dokumen

Aspose.Words menyediakan kemampuan untuk menurunkan sampel gambar untuk mengurangi ukuran keluaran PDF, menggunakan properti [DownsampleOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getDownsampleOptions). Downsampling diaktifkan secara default di properti [DownsampleImages](https://reference.aspose.com/words/java/com.aspose.words/downsampleoptions/#getDownsampleImages).

Perhatikan bahwa Anda juga dapat menetapkan resolusi tertentu di properti [Resolution](https://reference.aspose.com/words/java/com.aspose.words/downsampleoptions/#getResolution), atau ambang resolusi di properti [ResolutionThreshold](https://reference.aspose.com/words/java/com.aspose.words/downsampleoptions/#getResolutionThreshold). Dalam kasus kedua, jika resolusi gambar kurang dari nilai ambang batas, maka downsampling tidak akan berlaku.

Contoh kode di bawah ini menampilkan cara mengubah resolusi gambar dalam dokumen keluaran PDF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-DownsamplingImages.java" >}}

Resolusi dihitung sesuai dengan ukuran gambar sebenarnya pada halaman.

## Menyematkan Font dalam Format Adobe PDF

Aspose.Words juga memungkinkan Anda mengontrol bagaimana font disematkan ke dalam dokumen PDF yang dihasilkan. Font perlu disematkan ke dalam dokumen Adobe PDF apa pun untuk memastikan bahwa dokumen dapat dirender dengan benar di mesin mana pun (lihat detail selengkapnya tentang rendering font di bagian [Menggunakan Font TrueType](/words/java/using-truetype-fonts/)). Secara default, Aspose.Words menyematkan subset font yang digunakan dalam dokumen ke dalam PDF yang dihasilkan. Dalam hal ini, hanya mesin terbang (karakter) yang digunakan dalam dokumen yang disimpan ke PDF.

### Kapan Menggunakan Font Lengkap dan Kapan Subset

Ada cara untuk menentukan opsi untuk Aspose.Words untuk menyematkan font lengkap. Rincian lebih lanjut, beserta beberapa kelebihan dan kekurangan dari setiap pengaturan dijelaskan pada tabel di bawah ini.

| Mode Fonta Sematan | Keuntungan | Kekurangan |
| :- | :- | :- |
| `Full` | Berguna saat Anda ingin mengedit PDF yang dihasilkan nanti dengan menambahkan atau memodifikasi teks. Semua font disertakan, oleh karena itu semua mesin terbang ada. | Karena beberapa font berukuran besar (beberapa megabita), menyematkannya tanpa subset dapat menghasilkan file keluaran yang besar. |
| `Subset` | Subsetting berguna jika Anda ingin menjaga ukuran file output lebih kecil. | <p>Pengguna tidak dapat sepenuhnya menambahkan atau mengedit teks menggunakan font subset dalam dokumen output PDF. Ini karena tidak semua mesin terbang font ada.</p><p>Jika beberapa PDFs disimpan dengan font subset dan dirangkai menjadi satu, maka dokumen gabungan PDF mungkin memiliki font yang berisi banyak subset yang tidak perlu.</p> |

### Menyematkan Font Lengkap dalam PDF

Properti [EmbedFullFonts](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getEmbedFullFonts) memungkinkan Anda menentukan bagaimana Aspose.Words menyematkan font ke dalam dokumen PDF keluaran.

- Untuk menyematkan font lengkap ke dalam dokumen PDF keluaran, setel **EmbedFullFonts** ke true
- Untuk mensubset font saat menyimpan ke PDF, setel **EmbedFullFonts** ke false

Contoh berikut menunjukkan cara menyematkan font lengkap dalam dokumen output PDF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-EmbeddAllFonts.java" >}}

Contoh berikut menunjukkan cara menyetel Aspose.Words ke subset font dalam output PDF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-EmbeddSubsetFonts.java" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file templat untuk contoh-contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Cara Mengontrol Penyematan Font Inti dan Font Standar Windows

Font inti dan font Standar Windows adalah kumpulan font "standar", yang biasanya ada di mesin target atau disediakan oleh pembaca dokumen, oleh karena itu font tersebut tidak perlu disematkan di output PDF. Dengan tidak menyematkan font ini, Anda dapat memperkecil ukuran dokumen PDF yang dirender namun tetap mempertahankan portabilitas.

Aspose.Words menyediakan opsi untuk memilih bagaimana font diekspor ke PDF. Anda dapat memilih untuk menyematkan font inti dan standar ke dalam output PDF atau melewati penyematan dan menggunakan font inti standar PDF atau font sistem pada mesin target. Menggunakan salah satu dari opsi ini biasanya menghasilkan pengurangan ukuran file yang signifikan untuk dokumen PDF yang dihasilkan oleh Aspose.Words.

- Karena opsi ini saling eksklusif, Anda harus memilih hanya satu per satu.
- Saat menyimpan dengan kepatuhan PDF/A-1, semua font yang digunakan harus disematkan dengan dokumen PDF. Saat menyimpan dengan kepatuhan ini, properti [UseCoreFonts](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getUseCoreFonts) harus disetel ke false dan properti [FontEmbeddingMode](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getFontEmbeddingMode) harus disetel ke [EmbedAll](https://reference.aspose.com/words/java/com.aspose.words/pdffontembeddingmode#EMBED_ALL)[.](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usecorefonts/)

### Menyematkan Font Inti

Opsi untuk menyematkan font Inti dapat diaktifkan atau dinonaktifkan dengan menggunakan properti [UseCoreFonts](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getUseCoreFonts). Jika disetel ke true, font "True Type" paling populer berikut (font Dasar 14) tidak disematkan dalam dokumen PDF keluaran:

- `Arial`
- `Times New Roman`
- `Courier New`
- `Symbol`

Font ini diganti dengan font core Type 1 yang sesuai, yang disediakan oleh pembaca saat PDF dibuka.

Contoh yang diberikan di bawah ini menunjukkan cara menyetel Aspose.Words untuk menghindari penyematan font inti dan memungkinkan pembaca menggantinya dengan font PDF Tipe 1:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-AvoidEmbeddingCoreFonts.java" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file templat untuk contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Karena pemirsa PDF menyediakan font inti pada platform apa pun yang didukung, opsi ini juga berguna saat portabilitas dokumen yang lebih besar diperlukan. Namun, font inti mungkin terlihat berbeda dari font sistem.

{{% alert color="primary" %}}

Pengaturan ini hanya berfungsi untuk teks penyandian ANSI (Windows-1252). Menulis teks non - ANSI ke PDF akan selalu mengharuskan font yang sesuai untuk disematkan.

{{% /alert %}}

### Menyematkan Font Sistem

Opsi ini dapat diaktifkan atau dinonaktifkan dengan menggunakan properti [FontEmbeddingMode](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getFontEmbeddingMode). Saat properti ini disetel ke [EmbedNonstandard](https://reference.aspose.com/words/java/com.aspose.words/pdffontembeddingmode/#EMBED-NONSTANDARD), font tipe true "Arial" dan "Times New Roman" tidak disematkan ke dalam dokumen PDF. Dalam hal ini, penampil klien bergantung pada font yang diinstal pada sistem operasi klien. Saat properti **FontEmbeddingMode** disetel ke [EmbedNone](https://reference.aspose.com/words/java/com.aspose.words/pdffontembeddingmode/#EMBED-NONE), Aspose.Words jangan menyematkan font apa pun.

Contoh di bawah ini menunjukkan cara menyetel Aspose.Words untuk melewati penyematan font Arial dan Times New Roman ke dalam dokumen PDF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-SetFontEmbeddingMode.java" >}}

Mode ini paling berguna saat Anda ingin melihat dokumen Anda di platform yang sama, mempertahankan tampilan font yang tepat di output PDF.

{{% alert color="primary" %}}

Pengaturan ini hanya berfungsi untuk teks penyandian ANSI (Windows-1252). Menulis teks non - ANSI ke PDF memerlukan font yang sesuai untuk disematkan.

{{% /alert %}}
