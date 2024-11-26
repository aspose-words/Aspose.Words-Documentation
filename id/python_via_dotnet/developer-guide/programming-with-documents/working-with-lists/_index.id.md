---
title: Bekerja dengan Daftar di Python
second_title: Aspose.Words untuk Python via .NET
articleTitle: Bekerja dengan Daftar
linktitle: Bekerja dengan Daftar
description: "Buat, tentukan pemformatan, dan mulai ulang daftar dalam dokumen menggunakan Python."
type: docs
weight: 200
url: /id/python-net/working-with-lists/
timestamp: 2024-01-27-14-07-04
---

Daftar dalam dokumen Microsoft Word adalah sekumpulan properti pemformatan daftar. Daftar dapat digunakan dalam dokumen Anda untuk memformat, mengatur, dan menekankan teks. Daftar adalah cara terbaik untuk mengatur data dalam dokumen, dan memudahkan pembaca untuk memahami poin-poin penting

Setiap daftar dapat memiliki hingga 9 level dan properti pemformatan, seperti gaya angka, nilai awal, indentasi, posisi tab, dll ditentukan secara terpisah untuk setiap level.

Di Aspose.Words, bekerja dengan daftar diwakili oleh modul [Lists](https://reference.aspose.com/words/python-net/aspose.words.lists/). Namun, objek [List](https://reference.aspose.com/words/python-net/aspose.words.lists/list/) selalu menjadi milik koleksi [ListCollection](https://reference.aspose.com/words/python-net/aspose.words.lists/listcollection/).

Topik ini menjelaskan cara bekerja secara terprogram dengan daftar menggunakan Aspose.Words

## Membuat Daftar dengan Menerapkan Pemformatan Daftar

Aspose.Words memungkinkan pembuatan daftar dengan mudah dengan menerapkan pemformatan daftar. [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) menyediakan properti [DocumentBuilder.list_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/list_format/) yang mengembalikan objek [ListFormat](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/). Objek ini memiliki beberapa metode untuk memulai dan mengakhiri daftar dan untuk menambah/mengurangi indentasi. Ada dua tipe umum daftar di Microsoft Word: berpoin dan bernomor.

- Untuk memulai daftar poin, hubungi [ListFormat.apply_bullet_default](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_bullet_default/).
- Untuk memulai daftar bernomor, hubungi [ListFormat.apply_number_default](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_number_default/).

Poin atau nomor dan pemformatan ditambahkan ke paragraf saat ini dan semua paragraf selanjutnya dibuat menggunakan [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) hingga [ListFormat.remove_numbers](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/remove_numbers/) dipanggil untuk menghentikan pemformatan daftar poin.

Dalam dokumen Word, daftar dapat terdiri dari hingga sembilan tingkat. Pemformatan daftar untuk setiap tingkat menentukan poin atau angka apa yang digunakan, indentasi kiri, spasi antara poin dan teks, dll. Metode berikut mengubah tingkat daftar dan menerapkan properti pemformatan tingkat baru:

- Untuk menambah level daftar paragraf saat ini sebanyak satu level, hubungi [ListFormat.list_indent](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/list_indent/)
- Untuk mengurangi tingkat daftar paragraf saat ini sebanyak satu tingkat, hubungi [ListFormat.list_outdent](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/list_outdent/)

Metode ini mengubah tingkat daftar dan menerapkan properti pemformatan tingkat baru.

{{% alert color="primary" %}}

Anda juga dapat menggunakan properti [ListFormat.list_level_number](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/list_level_number/) untuk mendapatkan atau mengatur tingkat daftar paragraf. Level daftar diberi nomor 0 hingga 8.

{{% /alert %}}

Contoh di bawah ini menunjukkan cara membuat daftar bertingkat.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-MultilevelListFormatting.py" >}}

## Tentukan Pemformatan untuk Tingkat Daftar

Objek tingkat daftar dibuat secara otomatis saat daftar dibuat. Gunakan properti dan metode kelas [ListLevel](https://reference.aspose.com/words/python-net/aspose.words.lists/listlevel/) untuk mengontrol pemformatan setiap tingkat daftar.

## Mulai Ulang Daftar untuk setiap Bagian

Anda dapat memulai ulang daftar untuk setiap bagian menggunakan properti [properti is_restart_at_each_section](https://reference.aspose.com/words/python-net/aspose.words.lists/list/is_restart_at_each_section/). Perhatikan bahwa opsi ini hanya didukung dalam format dokumen RTF, DOC, dan DOCX. Opsi ini akan ditulis ke DOCX hanya jika OoxmlCompliance lebih tinggi dari Ecma376.

Contoh kode berikut menunjukkan cara membuat daftar dan memulai ulang untuk setiap bagian:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_list-RestartListAtEachSection.py" >}}
