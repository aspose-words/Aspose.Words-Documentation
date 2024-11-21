---
title: Bekerja dengan Paragraf di C#
second_title: Aspose.Words untuk .NET
articleTitle: Bekerja dengan Paragraf
linktitle: Bekerja dengan Paragraf
description: "Masukkan paragraf ke dalam dokumen C#. Atur gaya paragraf di C#. Bekerja dengan pemisah gaya paragraf C#. Memanipulasi simpul paragraf menggunakan C#."
type: docs
weight: 210
url: /id/net/working-with-paragraphs/
timestamp: 2024-01-27-14-07-04
---

Paragraf adalah sekumpulan karakter yang digabungkan menjadi blok logis dan diakhiri dengan karakter khusus – *pemutusan paragraf*. Di Aspose.Words, sebuah paragraf diwakili oleh kelas [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/).

## Sisipkan Paragraf

Untuk menyisipkan paragraf baru ke dalam dokumen, sebenarnya Anda perlu memasukkan karakter pemisah paragraf ke dalamnya. [DocumentBuilder.Writeln](https://reference.aspose.com/words/net/aspose.words/documentbuilder/writeln/) tidak hanya menyisipkan serangkaian teks ke dalam dokumen, tetapi juga menambahkan jeda paragraf.

Pemformatan font saat ini juga ditentukan oleh properti [Font](https://reference.aspose.com/words/net/aspose.words/documentbuilder/font/), dan pemformatan paragraf saat ini ditentukan oleh properti [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/paragraphformat/). Di bagian selanjutnya, kita akan membahas lebih detail tentang pemformatan paragraf.

Contoh kode berikut menunjukkan cara menyisipkan paragraf ke dalam dokumen:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cs" >}}

## Format Paragraf

Pemformatan paragraf saat ini diwakili oleh objek [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) yang dikembalikan oleh properti [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/paragraphformat/). Objek ini merangkum berbagai properti pemformatan paragraf yang tersedia dalam Microsoft Word. Anda dapat dengan mudah mengatur ulang pemformatan paragraf ke default – Gaya normal, rata kiri, tanpa lekukan, tanpa spasi, tanpa batas, tanpa bayangan – dengan memanggil [ClearFormatting](https://reference.aspose.com/words/net/aspose.words/paragraphformat/clearformatting/).

Contoh kode berikut menunjukkan cara mengatur pemformatan paragraf:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetParagraphFormatting.cs" >}}

## Terapkan Gaya Paragraf

Beberapa objek pemformatan, seperti **Font** atau **ParagraphFormat**, mendukung gaya. Satu gaya bawaan atau yang ditentukan pengguna diwakili oleh objek [Style](https://reference.aspose.com/words/net/aspose.words/style/), yang berisi properti gaya yang sesuai seperti nama, gaya dasar, font, format paragraf gaya, dan sebagainya.

Selain itu, objek **Style** memperlihatkan properti [StyleIdentifier](https://reference.aspose.com/words/net/aspose.words/style/styleidentifier/), yang mengembalikan pengidentifikasi gaya lokal-independen yang diwakili oleh nilai enumerasi [StyleIdentifier](https://reference.aspose.com/words/net/aspose.words/styleidentifier/). Faktanya adalah nama gaya bawaan di Microsoft Word dilokalkan untuk bahasa berbeda. Dengan menggunakan pengidentifikasi gaya, Anda dapat menemukan gaya yang benar apa pun bahasa dokumennya. Nilai enumerasi sesuai dengan gaya Microsoft Word bawaan seperti *Normal*, *Heading 1*, *Heading 2* dan seterusnya. Semua gaya yang ditentukan pengguna diatur ke nilai enumerasi **StyleIdentifier.User**.

Contoh kode berikut menunjukkan cara menerapkan gaya paragraf:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyParagraphStyle.cs" >}}

### Sisipkan Pemisah Gaya untuk Menempatkan Gaya Paragraf Berbeda

Pemisah gaya dapat ditambahkan ke akhir paragraf menggunakan pintasan keyboard Ctrl+Alt+Enter di Microsoft Word. Fitur ini memungkinkan Anda menggunakan dua gaya paragraf berbeda dalam paragraf cetak logis yang sama. Jika Anda ingin beberapa teks dari awal judul tertentu muncul di daftar isi, namun tidak ingin keseluruhan judul ditampilkan di daftar isi, Anda dapat menggunakan fungsi ini.

Contoh kode berikut menunjukkan cara menyisipkan pemisah gaya untuk mengakomodasi gaya paragraf yang berbeda:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-InsertStyleSeparator-ParagraphInsertStyleSeparator.cs" >}}

### Identifikasi Pemisah Gaya Paragraf

Aspose.Words mengekspos properti publik [BreakIsStyleSeparator](https://reference.aspose.com/words/net/aspose.words/paragraph/breakisstyleseparator/) pada kelas `Paragraph` untuk mengidentifikasi paragraf dengan pemisah gaya, seperti yang ditunjukkan pada contoh di bawah ini:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-ParagraphStyleSeparator-ParagraphStyleSeparator.cs" >}}

## Menerapkan Batas dan Bayangan pada Paragraf

Perbatasan di Aspose.Words diwakili oleh kelas [BorderCollection](https://reference.aspose.com/words/net/aspose.words/bordercollection/) – ini adalah kumpulan objek [Border](https://reference.aspose.com/words/net/aspose.words/border/) yang diakses berdasarkan indeks atau tipe perbatasan. Tipe perbatasan pada gilirannya diwakili oleh enumerasi [BorderType](https://reference.aspose.com/words/net/aspose.words/bordertype/). Beberapa nilai enumerasi berlaku untuk beberapa atau hanya satu elemen dokumen. Misalnya, **BorderType.Bottom** berlaku untuk sel paragraf atau tabel, sedangkan **BorderType.DiagonalDown** menentukan batas diagonal di sel tabel saja.

Koleksi perbatasan dan masing-masing perbatasan terpisah memiliki atribut serupa seperti warna, gaya garis, lebar garis, jarak dari teks, dan bayangan opsional. Mereka diwakili oleh properti dengan nama yang sama. Anda bisa mendapatkan tipe perbatasan yang berbeda dengan menggabungkan nilai properti. Selain itu, objek **BorderCollection** dan **Border** memungkinkan Anda menyetel ulang nilai ini ke nilai defaultnya dengan memanggil metode [ClearFormatting](https://reference.aspose.com/words/net/aspose.words/border/clearformatting/).

{{% alert color="primary" %}}

Perhatikan bahwa ketika properti perbatasan diatur ulang ke nilai defaultnya, perbatasan menjadi tidak terlihat.

{{% /alert %}}

Aspose.Words juga memiliki kelas [Shading](https://reference.aspose.com/words/net/aspose.words/shading/) yang berisi atribut shading untuk elemen dokumen. Anda dapat mengatur tekstur dan warna bayangan yang diinginkan yang diterapkan pada latar belakang dan latar depan suatu elemen menggunakan nilai enumerasi [TextureIndex](https://reference.aspose.com/words/net/aspose.words/textureindex/). **TextureIndex** juga memungkinkan Anda menerapkan pola berbeda pada objek **Shading**. Misalnya, untuk mengatur warna latar belakang elemen dokumen, gunakan nilai **TextureIndex.TextureSolid** dan atur warna bayangan latar depan sesuai kebutuhan.

Contoh kode berikut menunjukkan cara menerapkan batas dan bayangan pada paragraf:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyBordersAndShadingToParagraph.cs" >}}

## Hitung Baris Paragraf

Jika Anda ingin menghitung jumlah baris dalam paragraf untuk dokumen Word apa pun, contoh kode berikut dapat digunakan:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-CountLinesInParagraphs-CountLinesInParagraph.cs" >}}
