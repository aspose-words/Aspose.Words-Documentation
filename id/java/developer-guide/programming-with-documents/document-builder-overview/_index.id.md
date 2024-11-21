---
title: Pembuat Dokumen Sitemap Java
second_title: Aspose.Words Sitemap Java
articleTitle: Sitemap
linktitle: Sitemap
type: docs
description: "DocumentBuilder memungkinkan Anda untuk membangun dokumen dinamis dari awal atau menambahkan elemen baru ke yang ada. DocumentBuilder menyediakan metode untuk memasukkan teks, kotak centang, tabel, gambar, dan elemen konten lainnya JavaSitemap"
weight: 30
url: /id/java/document-builder-overview/
timestamp: 2024-01-27-14-07-04
---

[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) adalah kelas kuat yang mengasosiasikan dengan [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) dan memungkinkan Anda untuk membangun dokumen dinamis dari awal atau menambahkan elemen baru ke yang ada.

**DocumentBuilder** menyediakan metode untuk memasukkan teks, kotak centang, benda ole, paragraf, daftar, tabel, gambar, dan elemen konten lainnya. Hal ini memungkinkan Anda untuk menentukan font, paragraf atau format bagian, dan melakukan operasi lain.

## Pembuat Dokumen atau Aspose.Words DOM

**DocumentBuilder** melengkapi kelas dan metode yang tersedia di Aspose.Words Document Object Model SitemapDOM) untuk menyederhanakan tugas bangunan dokumen yang paling umum. Itu, Anda dapat membuat dan memodifikasi konten dokumen baik melalui Meme it Aspose.Words DOM, yang membutuhkan pemahaman yang baik dari struktur pohon, dan menggunakan DocumentBuilder. Login `DocumentBuilder` adalah "facade" untuk kompleks **Document** struktur yang memungkinkan Anda untuk dengan cepat dan mudah memasukkan konten dan format.

Operasi yang mungkin dengan **DocumentBuilder** juga mungkin ketika menggunakan kelas Aspose.Words DOM Sitemap Namun, menggunakan Aspose.Words DOM kelas secara langsung biasanya membutuhkan lebih banyak garis kode daripada menggunakan **DocumentBuilder**Sitemap

## Navigasi Dokumen

Navigasi dokumen didasarkan pada konsep kursor virtual, yang dapat Anda pindah ke lokasi lain dalam dokumen menggunakan berbagai **DocumentBuilder.MoveToXXX** metode seperti [MoveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart) Login [MoveToField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToField-com.aspose.words.Field-boolean)Sitemap Kursor virtual ini menunjukkan di mana teks akan dimasukkan ketika memanggil metode [Write](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#write-java.lang.String), [Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln), [InsertBreak](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertBreak-int), dan lainnya. Lihat artikel berikut "Navigasi dengan Cursor" untuk mempelajari lebih lanjut tentang kursor virtual.

Contoh kode berikut menunjukkan cara menavigasi ke bookmark:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmarkEnd-DocumentBuilderMoveToBookmarkEnd.java" >}}

## Bangunan Dokumen dan Pengubahan

Aspose.Words API menyediakan beberapa kelas yang bertanggung jawab untuk memformat berbagai elemen dokumen. Masing-masing kelas menimbulkan sifat pemformatan terkait elemen dokumen tertentu, seperti teks, paragraf, bagian, dan lain-lain. Contohnya, [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) kelas mewakili sifat format karakter, [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) kelas mewakili sifat format paragraf, dan sebagainya. Tujuan dari kelas-kelas ini dikembalikan oleh **DocumentBuilder** properti, yang memiliki nama yang sama dengan kelas. Oleh karena itu, Anda dapat mengaksesnya dan mengatur format yang diinginkan selama pembuatan dokumen.

Anda juga dapat memasukkan teks, kotak centang, objek ole, gambar, bookmark, bidang bentuk, dan elemen dokumen lainnya pada posisi kursor menggunakan `Write` metode atau salah satu dari **DocumentBuilder.InsertXXX** metode, seperti [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean), [InsertHtml](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHtml-java.lang.String), dan metode serupa.

Mari kita lihat bagaimana membuat dokumen sederhana menggunakan Meme it **DocumentBuilder**Sitemap

### Buat Dokumen menggunakan DocumentBuilder

Untuk memulai, Anda perlu membuat **DocumentBuilder** dan mengaitkannya dengan Meme it **Document** Sitemap Anda membuat instance baru **DocumentBuilder** dengan memanggil konstruktor dan lulus ke **Document** objek untuk lampiran ke pembangun.

Untuk memasukkan teks, melewati string teks yang perlu Anda masukkan ke dalam dokumen ke **Write** Login

Contoh kode berikut menunjukkan cara membuat dokumen sederhana menggunakan pembangun dokumen.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-quickstart-HelloWorld-CreateNewDocument.java" >}}

### Tentukan Format Dokumen

Login [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) properti mendefinisikan format teks. Objek ini mengandung atribut font yang berbeda (nama font, ukuran font, warna, dan sebagainya). Beberapa atribut font penting juga diwakili oleh **DocumentBuilder** properti untuk memungkinkan Anda untuk mengaksesnya secara langsung. Ini adalah [Font.Bold](https://reference.aspose.com/words/java/com.aspose.words/font/#getBold), [Font.Italic](https://reference.aspose.com/words/java/com.aspose.words/font/#getItalic), Login [Font.Underline](https://reference.aspose.com/words/java/com.aspose.words/font/#getUnderline) sifat boolean.

Contoh kode berikut menunjukkan cara memasukkan teks yang diformat menggunakan **DocumentBuilder**Sitemap

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}

{{% alert color="primary" %}}

- Login [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) menentukan format karakter yang akan diterapkan pada semua teks yang dimasukkan dari posisi saat ini di dokumen selanjutnya.
- Login [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) menentukan format paragraf untuk saat ini dan semua paragraf untuk dimasukkan.
- Login [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) menentukan properti halaman dan bagian untuk bagian saat ini dan seluruh bagian yang akan dimasukkan.
- Login [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) Login [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) menentukan sifat format yang akan diterapkan pada sel-sel tabel dan baris dari posisi saat ini di dokumen selanjutnya.

Dalam situasi ini, "saat ini" berarti posisi, paragraf, bagian, sel, atau baris di mana kursor.

{{% /alert %}}

{{% alert color="primary" %}}

Login **Font**, **ParagraphFormat**, Login **PageSetup** properti diperbarui setiap kali Anda menavigasi ke lokasi yang berbeda dalam dokumen untuk mencerminkan sifat pemformatan lokasi ini.

{{% /alert %}}
