---
title: Ubah Gaya Tabel di Dokumen Word
second_title: Aspose.Words untuk .NET
articleTitle: Terapkan Gaya Tabel
linktitle: Terapkan Gaya Tabel
description: "Pemformatan tabel tingkat lanjut C#. Buat gaya tabel menggunakan C#. Terapkan C# gaya tabel."
type: docs
weight: 80
url: /id/net/working-with-tablestyle/
---

Gaya tabel mendefinisikan sekumpulan pemformatan yang dapat dengan mudah diterapkan ke tabel. Pemformatan seperti batas, bayangan, perataan, dan font dapat diatur dalam gaya tabel dan diterapkan ke banyak tabel untuk tampilan yang konsisten.

Aspose.Words mendukung penerapan gaya tabel ke tabel dan juga membaca properti gaya tabel apa pun. Gaya tabel dipertahankan selama pemuatan dan penyimpanan dengan cara berikut:

- Gaya tabel dalam format DOCX dan WordML dipertahankan saat memuat dan menyimpan ke format ini
- Gaya tabel dipertahankan saat memuat dan menyimpan dalam format DOC (tetapi tidak dalam format lain)
- Saat mengekspor ke format lain, rendering atau pencetakan, gaya tabel diperluas ke pemformatan langsung dalam tabel, sehingga semua pemformatan dipertahankan

## Buat Gaya Tabel

Pengguna dapat membuat gaya baru dan menambahkannya ke koleksi gaya. Metode [Add](https://reference.aspose.com/words/net/aspose.words/stylecollection/add/) digunakan untuk membuat style tabel baru.

Contoh kode berikut menunjukkan cara membuat gaya tabel baru yang ditentukan pengguna:

{{< gist "aspose-words-gists" "93b92a7e6f2f4bbfd9177dd7fcecbd8c" "create-table-style.cs" >}}

## Salin Gaya Tabel yang Ada

Jika perlu, Anda dapat menyalin gaya tabel yang sudah ada pada dokumen tertentu ke dalam koleksi gaya Anda menggunakan metode `AddCopy`.

Penting untuk diketahui bahwa dengan penyalinan ini, gaya tertaut juga disalin.

Contoh kode berikut menunjukkan cara mengimpor gaya dari satu dokumen ke dokumen lain:

{{< gist "aspose-words-gists" "93b92a7e6f2f4bbfd9177dd7fcecbd8c" "copy-style-different-document.cs" >}}

## Terapkan Gaya Tabel yang Ada

Aspose.Words menyediakan [TableStyle](https://reference.aspose.com/words/net/aspose.words/tablestyle/) yang diwarisi dari kelas [Style](https://reference.aspose.com/words/net/aspose.words/style/). **TableStyle** memfasilitasi pengguna untuk menerapkan opsi gaya yang berbeda seperti shading, padding, indentation, [CellSpacing](https://reference.aspose.com/words/net/aspose.words/tablestyle/cellspacing/) dan [Font](https://reference.aspose.com/words/net/aspose.words/style/font/), dll.

Selain itu, Aspose.Words menyediakan kelas [StyleCollection](https://reference.aspose.com/words/net/aspose.words/stylecollection/) dan beberapa properti kelas `Table` untuk menentukan gaya tabel mana yang akan kita gunakan: [Style](https://reference.aspose.com/words/net/aspose.words.tables/table/style/), [StyleIdentifier](https://reference.aspose.com/words/net/aspose.words.tables/table/styleidentifier/), [StyleName](https://reference.aspose.com/words/net/aspose.words.tables/table/stylename/), dan [StyleOptions](https://reference.aspose.com/words/net/aspose.words.tables/table/styleoptions/).

Aspose.Words juga menyediakan kelas [ConditionalStyle](https://reference.aspose.com/words/net/aspose.words/conditionalstyle/) yang mewakili pemformatan khusus yang diterapkan pada beberapa area tabel dengan gaya tabel yang ditetapkan, dan [ConditionalStyleCollection](https://reference.aspose.com/words/net/aspose.words/conditionalstylecollection/) yang mewakili kumpulan objek **ConditionalStyle**. Koleksi ini berisi sekumpulan item permanen yang mewakili satu item untuk setiap nilai tipe enumerasi [ConditionalStyleType](https://reference.aspose.com/words/net/aspose.words/conditionalstyletype/). Pencacahan **ConditionalStyleType** mendefinisikan semua kemungkinan area tabel yang pemformatan bersyaratnya dapat ditentukan dalam gaya tabel.

Dalam hal ini, pemformatan bersyarat dapat ditentukan untuk semua kemungkinan area tabel yang ditentukan berdasarkan tipe enumerasi ConditionalStyleType.

Contoh kode berikut menunjukkan cara mendefinisikan pemformatan bersyarat untuk baris header tabel:

{{< gist "aspose-words-gists" "93b92a7e6f2f4bbfd9177dd7fcecbd8c" "define-conditional-formatting.cs" >}}

Anda juga dapat memilih bagian tabel mana yang akan menerapkan gaya, seperti kolom pertama, kolom terakhir, baris berpita. Mereka tercantum dalam enumerasi [TableStyleOptions](https://reference.aspose.com/words/net/aspose.words.tables/tablestyleoptions/) dan diterapkan melalui properti [StyleOptions](https://reference.aspose.com/words/net/aspose.words.tables/table/styleoptions/). Pencacahan **TableStyleOptions** memungkinkan kombinasi bitwise dari fitur-fitur ini.

Contoh kode berikut menunjukkan cara membuat tabel baru dengan menerapkan gaya tabel:

{{< gist "aspose-words-gists" "93b92a7e6f2f4bbfd9177dd7fcecbd8c" "build-table-with-style.cs" >}}

Gambar di bawah menunjukkan representasi **Table Styles** di Microsoft Word dan properti terkaitnya dalam Aspose.Words.

![formatting-table-style-aspose-words-net](/words/net/working-with-tablestyle/applying-formatting-10.png)

## Ambil Pemformatan dari Gaya Tabel dan Terapkan sebagai Pemformatan Langsung

Aspose.Words juga menyediakan metode [ExpandTableStylesToDirectFormatting](https://reference.aspose.com/words/net/aspose.words/document/expandtablestylestodirectformatting/) untuk mengambil pemformatan yang ditemukan pada gaya tabel dan memperluasnya ke baris dan sel tabel sebagai pemformatan langsung. Coba gabungkan pemformatan dengan gaya tabel dan gaya sel.

{{% alert color="primary" %}}

Metode ini tidak akan mengesampingkan pemformatan lain yang sudah diterapkan ke tabel melalui format baris atau sel.

{{% /alert %}}

Contoh kode berikut menunjukkan cara memperluas pemformatan dari gaya ke baris tabel dan sel sebagai pemformatan langsung:

{{< gist "aspose-words-gists" "93b92a7e6f2f4bbfd9177dd7fcecbd8c" "expand-formatting-on-cells-and-row-from-style.cs" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file contoh contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}
