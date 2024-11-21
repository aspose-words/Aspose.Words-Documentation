---
title: Sisipkan Bidang dalam C++
second_title: Aspose.Words untuk C++
articleTitle: Sisipkan Bidang
linktitle: Sisipkan Bidang
description: "Berbagai cara untuk menyisipkan bidang ke dalam dokumen Anda menggunakan C++."
type: docs
weight: 20
url: /id/cpp/inserting-fields/
timestamp: 2024-01-27-14-07-04
---

Ada beberapa cara berbeda untuk menyisipkan bidang ke dalam dokumen:

- menggunakan [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/)
- menggunakan [FieldBuilder](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldbuilder/)
- menggunakan [Aspose.Words Model Objek Dokumen (DOM)](/words/cpp/aspose-words-document-object-model/)

Pada artikel ini, kita akan melihat setiap cara secara lebih rinci dan menganalisis cara menyisipkan bidang tertentu menggunakan opsi ini.

## Menyisipkan Bidang ke dalam Dokumen menggunakan DocumentBuilder

Dalam Aspose.Words metode [InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/) digunakan untuk menyisipkan bidang baru ke dalam dokumen. Parameter pertama menerima kode bidang lengkap dari bidang yang akan disisipkan. Parameter kedua bersifat opsional dan memungkinkan hasil bidang bidang diatur secara manual. Jika ini tidak disediakan maka bidang diperbarui secara otomatis. Anda dapat meneruskan null atau empty ke parameter ini untuk menyisipkan bidang dengan nilai bidang kosong. Jika Anda tidak yakin tentang sintaks kode bidang tertentu, buat bidang dalam Microsoft Word terlebih dahulu dan alihkan untuk melihat kode bidangnya.

{{% alert color="primary" %}}

Jika kode bidang Anda memiliki parameter yang berisi spasi, maka kode tersebut harus diapit dalam tanda ucapan. Jika tidak, bidang di Microsoft Word dan Aspose.Words mungkin tidak berfungsi seperti yang diharapkan karena parameter diperlakukan oleh keduanya sebagai terpotong

{{% /alert %}}

Contoh kode berikut menunjukkan cara menyisipkan bidang gabungan ke dalam dokumen menggunakan **DocumentBuilder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Fields-InsertField.h" >}}

Teknik yang sama digunakan untuk menyisipkan bidang yang bersarang di dalam bidang lain.

Contoh kode berikut menunjukkan cara menyisipkan bidang yang bersarang di dalam bidang lain menggunakan **DocumentBuilder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertNestedFields-InsertNestedFields.cpp" >}}

### Tentukan Lokal di Tingkat Bidang

Pengenal bahasa adalah singkatan angka internasional standar untuk bahasa di suatu negara atau wilayah geografis. Dengan Aspose.Words, Anda dapat menentukan Lokal di tingkat bidang menggunakan properti [LocaleId](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_localeid/), yang mendapatkan atau menyetel lokal bidang ID.

Contoh kode berikut menunjukkan cara menggunakan opsi ini:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.cpp" >}}

### Sisipkan Bidang yang Tidak Diketik / Kosong

Jika Anda ingin menyisipkan bidang yang tidak diketik / kosong ({}) seperti yang diizinkan oleh Microsoft Word, Anda dapat menggunakan metode [InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield) dengan parameter [FieldType.FieldNone](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldtype/). Untuk menyisipkan bidang ke dalam dokumen Word, Anda dapat menekan kombinasi tombol "Ctrl + F9".

Contoh kode berikut menunjukkan cara menyisipkan bidang kosong ke dalam dokumen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertFieldNone-InsertFieldNone.cpp" >}}

## Menyisipkan Bidang ke dalam Dokumen menggunakan FieldBuilder

Cara alternatif untuk menyisipkan bidang dalam Aspose.Words adalah kelas [FieldBuilder](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldbuilder/). Ini menyediakan antarmuka yang lancar untuk menentukan sakelar bidang dan nilai argumen sebagai teks, simpul, atau bahkan bidang bersarang.

