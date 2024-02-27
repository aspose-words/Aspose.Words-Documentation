---
title: Ikhtisar Pembuat Dokumen di Python
second_title: Aspose.Words untuk Python via .NET
articleTitle: Ikhtisar Pembuat Dokumen
linktitle: Ikhtisar Pembuat Dokumen
type: docs
description: "DocumentBuilder memungkinkan Anda membuat dokumen dinamis dari awal atau menambahkan elemen baru ke yang sudah ada menggunakan Python. DocumentBuilder menyediakan metode untuk menyisipkan teks, kotak centang, tabel, gambar, dan elemen konten lainnya di Python."
weight: 30
url: /id/python-net/document-builder-overview/
---

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) adalah kelas canggih yang dikaitkan dengan [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) dan memungkinkan Anda membuat dokumen dinamis dari awal atau menambahkan elemen baru ke dokumen yang sudah ada.

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) menyediakan metode untuk menyisipkan teks, kotak centang, objek ole, paragraf, daftar, tabel, gambar, dan elemen konten lainnya. Ini memungkinkan Anda menentukan font, format paragraf atau bagian, dan melakukan operasi lainnya.

## Pembuat Dokumen atau Aspose.Words DOM

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) melengkapi kelas dan metode yang tersedia di Aspose.Words Document Object Model (DOM) untuk menyederhanakan tugas pembuatan dokumen yang paling umum. Artinya, Anda dapat membuat dan memodifikasi konten dokumen melalui Aspose.Words DOM, yang memerlukan pemahaman yang baik tentang struktur pohon, dan menggunakan DocumentBuilder. `DocumentBuilder` adalah "fasad" untuk struktur **Document** kompleks yang memungkinkan Anda memasukkan konten dan pemformatan dengan cepat dan mudah.

Operasi yang dapat dilakukan dengan [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) juga dapat dilakukan saat menggunakan kelas Aspose.Words DOM secara langsung. Namun, menggunakan kelas DOM Aspose.Words secara langsung biasanya memerlukan lebih banyak baris kode dibandingkan menggunakan [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/).

## Navigasi Dokumen

Navigasi dokumen didasarkan pada konsep kursor virtual, yang dengannya Anda dapat berpindah ke lokasi lain dalam dokumen menggunakan berbagai metode **DocumentBuilder.move_to_XXX** seperti [move_to_document_start](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_document_start/) dan [move_to_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_field/). Kursor virtual ini menunjukkan di mana teks akan disisipkan saat memanggil metode [write](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/write/), [writeln](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/writeln/), [insert_break](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_break/), dan lainnya. Lihat artikel berikut "Navigasi dengan Kursor" untuk mempelajari lebih lanjut tentang kursor virtual.

Contoh kode berikut menunjukkan cara menavigasi ke bookmark:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToBookmarkEnd.py" >}}

## Pembuatan dan Modifikasi Dokumen

Aspose.Words API menyediakan beberapa kelas yang bertanggung jawab untuk memformat berbagai elemen dokumen. Masing-masing kelas merangkum properti pemformatan yang terkait dengan elemen dokumen tertentu, seperti teks, paragraf, bagian, dan lain-lain. Misalnya, kelas [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) mewakili properti pemformatan karakter, kelas [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/) mewakili properti pemformatan paragraf, dan seterusnya. Objek dari kelas-kelas ini dikembalikan oleh properti [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) terkait, yang memiliki nama yang sama dengan kelas-kelas tersebut. Oleh karena itu, Anda dapat mengaksesnya dan mengatur format yang diinginkan selama pembuatan dokumen.

Anda juga dapat menyisipkan teks, kotak centang, objek ole, gambar, bookmark, bidang formulir, dan elemen dokumen lainnya pada posisi kursor menggunakan metode `Write` atau metode **DocumentBuilder.insert_XXX** apa pun, seperti [insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/), [insert_html](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_html/), dan metode serupa.

Mari kita lihat cara membuat dokumen sederhana menggunakan [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/).

### Buat Dokumen menggunakan DocumentBuilder

Untuk memulai, Anda perlu membuat [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) dan mengaitkannya dengan objek [Document](https://reference.aspose.com/words/python-net/aspose.words/document/). Anda membuat instance [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) baru dengan memanggil konstruktornya dan meneruskannya ke objek [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) untuk dilampirkan ke pembuatnya.

Untuk menyisipkan teks, teruskan string teks yang perlu Anda masukkan ke dalam dokumen ke metode [write](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/write/).

Contoh kode berikut menunjukkan cara membuat dokumen sederhana menggunakan pembuat dokumen.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToDocumentStartEnd.py" >}}

### Tentukan Pemformatan Dokumen

Properti [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/) mendefinisikan pemformatan teks. Objek ini berisi atribut font yang berbeda (nama font, ukuran font, warna, dan sebagainya). Beberapa atribut font penting juga diwakili oleh properti [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) untuk memungkinkan Anda mengaksesnya secara langsung. Ini adalah properti boolean [Font.bold](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/bold/), [Font.italic](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/italic/), dan [Font.underline](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/underline/).

Contoh kode berikut menunjukkan cara menyisipkan teks yang diformat menggunakan [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertParagraph.py" >}}

{{% alert color="primary" %}}

- [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/) menentukan format karakter yang akan diterapkan ke semua teks yang disisipkan dari posisi saat ini dalam dokumen dan seterusnya.
- [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/) menentukan format paragraf untuk paragraf saat ini dan semua paragraf yang akan disisipkan.
- [page_setup](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/page_setup/) menentukan properti halaman dan bagian untuk bagian saat ini dan seluruh bagian yang akan disisipkan.
- [cell_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/cell_format/) dan [row_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/row_format/) menentukan properti pemformatan yang akan diterapkan ke sel tabel dan baris dari posisi saat ini dalam dokumen dan seterusnya.

Dalam situasi ini, "saat ini" berarti posisi, paragraf, bagian, sel, atau baris di mana kursor berada.

{{% /alert %}}

{{% alert color="primary" %}}

Perhatikan bahwa properti [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/), [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/), dan [page_setup](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/page_setup/) diperbarui setiap kali Anda menavigasi ke lokasi berbeda dalam dokumen untuk mencerminkan properti pemformatan lokasi ini.

{{% /alert %}}
