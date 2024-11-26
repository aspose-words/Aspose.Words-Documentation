---
title: Konversikan Dokumen menjadi HTML, MHTML, atau EPUB
second_title: Aspose.Words untuk Java
articleTitle: Konversikan Dokumen menjadi HTML, MHTML, atau EPUB
linktitle: Konversikan Dokumen menjadi HTML, MHTML, atau EPUB
description: "Gunakan Aspose.Words untuk Java untuk mengonversi dokumen dari Word atau format lain yang didukung ke HTML, MHTML, atau EPUB."
type: docs
weight: 20
url: /id/java/convert-a-document-to-html-mhtml-or-epub/
timestamp: 2024-10-21-08-52-03
---

Dokumen dalam format tata letak alur HTML dan MHTML juga sangat populer dan dapat digunakan di platform web apa pun. Oleh karena itu, mengonversi dokumen menjadi HTML dan MHTML merupakan fitur penting dari Aspose.Words.

EPUB (kependekan dari "Publikasi Elektronik" ) adalah format berbasis HTML yang biasa digunakan untuk distribusi buku elektronik. Format ini didukung penuh dalam Aspose.Words untuk mengekspor buku elektronik yang kompatibel dengan sebagian besar perangkat baca.

## Konversikan Dokumen

Untuk konversi sederhana ke HTML, MHTML, atau EPUB, salah satu kelebihan metode [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-int) digunakan. Anda dapat menyimpan dokumen ke file atau aliran dan secara eksplisit mengatur format penyimpanan dokumen keluaran atau mendefinisikannya dari ekstensi nama file.

Contoh berikut menunjukkan cara mengonversi DOCX menjadi HTML dengan menentukan format penyimpanan:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocxToHtml.java" >}}

Untuk mengonversi dokumen menjadi MHTML atau EPUB, gunakan masing-masing `SaveFormat.MHTML` atau `SaveFormat.EPUB`.

## Mengonversi Dokumen dengan Informasi Pulang-pergi

Format HTML tidak mendukung banyak fitur Microsoft Word, dan jika kita perlu mengembalikan model dokumen sedekat mungkin dengan aslinya, kita perlu menyimpan beberapa informasi tambahan di dalam file HTML. Informasi tersebut juga disebut "informasi pulang pergi". Untuk tujuan ini, Aspose.Words menyediakan kemampuan untuk mengekspor informasi pulang pergi saat menyimpan ke HTML, MHTML, atau EPUB menggunakan properti [ExportRoundtripInformation](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportRoundtripInformation). Menyimpan informasi pulang pergi memungkinkan pemulihan properti dokumen seperti tab, komentar, header, dan footer selama memuat dokumen dari format yang terdaftar kembali ke objek **Document**.

Nilai defaultnya adalah **true** untuk HTML dan **false** untuk MHTML dan EPUB:

- Saat **true**, informasi pulang pergi diekspor sebagai - aw - * CSS properti dari elemen HTML yang sesuai
- Ketika **false**, tidak ada informasi bolak-balik yang akan dikeluarkan ke dalam file yang dihasilkan

Contoh kode berikut menunjukkan cara mengekspor informasi pulang pergi saat mengonversi dokumen dari DOCX menjadi HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocumentToHtmlWithRoundtrip.java" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file templat contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Tentukan Opsi Penyimpanan saat Konversi ke HTML

Aspose.Words memungkinkan pengubahan dokumen Word menjadi HTML menggunakan opsi penyimpanan default atau kustom. Beberapa contoh opsi penyimpanan khusus dijelaskan di bawah ini.

### Tentukan Folder untuk Menyimpan Sumber Daya

Menggunakan Aspose.Words kita dapat menentukan folder fisik tempat semua sumber daya, seperti gambar, font, dan CSS eksternal, disimpan saat dokumen dikonversi ke HTML. Secara default, ini adalah string kosong.

