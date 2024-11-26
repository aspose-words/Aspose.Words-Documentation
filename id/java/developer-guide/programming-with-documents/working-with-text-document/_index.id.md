---
title: Bekerja dengan Dokumen Teks di Java
second_title: Aspose.Words Sitemap Java
articleTitle: Bekerja dengan Dokumen Teks
linktitle: Bekerja dengan Dokumen Teks
description: "Pengolahan dokumen TXT canggih, daftar, BiDi, header / footer, menggunakan JavaSitemap"
type: docs
weight: 430
url: /id/java/working-with-text-document/
timestamp: 2024-01-27-14-07-04
---

Dalam artikel ini, kami akan mempelajari opsi apa yang dapat berguna untuk bekerja dengan dokumen teks melalui Aspose.WordsSitemap Harap dicatat bahwa ini bukan daftar lengkap pilihan yang tersedia, tetapi hanya contoh bekerja dengan beberapa dari mereka.

## Tambahkan Bi-Directional Login

Anda dapat menggunakan [AddBidiMarks](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getAddBidiMarks) properti untuk menentukan apakah untuk menambahkan tanda dua arah sebelum setiap BiDi lari ketika mengekspor dalam format teks biasa. Aspose.Words masukkan Unicode Karakter 'RIGHT-TO-LEFT MARK' (U + 200F) sebelum setiap Bi-directional Run dalam teks. Opsi ini sesuai dengan opsi "Tambahkan tanda dua arah" di dialog MS Word File Konversi ketika Anda mengekspor ke format Teks Biasa. Perhatikan bahwa itu muncul dalam dialog hanya jika ada bahasa pengeditan Arab atau Ibrani ditambahkan dalam MS Word.

Contoh kode berikut menunjukkan cara menggunakan `TxtSaveOptions.AddBidiMarks` Login Nilai default dari properti ini adalah *true* Sitemap

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-AddBidiMarks.java" >}}

## Memperkuat Daftar Item Selama Memuat TXT

Aspose.Words dapat mengimpor item daftar file teks sebagai nomor daftar atau teks biasa dalam model objek dokumennya. Login [DetectNumberingWithWhitespaces](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDetectNumberingWithWhitespaces) properti memungkinkan untuk menentukan bagaimana item daftar nomor diakui ketika dokumen diimpor dari format teks biasa:

* Sitemap Jika opsi ini ditetapkan *true*, ruang putih juga digunakan sebagai nomor daftar delimiters: daftar algoritma pengenalan untuk gaya Arab menghitung (1., 1.1.2.) menggunakan kedua ruang putih dan titik (".") simbol.
* Sitemap Jika opsi ini ditetapkan *false*, algoritma pengenalan daftar mendeteksi paragraf, ketika nomor daftar berakhir dengan baik titik, braket kanan atau simbol peluru (seperti "•", "*", "-" atau "o").

Contoh kode berikut menunjukkan cara menggunakan properti ini:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-DetectNumberingWithWhitespaces.java" >}}

## Menangani Ruang Memimpin dan Trailing selama Memuat TXT

Anda dapat mengontrol cara menangani ruang terkemuka dan trailing selama memuat file TXT. Ruang terkemuka bisa dipangkas, dilestarikan atau dikonversi ke ruang indent dan trailing bisa dipangkas atau dipelihara.

Contoh kode yang diberikan di bawah ini menunjukkan cara memotong ruang terkemuka dan trailing sambil mengimpor file TXT:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-HandleSpacesOptions.java" >}}

## Dokumen Deteksi Arah Teks

Aspose.Words Sitemap [DocumentDirection](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDocumentDirection) properti [TxtLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/) kelas untuk mendeteksi arah teks (RTL / LTR) dalam dokumen. Set properti ini atau mendapatkan petunjuk teks dokumen yang disediakan dalam [DocumentDirection](https://reference.aspose.com/words/java/com.aspose.words/documentdirection/) Sitemap Nilai default di sebelah kanan.

Contoh kode berikut menunjukkan cara mendeteksi arah teks dokumen saat mengimpor file TXT:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-DocumentTextDirection.java" >}}

## Ekspor Header dan Footer dalam File TXT Output

Jika Anda ingin mengekspor header dan footer dalam dokumen TXT output, Anda dapat menggunakan [ExportHeadersFootersMode](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getExportHeadersFootersMode) Login Properti ini menentukan cara header dan footer diekspor ke format teks biasa.

Contoh kode berikut menunjukkan cara mengekspor header dan footer ke format teks biasa:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-ExportHeadersFootersMode.java" >}}

## Daftar Ekspor Indentasi dalam Output TXT

Aspose.Words Sitemap [TxtListIndentation](https://reference.aspose.com/words/java/com.aspose.words/txtlistindentation/) kelas yang memungkinkan menentukan bagaimana tingkat daftar diperiksa sementara mengekspor ke format teks biasa. Saat bekerja [TxtSaveOption](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/), Login [ListIndentation](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getListIndentation) properti disediakan untuk menentukan karakter yang akan digunakan untuk memeriksa tingkat daftar dan menghitung berapa banyak karakter yang digunakan sebagai indentasi per satu tingkat daftar.

Nilai default untuk properti karakter adalah '\0' menunjukkan bahwa tidak ada indentasi. Untuk menghitung properti, nilai default adalah 0 yang berarti tidak ada indentasi.

### Menggunakan Tab Karakter

Contoh kode berikut menunjukkan bagaimana mengekspor tingkat daftar menggunakan karakter tab:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-useTabCharacterPerLevelForListIndentation.java" >}}

### Menggunakan Karakter Ruang

Contoh kode berikut menunjukkan bagaimana mengekspor tingkat daftar menggunakan karakter ruang:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-useSpaceCharacterPerLevelForListIndentation.java" >}}

### Menggunakan Indentasi Default

Contoh kode berikut menunjukkan bagaimana mengekspor tingkat daftar menggunakan indentasi default:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-defaultLevelForListIndentation.java" >}}
