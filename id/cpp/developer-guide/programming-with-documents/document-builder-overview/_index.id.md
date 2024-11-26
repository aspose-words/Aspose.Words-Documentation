---
title: Ikhtisar Pembuat Dokumen dalam C++
second_title: Aspose.Words untuk C++
articleTitle: Ikhtisar Pembuat Dokumen
linktitle: Ikhtisar Pembuat Dokumen
type: docs
description: "DocumentBuilder memungkinkan Anda membuat dokumen dinamis dari awal atau menambahkan elemen baru ke elemen yang sudah ada menggunakan C++. DocumentBuilder menyediakan metode untuk menyisipkan teks, kotak centang, tabel, gambar, dan elemen konten lainnya di C++."
weight: 30
url: /id/cpp/document-builder-overview/
timestamp: 2024-01-27-14-07-04
---

[DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) adalah kelas canggih yang berasosiasi dengan [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) dan memungkinkan Anda membuat dokumen dinamis dari awal atau menambahkan elemen baru ke elemen yang sudah ada.

**DocumentBuilder**

## Pembuat Dokumen atau Aspose.Words DOM

**DocumentBuilder**

Operasi yang dimungkinkan dengan **DocumentBuilder** juga dimungkinkan saat menggunakan kelas Aspose.Words DOM secara langsung. Namun, menggunakan kelas Aspose.Words DOM secara langsung biasanya membutuhkan lebih banyak baris kode daripada menggunakan **DocumentBuilder**.

## Navigasi Dokumen

Navigasi dokumen didasarkan pada konsep kursor virtual, yang dengannya Anda dapat berpindah ke lokasi lain dalam dokumen menggunakan berbagai metode **DocumentBuilder.MoveToXXX** seperti [MoveToDocumentStart](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetodocumentstart/) dan [MoveToField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetofield/). Kursor virtual ini menunjukkan di mana teks akan disisipkan saat memanggil metode [Write](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/write/), [Writeln](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/writeln/), [InsertBreak](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertbreak/), dan lainnya.

Contoh kode berikut menunjukkan cara menavigasi ke bookmark:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmarkEnd.cpp" >}}

## Pembuatan dan Modifikasi Dokumen

Aspose.Words API menyediakan beberapa kelas yang bertanggung jawab untuk memformat berbagai elemen dokumen. Masing-masing kelas merangkum properti pemformatan yang terkait dengan elemen dokumen tertentu, seperti teks, paragraf, bagian, dan lainnya. Misalnya, kelas [Font](https://reference.aspose.com/words/cpp/aspose.words/font/) mewakili properti pemformatan karakter, kelas [ParagraphFormat](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/) mewakili properti pemformatan paragraf, dan seterusnya. Objek dari kelas-kelas ini dikembalikan oleh properti **DocumentBuilder** yang sesuai, yang memiliki nama yang sama dengan kelas. Oleh karena itu, Anda dapat mengaksesnya dan mengatur pemformatan yang diinginkan selama pembuatan dokumen.

Anda juga dapat menyisipkan teks, kotak centang, objek ole, gambar, penanda, bidang formulir, dan elemen dokumen lainnya pada posisi kursor menggunakan metode `Write` atau salah satu metode **DocumentBuilder.InsertXXX**, seperti [InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/), [InsertHtml](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/inserthtml/), dan metode serupa.

Mari kita lihat cara membuat dokumen sederhana menggunakan **DocumentBuilder**.

### Buat Dokumen menggunakan DocumentBuilder

Untuk memulai, Anda perlu membuat **DocumentBuilder** dan mengaitkannya dengan objek **Document**. Anda membuat instance baru **DocumentBuilder** dengan memanggil konstruktornya dan meneruskannya ke objek **Document** untuk dilampirkan ke builder.

Untuk menyisipkan teks, teruskan string teks yang perlu Anda sisipkan ke dalam dokumen ke metode **Write**.

Contoh kode berikut menunjukkan cara membuat dokumen sederhana menggunakan pembuat dokumen.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Quick-Start-HelloWorld-HelloWorld.cpp" >}}

### Tentukan Pemformatan Dokumen

Properti [Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/) mendefinisikan pemformatan teks. Objek ini berisi atribut font yang berbeda (nama font, ukuran font, warna, dan sebagainya). Beberapa atribut font penting juga diwakili oleh properti **DocumentBuilder** untuk memungkinkan Anda mengaksesnya secara langsung. Ini adalah properti boolean [Font.Bold](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_bold/), [Font.Italic](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_italic/), dan [Font.Underline](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_underline/).

Contoh kode berikut menunjukkan cara menyisipkan teks berformat menggunakan **DocumentBuilder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cpp" >}}

{{% alert color="primary" %}}

- [Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/) menentukan pemformatan karakter yang akan diterapkan ke semua teks yang disisipkan dari posisi saat ini dalam dokumen dan seterusnya.
- [ParagraphFormat](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/) menentukan pemformatan paragraf untuk paragraf saat ini dan semua paragraf yang akan disisipkan.
- [PageSetup](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/) menentukan properti halaman dan bagian untuk bagian saat ini dan seluruh bagian yang akan disisipkan.
- [CellFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_cellformat/) dan [RowFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_rowformat/) tentukan properti pemformatan yang akan diterapkan ke sel tabel dan baris dari posisi saat ini dalam dokumen dan seterusnya.

Dalam situasi ini, "saat ini" berarti posisi, paragraf, bagian, sel, atau baris tempat kursor berada.

{{% /alert %}}

{{% alert color="primary" %}}

Perhatikan bahwa properti **Font**, **ParagraphFormat**, dan **PageSetup** diperbarui setiap kali Anda menavigasi ke lokasi lain dalam dokumen untuk mencerminkan properti pemformatan lokasi ini.

{{% /alert %}}
