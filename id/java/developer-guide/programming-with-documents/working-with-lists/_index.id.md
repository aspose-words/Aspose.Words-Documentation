---
title: Bekerja dengan Daftar dalam Java
second_title: Aspose.Words untuk Java
articleTitle: Bekerja dengan Daftar
linktitle: Bekerja dengan Daftar
description: "Pengantar fitur pemformatan penomoran di Aspose.Words untuk Java."
type: docs
weight: 200
url: /id/java/working-with-lists/
timestamp: 2024-01-27-14-07-04
---

Daftar dalam dokumen Microsoft Word adalah sekumpulan properti pemformatan daftar. Daftar dapat digunakan dalam dokumen Anda untuk memformat, mengatur, dan menekankan teks. Daftar adalah cara yang bagus untuk mengatur data dalam dokumen, dan memudahkan pembaca untuk memahami poin-poin penting.

Setiap daftar dapat memiliki hingga 9 level dan properti pemformatan, seperti gaya angka, nilai awal, indentasi, posisi tab, dan lainnya ditentukan secara terpisah untuk setiap level.

Artikel ini menjelaskan cara bekerja secara terprogram dengan daftar menggunakan Aspose.Words.

## Membuat Daftar dengan Menerapkan Pemformatan Daftar

Aspose.Words memungkinkan pembuatan daftar dengan mudah dengan menerapkan pemformatan daftar. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) menyediakan properti [ListFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getListFormat) yang mengembalikan objek **ListFormat**. Objek ini memiliki beberapa metode untuk memulai dan mengakhiri daftar dan untuk menambah / mengurangi indentasi. Ada dua jenis daftar umum dalam Microsoft Word: berpoin dan bernomor:

- Untuk memulai daftar berpoin, panggil [ListFormat.ApplyBulletDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyBulletDefault)
- Untuk memulai daftar bernomor, panggil [ListFormat.ApplyNumberDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyNumberDefault)

Poin atau angka dan pemformatan ditambahkan ke paragraf saat ini dan semua paragraf selanjutnya dibuat menggunakan **DocumentBuilder** hingga [RemoveNumbers](https://reference.aspose.com/words/java/com.aspose.words/listformat/#removeNumbers) dipanggil untuk menghentikan pemformatan daftar berpoin.

Dalam dokumen Word, daftar dapat terdiri dari hingga sembilan level. Pemformatan daftar untuk setiap level menentukan poin atau angka apa yang digunakan, indentasi kiri, spasi antara poin dan teks, dll. Metode berikut mengubah level daftar dan menerapkan properti pemformatan level baru:

- Untuk meningkatkan level daftar paragraf saat ini sebanyak satu level, panggil [ListFormat.ListIndent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listIndent)
- Untuk mengurangi level daftar paragraf saat ini sebanyak satu level, panggil [ListFormat.ListOutdent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listOutdent)

Metode mengubah level daftar dan menerapkan properti pemformatan level baru.

{{% alert color="primary" %}}

Anda juga dapat menggunakan properti [ListLevelNumber](https://reference.aspose.com/words/java/com.aspose.words/listformat/#getListLevelNumber) untuk mendapatkan atau menyetel level daftar untuk paragraf. Level daftar diberi nomor 0 hingga 8.

{{% /alert %}}

Contoh kode berikut menunjukkan cara membuat daftar bertingkat:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetMultilevelListFormatting-DocumentBuilderSetMultilevelListFormatting.java" >}}

## Tentukan Pemformatan untuk Tingkat Daftar

Objek tingkat daftar dibuat secara otomatis saat daftar dibuat. Gunakan properti dan metode kelas [ListLevel](https://reference.aspose.com/words/java/com.aspose.words/listlevel/) untuk mengontrol pemformatan setiap level daftar.

## Mulai ulang Daftar untuk setiap Bagian

Anda dapat memulai ulang daftar untuk setiap bagian menggunakan properti [IsRestartAtEachSection](https://reference.aspose.com/words/java/com.aspose.words/list/#isRestartAtEachSection). Perhatikan bahwa opsi ini hanya didukung dalam format dokumen RTF, DOC, dan DOCX. Opsi ini akan ditulis ke DOCX hanya jika OoxmlCompliance lebih tinggi dari Ecma376.

Contoh kode berikut menunjukkan cara membuat daftar dan memulai ulang untuk setiap bagian:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Lists-WorkingWithList-SetRestartAtEachSection.java" >}}

