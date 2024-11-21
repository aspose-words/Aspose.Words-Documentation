---
title: Tentukan Pilihan rendering Ketika Konversi ke PDF
second_title: Aspose.Words Sitemap Java
articleTitle: Tentukan Pilihan rendering Ketika Konversi ke PDF
linktitle: Tentukan Pilihan rendering Ketika Konversi ke PDF
description: "Konversi dokumen ke PDF dengan opsi canggih. Gunakan PdfSaveOptions untuk mengubah hasil menyimpan dokumen ke format PDF menggunakan JavaSitemap"
type: docs
weight: 20
url: /id/java/specify-rendering-options-when-converting-to-pdf/
timestamp: 2024-10-21-11-17-44
---

Format PDF adalah format halaman tetap yang sangat populer di kalangan pengguna dan banyak didukung oleh berbagai aplikasi karena dokumen PDF terlihat sama pada perangkat apa pun. Untuk alasan itu, konversi ke PDF adalah fitur penting dari Aspose.WordsSitemap

PDF adalah format yang kompleks. Beberapa tahap perhitungan diperlukan dalam proses mengkonversi dokumen ke PDF, termasuk perhitungan tata letak. Sejak tahap ini termasuk komputasi kompleks, mereka memakan waktu. Juga, format PDF agak kompleks dengan sendirinya. Ini memiliki struktur file tertentu, model grafis dan font yang timbul. Selain itu, fitur beberapa fungsi output yang kompleks, seperti tag struktur dokumen, enkripsi, tanda tangan digital, dan bentuk yang dapat diedit.

Aspose.Words mesin tata letak meniru cara Microsoft WordPekerjaan mesin tata letak halaman. Oleh karena itu, Aspose.Words membuat dokumen output PDF terlihat sedekat mungkin dengan apa yang dapat Anda lihat Microsoft WordSitemap Terkadang perlu menentukan opsi tambahan, yang dapat mempengaruhi hasil menyimpan dokumen ke format PDF. Pilihan ini dapat ditentukan oleh penggunaan [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) kelas, mengandung sifat yang menentukan bagaimana output PDF akan ditampilkan.

Beberapa contoh penggunaan **PdfSaveOptions** disediakan di bawah ini.

{{% alert color="primary" %}}

Saat ini, Anda dapat menyimpan ke format PDF 1.7, PDF 2.0, PDF / A-1a, PDF / A-1b, PDF / A-2a, PDF / A-2u, dan PDF / U-1. Gunakan [PdfCompliance](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/) enumerasi untuk mengatur tingkat kepatuhan standar PDF. Perhatikan bahwa dengan format PDF / A, ukuran file output lebih besar dari ukuran file PDF biasa.

