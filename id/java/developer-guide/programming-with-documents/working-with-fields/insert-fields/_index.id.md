---
title: Masukkan kolom di Java
second_title: Aspose.Words Sitemap Java
articleTitle: Masukkan kolom
linktitle: Masukkan kolom
description: "Cara yang berbeda untuk memasukkan kolom ke dalam dokumen Anda menggunakan JavaSitemap"
type: docs
weight: 20
url: /id/java/insert-fields/
timestamp: 2024-01-27-14-07-04
---

Ada beberapa cara yang berbeda untuk memasukkan kolom ke dalam dokumen:

- Login [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)
- Login [FieldBuilder](https://reference.aspose.com/words/java/com.aspose.words/fieldbuilder/)
- Login [Aspose.Words Document Object Model (DOM)](/words/id/java/aspose-words-document-object-model/)

Dalam artikel ini, kita akan melihat setiap cara secara lebih rinci dan menganalisis cara memasukkan bidang tertentu menggunakan opsi ini.

## Menyisipkan Fields ke dalam Dokumen menggunakan DocumentBuilder

Sitemap Aspose.Words Login [InsertField](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder#insertField(int,boolean)) metode digunakan untuk memasukkan bidang baru ke dalam dokumen. Parameter pertama menerima kode lapangan penuh lapangan untuk dimasukkan. Parameter kedua adalah opsional dan memungkinkan hasil lapangan untuk diatur secara manual. Jika ini tidak disediakan maka lapangan diperbarui secara otomatis. Anda dapat melewati null atau kosong ke parameter ini untuk memasukkan lapangan dengan nilai lapangan kosong. Jika Anda tidak yakin tentang sintaks kode bidang tertentu, buat lapangan di Microsoft Word pertama dan beralih untuk melihat kode lapangan.

{{% alert color="primary" %}}

Jika kode lapangan Anda memiliki parameter yang mengandung ruang maka harus ditutup dalam tanda bicara. Kalau tidak, lapangan di kedua Microsoft Word Login Aspose.Words mungkin tidak bekerja seperti yang diharapkan sebagai parameter yang diobati oleh keduanya sebagaimana ditimbulkan.

{{% /alert %}}

Contoh kode berikut menunjukkan cara memasukkan lapangan merge ke dalam dokumen menggunakan **DocumentBuilder**Sitemap

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-InsertField.java" >}}

Teknik yang sama digunakan untuk memasukkan bidang bersarang dalam bidang lain.

Contoh kode berikut menunjukkan cara memasukkan kolom bersarang dalam bidang lain menggunakan **DocumentBuilder**Sitemap

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertNestedFields-InsertNestedFields.java" >}}

### Tentukan Locale di Tingkat Lapangan

Pengidentifikasi bahasa adalah singkatan numerik internasional standar untuk bahasa di negara atau wilayah geografis. Sitemap Aspose.Words, Anda dapat menentukan Locale di tingkat lapangan menggunakan [LocaleId](https://reference.aspose.com/words/java/com.aspose.words/field/#getLocaleId) properti, yang mendapat atau mengatur ID lokal lapangan.

Contoh kode berikut menunjukkan cara menggunakan opsi ini:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.java" >}}

### Masukkan kolom Untyped/Empty

Jika Anda ingin memasukkan ladang yang tidak terketik / empty ({}) seperti Microsoft Word memungkinkan, Anda dapat menggunakan [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) metode dengan [FieldType.FieldNone](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) parameter. Untuk memasukkan kolom ke dalam dokumen Word, Anda dapat menekan kombinasi kunci "Ctrl + F9".

Contoh kode berikut menunjukkan cara memasukkan kolom kosong ke dalam dokumen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertFieldNone-InsertFieldNone.java" >}}

### Login `COMPARE` Login

Login `COMPARE` bidang membandingkan dua nilai dan mengembalikan nilai numerik 1 jika perbandingan true atau 0 jika perbandingan falseSitemap

Contoh kode berikut menunjukkan cara menambahkan `COMPARE` bidang menggunakan DocumentBuilder:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldCompare.java" >}}

### Login `IF` Login

Login `IF` lapangan dapat digunakan untuk mengevaluasi argumen secara kondisional.

Contoh kode berikut menunjukkan cara menambahkan `IF` bidang menggunakan DocumentBuilder:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldIf.java" >}}

## Menyisipkan Bidang ke dalam Dokumen menggunakan FieldBuilder

Cara alternatif untuk memasukkan kolom di Aspose.Words Sitemap [FieldBuilder](https://reference.aspose.com/words/java/com.aspose.words/fieldbuilder/) Sitemap Ini menyediakan antarmuka fluent untuk menentukan sakelar lapangan dan nilai argumen sebagai teks, node atau bahkan bidang bersarang.

Contoh kode berikut menunjukkan cara memasukkan kolom ke dalam dokumen menggunakan **FieldBuilder**Sitemap

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-FieldBuilder.java" >}}

## Sisipan menggunakan DOM

Anda juga dapat memasukkan berbagai jenis bidang menggunakan [Aspose.Words Document Object Model (DOM)](/words/id/java/aspose-words-document-object-model/)Sitemap Di bagian ini, kita akan melihat beberapa contoh. Meme it

### Login Bidang ke dalam Dokumen menggunakan DOM

`MERGEFIELD` bidang dokumen Word dapat diwakili oleh Meme it [FieldMergeField](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/) Sitemap Anda dapat menggunakan **FieldMergeField** kelas untuk melakukan operasi berikut:

- menentukan nama bidang gabungan
- menentukan format lapangan merge
- tentukan teks yang antara pemisah lapangan dan ujung lapangan gabungan
- tentukan teks yang akan dimasukkan setelah kolom gabungan jika lapangan tidak kosong
- tentukan teks yang akan disisipkan sebelum bidang gabungan jika lapangan tidak kosong

{{% alert color="primary" %}}

Untuk detail lebih lanjut, lihat [FieldMergeField](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/) Login APISitemap

{{% /alert %}}

Contoh kode berikut menunjukkan cara menambahkan `MERGE` kolom menggunakan DOM untuk paragraf dalam dokumen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertMergeFieldUsingDOM-InsertMergeFieldUsingDOM.java" >}}

### Login Mail Merge `ADDRESSBLOCK` ke dalam dokumen menggunakan DOM

Login `ADDRESSBLOCK` lapangan digunakan untuk memasukkan mail merge alamat blok dalam dokumen Word. `ADDRESSBLOCK` bidang dokumen Word dapat diwakili oleh Meme it [FieldAddressBlock](https://reference.aspose.com/words/java/com.aspose.words/fieldaddressblock/) Sitemap Anda dapat menggunakan **FieldAddressBlock** kelas untuk melakukan operasi berikut:

- menentukan apakah untuk memasukkan nama negara/region di lapangan
- menentukan apakah untuk memformat alamat sesuai dengan negara/region penerima sebagaimana ditentukan oleh POST * CODE (Universal Postal Union 2006)
- tentukan nama negara / wilayah yang dikecualikan
- menentukan format nama dan alamat
- menentukan ID bahasa yang digunakan untuk memformat alamat

{{% alert color="primary" %}}

Untuk detail lebih lanjut, lihat [FieldAddressBlock](https://reference.aspose.com/words/java/com.aspose.words/fieldaddressblock/) Login APISitemap

{{% /alert %}}

Contoh kode berikut menunjukkan cara menambahkan Mail Merge `ADDRESSBLOCK` Penggunaan lapangan DOM untuk paragraf dalam dokumen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertMailMergeAddressBlockFieldUsingDOM-InsertMailMergeAddressBlockFieldUsingDOM.java" >}}

### Login `ADVANCE` ke dalam dokumen tanpa menggunakan DocumentBuilder

Login `ADVANCE` lapangan digunakan untuk mengimbangi teks berikutnya dalam garis ke kiri, kanan, atas atau turun. `ADVANCE` bidang dokumen Word dapat diwakili oleh Meme it [FieldAdvance](https://reference.aspose.com/words/java/com.aspose.words/fieldadvance/) Sitemap Anda dapat menggunakan **FieldAdvance** kelas untuk melakukan operasi berikut:

- menentukan jumlah poin dimana teks yang mengikuti lapangan harus dipindahkan secara vertikal dari tepi atas halaman
- menentukan jumlah poin dimana teks yang mengikuti lapangan harus dipindahkan secara horizontal dari tepi kiri kolom, bingkai, atau kotak teks
- menentukan jumlah poin dimana teks yang mengikuti lapangan harus dipindahkan ke kiri, kanan, atas atau turun

{{% alert color="primary" %}}

Untuk detail lebih lanjut, lihat [FieldAdvance](https://reference.aspose.com/words/java/com.aspose.words/fieldadvance/) Login APISitemap

{{% /alert %}}

Contoh kode berikut menunjukkan cara menambahkan `ADVANCE` Penggunaan lapangan DOM untuk paragraf dalam dokumen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldAdvance.java" >}}

### Login `ASK` ke dalam dokumen tanpa menggunakan DocumentBuilder

Login `ASK` lapangan digunakan untuk meminta pengguna teks untuk menetapkan Bookmark dalam dokumen Word. `ASK` bidang dokumen Word dapat diwakili oleh Meme it [FieldAsk](https://reference.aspose.com/words/java/com.aspose.words/fieldask/) Sitemap Anda dapat menggunakan **FieldAsk** kelas untuk melakukan operasi berikut:

- menentukan nama bookmark
- tentukan respons pengguna default (nilai awal yang terkandung di jendela prompt)
- tentukan apakah respons pengguna harus diterima sekali per mail merge Sitemap
- tentukan teks prompt ( judul jendela prompt)

{{% alert color="primary" %}}

Untuk detail lebih lanjut, lihat [FieldAsk](https://reference.aspose.com/words/java/com.aspose.words/fieldask/) Login APISitemap

{{% /alert %}}

Contoh kode berikut menunjukkan cara menambahkan `ASK` Penggunaan lapangan DOM untuk paragraf dalam dokumen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldAsk.java" >}}

### Login `AUTHOR` ke dalam dokumen tanpa menggunakan DocumentBuilder

Login `AUTHOR` bidang digunakan untuk menentukan nama penulis Dokumen dari Meme it `Document` Sitemap `AUTHOR` bidang dokumen Word dapat diwakili oleh Meme it [FieldAuthor](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/) Sitemap Anda dapat menggunakan **FieldAuthor** kelas untuk melakukan operasi berikut:

- menentukan nama penulis dokumen

{{% alert color="primary" %}}

Untuk detail lebih lanjut, lihat [FieldAuthor](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/) Login APISitemap

{{% /alert %}}

Contoh kode berikut menunjukkan cara menambahkan `AUTHOR` Penggunaan lapangan DOM untuk paragraf dalam dokumen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertAuthorField-InsertAuthorField.java" >}}

### Login `INCLUDETEXT` ke dalam dokumen tanpa menggunakan DocumentBuilder

Login `INCLUDETEXT` kolom memasukkan teks dan grafis yang terkandung dalam dokumen yang dinamakan dalam kode lapangan. Anda dapat memasukkan seluruh dokumen atau sebagian dokumen yang disebut dengan bookmark. Bidang ini dalam dokumen Word diwakili oleh INCLUDETEXT. Anda dapat menggunakan [FieldIncludeText](https://reference.aspose.com/words/java/com.aspose.words/fieldincludetext/) kelas untuk melakukan operasi berikut:

- menentukan nama bookmark dari dokumen yang disertakan
- menentukan lokasi dokumen

{{% alert color="primary" %}}

Untuk detail lebih lanjut, lihat [FieldIncludeText](https://reference.aspose.com/words/java/com.aspose.words/fieldincludetext/) Login APISitemap

{{% /alert %}}

Contoh kode berikut menunjukkan cara menambahkan `INCLUDETEXT` kolom menggunakan DOM untuk paragraf dalam dokumen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldIncludeText.java" >}}

### Login `TOA` ke dalam dokumen tanpa menggunakan DocumentBuilder

Login `TOA` (*Table of Authorities*) membangun lapangan dan memasukkan tabel otoritas. Login `TOA` field mengumpulkan entri ditandai dengan `TA` (*Table of Authorities Entry*) bidang. Microsoft Office Word memasukkan `TOA` lapangan ketika Anda klik * Meja Pengarang * di **Tabel Otoritas** Sitemap **References** Login Ketika Anda melihat `TOA` bidang dalam dokumen Anda, sintaks terlihat seperti ini:

{ `TOA` [Switches ] }

{{% alert color="primary" %}}

Untuk detail lebih lanjut, lihat [FieldToa](https://reference.aspose.com/words/java/com.aspose.words/fieldtoa/) Login APISitemap

{{% /alert %}}

Contoh kode berikut menunjukkan cara menambahkan `TOA` kolom menggunakan DOM untuk paragraf dalam dokumen.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertTOAField-InsertTOAField.java" >}}
