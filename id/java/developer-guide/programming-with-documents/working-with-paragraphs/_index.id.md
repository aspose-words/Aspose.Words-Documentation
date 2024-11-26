---
title: Bekerja dengan Paragraf dalam Java
second_title: Aspose.Words untuk Java
articleTitle: Bekerja dengan Paragraf
linktitle: Bekerja dengan Paragraf
description: "Praktik manipulasi simpul paragraf menggunakan Java."
type: docs
weight: 210
url: /id/java/working-with-paragraphs/
timestamp: 2024-01-27-14-07-04
---

Paragraf adalah sekumpulan karakter yang digabungkan menjadi blok logis dan diakhiri dengan karakter khusus-a *paragraph break*. Dalam Aspose.Words, sebuah paragraf diwakili oleh kelas [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/).

## Menyisipkan Paragraf

Untuk menyisipkan paragraf baru ke dalam dokumen, sebenarnya, Anda perlu menyisipkan karakter pemisah paragraf ke dalamnya. [DocumentBuilder.Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln) menyisipkan tidak hanya string teks ke dalam dokumen, tetapi juga menambahkan jeda paragraf.

Pemformatan font saat ini juga ditentukan oleh properti [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont), dan pemformatan paragraf saat ini ditentukan oleh properti [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getParagraphFormat). Di bagian selanjutnya, kita akan membahas lebih detail tentang pemformatan paragraf.

Contoh kode berikut menunjukkan cara menyisipkan paragraf ke dalam dokumen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}


## Format Paragraf

Pemformatan paragraf saat ini diwakili oleh objek [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) yang dikembalikan oleh properti [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getParagraphFormat). Objek ini merangkum berbagai properti pemformatan paragraf yang tersedia di Microsoft Word. Anda dapat dengan mudah mengatur ulang pemformatan paragraf ke defaultnya-Gaya normal, rata kiri, tanpa lekukan, tanpa spasi, tanpa batas, tanpa bayangan - dengan memanggil [ClearFormatting](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#clearFormatting).

Contoh kode berikut menunjukkan cara mengatur pemformatan paragraf:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderSetParagraphFormatting.java" >}}

## Menerapkan Gaya Paragraf

Beberapa objek pemformatan seperti Font atau ParagraphFormat mendukung gaya. Satu gaya bawaan atau yang ditentukan pengguna diwakili oleh objek [Style](https://reference.aspose.com/words/java/com.aspose.words/style/) yang berisi properti gaya yang sesuai seperti nama, gaya dasar, font, dan pemformatan paragraf gaya, dan seterusnya.

Selanjutnya, objek **Style** menyediakan properti [StyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/style/#getStyleIdentifier) yang mengembalikan pengenal gaya lokal-independen yang diwakili oleh nilai enumerasi **StyleIdentifier**. Intinya adalah bahwa nama-nama gaya bawaan dalam Microsoft Word dilokalkan untuk bahasa yang berbeda. Dengan menggunakan pengenal gaya, Anda dapat menemukan gaya yang benar apa pun bahasa dokumennya. Nilai pencacahan sesuai dengan gaya bawaan Microsoft Word seperti *Normal*, *Heading 1*, *Heading 2*, dll. Semua gaya yang ditentukan pengguna diberi **StyleIdentifier.User value**.

Contoh kode berikut menunjukkan cara menerapkan gaya paragraf:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyParagraphStyle.java" >}}

## Sisipkan Pemisah Gaya untuk Meletakkan Gaya Paragraf yang Berbeda

Pemisah gaya dapat ditambahkan ke akhir paragraf menggunakan Pintasan Keyboard Ctrl + Alt + Enter menjadi MS Word. Fitur ini memungkinkan dua gaya paragraf berbeda yang digunakan dalam satu paragraf cetak logis. Jika Anda ingin beberapa teks dari awal judul tertentu muncul di Daftar Isi tetapi tidak ingin seluruh judul ada di Daftar Isi, Anda dapat menggunakan fitur ini.

Contoh kode berikut menunjukkan cara menyisipkan pemisah gaya untuk mengakomodasi gaya paragraf yang berbeda:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ParagraphInsertStyleSeparator.java" >}}


## Terapkan Batas dan Bayangan ke Paragraf

Batas dalam Aspose.Words direpresentasikan oleh kelas [BorderCollection](https://reference.aspose.com/words/java/com.aspose.words/bordercollection/) – ini adalah kumpulan objek [Border](https://reference.aspose.com/words/java/com.aspose.words/border/) yang diakses berdasarkan indeks atau jenis batas. Jenis `Border` direpresentasikan oleh enumerasi [BorderType](https://reference.aspose.com/words/java/com.aspose.words/bordertype/). Beberapa nilai enumerasi berlaku untuk beberapa atau hanya satu elemen dokumen. Misalnya, **BorderType.Bottom** berlaku untuk paragraf atau sel tabel sementara **BorderType.DiagonalDown** menentukan batas diagonal hanya dalam sel tabel.

Kumpulan batas dan setiap batas terpisah memiliki atribut serupa seperti warna, gaya garis, lebar garis, jarak dari teks, dan bayangan opsional. Mereka diwakili oleh properti dengan nama yang sama. Anda dapat mencapai jenis batas yang berbeda dengan menggabungkan nilai properti. Selain itu, objek **BorderCollection** dan **Border** memungkinkan Anda menyetel ulang nilai ini ke default dengan memanggil metode [ClearFormatting](https://reference.aspose.com/words/java/com.aspose.words/border/#clearFormatting).

{{% alert color="primary" %}}

Perhatikan bahwa ketika properti batas disetel ulang ke nilai default, batas tersebut tidak terlihat.

{{% /alert %}}

Aspose.Words juga memiliki kelas [Shading](https://reference.aspose.com/words/java/com.aspose.words/shading/) yang berisi atribut bayangan untuk elemen dokumen. Anda dapat mengatur tekstur bayangan yang diinginkan dan warna yang diterapkan pada latar belakang dan latar depan elemen.

Tekstur bayangan diatur dengan nilai enumerasi [TextureIndex](https://reference.aspose.com/words/java/com.aspose.words/textureindex/) yang memungkinkan penerapan berbagai pola ke objek **Shading**. Misalnya, untuk menyetel warna latar belakang untuk elemen dokumen, gunakan nilai `TextureIndex.TextureSolid` dan setel warna bayangan latar depan yang sesuai. Contoh kode yang diberikan di bawah ini menunjukkan cara menerapkan batas dan bayangan pada paragraf.

Contoh kode berikut menunjukkan cara menerapkan batas dan bayangan ke paragraf:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyBordersAndShadingToParagraph.java" >}}
