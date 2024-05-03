---
title: Bekerja dengan Daftar di Java
second_title: Aspose.Words Sitemap Java
articleTitle: Bekerja dengan Daftar
linktitle: Bekerja dengan Daftar
description: "Pengantar untuk menghitung fitur format dalam Aspose.Words Sitemap JavaSitemap"
type: docs
weight: 200
url: /id/java/working-with-lists/
---

Daftar dalam daftar Microsoft Word dokumen adalah set properti format daftar. Daftar dapat digunakan dalam dokumen Anda untuk format, mengatur, dan menekankan teks. Daftar adalah cara yang bagus untuk mengatur data dalam dokumen, dan mereka memudahkan pembaca untuk memahami poin kunci.

Setiap daftar dapat memiliki hingga 9 tingkat dan memformat properti, seperti gaya nomor, mulai nilai, indent, posisi tab, dan yang lain didefinisikan secara terpisah untuk setiap tingkat.

Artikel ini menjelaskan programmatically bekerja dengan daftar yang menggunakan Aspose.WordsSitemap

## Membuat Daftar dengan Menerapkan Format Daftar

Aspose.Words memungkinkan pembuatan daftar yang mudah dengan menerapkan format daftar. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) Sitemap [ListFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getListFormat) properti yang mengembalikan **ListFormat** Sitemap Objek ini memiliki beberapa metode untuk memulai dan mengakhiri daftar dan untuk meningkatkan / mengurangi indent. Ada dua jenis daftar umum dalam Microsoft Word: buletin dan bernomor:

- Untuk memulai daftar yang dipeluru, panggilan [ListFormat.ApplyBulletDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyBulletDefault)
- Untuk memulai daftar nomor, panggilan [ListFormat.ApplyNumberDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyNumberDefault)

Bullet atau nomor dan format ditambahkan ke paragraf saat ini dan semua paragraf lebih lanjut yang dibuat menggunakan **DocumentBuilder** Sitemap [RemoveNumbers](https://reference.aspose.com/words/java/com.aspose.words/listformat/#removeNumbers) disebut untuk menghentikan format daftar yang dipeluru.

Dalam dokumen Word, daftar dapat terdiri dari hingga sembilan tingkat. Daftar format untuk setiap tingkat menentukan apa peluru atau nomor digunakan, meninggalkan indent, ruang antara peluru dan teks dll. Metode berikut mengubah tingkat daftar dan menerapkan sifat pemformatan tingkat baru:

- Login Untuk meningkatkan tingkat daftar paragraf saat ini dengan satu tingkat, panggilan [ListFormat.ListIndent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listIndent)
- Login Untuk menurunkan tingkat daftar paragraf saat ini dengan satu tingkat, panggilan [ListFormat.ListOutdent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listOutdent)

Metode mengubah tingkat daftar dan menerapkan sifat pemformatan tingkat baru.

{{% alert color="primary" %}}

Anda juga dapat menggunakan [ListLevelNumber](https://reference.aspose.com/words/java/com.aspose.words/listformat/#getListLevelNumber) properti untuk mendapatkan atau mengatur tingkat daftar untuk paragraf. Tingkat daftar dihitung 0 hingga 8.

{{% /alert %}}

Contoh kode berikut menunjukkan cara membangun daftar multilevel:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetMultilevelListFormatting-DocumentBuilderSetMultilevelListFormatting.java" >}}

## Tentukan Format untuk Tingkat Daftar

Daftar objek tingkat dibuat secara otomatis ketika daftar dibuat. Gunakan sifat dan metode [ListLevel](https://reference.aspose.com/words/java/com.aspose.words/listlevel/) kelas untuk mengontrol format tingkat individu dari daftar.

## Daftar Restart untuk setiap Bagian

Anda dapat me-restart daftar untuk setiap bagian menggunakan [IsRestartAtEachSection](https://reference.aspose.com/words/java/com.aspose.words/list/#isRestartAtEachSection) Login Perhatikan bahwa opsi ini didukung hanya dalam format dokumen RTF, DOC dan DOCX. Opsi ini akan ditulis ke DOCX hanya jika OoxmlKomliance lebih tinggi maka Ecma376.

Contoh kode berikut menunjukkan cara membuat daftar dan restart untuk setiap bagian:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Lists-WorkingWithList-SetRestartAtEachSection.java" >}}

