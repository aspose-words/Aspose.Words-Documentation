---
title: Bekerja dengan Paragraf di Java
second_title: Aspose.Words Sitemap Java
articleTitle: Bekerja dengan Paragraf
linktitle: Bekerja dengan Paragraf
description: "Praktik manipulasi node paragraf menggunakan JavaSitemap"
type: docs
weight: 210
url: /id/java/working-with-paragraphs/
timestamp: 2024-01-27-14-07-04
---

Paragraf adalah set karakter yang dikombinasikan menjadi blok logis dan berakhir dengan karakter khusus - istirahat * paragraf *. Sitemap Aspose.Words, paragraf diwakili oleh [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) Sitemap

## Menyisipkan Paragraf

Untuk memasukkan paragraf baru ke dalam dokumen, pada kenyataannya, Anda perlu memasukkan karakter istirahat paragraf ke dalamnya. [DocumentBuilder.Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln) sisipan tidak hanya string teks ke dalam dokumen, tetapi juga menambahkan istirahat paragraf.

Format font saat ini juga ditentukan oleh [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) properti, dan format paragraf saat ini ditentukan oleh [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getParagraphFormat) Login Di bagian berikutnya, kita akan masuk ke lebih detail tentang format paragraf.

Contoh kode berikut menunjukkan cara memasukkan paragraf ke dalam dokumen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}


## Format Paragraf

Format paragraf saat ini diwakili oleh [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) objek yang dikembalikan oleh [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getParagraphFormat) Login Objek ini merangkum berbagai sifat format paragraf yang tersedia dalam Microsoft WordSitemap Anda dapat dengan mudah mengatur ulang format paragraf ke standarnya - Gaya normal, dilaraskan kiri, tidak ada indentasi, tidak ada jarak, tidak ada perbatasan, tidak ada pengaluran - dengan memanggil [ClearFormatting](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#clearFormatting)Sitemap

Contoh kode berikut menunjukkan cara mengatur format paragraf:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderSetParagraphFormatting.java" >}}

## Menerapkan Gaya Paragraf

Beberapa objek format seperti gaya dukungan Font atau ParagraphFormat. Gaya bawaan atau yang ditentukan pengguna diwakili oleh gaya [Style](https://reference.aspose.com/words/java/com.aspose.words/style/) objek yang mengandung sifat gaya yang sesuai seperti nama, gaya dasar, font dan format paragraf dari gaya, dan sebagainya.

Sitemap **Style** objek memberikan [StyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/style/#getStyleIdentifier) properti yang mengembalikan pengidentifikasi gaya lokal yang diwakili oleh **StyleIdentifier** Nilai numerasi. Titiknya adalah nama gaya built-in di Microsoft Word lokal untuk berbagai bahasa. Menggunakan pengidentifikasi gaya, Anda dapat menemukan gaya yang benar terlepas dari bahasa dokumen. Nilai numerasi sesuai dengan Microsoft Word gaya built-in seperti *Normal*, * Heading 1 *, * Heading 2 *, dll. Semua gaya yang ditentukan pengguna ditugaskan **Login Nilai pengguna**Sitemap

Contoh kode berikut menunjukkan cara menerapkan gaya paragraf:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyParagraphStyle.java" >}}

## Masukkan gaya pemisah untuk menempatkan gaya paragraf yang berbeda

Pemisah gaya dapat ditambahkan ke ujung paragraf menggunakan Ctrl + Alt + Enter Keyboard Shortcut ke MS Word. Fitur ini memungkinkan untuk dua gaya paragraf yang berbeda yang digunakan dalam satu paragraf cetak logis. Jika Anda ingin beberapa teks dari awal judul tertentu muncul di Tabel Konten tetapi tidak ingin seluruh kepala di Tabel Konten, Anda dapat menggunakan fitur ini.

Contoh kode berikut menunjukkan cara memasukkan pemisah gaya untuk mengakomodasi gaya paragraf yang berbeda:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ParagraphInsertStyleSeparator.java" >}}


## Menerapkan Perbatasan dan Shading ke Paragraf

Login Aspose.Words diwakili oleh Meme it [BorderCollection](https://reference.aspose.com/words/java/com.aspose.words/bordercollection/) kelas – ini adalah koleksi [Border](https://reference.aspose.com/words/java/com.aspose.words/border/) objek yang diakses oleh indeks atau dengan tipe perbatasan. Login `Border` tipe diwakili oleh [BorderType](https://reference.aspose.com/words/java/com.aspose.words/bordertype/) Sitemap Beberapa nilai enumerasi berlaku untuk beberapa atau hanya satu elemen dokumen. Sitemap **BorderType.Bottom** berlaku untuk sel paragraf atau meja sementara **BorderType.DiagonalDown** menentukan batas diagonal dalam sel meja saja.

Kedua koleksi perbatasan dan setiap perbatasan terpisah memiliki atribut serupa seperti warna, gaya garis, lebar garis, jarak dari teks, dan bayangan opsional. Mereka diwakili oleh sifat nama yang sama. Anda dapat mencapai berbagai jenis perbatasan dengan menggabungkan nilai properti. Selain itu, keduanya **BorderCollection** Login **Border** objek memungkinkan Anda untuk mengatur ulang nilai-nilai ini secara default dengan memanggil [ClearFormatting](https://reference.aspose.com/words/java/com.aspose.words/border/#clearFormatting) Login

{{% alert color="primary" %}}

Perhatikan bahwa ketika properti perbatasan direset ke nilai default, perbatasan tidak terlihat.

{{% /alert %}}

Aspose.Words juga memiliki Meme it [Shading](https://reference.aspose.com/words/java/com.aspose.words/shading/) kelas mengandung atribut shading untuk elemen dokumen. Anda dapat mengatur tekstur membentuk yang diinginkan dan warna-warna yang diterapkan pada latar belakang dan latar belakang elemen.

Tekstur membentuk diatur dengan [TextureIndex](https://reference.aspose.com/words/java/com.aspose.words/textureindex/) nilai numerasi yang memungkinkan penerapan berbagai pola ke **Shading** Sitemap Misalnya, untuk mengatur warna latar belakang untuk elemen dokumen, gunakan `TextureIndex.TextureSolid` nilai dan set warna pencukur tanah sesuai. Contoh kode yang diberikan di bawah ini menunjukkan cara menerapkan perbatasan dan membentuk paragraf.

Contoh kode berikut menunjukkan cara menerapkan perbatasan dan membentuk paragraf:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyBordersAndShadingToParagraph.java" >}}
