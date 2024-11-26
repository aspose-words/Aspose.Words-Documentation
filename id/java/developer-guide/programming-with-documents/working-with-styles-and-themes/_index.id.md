---
title: Bekerja dengan Gaya dan Tema
second_title: Aspose.Words untuk Java
articleTitle: Bekerja dengan Gaya dan Tema
linktitle: Bekerja dengan Gaya dan Tema
description: "Fitur pemformatan Microsoft Word yang disempurnakan, bekerja dengan gaya dan tema menggunakan Java."
type: docs
weight: 110
url: /id/java/working-with-styles-and-themes/
timestamp: 2024-01-27-14-07-04
---

Kelas [StyleCollection](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) digunakan untuk mengelola bawaan dan menerapkan pengaturan yang ditentukan pengguna ke gaya.

## Cara Mengekstrak Konten Berdasarkan Gaya

Pada tingkat yang sederhana, mengambil konten berdasarkan gaya dari dokumen Word dapat berguna untuk mengidentifikasi, membuat daftar, dan menghitung paragraf dan rangkaian teks yang diformat dengan gaya tertentu. Misalnya, Anda mungkin perlu mengidentifikasi jenis konten tertentu dalam dokumen, seperti contoh, judul, referensi, kata kunci, nama gambar, dan studi kasus.

Untuk melangkah lebih jauh, ini juga dapat digunakan untuk memanfaatkan struktur dokumen, yang ditentukan oleh gaya yang digunakannya, untuk mengarahkan ulang dokumen ke keluaran lain, seperti HTML. Ini sebenarnya bagaimana dokumentasi Aspose dibuat, menguji Aspose.Words. Alat yang dibuat menggunakan Aspose.Words mengambil dokumen Word sumber dan membaginya menjadi topik pada tingkat judul tertentu. File XML dibuat menggunakan Aspose.Words yang digunakan untuk membuat pohon navigasi yang dapat Anda lihat di sebelah kiri. Dan kemudian Aspose.Words mengubah setiap topik menjadi HTML. Solusi untuk mengambil teks yang diformat dengan gaya tertentu dalam dokumen Word biasanya ekonomis dan mudah menggunakan Aspose.Words.

Untuk mengilustrasikan betapa mudahnya Aspose.Words menangani pengambilan konten berdasarkan gaya, mari kita lihat sebuah contoh. Dalam contoh ini, kita akan mengambil teks yang diformat dengan gaya paragraf tertentu dan gaya karakter dari dokumen sample Word.

Pada tingkat tinggi, ini akan melibatkan:

