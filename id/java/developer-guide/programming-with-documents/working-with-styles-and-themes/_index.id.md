---
title: Bekerja dengan Gaya dan Tema
second_title: Aspose.Words Sitemap Java
articleTitle: Bekerja dengan Gaya dan Tema
linktitle: Bekerja dengan Gaya dan Tema
description: "Sitemap Microsoft Word fitur format, bekerja dengan gaya dan tema menggunakan JavaSitemap"
type: docs
weight: 110
url: /id/java/working-with-styles-and-themes/
timestamp: 2024-01-27-14-07-04
---

Login [StyleCollection](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) kelas digunakan untuk mengelola pengaturan yang telah ditentukan pengguna untuk gaya.

## Bagaimana cara mengekstrak konten berdasarkan gaya

Pada tingkat sederhana, menarik kembali konten berdasarkan gaya dari dokumen Word dapat berguna untuk mengidentifikasi, daftar dan menghitung paragraf dan menjalankan teks yang diformat dengan gaya tertentu. Misalnya, Anda mungkin perlu mengidentifikasi jenis konten tertentu dalam dokumen, seperti contoh, judul, referensi, kata kunci, nama gambar, dan studi kasus.

Untuk mengambil beberapa langkah lebih lanjut, ini juga dapat digunakan untuk memanfaatkan struktur dokumen, didefinisikan oleh gaya yang digunakan, untuk tujuan ulang dokumen untuk output lain, seperti HTML. Ini sebenarnya bagaimana dokumentasi Aspose dibangun, menempatkan Aspose.Words untuk tes. Alat yang dibangun menggunakan Aspose.Words mengambil dokumen sumber Word dan membaginya menjadi topik pada tingkat judul tertentu. File XML diproduksi menggunakan Aspose.Words yang digunakan untuk membangun pohon navigasi Anda dapat melihat di sebelah kiri. Dan kemudian Aspose.Words mengubah setiap topik menjadi HTML. Solusi untuk menarik kembali teks yang diformat dengan gaya spesifik dalam dokumen Word biasanya ekonomis dan mudah digunakan Aspose.WordsSitemap

Untuk menggambarkan cara dengan mudah Aspose.Words menangani pengambilan konten berdasarkan gaya, mari kita lihat contoh. Dalam contoh ini, kita akan mengambil teks yang diformat dengan gaya paragraf tertentu dan gaya karakter dari dokumen Word sampel.

Pada tingkat tinggi, ini akan melibatkan:

Sitemap Membuka dokumen Word menggunakan [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) Sitemap
Sitemap Mendapatkan koleksi semua paragraf dan semua berjalan dalam dokumen.
Sitemap Memilih hanya paragraf yang diperlukan dan berjalan.

Secara khusus, kami akan mengambil teks yang diformat dengan gaya paragraf 'Kepala 1' dan gaya karakter 'Intense Emphasis' dari dokumen Word sampel ini

![working-with-styles-aspose-words-java-1](/words/java/working-with-styles-and-themes/working-with-styles-1.png)

Dalam dokumen sampel ini, teks yang diformat dengan gaya paragraf 'Insert Tab', 'Quick Styles' dan 'Theme', dan teks yang diformat dengan gaya karakter 'Intense penekanan' adalah beberapa kasus biru, italicized, teks tebal seperti 'galleries' dan 'overall look'.

Pelaksanaan query berbasis gaya cukup sederhana dalam Aspose.Words model objek dokumen, karena hanya menggunakan alat yang sudah ada di tempat. Dua metode kelas diterapkan untuk solusi ini:

Sitemap **ParagraphsByStyleName** Sitemap Metode ini mengambil array paragraf di dokumen yang memiliki nama gaya tertentu.
Sitemap **RunsByStyleName** Sitemap Metode ini mengambil array dari mereka yang berjalan dalam dokumen yang memiliki nama gaya tertentu.

Kedua metode ini sangat mirip, satu-satunya perbedaan menjadi jenis node dan representasi informasi gaya dalam paragraf dan menjalankan node. Berikut adalah implementasi ParagrafByStyleName yang ditunjukkan dalam contoh kode yang diberikan di bawah ini untuk menemukan semua paragraf yang diformat dengan gaya yang ditentukan.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-paragraphsByStyleName.java" >}}

