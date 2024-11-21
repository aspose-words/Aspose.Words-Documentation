---
title: Bekerja dengan Paragraf di C++
second_title: Aspose.Words untuk C++
articleTitle: Bekerja dengan Paragraf
linktitle: Bekerja dengan Paragraf
description: "Praktik manipulasi simpul paragraf menggunakan C++."
type: docs
weight: 210
url: /id/cpp/working-with-paragraphs/
timestamp: 2024-01-30-16-22-34
---

Paragraf adalah sekumpulan karakter yang digabungkan menjadi blok logis dan diakhiri dengan karakter khusus-a *paragraph break*. Dalam Aspose.Words, sebuah paragraf diwakili oleh kelas [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/).

## Sisipkan Paragraf

Untuk menyisipkan paragraf baru ke dalam dokumen, sebenarnya, Anda perlu menyisipkan karakter pemisah paragraf ke dalamnya. [DocumentBuilder.Writeln](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/writeln/) menyisipkan tidak hanya string teks ke dalam dokumen, tetapi juga menambahkan jeda paragraf.

Pemformatan font saat ini juga ditentukan oleh properti [Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/), dan pemformatan paragraf saat ini ditentukan oleh properti [ParagraphFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_paragraphformat/). Di bagian selanjutnya, kita akan membahas lebih detail tentang pemformatan paragraf.

Contoh kode berikut menunjukkan cara menyisipkan paragraf ke dalam dokumen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cpp" >}}

## Format Paragraf

Pemformatan paragraf saat ini diwakili oleh objek **ParagraphFormat** yang dikembalikan oleh properti **ParagraphFormat**. Objek ini merangkum berbagai properti pemformatan paragraf yang tersedia di Microsoft Word. Anda dapat dengan mudah mengatur ulang pemformatan paragraf ke default ke gaya Normal, rata kiri tanpa lekukan, tanpa spasi, tanpa batas, dan tanpa bayangan dengan memanggil [ClearFormatting](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/clearformatting/).

Contoh kode berikut menunjukkan cara mengatur pemformatan paragraf:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetParagraphFormatting.cpp" >}}

## Menerapkan Gaya Paragraf

Beberapa objek pemformatan seperti Font atau ParagraphFormat mendukung gaya. Satu gaya bawaan atau yang ditentukan pengguna diwakili oleh objek `Style` yang berisi properti gaya yang sesuai seperti nama, gaya dasar, font, dan pemformatan paragraf gaya, dan seterusnya.

Selanjutnya, objek **Style** menyediakan properti [StyleIdentifier](https://reference.aspose.com/words/cpp/aspose.words/style/get_styleidentifier/) yang mengembalikan pengenal gaya lokal-independen yang diwakili oleh nilai enumerasi **StyleIdentifier**. Intinya adalah bahwa nama-nama gaya bawaan dalam Microsoft Word dilokalkan untuk bahasa yang berbeda. Dengan menggunakan pengenal gaya, Anda dapat menemukan gaya yang benar apa pun bahasa dokumennya. Nilai pencacahan sesuai dengan gaya bawaan Microsoft Word seperti *Normal*, *Heading 1*, *Heading 2* dll. Semua gaya yang ditentukan pengguna diberi nilai **StyleIdentifier.User**.

Contoh kode berikut menunjukkan cara menerapkan gaya paragraf:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyParagraphStyle.cpp" >}}

## Sisipkan Pemisah Gaya untuk Meletakkan Gaya Paragraf yang Berbeda

Pemisah gaya dapat ditambahkan ke akhir paragraf menggunakan Pintasan Keyboard Ctrl + Alt + Enter ke dalam Kata MS. Fitur ini memungkinkan dua gaya paragraf berbeda yang digunakan dalam satu paragraf cetak logis. Jika Anda ingin beberapa teks dari awal judul tertentu muncul di Daftar Isi tetapi tidak ingin seluruh judul ada di Daftar Isi, Anda dapat menggunakan fitur ini.

Contoh kode berikut menunjukkan cara menyisipkan pemisah gaya untuk mengakomodasi gaya paragraf yang berbeda:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-InsertStyleSeparator-ParagraphInsertStyleSeparator.cpp" >}}

## Identifikasi Pemisah Gaya Paragraf

` ` Aspose.Words menyediakan properti publik [BreakIsStyleSeparator](https://reference.aspose.com/words/cpp/aspose.words/paragraph/get_breakisstyleseparator/) ke dalam kelas `Paragraph` memungkinkan identifikasi Paragraf Pemisah Gaya seperti yang ditunjukkan pada contoh yang diberikan di bawah ini:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-ParagraphStyleSeparator-ParagraphStyleSeparator.cpp" >}}

## Terapkan Batas dan Bayangan ke Paragraf

Batas dalam Aspose.Words diwakili oleh kelas [BorderCollection](https://reference.aspose.com/words/cpp/aspose.words/bordercollection/) – ini adalah kumpulan objek [Border](https://reference.aspose.com/words/cpp/aspose.words/border/) yang diakses berdasarkan indeks atau tipe batas. Jenis batas diwakili oleh pencacahan `BorderType`. Beberapa nilai pencacahan dapat diterapkan ke beberapa atau hanya satu elemen dokumen. Misalnya, **BorderType.Bottom** berlaku untuk paragraf atau sel tabel, sedangkan **BorderType.DiagonalDown** hanya menentukan batas diagonal dalam sel tabel.

Kumpulan batas dan setiap batas terpisah memiliki atribut serupa seperti warna, gaya garis, lebar garis, jarak dari teks, dan bayangan opsional. Mereka diwakili oleh properti dengan nama yang sama. Anda dapat mencapai jenis batas yang berbeda dengan menggabungkan nilai properti. Selain itu, objek **BorderCollection** dan **Border** memungkinkan Anda menyetel ulang nilai ini ke default dengan memanggil metode [ClearFormatting](https://reference.aspose.com/words/cpp/aspose.words/border/clearformatting/).

{{% alert color="primary" %}}

Perhatikan bahwa ketika properti batas disetel ulang ke nilai defaultnya, batas menjadi tidak terlihat.

{{% /alert %}}

Aspose.Words juga memiliki kelas [Shading](https://reference.aspose.com/words/cpp/aspose.words/shading/) yang berisi atribut bayangan untuk elemen dokumen. Anda dapat mengatur tekstur bayangan yang diinginkan dan warna yang diterapkan pada latar belakang dan latar depan elemen.

Tekstur bayangan diatur dengan nilai enumerasi [TextureIndex](https://reference.aspose.com/words/cpp/aspose.words/textureindex/) yang memungkinkan penerapan berbagai pola ke objek **Shading**. Misalnya, untuk menyetel warna latar belakang untuk elemen dokumen, gunakan nilai [TextureIndex.TextureSolid](https://reference.aspose.com/words/cpp/aspose.words/textureindex/) dan setel warna bayangan latar depan yang sesuai.

Contoh kode berikut menunjukkan cara menerapkan batas dan bayangan ke paragraf:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyBordersAndShadingToParagraph.cpp" >}}
