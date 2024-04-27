---
title: Mengkonversi Dokumen ke HTML, MHTML atau EPUB
second_title: Aspose.Words Sitemap Java
articleTitle: Mengkonversi Dokumen ke HTML, MHTML atau EPUB
linktitle: Mengkonversi Dokumen ke HTML, MHTML atau EPUB
description: "Sitemap Aspose.Words Sitemap Java untuk mengonversi dokumen dari Word atau format yang didukung lainnya ke HTML, MHTML, atau EPUB."
type: docs
weight: 20
url: /id/java/convert-a-document-to-html-mhtml-or-epub/
---

Dokumen dalam format aliran HTML dan MHTML juga sangat populer dan dapat digunakan pada platform web apa pun. Untuk alasan itu, mengonversi dokumen ke HTML dan MHTML adalah fitur penting dari Aspose.WordsSitemap

EPUB (pendek untuk "Electronic Publication") adalah format berbasis HTML yang biasa digunakan untuk distribusi buku elektronik. Format ini didukung sepenuhnya Aspose.Words untuk mengekspor buku elektronik yang kompatibel dengan sebagian besar perangkat membaca.

## Konversi Dokumen

Untuk konversi sederhana ke HTML, MHTML, atau EPUB, salah satu [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-int) metode kelebihan beban digunakan. Anda dapat menyimpan dokumen ke file atau aliran dan secara eksplisit mengatur dokumen output menyimpan format atau mendefinisikannya dari ekstensi nama file.

Contoh berikut menunjukkan bagaimana mengkonversi DOCX ke HTML dengan menentukan format simpan:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocxToHtml.java" >}}

Untuk mengonversi dokumen ke MHTML atau EPUB, gunakan `SaveFormat.MHTML` Sitemap `SaveFormat.EPUB` Sitemap

## Konversi Dokumen dengan Informasi Round-trip

Format HTML tidak mendukung banyak Microsoft Word fitur, dan jika kita perlu mengembalikan model dokumen sedekat mungkin, kita perlu menyimpan beberapa informasi tambahan dalam file HTML. Informasi seperti itu juga disebut "inter-trip informasi". Untuk tujuan ini, Aspose.Words menyediakan kemampuan untuk mengekspor informasi round-trip ketika menyimpan ke HTML, MHTML, atau EPUB menggunakan [ExportRoundtripInformation](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportRoundtripInformation) Login Menyimpan informasi round-trip memungkinkan sifat dokumen restoring seperti tab, komentar, header, dan footer selama dokumen pemuatan format yang terdaftar kembali ke dalam sebuah **Document** Sitemap

Nilai default adalah **true** untuk HTML dan **false** MHTML dan EPUB:

- Sitemap **true**, informasi round-trip diekspor sebagai - aw - * Sifat CSS dari elemen HTML yang sesuai
- Sitemap **false**, tidak ada informasi round-trip untuk output ke file yang diproduksi

Contoh kode berikut menunjukkan bagaimana mengekspor informasi round-trip ketika mengkonversi dokumen dari DOCX ke HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocumentToHtmlWithRoundtrip.java" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file template dari contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/com/aspose/words/examples/loading_saving/ConvertDocumentToHtmlWithRoundtrip/Test%20File%20\(doc\)Login

{{% /alert %}}

## Tentukan Simpan Pilihan saat Konversi ke HTML

Aspose.Words memungkinkan mengkonversi dokumen Word ke HTML menggunakan opsi default atau custom save. Beberapa contoh pilihan simpan kustom dijelaskan di bawah ini.

### Tentukan Folder untuk Sumber Daya Tabungan

Sitemap Aspose.Words kita dapat menentukan folder fisik di mana semua sumber daya, seperti gambar, font, dan CSS eksternal, disimpan ketika dokumen dikonversi ke HTML. Secara default, ini adalah string kosong.

