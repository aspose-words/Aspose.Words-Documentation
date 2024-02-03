---
title: Ikhtisar Pembuat Dokumen di C#
second_title: Aspose.Words untuk .NET
articleTitle: Ikhtisar Pembuat Dokumen
linktitle: Ikhtisar Pembuat Dokumen
type: docs
description: "DocumentBuilder memungkinkan Anda membuat dokumen dinamis dari awal atau menambahkan elemen baru ke yang sudah ada menggunakan C#. DocumentBuilder menyediakan metode untuk menyisipkan teks, kotak centang, tabel, gambar, dan elemen konten lainnya di .NET."
weight: 30
url: /id/net/document-builder-overview/
---

[DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) adalah kelas canggih yang dikaitkan dengan [Document](https://reference.aspose.com/words/net/aspose.words/document/) dan memungkinkan Anda membuat dokumen dinamis dari awal atau menambahkan elemen baru ke dokumen yang sudah ada.

**DocumentBuilder** menyediakan metode untuk menyisipkan teks, kotak centang, objek ole, paragraf, daftar, tabel, gambar, dan elemen konten lainnya. Ini memungkinkan Anda menentukan font, format paragraf atau bagian, dan melakukan operasi lainnya.

## Pembuat Dokumen atau Aspose.Words DOM

**DocumentBuilder** melengkapi kelas dan metode yang tersedia di Aspose.Words Document Object Model (DOM) untuk menyederhanakan tugas pembuatan dokumen yang paling umum. Artinya, Anda dapat membuat dan memodifikasi konten dokumen melalui Aspose.Words DOM, yang memerlukan pemahaman yang baik tentang struktur pohon, dan menggunakan DocumentBuilder. `DocumentBuilder` adalah "fasad" untuk struktur **Document** kompleks yang memungkinkan Anda memasukkan konten dan pemformatan dengan cepat dan mudah.

Operasi yang dapat dilakukan dengan **DocumentBuilder** juga dapat dilakukan saat menggunakan kelas Aspose.Words DOM secara langsung. Namun, menggunakan kelas DOM Aspose.Words secara langsung biasanya memerlukan lebih banyak baris kode dibandingkan menggunakan **DocumentBuilder**.

## Navigasi Dokumen

Navigasi dokumen didasarkan pada konsep kursor virtual, yang dengannya Anda dapat berpindah ke lokasi lain dalam dokumen menggunakan berbagai metode **DocumentBuilder.MoveToXXX** seperti [MoveToDocumentStart](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetodocumentstart/) dan [MoveToField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetofield/). Kursor virtual ini menunjukkan di mana teks akan disisipkan saat memanggil metode [Write](https://reference.aspose.com/words/net/aspose.words/documentbuilder/write/), [Writeln](https://reference.aspose.com/words/net/aspose.words/documentbuilder/write/ln/index), [InsertBreak](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertbreak/), dan lainnya. Lihat artikel berikut "Navigasi dengan Kursor" untuk mempelajari lebih lanjut tentang kursor virtual.

Contoh kode berikut menunjukkan cara menavigasi ke bookmark:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmarkEnd.cs" >}}

## Pembuatan dan Modifikasi Dokumen

Aspose.Words API menyediakan beberapa kelas yang bertanggung jawab untuk memformat berbagai elemen dokumen. Masing-masing kelas merangkum properti pemformatan yang terkait dengan elemen dokumen tertentu, seperti teks, paragraf, bagian, dan lain-lain. Misalnya, kelas [Font](https://reference.aspose.com/words/net/aspose.words/font/) mewakili properti pemformatan karakter, kelas [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) mewakili properti pemformatan paragraf, dan seterusnya. Objek dari kelas-kelas ini dikembalikan oleh properti **DocumentBuilder** terkait, yang memiliki nama yang sama dengan kelas-kelas tersebut. Oleh karena itu, Anda dapat mengaksesnya dan mengatur format yang diinginkan selama pembuatan dokumen.

Anda juga dapat menyisipkan teks, kotak centang, objek ole, gambar, bookmark, bidang formulir, dan elemen dokumen lainnya pada posisi kursor menggunakan metode `Write` atau metode **DocumentBuilder.InsertXXX** apa pun, seperti [InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/#insertfield/), [InsertHtml](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserthtml/#inserthtml/), dan metode serupa.

Mari kita lihat cara membuat dokumen sederhana menggunakan **DocumentBuilder**.

### Buat Dokumen menggunakan DocumentBuilder

Untuk memulai, Anda perlu membuat **DocumentBuilder** dan mengaitkannya dengan objek **Document**. Anda membuat instance **DocumentBuilder** baru dengan memanggil konstruktornya dan meneruskannya ke objek **Document** untuk dilampirkan ke pembuatnya.

Untuk menyisipkan teks, teruskan string teks yang perlu Anda masukkan ke dalam dokumen ke metode **Write**.

Contoh kode berikut menunjukkan cara membuat dokumen sederhana menggunakan pembuat dokumen.

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Quick-Start-HelloWorld-HelloWorld.cs" >}}

### Tentukan Pemformatan Dokumen

Properti [Font](https://reference.aspose.com/words/net/aspose.words/documentbuilder/font/) mendefinisikan pemformatan teks. Objek ini berisi atribut font yang berbeda (nama font, ukuran font, warna, dan sebagainya). Beberapa atribut font penting juga diwakili oleh properti **DocumentBuilder** untuk memungkinkan Anda mengaksesnya secara langsung. Ini adalah properti boolean [Font.Bold](https://reference.aspose.com/words/net/aspose.words/font/bold/), [Font.Italic](https://reference.aspose.com/words/net/aspose.words/font/italic/), dan [Font.Underline](https://reference.aspose.com/words/net/aspose.words/font/underline/).

Contoh kode berikut menunjukkan cara menyisipkan teks yang diformat menggunakan **DocumentBuilder**:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cs" >}}

{{% alert color="primary" %}}

- [Font](https://reference.aspose.com/words/net/aspose.words/documentbuilder/font/) menentukan format karakter yang akan diterapkan ke semua teks yang disisipkan dari posisi saat ini dalam dokumen dan seterusnya.
- [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) menentukan format paragraf untuk paragraf saat ini dan semua paragraf yang akan disisipkan.
- [PageSetup](https://reference.aspose.com/words/net/aspose.words/pagesetup/) menentukan properti halaman dan bagian untuk bagian saat ini dan seluruh bagian yang akan disisipkan.
- [CellFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/cellformat/) dan [RowFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/rowformat/) menentukan properti pemformatan yang akan diterapkan ke sel tabel dan baris dari posisi saat ini dalam dokumen dan seterusnya.

Dalam situasi ini, "saat ini" berarti posisi, paragraf, bagian, sel, atau baris di mana kursor berada.

{{% /alert %}}

{{% alert color="primary" %}}

Perhatikan bahwa properti **Font**, **ParagraphFormat**, dan **PageSetup** diperbarui setiap kali Anda menavigasi ke lokasi berbeda dalam dokumen untuk mencerminkan properti pemformatan lokasi ini.

{{% /alert %}}
