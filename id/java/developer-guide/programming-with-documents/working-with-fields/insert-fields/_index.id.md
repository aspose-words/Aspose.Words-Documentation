---
title: Sisipkan Bidang dalam Java
second_title: Aspose.Words untuk Java
articleTitle: Sisipkan Bidang
linktitle: Sisipkan Bidang
description: "Berbagai cara untuk menyisipkan bidang ke dalam dokumen Anda menggunakan Java."
type: docs
weight: 20
url: /id/java/insert-fields/
timestamp: 2024-01-27-14-07-04
---

Ada beberapa cara berbeda untuk menyisipkan bidang ke dalam dokumen:

- menggunakan [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)
- menggunakan [FieldBuilder](https://reference.aspose.com/words/java/com.aspose.words/fieldbuilder/)
- menggunakan [Aspose.Words Model Objek Dokumen (DOM)](/words/java/aspose-words-document-object-model/)

Pada artikel ini, kita akan melihat setiap cara secara lebih rinci dan menganalisis cara menyisipkan bidang tertentu menggunakan opsi ini.

## Menyisipkan Bidang ke dalam Dokumen menggunakan DocumentBuilder

Dalam Aspose.Words metode [InsertField](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder#insertField(int,boolean)) digunakan untuk menyisipkan bidang baru ke dalam dokumen. Parameter pertama menerima kode bidang lengkap dari bidang yang akan disisipkan. Parameter kedua bersifat opsional dan memungkinkan hasil bidang bidang diatur secara manual. Jika ini tidak disediakan maka bidang diperbarui secara otomatis. Anda dapat meneruskan null atau empty ke parameter ini untuk menyisipkan bidang dengan nilai bidang kosong. Jika Anda tidak yakin tentang sintaks kode bidang tertentu, buat bidang dalam Microsoft Word terlebih dahulu dan alihkan untuk melihat kode bidangnya.

{{% alert color="primary" %}}

Jika kode bidang Anda memiliki parameter yang berisi spasi, maka kode tersebut harus diapit dalam tanda ucapan. Jika tidak, bidang di Microsoft Word dan Aspose.Words mungkin tidak berfungsi seperti yang diharapkan karena parameter diperlakukan oleh keduanya sebagai terpotong.

{{% /alert %}}

Contoh kode berikut menunjukkan cara menyisipkan bidang gabungan ke dalam dokumen menggunakan **DocumentBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-InsertField.java" >}}

Teknik yang sama digunakan untuk menyisipkan bidang yang bersarang di dalam bidang lain.

Contoh kode berikut menunjukkan cara menyisipkan bidang yang bersarang di dalam bidang lain menggunakan **DocumentBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertNestedFields-InsertNestedFields.java" >}}

### Tentukan Lokal di Tingkat Bidang

Pengenal bahasa adalah singkatan angka internasional standar untuk bahasa di suatu negara atau wilayah geografis. Dengan Aspose.Words, Anda dapat menentukan Lokal di tingkat bidang menggunakan properti [LocaleId](https://reference.aspose.com/words/java/com.aspose.words/field/#getLocaleId), yang mendapatkan atau menyetel lokal bidang ID.

Contoh kode berikut menunjukkan cara menggunakan opsi ini:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.java" >}}

### Sisipkan Bidang yang Tidak Diketik / Kosong

Jika Anda ingin menyisipkan bidang yang tidak diketik / kosong ({}) seperti yang diizinkan oleh Microsoft Word, Anda dapat menggunakan metode [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) dengan parameter [FieldType.FieldNone](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/). Untuk menyisipkan bidang ke dalam dokumen Word, Anda dapat menekan kombinasi tombol "Ctrl + F9".

Contoh kode berikut menunjukkan cara menyisipkan bidang kosong ke dalam dokumen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertFieldNone-InsertFieldNone.java" >}}

### Sisipkan Bidang `COMPARE`

Bidang `COMPARE` membandingkan dua nilai dan mengembalikan nilai numerik 1 jika perbandingannya benar atau 0 jika perbandingannya salah.

Contoh kode berikut menunjukkan cara menambahkan kolom `COMPARE` menggunakan DocumentBuilder:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldCompare.java" >}}

### Sisipkan Bidang `IF`

Bidang `IF` dapat digunakan untuk mengevaluasi argumen secara kondisional.

Contoh kode berikut menunjukkan cara menambahkan kolom `IF` menggunakan DocumentBuilder:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldIf.java" >}}

## Menyisipkan Bidang ke dalam Dokumen menggunakan FieldBuilder

Cara alternatif untuk menyisipkan bidang dalam Aspose.Words adalah kelas [FieldBuilder](https://reference.aspose.com/words/java/com.aspose.words/fieldbuilder/). Ini menyediakan antarmuka yang lancar untuk menentukan sakelar bidang dan nilai argumen sebagai teks, simpul, atau bahkan bidang bersarang.

Contoh kode berikut menunjukkan cara menyisipkan bidang ke dalam dokumen menggunakan **FieldBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-FieldBuilder.java" >}}

## Menyisipkan Kolom menggunakan DOM

Anda juga dapat menyisipkan berbagai jenis bidang menggunakan [Aspose.Words Model Objek Dokumen (DOM)](/words/java/aspose-words-document-object-model/). Pada bagian ini, kita akan melihat beberapa contoh.

### Menyisipkan Bidang Gabungan ke dalam Dokumen menggunakan DOM

`MERGEFIELD` field in Word document can be represented by the [FieldMergeField](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/) class. You can use **FieldMergeField** class to perform the following operations:

- tentukan nama bidang penggabungan
- tentukan pemformatan bidang penggabungan
- tentukan teks yang berada di antara pemisah bidang dan akhir bidang dari bidang gabungan
- tentukan teks yang akan disisipkan setelah bidang gabungan jika bidang tidak kosong
- tentukan teks yang akan disisipkan sebelum bidang gabungan jika bidang tidak kosong

{{% alert color="primary" %}}

Untuk detail selengkapnya, lihat kelas [FieldMergeField](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/) API.

{{% /alert %}}

Contoh kode berikut menunjukkan cara menambahkan bidang `MERGE` menggunakan DOM ke paragraf dalam dokumen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertMergeFieldUsingDOM-InsertMergeFieldUsingDOM.java" >}}

### Menyisipkan bidang Mail Merge `ADDRESSBLOCK` ke dalam Dokumen menggunakan DOM

Bidang `ADDRESSBLOCK` digunakan untuk menyisipkan blok alamat Mail Merge dalam dokumen Word. bidang `ADDRESSBLOCK` dalam dokumen Word dapat diwakili oleh kelas [FieldAddressBlock](https://reference.aspose.com/words/java/com.aspose.words/fieldaddressblock/). Anda dapat menggunakan kelas **FieldAddressBlock** untuk melakukan operasi berikut:

- tentukan apakah akan mencantumkan nama negara / wilayah di bidang tersebut
- tentukan apakah akan memformat alamat sesuai dengan negara / wilayah penerima seperti yang didefinisikan oleh POST*CODE (Universal Postal Union 2006)
- sebutkan nama negara/wilayah yang dikecualikan
- tentukan nama dan format alamat
- tentukan bahasa ID yang digunakan untuk memformat alamat

{{% alert color="primary" %}}

Untuk detail selengkapnya, lihat kelas [FieldAddressBlock](https://reference.aspose.com/words/java/com.aspose.words/fieldaddressblock/) API.

{{% /alert %}}

Contoh kode berikut menunjukkan cara menambahkan Bidang Mail Merge `ADDRESSBLOCK` menggunakan DOM ke paragraf dalam dokumen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertMailMergeAddressBlockFieldUsingDOM-InsertMailMergeAddressBlockFieldUsingDOM.java" >}}

### Menyisipkan bidang `ADVANCE` ke dalam Dokumen tanpa menggunakan DocumentBuilder

Bidang `ADVANCE` digunakan untuk mengimbangi teks berikutnya dalam satu baris ke kiri, kanan, atas, atau bawah. bidang `ADVANCE` dalam dokumen Word dapat diwakili oleh kelas [FieldAdvance](https://reference.aspose.com/words/java/com.aspose.words/fieldadvance/). Anda dapat menggunakan kelas **FieldAdvance** untuk melakukan operasi berikut:

- tentukan jumlah titik di mana teks yang mengikuti bidang harus dipindahkan secara vertikal dari tepi atas halaman
- tentukan jumlah titik di mana teks yang mengikuti bidang harus dipindahkan secara horizontal dari tepi kiri kolom, bingkai, atau kotak teks
- tentukan jumlah titik di mana teks yang mengikuti bidang harus dipindahkan ke kiri, kanan, atas atau bawah

{{% alert color="primary" %}}

Untuk detail selengkapnya, lihat kelas [FieldAdvance](https://reference.aspose.com/words/java/com.aspose.words/fieldadvance/) API.

{{% /alert %}}

Contoh kode berikut menunjukkan cara menambahkan Bidang `ADVANCE` menggunakan DOM ke paragraf dalam dokumen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldAdvance.java" >}}

### Menyisipkan bidang `ASK` ke dalam Dokumen tanpa menggunakan DocumentBuilder

Bidang `ASK` digunakan untuk meminta teks kepada pengguna untuk ditetapkan ke Bookmark dalam dokumen Word. bidang `ASK` dalam dokumen Word dapat diwakili oleh kelas [FieldAsk](https://reference.aspose.com/words/java/com.aspose.words/fieldask/). Anda dapat menggunakan kelas **FieldAsk** untuk melakukan operasi berikut:

- tentukan nama bookmark
- tentukan respons pengguna default (nilai awal yang terdapat di jendela prompt)
- tentukan apakah respons pengguna harus diterima satu kali per operasi Mail Merge
- tentukan teks prompt (judul jendela prompt)

{{% alert color="primary" %}}

Untuk detail selengkapnya, lihat kelas [FieldAsk](https://reference.aspose.com/words/java/com.aspose.words/fieldask/) API.

{{% /alert %}}

Contoh kode berikut menunjukkan cara menambahkan Bidang `ASK` menggunakan DOM ke paragraf dalam dokumen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldAsk.java" >}}

### Menyisipkan bidang `AUTHOR` ke dalam Dokumen tanpa menggunakan DocumentBuilder

Bidang `AUTHOR` digunakan untuk menentukan nama pembuat dokumen dari properti `Document`. bidang `AUTHOR` dalam dokumen Word dapat diwakili oleh kelas [FieldAuthor](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/). Anda dapat menggunakan kelas **FieldAuthor** untuk melakukan operasi berikut:

- tentukan nama pembuat dokumen

{{% alert color="primary" %}}

Untuk detail selengkapnya, lihat kelas [FieldAuthor](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/) API.

{{% /alert %}}

Contoh kode berikut menunjukkan cara menambahkan Bidang `AUTHOR` menggunakan DOM ke paragraf dalam dokumen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertAuthorField-InsertAuthorField.java" >}}

### Menyisipkan bidang `INCLUDETEXT` ke dalam Dokumen tanpa menggunakan DocumentBuilder

Bidang `INCLUDETEXT` menyisipkan teks dan grafik yang terdapat dalam dokumen yang disebutkan dalam kode bidang. Anda dapat menyisipkan seluruh dokumen atau sebagian dokumen yang dirujuk oleh penanda. Bidang ini dalam dokumen Word diwakili oleh INCLUDETEXT. Anda dapat menggunakan kelas [FieldIncludeText](https://reference.aspose.com/words/java/com.aspose.words/fieldincludetext/) untuk melakukan operasi berikut:

- tentukan nama bookmark dari dokumen yang disertakan
- tentukan lokasi dokumen

{{% alert color="primary" %}}

Untuk detail selengkapnya, lihat kelas [FieldIncludeText](https://reference.aspose.com/words/java/com.aspose.words/fieldincludetext/) API.

{{% /alert %}}

Contoh kode berikut menunjukkan cara menambahkan bidang `INCLUDETEXT` menggunakan DOM ke paragraf dalam dokumen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldIncludeText.java" >}}

### Menyisipkan bidang `TOA` ke dalam Dokumen tanpa menggunakan DocumentBuilder

Bidang `TOA` (*Table of Authorities*) membuat dan menyisipkan tabel otoritas. Bidang `TOA` mengumpulkan entri yang ditandai dengan bidang `TA` (*Table of Authorities Entry*). Microsoft Office Word menyisipkan bidang `TOA` saat Anda mengeklik *Insert Table of Authorities* di grup **Table of Authorities** pada tab **References**. Saat Anda melihat bidang `TOA` di dokumen Anda, sintaksnya terlihat seperti ini:

{ `TOA` [Switches ] }

{{% alert color="primary" %}}

Untuk detail selengkapnya, lihat kelas [FieldToa](https://reference.aspose.com/words/java/com.aspose.words/fieldtoa/) API.

{{% /alert %}}

Contoh kode berikut menunjukkan cara menambahkan bidang `TOA` menggunakan DOM ke paragraf dalam dokumen.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertTOAField-InsertTOAField.java" >}}