Menentukan properti [ResourceFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getResourceFolder) adalah cara paling sederhana untuk mengatur folder tempat semua sumber daya harus ditulis. Kita dapat menggunakan properti individual, seperti [FontsFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getFontsFolder) yang menyimpan font ke folder tertentu dan [ImagesFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getImagesFolder) yang menyimpan gambar ke folder tertentu. Saat jalur relatif ditentukan, **FontsFolder** dan **ImagesFolder** merujuk ke folder tempat kumpulan kode berada, **ResourceFolder** dan [CssStyleSheetFileName](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getCssStyleSheetFileName) merujuk ke folder keluaran tempat dokumen HTML berada.

Dalam contoh ini, **ResourceFolder** menentukan jalur relatif. Jalur ini merujuk ke folder keluaran tempat dokumen HTML disimpan. Nilai properti **ResourceFolderAlias** digunakan untuk membuat URLs untuk semua sumber daya.

Contoh kode berikut menunjukkan cara bekerja dengan properti ini:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ExportResourcesUsingHtmlSaveOptions.java" >}}

Dengan menggunakan properti [ResourceFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getResourceFolderAlias), kita juga dapat menentukan nama folder yang digunakan untuk membuat URIs dari semua sumber daya yang ditulis ke dalam dokumen HTML. Ini adalah cara paling sederhana untuk menentukan bagaimana URIs harus dibuat untuk semua file sumber daya. Informasi yang sama dapat ditentukan untuk gambar dan font secara terpisah masing-masing melalui properti [ImagesFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getImagesFolderAlias) dan [FontsFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getFontsFolderAlias).

Namun, tidak ada properti individual untuk CSS. Perilaku dari **FontsFolder**, **FontsFolderAlias**, **ImagesFolder**, **ImagesFolderAlias** dan properti **CssStyleSheetFileName** tidak berubah. Perhatikan bahwa properti **CssStyleSheetFileName** digunakan untuk menentukan nama folder dan nama file.

- **ResourceFolder** memiliki prioritas lebih rendah daripada folder yang ditentukan melalui **FontsFolder**, **ImagesFolder**, dan **CssStyleSheetFileName**. Jika folder yang ditentukan dalam **ResourceFolder** tidak ada, folder tersebut akan dibuat secara otomatis.
- **ResourceFolderAlias** memiliki prioritas lebih rendah dari **FontsFolderAlias** dan **ImagesFolderAlias**. Jika **ResourceFolderAlias** kosong, nilai properti **ResourceFolder** akan digunakan untuk membuat sumber daya URIs. Jika **ResourceFolderAlias** disetel ke "." (titik), sumber daya URIs hanya akan berisi nama file tanpa menentukan jalur.

### Ekspor Sumber Daya Font Pengkodean Base64

Aspose.Words menyediakan kemampuan untuk menentukan apakah sumber daya font harus disematkan ke dalam HTML dalam penyandian Base64. Untuk melakukan ini, gunakan properti [ExportFontsAsBase64](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportFontsAsBase64) – ini adalah perpanjangan dari properti [ExportFontResources](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportFontResources). Secara default, nilainya adalah **false**, dan font ditulis ke dalam file terpisah. Tetapi jika opsi ini disetel ke **true**, font akan disematkan ke dalam CSS dokumen dalam penyandian Base64. Properti **ExportFontsAsBase64** hanya memengaruhi format HTML dan tidak memengaruhi EPUB dan MHTML.

Contoh kode berikut menunjukkan cara mengekspor font yang disandikan Base64 ke HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ExportFontsAsBase64.java" >}}

## Tentukan Opsi Penyimpanan saat Konversi ke EPUB

Aspose.Words memungkinkan pengubahan dokumen Word menjadi format EPUB menggunakan opsi penyimpanan default atau kustom. Anda dapat menentukan sejumlah opsi dengan meneruskan instance [HtmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/) ke metode [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-com.aspose.words.SaveOptions).

Contoh kode berikut menunjukkan cara mengonversi dokumen Word menjadi EPUB dengan menentukan beberapa opsi penyimpanan khusus:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocumentToEPUB.java" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file templat contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/com/aspose/words/examples/loading_saving/ExportResourcesUsingHtmlSaveOptions/Document.EpubConversion.doc).

{{% /alert %}}

## Lihat Juga

- [Cara mendapatkan informasi pulang pergi saat mendaftar ke HTML](/words/java/custom-styles-used-for-proper-aspose-words-html-roundtrip/)