[PdfCompliance.PdfA1a](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/#PDF-17) Login [PdfCompliance.PdfA1b](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/#PDF-17) ditandai sebagai usang.

Untuk informasi lebih lanjut tentang PDF/A, lihat artikel berikutnya, "Berlangsung Fitur Konversi ke PDF/A".

{{% /alert %}}

## Membuat PDF Dokumen dengan Formulir yang Dapat Diisi

Hal ini juga memungkinkan untuk mengekspor bentuk yang dapat diisi dari Microsoft Word dokumen menjadi output PDF, yang memiliki bentuk yang dapat diisi bukan teks biasa. Gunakan [PreserveFormFields](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getPreserveFormFields) properti untuk menyimpan dokumen sebagai PDF dengan bentuk yang dapat diisi.

Perhatikan bahwa dalam kontras <span notrans="<span notrans=" Microsoft Word"=""></span>Sitemap format PDF memiliki sejumlah pilihan terbatas untuk bentuk yang dapat diedit, seperti kotak teks, kotak combo, dan kotak centang. Microsoft Word memiliki lebih banyak jenis bentuk, misalnya, pemilih tanggal kalender. Umumnya, tidak mungkin untuk meniru sepenuhnya Microsoft Word perilaku dalam PDF. Oleh karena itu, dalam beberapa kasus kompleks, output PDF mungkin berbeda dari apa yang Anda lihat Microsoft WordSitemap

Contoh kode di bawah ini menunjukkan cara menyimpan dokumen sebagai PDF dengan bentuk yang dapat diisi dengan kompresi dan kualitas Jpeg yang ditentukan:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-PdfImageCompression.java" >}}

## Struktur Dokumen Ekspor dan Properti Khusus

Login [ExportDocumentStructure](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getExportDocumentStructure) properti memungkinkan Anda untuk mengekspor struktur dokumen ke output PDF.

Fasilitas struktur logis PDF memberikan mekanisme untuk menggabungkan informasi, mengenai struktur konten dokumen, ke dalam file PDF. Aspose.Words menjaga informasi tentang struktur dari Microsoft Word dokumen, seperti paragraf, daftar, tabel, catatan kaki / catatan, dll.

Contoh berikut menunjukkan cara menyimpan dokumen ke format PDF, menjaga struktur dokumen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-ExportDocumentStructure.java" >}}

Aspose.Words juga memungkinkan Anda untuk mengekspor dokumen kustom properti ke PDF, yang ditunjukkan oleh contoh berikut:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-CustomPropertiesExport.java" >}}

## Mengekspor Outlines dari Bookmarks dan Headings di Output PDF

Jika Anda ingin mengekspor bookmark sebagai garis besar dalam PDF output, Anda dapat menggunakan [DefaultBookmarksOutlineLevel](https://reference.aspose.com/words/java/com.aspose.words/outlineoptions/#getDefaultBookmarksOutlineLevel) Login Properti ini menentukan tingkat default dalam garis dokumen, di mana Microsoft Word bookmark ditampilkan. Jika dokumen berisi bookmark di header / footer dokumen, Anda dapat mengatur [HeaderFooterBookmarksExportMode](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getHeaderFooterBookmarksExportMode) properti [First](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#FIRST) Sitemap [All](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#ALL) untuk menentukan bagaimana mereka diekspor dalam PDF output. bookmark di header / footers tidak diekspor ketika nilai **HeaderFooterBookmarksExportMode** Sitemap [None](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#NONE)Sitemap

Contoh kode di bawah ini menunjukkan bagaimana mengekspor bookmark dari header / footer pertama dari bagian:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-ExportHeaderFooterBookmarks.java" >}}

PDF output dari contoh ini ditunjukkan di bawah ini:

![rendering-options-when-converting-to-pdf-aspose-words-java-1](/words/java/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-1.png)

Sitemap **HeaderFooterBookmarksExportMode** Sitemap [First](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#FIRST) dan dokumen bahkan memiliki header/footer atau header/footer halaman pertama yang berbeda, bookmark diekspor untuk header / footer unik pertama di bagian.

Anda juga dapat mengekspor judul di PDF output, menggunakan [HeadingsOutlineLevels](https://reference.aspose.com/words/java/com.aspose.words/outlineoptions/#getHeadingsOutlineLevels) Login Properti ini menentukan berapa banyak tingkat judul disertakan dalam garis dokumen.

Contoh kode di bawah ini menunjukkan cara mengekspor judul dengan tiga tingkat:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-SaveToPdfWithOutline.java" >}}

PDF output dari contoh ini digambarkan di bawah ini:

![rendering-options-when-converting-to-pdf-aspose-words-java-2](/words/java/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-2.png)

{{% alert color="primary" %}}

Navigasi bookmark atau judul mungkin memiliki penampilan yang berbeda dalam berbagai pemirsa PDF. Selain itu, dalam beberapa aplikasi, bookmark dan navigasi judul tidak tersedia di UI.

{{% /alert %}}

## Downsampling Gambar untuk Mengurangi Ukuran Dokumen

Aspose.Words memberikan kemampuan untuk menurunkan gambar untuk mengurangi ukuran PDF output, menggunakan [DownsampleOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getDownsampleOptions) Login Downsampling diaktifkan secara default [DownsampleImages](https://reference.aspose.com/words/java/com.aspose.words/downsampleoptions/#getDownsampleImages) Login

Perhatikan bahwa hal ini juga dimungkinkan untuk mengatur resolusi spesifik dalam [Resolution](https://reference.aspose.com/words/java/com.aspose.words/downsampleoptions/#getResolution) properti, atau ambang resolusi di [ResolutionThreshold](https://reference.aspose.com/words/java/com.aspose.words/downsampleoptions/#getResolutionThreshold) Login Dalam kasus kedua, jika resolusi gambar kurang dari nilai ambang, maka downsampling tidak akan berlaku.

Contoh kode di bawah ini menampilkan cara mengubah resolusi gambar dalam dokumen PDF output:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-DownsamplingImages.java" >}}

Resolusi dihitung sesuai dengan ukuran gambar nyata di halaman.

## Embedding Fonts di Adobe PDF Format

Aspose.Words juga memungkinkan Anda untuk mengontrol bagaimana font tertanam ke dokumen PDF yang dihasilkan. Font harus tertanam ke dalam dokumen Adobe PDF untuk memastikan bahwa dokumen dapat dengan benar diberikan pada mesin apa pun (lihat lebih detail tentang rendering font di bagian [Sitemap](/words/id/java/using-truetype-fonts/)Sitemap Login Aspose.Words timbul subset font yang digunakan dalam dokumen ke PDF yang dihasilkan. Dalam hal ini, hanya glyphs (karakter) digunakan dalam dokumen disimpan ke PDF.

### Ketika Menggunakan Font Penuh dan Ketika Subset

Ada cara untuk menentukan pilihan untuk Aspose.Words untuk menyematkan font penuh. Rincian lebih lanjut, bersama dengan beberapa keunggulan dan kerugian dari setiap pengaturan dijelaskan di tabel di bawah ini.

| Embed Fonts Mode |  Sitemap | Login |
|  :-  |  :-  |  :-  |
|  `Full`  | Berguna ketika Anda ingin mengedit PDF yang dihasilkan kemudian dengan menambahkan atau memodifikasi teks. Semua font disertakan, maka semua glyphSitemap | Karena beberapa font besar (several megabytes), menyematkan mereka tanpa mengatur dapat mengakibatkan file output besar. |
|  `Subset`  | Subsetting berguna jika Anda ingin menyimpan ukuran file output lebih kecil. | <p>Pengguna tidak dapat sepenuhnya menambahkan atau mengedit teks menggunakan font subsetted dalam dokumen PDF output. Ini karena tidak semua Meme it glyphfont hadir.</p>

<p>Jika beberapa PDF disimpan dengan font dan dirakit bersama, maka dokumen PDF gabungan mungkin memiliki font yang mengandung banyak subset yang tidak perlu.</p>
 |

### Embedding Font Penuh di PDF

Login [EmbedFullFonts](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getEmbedFullFonts) properti memungkinkan Anda untuk menentukan bagaimana Aspose.Words embeds font ke dalam dokumen PDF output.

- Login Untuk mengatur font penuh ke dalam dokumen PDF output, set **EmbedFullFonts** Login true
- Login Untuk mengatur font saat menyimpan ke PDF, set **EmbedFullFonts** Login false

Contoh berikut menunjukkan cara menanamkan font penuh dalam dokumen PDF output:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-EmbeddAllFonts.java" >}}

Contoh berikut menunjukkan cara mengatur Aspose.Words untuk subset font di output PDF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-EmbeddSubsetFonts.java" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file template untuk contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx)Sitemap

{{% /alert %}}

## Cara Mengontrol Embedding Core Fonts dan Windows Font Standar

Font inti dan Windows font standar adalah set "standar" font, yang biasanya hadir pada mesin target atau disediakan oleh pembaca dokumen, oleh karena itu mereka tidak perlu tertanam dalam PDF output. Dengan tidak mengesampingkan font-font ini, Anda dapat menurunkan ukuran dokumen PDF yang diberikan dan namun menjaga portabilitas.

Aspose.Words menyediakan opsi untuk memilih bagaimana font diekspor ke PDF. Anda dapat memilih baik untuk menyematkan inti dan font standar ke dalam output PDF atau untuk melewatkan membedding mereka dan menggunakan standar inti PDF font atau sistem font pada mesin target bukan. Menggunakan salah satu pilihan ini biasanya menghasilkan pengurangan ukuran file yang signifikan untuk dokumen PDF yang dihasilkan oleh Aspose.WordsSitemap

- Karena opsi ini saling eksklusif, Anda harus memilih satu kali.
- Ketika menyimpan dengan kepatuhan PDF / A-1, semua font yang digunakan harus tertanam dengan dokumen PDF. Saat menabung dengan kepatuhan ini, [UseCoreFonts](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getUseCoreFonts) properti harus diatur false dan [FontEmbeddingMode](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getFontEmbeddingMode) properti harus diatur [EmbedAll](https://reference.aspose.com/words/java/com.aspose.words/pdffontembeddingmode#EMBED_ALL)[.](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usecorefonts/)

### WordPress.org

Pilihan untuk embed Core font dapat diaktifkan atau dinonaktifkan dengan menggunakan [UseCoreFonts](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getUseCoreFonts) Login Ketika diatur true, font "True Type" yang paling populer (Base 14 font) tidak tertanam dalam dokumen PDF output:

- `Arial`
- `Times New Roman`
- `Courier New`
- `Symbol`

Font ini diganti dengan jenis inti yang sesuai 1 font, yang disediakan oleh pembaca ketika PDF dibuka.

Contoh yang diberikan di bawah ini menunjukkan cara mengatur Aspose.Words untuk menghindari embedding core fonts dan biarkan pembaca untuk menggantinya dengan PDF Jenis 1 font:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-AvoidEmbeddingCoreFonts.java" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file template untuk contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx)Sitemap

{{% /alert %}}

Karena pemirsa PDF menyediakan font inti pada platform yang didukung, opsi ini juga berguna ketika portabilitas dokumen yang lebih besar diperlukan. Namun, font inti mungkin terlihat berbeda dari font sistem.

{{% alert color="primary" %}}

Pengaturan ini hanya bekerja untuk ANSI (Windows-1252) teks pengkodean. Menulis teks non-ANSI ke PDF akan selalu membutuhkan font yang sesuai untuk tertanam.

{{% /alert %}}

### Font Sistem Embedding

Opsi ini dapat diaktifkan atau dinonaktifkan dengan menggunakan [FontEmbeddingMode](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getFontEmbeddingMode) Login Ketika properti ini ditetapkan [EmbedNonstandard](https://reference.aspose.com/words/java/com.aspose.words/pdffontembeddingmode/#EMBED-NONSTANDARD), "Arial" dan "Waktu Roman Baru" true jenis font tidak tertanam ke dalam dokumen PDF. Dalam hal ini, pemirsa klien bergantung pada font yang diinstal pada sistem operasi klien. Sitemap **FontEmbeddingMode** properti diatur untuk [EmbedNone](https://reference.aspose.com/words/java/com.aspose.words/pdffontembeddingmode/#EMBED-NONE), Aspose.Words tidak malu font. Meme it

Contoh di bawah ini menunjukkan cara mengatur Aspose.Words untuk melewatkan embedding Arial dan Times New Roman fonts ke dalam dokumen PDF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-SetFontEmbeddingMode.java" >}}

Mode ini paling berguna ketika Anda ingin melihat dokumen Anda di platform yang sama, menjaga penampilan yang tepat dari font dalam output PDF.

{{% alert color="primary" %}}

Pengaturan ini hanya bekerja untuk ANSI (Windows-1252) teks pengkodean. Menulis teks non-ANSI ke PDF membutuhkan font yang sesuai untuk tertanam.

{{% /alert %}}