Contoh kode berikut menunjukkan cara menyisipkan bidang ke dalam dokumen menggunakan **FieldBuilder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertFieldUsingFieldBuilder-InsertFieldUsingFieldBuilder.cpp" >}}

## Menyisipkan Kolom menggunakan DOM

Anda juga dapat menyisipkan berbagai jenis bidang menggunakan [Aspose.Words Model Objek Dokumen (DOM)](/words/cpp/aspose-words-document-object-model/). Pada bagian ini, kita akan melihat beberapa contoh.

### Menyisipkan Bidang Gabungan ke dalam Dokumen menggunakan DOM

Bidang `MERGEFIELD` dalam dokumen Word dapat diwakili oleh kelas [FieldMergeField](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/). Anda dapat menggunakan kelas **FieldMergeField** untuk melakukan operasi berikut:

- tentukan nama bidang penggabungan
- tentukan pemformatan bidang penggabungan
- tentukan teks yang berada di antara pemisah bidang dan akhir bidang dari bidang gabungan
- tentukan teks yang akan disisipkan setelah bidang gabungan jika bidang tidak kosong
- tentukan teks yang akan disisipkan sebelum bidang gabungan jika bidang tidak kosong

{{% alert color="primary" %}}

Untuk detail selengkapnya, lihat kelas [FieldMergeField](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/) API.

{{% /alert %}}

Contoh kode berikut menunjukkan cara menambahkan bidang `MERGE` menggunakan DOM ke paragraf dalam dokumen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertMergeFieldUsingDOM-InsertMergeFieldUsingDOM.cpp" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file contoh contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Menyisipkan kolom Blok Alamat Mail Mergeke dalam Dokumen menggunakan DOM

Bidang `ADDRESSBLOCK` digunakan untuk menyisipkan blok alamat mail merge dalam dokumen Word. bidang `ADDRESSBLOCK` dalam dokumen Word dapat diwakili oleh kelas [FieldAddressBlock](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldaddressblock/). Anda dapat menggunakan kelas **FieldAddressBlock** untuk melakukan operasi berikut:

- tentukan apakah akan mencantumkan nama negara / wilayah di bidang tersebut
- tentukan apakah akan memformat alamat sesuai dengan negara / wilayah penerima seperti yang didefinisikan oleh POST*CODE (Universal Postal Union 2006)
- sebutkan nama negara/wilayah yang dikecualikan
- tentukan nama dan format alamat
- tentukan bahasa ID yang digunakan untuk memformat alamat

{{% alert color="primary" %}}

Untuk detail selengkapnya, lihat kelas [FieldAddressBlock](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldaddressblock/) API.

{{% /alert %}}

Contoh kode berikut menunjukkan cara menambahkan Bidang Mail Merge `ADDRESSBLOCK` menggunakan DOM ke paragraf dalam dokumen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertMailMergeAddressBlockFieldUsingDOM-InsertMailMergeAddressBlockFieldUsingDOM.cpp" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file contoh contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Menyisipkan bidang Lanjutan ke dalam Dokumen tanpa menggunakan DocumentBuilder

Bidang `ADVANCE` digunakan untuk mengimbangi teks berikutnya dalam satu baris ke kiri, kanan, atas, atau bawah. Bidang `ADVANCE` dalam dokumen Word dapat diwakili oleh kelas [FieldAdvance](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldadvance/). Anda dapat menggunakan kelas FieldAdvance untuk melakukan operasi berikut:

- tentukan jumlah titik di mana teks yang mengikuti bidang harus dipindahkan secara vertikal dari tepi atas halaman
- tentukan jumlah titik di mana teks yang mengikuti bidang harus dipindahkan secara horizontal dari tepi kiri kolom, bingkai, atau kotak teks
- tentukan jumlah titik di mana teks yang mengikuti bidang harus dipindahkan ke kiri, kanan, atas atau bawah

{{% alert color="primary" %}}

Untuk detail selengkapnya, lihat kelas [FieldAdvance](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldadvance/) API.

{{% /alert %}}

Contoh kode berikut menunjukkan cara menambahkan Bidang `ADVANCE` menggunakan DOM ke paragraf dalam dokumen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertAdvanceFieldWithoutDocumentBuilder-InsertAdvanceFieldWithoutDocumentBuilder.cpp" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file contoh contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Menyisipkan bidang `ASK` ke dalam Dokumen tanpa menggunakan DocumentBuilder

