---
title: Bekerja dengan Paragraf di Python
second_title: Aspose.Words untuk Python via .NET
articleTitle: Bekerja dengan Paragraf
linktitle: Bekerja dengan Paragraf
description: "Sisipkan paragraf dan tentukan formatnya dalam dokumen menggunakan Python."
type: docs
weight: 210
url: /id/python-net/working-with-paragraphs/
---

Paragraf adalah sekumpulan karakter yang digabungkan menjadi blok logis dan diakhiri dengan karakter khusus – *pemutusan paragraf*. Di Aspose.Words, sebuah paragraf diwakili oleh kelas [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/).

## Sisipkan Paragraf

Untuk menyisipkan paragraf baru ke dalam dokumen, sebenarnya Anda perlu memasukkan karakter pemisah paragraf ke dalamnya. [DocumentBuilder.writeln](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/writeln/) juga menyisipkan string teks ke dalam dokumen, tetapi selain itu, ia menambahkan jeda paragraf.

Pemformatan font saat ini juga ditentukan oleh properti [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/) dan pemformatan paragraf saat ini ditentukan oleh properti [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/).

Contoh kode berikut menunjukkan cara menyisipkan paragraf ke dalam dokumen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertParagraph.py" >}}

## Format Paragraf

Pemformatan paragraf saat ini diwakili oleh objek [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/) yang dikembalikan oleh properti [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/). Objek ini merangkum berbagai properti pemformatan paragraf yang tersedia dalam Microsoft Word. Anda dapat dengan mudah mengatur ulang pemformatan paragraf ke default ke gaya Normal, rata kiri, tanpa lekukan, tanpa spasi, tanpa batas, dan tanpa bayangan dengan memanggil [clear_formatting](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/clear_formatting/).

Contoh kode berikut menunjukkan cara mengatur pemformatan paragraf:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ParagraphFormatting.py" >}}

## Terapkan Gaya Paragraf

Beberapa objek pemformatan seperti gaya dukungan [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) atau [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/). Satu gaya bawaan atau yang ditentukan pengguna diwakili oleh objek [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) yang berisi properti gaya terkait seperti nama, gaya dasar, format font dan paragraf gaya, dan sebagainya.

Selain itu, objek [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) menyediakan properti [Style.style_identifier](https://reference.aspose.com/words/python-net/aspose.words/style/style_identifier/) yang mengembalikan pengidentifikasi gaya lokal-independen yang diwakili oleh nilai enumerasi [StyleIdentifier](https://reference.aspose.com/words/python-net/aspose.words/styleidentifier/). Intinya adalah nama gaya bawaan di Microsoft Word dilokalkan untuk bahasa berbeda. Dengan menggunakan pengidentifikasi gaya, Anda dapat menemukan gaya yang benar apa pun bahasa dokumennya. Nilai enumerasi sesuai dengan gaya bawaan Microsoft Word seperti Normal, Heading 1, Heading 2 dll. Semua gaya yang ditentukan pengguna diberi nilai [StyleIdentifier.USER](https://reference.aspose.com/words/python-net/aspose.words/styleidentifier/#user)

Contoh kode berikut menunjukkan cara menerapkan gaya paragraf:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ApplyParagraphStyle.py" >}}

## Sisipkan Pemisah Gaya untuk Menempatkan Gaya Paragraf Berbeda

Pemisah gaya dapat ditambahkan ke akhir paragraf menggunakan Ctrl + Alt + Masukkan Pintasan Keyboard ke MS Word. Fitur ini memungkinkan dua gaya paragraf berbeda digunakan dalam satu paragraf cetak logis. Jika Anda ingin beberapa teks dari awal judul tertentu muncul di Daftar Isi tetapi tidak ingin seluruh judul ada di Daftar Isi, Anda dapat menggunakan fitur ini

Contoh kode berikut menunjukkan cara menyisipkan pemisah gaya untuk mengakomodasi gaya paragraf yang berbeda:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-InsertStyleSeparator.py" >}}

## Identifikasi Pemisah Gaya Paragraf

Aspose.Words menyediakan properti publik [break_is_style_separator](https://reference.aspose.com/words/python-net/aspose.words/paragraph/break_is_style_separator/) ke dalam kelas [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) yang memungkinkan mengidentifikasi Paragraf Pemisah Gaya seperti yang ditunjukkan pada contoh di bawah ini:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-GetParagraphStyleSeparator.py" >}}

## Menerapkan Batas dan Bayangan pada Paragraf

Perbatasan diwakili oleh [BorderCollection](https://reference.aspose.com/words/python-net/aspose.words/bordercollection/). Ini adalah kumpulan objek [Border](https://reference.aspose.com/words/python-net/aspose.words/border/) yang diakses berdasarkan indeks atau tipe batas. Tipe perbatasan diwakili oleh enumerasi [BorderType](https://reference.aspose.com/words/python-net/aspose.words/bordertype/). Beberapa nilai enumerasi berlaku untuk beberapa atau hanya satu elemen dokumen. Misalnya, [BorderType.BOTTOM](https://reference.aspose.com/words/python-net/aspose.words/bordertype/#bottom) berlaku untuk sel paragraf atau tabel, sedangkan [BorderType.DIAGONALDOWN](https://reference.aspose.com/words/python-net/aspose.words/bordertype/#diagonaldown) menentukan batas diagonal di sel tabel saja.

Koleksi perbatasan dan masing-masing perbatasan terpisah memiliki atribut serupa seperti warna, gaya garis, lebar garis, jarak dari teks, dan bayangan opsional. Mereka diwakili oleh properti dengan nama yang sama. Anda dapat mencapai tipe perbatasan yang berbeda dengan menggabungkan nilai properti. Selain itu, objek [BorderCollection](https://reference.aspose.com/words/python-net/aspose.words/bordercollection/) dan [Border](https://reference.aspose.com/words/python-net/aspose.words/border/) memungkinkan Anda menyetel ulang nilai ini ke default dengan memanggil metode [Border.clear_formatting](https://reference.aspose.com/words/python-net/aspose.words/border/clear_formatting/).

{{% alert color="primary" %}}

Perhatikan bahwa ketika properti perbatasan diatur ulang ke nilai defaultnya, perbatasan menjadi tidak terlihat.

{{% /alert %}}

Aspose.Words juga memiliki kelas [Shading](https://reference.aspose.com/words/python-net/aspose.words/shading/) yang berisi atribut bayangan untuk elemen dokumen. Anda dapat mengatur tekstur bayangan yang diinginkan dan warna yang diterapkan pada latar belakang dan latar depan elemen.

Tekstur bayangan diatur dengan nilai enumerasi [TextureIndex](https://reference.aspose.com/words/python-net/aspose.words/textureindex/) yang memungkinkan penerapan berbagai pola ke objek [Shading](https://reference.aspose.com/words/python-net/aspose.words/shading/). Misalnya, untuk mengatur warna latar belakang elemen dokumen, gunakan nilai [TextureIndex.TEXTURE_SOLID](https://reference.aspose.com/words/python-net/aspose.words/textureindex/#texture_solid) dan atur warna bayangan latar depan sesuai kebutuhan. Contoh di bawah ini menunjukkan cara menerapkan batas dan bayangan pada paragraf.

Contoh kode berikut menunjukkan cara menerapkan batas dan bayangan pada paragraf:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ApplyBordersAndShadingToParagraph.py" >}}
