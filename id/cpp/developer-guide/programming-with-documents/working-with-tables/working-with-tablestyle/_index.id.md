---
title: Ubah Gaya Tabel di Dokumen Word
second_title: Aspose.Words untuk C++
articleTitle: Terapkan Gaya Tabel
linktitle: Terapkan Gaya Tabel
description: "Pemformatan tabel lanjutan C++. Buat gaya tabel menggunakan C++. Terapkan gaya tabel C++."
type: docs
weight: 80
url: /id/cpp/working-with-tablestyle/
---

Gaya tabel mendefinisikan serangkaian pemformatan yang dapat dengan mudah diterapkan ke tabel. Pemformatan seperti batas, bayangan, perataan, dan font dapat diatur dalam gaya tabel dan diterapkan ke banyak tabel untuk tampilan yang konsisten.

Aspose.Words mendukung penerapan gaya tabel ke tabel dan juga membaca properti gaya tabel apa pun. Gaya tabel dipertahankan selama pemuatan dan penyimpanan dengan cara berikut:

- Gaya tabel dalam format DOCX dan WordML dipertahankan saat memuat dan menyimpan ke format ini
- Gaya tabel dipertahankan saat memuat dan menyimpan dalam format DOC (tetapi tidak ke format lain)
- Saat mengekspor ke format lain, merender, atau mencetak, gaya tabel diperluas ke pemformatan langsung dalam tabel, sehingga semua pemformatan dipertahankan

## Buat Gaya Tabel

Pengguna dapat membuat gaya baru dan menambahkannya ke koleksi gaya. Metode [Add](https://reference.aspose.com/words/cpp/aspose.words/stylecollection/add/) digunakan untuk membuat gaya tabel baru.

Contoh kode berikut menunjukkan cara membuat gaya tabel baru yang ditentukan pengguna:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "create-table-style.h" >}}

## Salin Gaya Tabel yang Ada

Jika perlu, Anda dapat menyalin gaya tabel yang sudah ada di dokumen tertentu ke dalam koleksi gaya Anda menggunakan metode `AddCopy`.

Penting untuk diketahui bahwa dengan penyalinan ini, gaya tertaut juga disalin.

Contoh kode berikut menunjukkan cara mengimpor gaya dari satu dokumen ke dokumen lain:

EXAMPLE

## Terapkan Gaya Tabel yang Ada

Aspose.Words menyediakan [TableStyle](https://reference.aspose.com/words/cpp/aspose.words/tablestyle/) yang diwarisi dari kelas [Style](https://reference.aspose.com/words/cpp/aspose.words/style/). **TableStyle** memudahkan pengguna untuk menerapkan opsi gaya yang berbeda seperti shading, padding, indentasi, [CellSpacing](https://reference.aspose.com/words/cpp/aspose.words/tablestyle/get_cellspacing/) dan [Font](https://reference.aspose.com/words/cpp/aspose.words/style/get_font/), dll.

Selain itu, Aspose.Words menyediakan kelas [StyleCollection](https://reference.aspose.com/words/cpp/aspose.words/stylecollection/) dan beberapa properti dari kelas `Table` untuk menentukan gaya tabel mana yang akan kita kerjakan: [Style](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_style/), [StyleIdentifier](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_styleidentifier/), [StyleName](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_stylename/), dan [StyleOptions](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_styleoptions/).

Aspose.Words juga menyediakan kelas [ConditionalStyle](https://reference.aspose.com/words/cpp/aspose.words/conditionalstyle/) yang mewakili pemformatan khusus yang diterapkan ke beberapa area tabel dengan gaya tabel yang ditetapkan, dan [ConditionalStyleCollection](https://reference.aspose.com/words/cpp/aspose.words/conditionalstylecollection/) yang mewakili kumpulan objek **ConditionalStyle**. Koleksi ini berisi kumpulan item permanen yang mewakili satu item untuk setiap nilai dari tipe enumerasi [ConditionalStyleType](https://reference.aspose.com/words/cpp/aspose.words/conditionalstyletype/). Pencacahan **ConditionalStyleType** mendefinisikan semua area tabel yang memungkinkan pemformatan bersyarat dapat didefinisikan dalam gaya tabel.

Dalam hal ini, pemformatan bersyarat dapat didefinisikan untuk semua kemungkinan area tabel yang didefinisikan di bawah tipe enumerasi ConditionalStyleType.

Contoh kode berikut menunjukkan cara menentukan pemformatan bersyarat untuk baris header tabel:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "define-conditional-formatting.h" >}}

Anda juga dapat memilih bagian tabel mana yang akan menerapkan gaya, seperti kolom pertama, kolom terakhir, baris berpita. Mereka terdaftar dalam pencacahan [TableStyleOptions](https://reference.aspose.com/words/cpp/aspose.words.tables/tablestyleoptions/) dan diterapkan melalui properti [StyleOptions](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_styleoptions/). Pencacahan **TableStyleOptions** memungkinkan kombinasi bitwise dari fitur-fitur ini.

Contoh kode berikut menunjukkan cara membuat tabel baru dengan gaya tabel yang diterapkan:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "build-table-with-style.h" >}}

Gambar-gambar di bawah ini menunjukkan representasi dari **Table Styles** dalam Microsoft Word dan properti yang sesuai dalam Aspose.Words.

![formatting-table-style-aspose-words-cpp](applying-formatting-10.png)

## Ambil Pemformatan dari Gaya Tabel dan Terapkan sebagai Pemformatan Langsung

Aspose.Words juga menyediakan metode [ExpandTableStylesToDirectFormatting](https://reference.aspose.com/words/cpp/aspose.words/document/expandtablestylestodirectformatting/) untuk mengambil pemformatan yang ditemukan pada gaya tabel dan memperluasnya ke baris dan sel tabel sebagai pemformatan langsung. Coba gabungkan pemformatan dengan gaya tabel dan gaya sel.

{{% alert color="primary" %}}

Metode ini tidak akan mengesampingkan pemformatan lain yang sudah diterapkan ke tabel melalui format baris atau sel.

{{% /alert %}}

Contoh kode berikut menunjukkan cara memperluas pemformatan dari gaya ke baris tabel dan sel sebagai pemformatan langsung:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "expand-formatting-on-cells-and-row-from-style.h" >}}