1. Membuka dokumen Word menggunakan kelas [Document](https://reference.aspose.com/words/java/com.aspose.words/document/).
1. Mendapatkan koleksi semua paragraf dan semua proses dalam dokumen.
1. Memilih hanya paragraf dan run yang diperlukan.

Secara khusus, kita akan mengambil teks yang diformat dengan gaya paragraf ' Heading 1' dan gaya karakter 'Penekanan Intens' dari contoh dokumen Word ini.

![working-with-styles-aspose-words-java-1](/words/java/working-with-styles-and-themes/working-with-styles-1.png)

Dalam contoh dokumen ini, teks yang diformat dengan gaya paragraf ' Heading 1' adalah 'Sisipkan Tab',' Gaya Cepat', dan 'Tema', dan teks yang diformat dengan gaya karakter' Penekanan intens 'adalah beberapa contoh warna biru, dicetak miring, teks tebal seperti' galeri 'dan'tampilan keseluruhan'.

Implementasi kueri berbasis gaya cukup sederhana dalam model objek dokumen Aspose.Words, karena hanya menggunakan alat yang sudah ada. Dua metode kelas diimplementasikan untuk solusi ini:

1. **ParagraphsByStyleName** - Metode ini mengambil larik paragraf tersebut dalam dokumen yang memiliki nama gaya tertentu.
1. **RunsByStyleName** - Metode ini mengambil larik yang dijalankan dalam dokumen yang memiliki nama gaya tertentu.

Kedua metode ini sangat mirip, satu-satunya perbedaan adalah tipe node dan representasi informasi gaya di dalam node paragraph dan run. Berikut adalah implementasi dari ParagraphsByStyleName yang ditunjukkan pada contoh kode yang diberikan di bawah ini untuk menemukan semua paragraf yang diformat dengan gaya yang ditentukan.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-paragraphsByStyleName.java" >}}

Implementasi ini juga menggunakan metode [Document.getChildNodes()](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) dari kelas `Document`, yang mengembalikan kumpulan semua node turunan langsung.

Perlu juga ditunjukkan bahwa kumpulan paragraf tidak langsung membuat overhead karena paragraf dimuat ke dalam koleksi ini hanya saat Anda mengakses item di dalamnya.Kemudian, yang perlu Anda lakukan adalah menelusuri koleksi, menggunakan operator foreach standar dan menambahkan paragraf yang memiliki gaya yang ditentukan ke array paragraphsWithStyle. Nama gaya `Paragraph` dapat ditemukan di properti [Style.getName()](https://reference.aspose.com/words/java/com.aspose.words/style/#getName) dari objek [Paragraph.getParagraphFormat()](https://reference.aspose.com/words/java/com.aspose.words/style/#getParagraphFormat).

Implementasi RunsByStyleName hampir sama, meskipun kami jelas menggunakan `NodeType.Run` untuk mengambil node yang dijalankan. Properti [Font.getStyle()](https://reference.aspose.com/words/java/com.aspose.words/font/#getStyle) dari objek [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) digunakan untuk mengakses informasi gaya di simpul **Run**.

Contoh kode berikut menemukan semua proses yang diformat dengan gaya yang ditentukan.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-runsByStyleName.java" >}}

{{% alert color="primary" %}}

Saat kedua kueri diterapkan, yang perlu Anda lakukan hanyalah meneruskan objek dokumen dan menentukan nama gaya konten yang ingin Anda ambil:

{{% /alert %}}

Contoh kode berikut menjalankan kueri dan menampilkan hasil.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-ExtractContentBasedOnStyles.java" >}}

Setelah semuanya selesai, menjalankan sampel akan menampilkan output berikut:

![working-with-styles-aspose-words-java-2](/words/java/working-with-styles-and-themes/working-with-styles-2.png)

Seperti yang Anda lihat, ini adalah contoh yang sangat sederhana, menampilkan jumlah dan teks paragraf yang dikumpulkan dan berjalan dalam dokumen sample Word.

## Sisipkan Pemisah Gaya untuk Meletakkan Gaya Paragraf yang Berbeda

Pemisah gaya dapat ditambahkan ke akhir paragraf menggunakan Pintasan Keyboard Ctrl + Alt + Enter menjadi MS Word. Fitur ini memungkinkan dua gaya paragraf berbeda yang digunakan dalam satu paragraf cetak logis. Jika Anda ingin beberapa teks dari awal judul tertentu muncul di Daftar Isi tetapi tidak ingin seluruh judul ada di Daftar Isi, Anda dapat menggunakan fitur ini.

Contoh kode berikut menunjukkan cara menyisipkan pemisah gaya untuk meletakkan gaya paragraf yang berbeda.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ParagraphInsertStyleSeparator.java" >}}

## Salin Semua Gaya dari Templat

Ada beberapa kasus ketika Anda ingin menyalin semua gaya dari satu dokumen ke dokumen lainnya. Anda dapat menggunakan metode `Document.CopyStylesFromTemplate` untuk menyalin gaya dari templat yang ditentukan ke dokumen. Saat gaya disalin dari templat ke dokumen, gaya dengan nama yang sama dalam dokumen didefinisikan ulang agar sesuai dengan deskripsi gaya di templat. Gaya unik dari templat disalin ke dokumen. Gaya unik dalam dokumen tetap utuh.

Contoh kode berikut menunjukkan cara menyalin gaya dari satu dokumen ke dokumen lainnya.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CopyStylesFromDocument.java" >}}

## Cara Memanipulasi Properti Tema

Kami telah menambahkan API dasar dalam Aspose.Words untuk mengakses properti tema dokumen. Untuk saat ini, API ini menyertakan objek publik berikut:

- Tema
- ThemeFonts
- ThemeColors

Berikut adalah bagaimana Anda bisa mendapatkan properti tema:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Theme-GetThemeProperties-GetThemeProperties.java" >}}

Dan inilah cara Anda dapat mengatur properti tema:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Theme-SetThemeProperties-SetThemeProperties.java" >}}