Bidang `ASK` digunakan untuk meminta teks kepada pengguna untuk ditetapkan ke Bookmark di dokumen Word. bidang `ASK` dalam dokumen Word dapat diwakili oleh kelas [FieldAsk](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldask/). Anda dapat menggunakan kelas **FieldAsk** untuk melakukan operasi berikut:

- tentukan nama bookmark
- tentukan respons pengguna default (nilai awal yang terdapat di jendela prompt)
- tentukan apakah respons pengguna harus diterima satu kali per operasi mail merge
- tentukan teks prompt (judul jendela prompt)

{{% alert color="primary" %}}

Untuk detail selengkapnya, lihat kelas [FieldAsk](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldask) API.

{{% /alert %}}

Contoh kode berikut menunjukkan cara menambahkan Bidang `ASK` menggunakan DOM ke paragraf dalam dokumen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertASKFieldWithoutDocumentBuilder-InsertASKFieldWithoutDocumentBuilder.cpp" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file contoh contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Menyisipkan bidang `AUTHOR` ke dalam Dokumen tanpa menggunakan DocumentBuilder

Bidang `AUTHOR` digunakan untuk menentukan nama pembuat Dokumen dari properti `Document`. Bidang `AUTHOR` dalam dokumen Word dapat diwakili oleh kelas [FieldAuthor](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldauthor/). Anda dapat menggunakan kelas **FieldAuthor** untuk melakukan operasi berikut:

- tentukan nama pembuat dokumen

{{% alert color="primary" %}}

Untuk detail selengkapnya, lihat kelas [FieldAuthor](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldauthor/) API.

{{% /alert %}}

Contoh kode berikut menunjukkan cara menambahkan Bidang `AUTHOR` menggunakan DOM ke paragraf dalam dokumen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertAuthorField-InsertAuthorField.cpp" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file contoh contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Menyisipkan bidang `INCLUDETEXT` ke dalam Dokumen tanpa menggunakan DocumentBuilder

Bidang `INCLUDETEXT` menyisipkan teks dan grafik yang terdapat dalam dokumen yang disebutkan dalam kode bidang. Anda dapat menyisipkan seluruh dokumen atau sebagian dokumen yang dirujuk oleh penanda. Bidang dalam dokumen Word ini diwakili oleh INCLUDETEXT. Anda dapat menggunakan kelas [FieldIncludeText](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldincludetext/) untuk melakukan operasi berikut:

- tentukan nama bookmark dari dokumen yang disertakan
- tentukan lokasi dokumen

{{% alert color="primary" %}}

Untuk detail selengkapnya, lihat kelas [FieldIncludeText](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldincludetext/) API.

{{% /alert %}}

Contoh kode berikut menunjukkan cara menambahkan bidang `INCLUDETEXT` menggunakan DOM ke paragraf dalam dokumen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Fields-InsertFieldIncludeTextWithoutDocumentBuilder.h" >}}

### Menyisipkan bidang `TOA` ke dalam Dokumen tanpa menggunakan DocumentBuilder

Bidang `TOA` (*Table of Authorities*) membuat dan menyisipkan tabel otoritas. Bidang `TOA` mengumpulkan entri yang ditandai dengan bidang `TA` (*Table of Authorities Entry*). Microsoft Office Word menyisipkan bidang `TOA` saat Anda mengeklik *Insert Table of Authorities* di grup **Table of Authorities** pada tab **References**. Saat Anda melihat bidang `TOA` di dokumen Anda, sintaksnya terlihat seperti ini:

{ `TOA` [Switches ] }

{{% alert color="primary" %}}

Untuk detail selengkapnya, lihat kelas [FieldToa](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldtoa/) API.

{{% /alert %}}

Contoh kode berikut menunjukkan cara menambahkan bidang `TOA` menggunakan DOM ke paragraf dalam dokumen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertTOAFieldWithoutDocumentBuilder-InsertTOAFieldWithoutDocumentBuilder.cpp" >}}/
