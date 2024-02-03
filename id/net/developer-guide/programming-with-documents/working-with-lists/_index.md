---
title: Bekerja dengan Daftar di C#
second_title: Aspose.Words untuk .NET
articleTitle: Bekerja dengan Daftar
linktitle: Bekerja dengan Daftar
description: "Pengenalan fitur pemformatan penomoran di Aspose.Words untuk .NET."
type: docs
weight: 200
url: /id/net/working-with-lists/
---

Daftar dalam dokumen Microsoft Word adalah sekumpulan properti pemformatan paragraf. Daftar dapat digunakan dalam dokumen untuk menyusun, mengatur, dan menyorot teks. Daftar adalah cara terbaik untuk mengatur data dalam dokumen sedemikian rupa sehingga memudahkan pembaca menyerap dan memahami poin-poin penting.

Setiap daftar dapat memiliki hingga 9 level, dan properti pemformatan seperti gaya angka, nilai awal, indentasi, posisi tab, dan lainnya ditentukan secara terpisah untuk setiap level.

Di Aspose.Words, bekerja dengan daftar diwakili oleh namespace [Lists](https://reference.aspose.com/words/net/aspose.words.lists/). Namun, objek [List](https://reference.aspose.com/words/net/aspose.words.lists/list/) selalu menjadi milik [ListCollection](https://reference.aspose.com/words/net/aspose.words.lists/listcollection/).

Artikel ini menjelaskan cara bekerja dengan daftar secara terprogram menggunakan Aspose.Words.

## Buat Daftar dengan Menerapkan Pemformatan Daftar

Aspose.Words memungkinkan pembuatan daftar dengan mudah dengan menerapkan pemformatan daftar. [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) menyediakan properti [ListFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/listformat/) yang mengembalikan objek **ListFormat**. Objek ini memiliki beberapa metode untuk memulai dan mengakhiri daftar dan untuk menambah/mengurangi indentasi. Ada dua tipe umum daftar di Microsoft Word: berpoin dan bernomor:

- Untuk memulai daftar poin, hubungi [ApplyBulletDefault](https://reference.aspose.com/words/net/aspose.words.lists/listformat/applybulletdefault/)
- Untuk memulai daftar bernomor, hubungi [ApplyNumberDefault](https://reference.aspose.com/words/net/aspose.words.lists/listformat/applynumberdefault/)

Poin atau nomor dan pemformatan ditambahkan ke paragraf saat ini dan semua paragraf selanjutnya dibuat menggunakan **DocumentBuilder** hingga [RemoveNumbers](https://reference.aspose.com/words/net/aspose.words.lists/listformat/removenumbers/) dipanggil untuk menghentikan pemformatan daftar poin.

Dalam dokumen Word, daftar dapat terdiri dari hingga sembilan tingkat. Pemformatan daftar untuk setiap tingkat menentukan poin atau angka apa yang digunakan, indentasi kiri, spasi antara poin dan teks, dll. Metode berikut mengubah tingkat daftar dan menerapkan properti pemformatan tingkat baru:

- Untuk menambah level daftar paragraf saat ini sebanyak satu level, hubungi [ListIndent](https://reference.aspose.com/words/net/aspose.words.lists/listformat/listindent/)
- Untuk mengurangi tingkat daftar paragraf saat ini sebanyak satu tingkat, hubungi [ListOutdent](https://reference.aspose.com/words/net/aspose.words.lists/listformat/listoutdent/)

Anda juga dapat menggunakan properti [ListLevelNumber](https://reference.aspose.com/words/net/aspose.words.lists/listformat/listlevelnumber/) untuk mendapatkan atau mengatur tingkat daftar paragraf.

{{% alert color="primary" %}}

Level daftar diberi nomor 0 hingga 8.

{{% /alert %}}

Contoh kode berikut menunjukkan cara membuat daftar bertingkat:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetMultilevelListFormatting.cs" >}}

## Tentukan Pemformatan untuk Tingkat Daftar

Objek tingkat daftar dibuat secara otomatis saat daftar dibuat. Gunakan properti dan metode kelas [ListLevel](https://reference.aspose.com/words/net/aspose.words.lists/listlevel/) untuk mengontrol pemformatan setiap tingkat daftar.

## Mulai Ulang Daftar untuk setiap Bagian

Anda dapat memulai ulang daftar untuk setiap bagian menggunakan properti [IsRestartAtEachSection](https://reference.aspose.com/words/net/aspose.words.lists/list/isrestartateachsection/). Perhatikan bahwa opsi ini hanya didukung dalam format dokumen RTF, DOC, dan DOCX. Opsi ini akan ditulis ke DOCX hanya jika OoxmlCompliance lebih tinggi dari Ecma376.

Contoh kode berikut menunjukkan cara membuat daftar dan memulai ulang untuk setiap bagian:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-List-WorkingWithList-SetRestartAtEachSection.cs" >}}