Menentukan [ResourceFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getResourceFolder) properti adalah cara paling sederhana untuk mengatur folder di mana semua sumber daya harus ditulis. Kita dapat menggunakan properti individu, seperti [FontsFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getFontsFolder) yang menyimpan font ke folder yang ditentukan dan [ImagesFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getImagesFolder) yang menyimpan gambar ke folder tertentu. Ketika jalan relatif ditentukan, **FontsFolder** Login **ImagesFolder** merujuk pada folder di mana perakitan kode terletak, **ResourceFolder** Login [CssStyleSheetFileName](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getCssStyleSheetFileName) merujuk pada folder output di mana dokumen HTML terletak.

Dalam contoh ini, **ResourceFolder** menentukan jalur relatif. Jalur ini mengacu pada folder output di mana dokumen HTML disimpan. Nilai **ResourceFolderAlias** properti digunakan untuk membuat URL untuk semua sumber daya.

Contoh kode berikut menunjukkan cara bekerja dengan sifat ini:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ExportResourcesUsingHtmlSaveOptions.java" >}}

Menggunakan [ResourceFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getResourceFolderAlias) properti, kita juga dapat menentukan nama folder yang digunakan untuk membangun URI dari semua sumber daya yang ditulis ke dalam dokumen HTML. Ini adalah cara paling sederhana untuk menentukan bagaimana URI harus dihasilkan untuk semua file sumber daya. Informasi yang sama dapat ditentukan untuk gambar dan font secara terpisah melalui [ImagesFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getImagesFolderAlias) Login [FontsFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getFontsFolderAlias) properti, masing-masing.

Namun, tidak ada properti individu untuk CSS. Perilaku **FontsFolder**, **FontsFolderAlias**, **ImagesFolder**, **ImagesFolderAlias** Login **CssStyleSheetFileName** properti tidak berubah. Login **CssStyleSheetFileName** properti digunakan baik untuk menentukan nama folder dan nama file.

- Login **ResourceFolder** memiliki prioritas yang lebih rendah daripada folder yang ditentukan melalui **FontsFolder**, **ImagesFolder**, Login **CssStyleSheetFileName**Sitemap Jika folder yang ditentukan di **ResourceFolder** tidak ada, itu akan dibuat secara otomatis.
- Login **ResourceFolderAlias** memiliki prioritas yang lebih rendah daripada Meme it **FontsFolderAlias** Login **ImagesFolderAlias**Sitemap Sitemap **ResourceFolderAlias** kosong, nilai **ResourceFolder** properti akan digunakan untuk membuat sumber daya URIs. Sitemap **ResourceFolderAlias** diatur ke "." (dot), URI sumber daya hanya akan berisi nama file tanpa menentukan jalan.

### Ekspor Base64 Encoding Fonts Sumber Daya

Aspose.Words memberikan kemampuan untuk menentukan apakah sumber daya font harus tertanam ke dalam pengkodean Base64. Untuk melakukan ini, gunakan [ExportFontsAsBase64](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportFontsAsBase64) properti - ini adalah perpanjangan dari Meme it [ExportFontResources](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportFontResources) Login Secara default, nilainya **false**, dan font ditulis menjadi file terpisah. Tapi jika opsi ini diatur untuk Meme it **true**, font akan tertanam ke dalam CSS dokumen dalam encoding Base64. Login **Datasheet** properti hanya mempengaruhi format HTML dan tidak mempengaruhi EPUB dan MHTML.

Contoh kode berikut menunjukkan cara mengekspor font Base64-encoded ke HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ExportFontsAsBase64.java" >}}

## Tentukan Simpan Pilihan saat Konversi ke EPUB

Aspose.Words memungkinkan mengkonversi dokumen Word ke format EPUB menggunakan opsi default atau custom save. Anda dapat menentukan sejumlah pilihan dengan melewati contoh [HtmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/) Login [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-com.aspose.words.SaveOptions) Login

Contoh kode berikut menunjukkan bagaimana mengkonversi dokumen Word ke EPUB dengan menentukan beberapa opsi simpan kustom:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocumentToEPUB.java" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file template dari contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/com/aspose/words/examples/loading_saving/ExportResourcesUsingHtmlSaveOptions/Document.EpubConversion.doc)Sitemap

{{% /alert %}}

## Lihat Juga

- [Email: info@ids-imaging.com](/words/java/custom-styles-used-for-proper-aspose-words-html-roundtrip/)