Implementasi ini juga menggunakan [Document.getChildNodes()](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) metode `Document` kelas, yang mengembalikan koleksi semua node anak langsung.

Ini juga layak menunjukkan bahwa koleksi paragraf tidak membuat overhead segera karena paragraf dimuat ke dalam koleksi ini hanya ketika Anda mengakses item di dalamnya. Kemudian, semua yang perlu Anda lakukan adalah untuk pergi melalui koleksi, menggunakan operator foreach standar dan menambahkan paragraf yang memiliki gaya yang ditentukan untuk paragraf Dengan style array. Login `Paragraph` nama gaya dapat ditemukan di Meme it [Style.getName()](https://reference.aspose.com/words/java/com.aspose.words/style/#getName) properti [Paragraph.getParagraphFormat()](https://reference.aspose.com/words/java/com.aspose.words/style/#getParagraphFormat) Sitemap

Pelaksanaan RunsByStyleName hampir sama, meskipun kita jelas menggunakan `NodeType.Run` untuk mengambil run node. Login [Font.getStyle()](https://reference.aspose.com/words/java/com.aspose.words/font/#getStyle) properti [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) objek digunakan untuk mengakses informasi gaya di **Run** Login

Contoh kode berikut menemukan semua berjalan diformat dengan gaya yang ditentukan.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-runsByStyleName.java" >}}

{{% alert color="primary" %}}

Ketika kedua pertanyaan diterapkan, semua yang perlu Anda lakukan adalah untuk melewati objek dokumen dan menentukan nama gaya konten yang ingin Anda ambil:

{{% /alert %}}

Contoh kode berikut menjalankan pertanyaan dan hasil tampilan.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-ExtractContentBasedOnStyles.java" >}}

Ketika semuanya dilakukan, menjalankan sampel akan menampilkan output berikut:

![working-with-styles-aspose-words-java-2](/words/java/working-with-styles-and-themes/working-with-styles-2.png)

Seperti yang Anda lihat, ini adalah contoh yang sangat sederhana, menunjukkan jumlah dan teks paragraf yang dikumpulkan dan berjalan dalam dokumen Word sampel.

## Masukkan gaya pemisah untuk menempatkan gaya paragraf yang berbeda

Pemisah gaya dapat ditambahkan ke ujung paragraf menggunakan Ctrl + Alt + Enter Keyboard Shortcut ke MS Word. Fitur ini memungkinkan untuk dua gaya paragraf yang berbeda yang digunakan dalam satu paragraf cetak logis. Jika Anda ingin beberapa teks dari awal judul tertentu muncul di Tabel Konten tetapi tidak ingin seluruh kepala di Tabel Konten, Anda dapat menggunakan fitur ini

Contoh kode berikut menunjukkan cara memasukkan pemisah gaya untuk menempatkan gaya paragraf yang berbeda

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ParagraphInsertStyleSeparator.java" >}}

## Salin Semua Gaya dari Template

Ada kasus ketika Anda ingin menyalin semua gaya dari satu dokumen ke dokumen lain. Anda dapat menggunakan `Document.CopyStylesFromTemplate` metode untuk menyalin gaya dari template yang ditentukan ke dokumen. Ketika gaya disalin dari template ke dokumen, gaya seperti dinamik dalam dokumen ditentukan untuk mencocokkan deskripsi gaya dalam template. Gaya unik dari template disalin ke dokumen. Gaya unik dalam dokumen tetap utuh

Contoh kode berikut menunjukkan cara menyalin gaya dari satu dokumen ke dokumen lain.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CopyStylesFromDocument.java" >}}

## Cara Manipulat Properti Tema

Kami telah menambahkan dasar API Sitemap Aspose.Words untuk mengakses properti tema dokumen. Sekarang, ini API termasuk objek publik berikut:

- Login Login
- Login
- Login

Berikut adalah bagaimana Anda bisa mendapatkan properti tema:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Theme-GetThemeProperties-GetThemeProperties.java" >}}

Dan di sini adalah bagaimana Anda dapat mengatur properti tema:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Theme-SetThemeProperties-SetThemeProperties.java" >}}
