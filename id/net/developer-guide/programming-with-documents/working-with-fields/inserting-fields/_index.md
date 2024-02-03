---
title: Sisipkan Bidang di C#
second_title: Aspose.Words untuk .NET
articleTitle: Sisipkan Bidang
linktitle: Sisipkan Bidang
description: "Cara memasukkan kolom ke dalam dokumen menggunakan C# – pelajari berbagai cara dengan contoh kode."
type: docs
weight: 20
url: /id/net/inserting-fields/
---

Ada beberapa cara berbeda untuk menyisipkan kolom ke dalam dokumen:

*menggunakan [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/)
*menggunakan [FieldBuilder](https://reference.aspose.com/words/net/aspose.words.fields/fieldbuilder/)
*menggunakan [Aspose.Words Document Object Model (DOM)](/words/id/net/aspose-words-document-object-model/)

Pada artikel ini, kita akan melihat setiap cara secara lebih rinci dan menganalisis cara menyisipkan bidang tertentu menggunakan opsi ini.

## Memasukkan Bidang ke dalam Dokumen menggunakan DocumentBuilder

Di Aspose.Words, metode [InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/) digunakan untuk menyisipkan kolom baru ke dalam dokumen. Parameter pertama menerima kode field lengkap dari field yang akan disisipkan. Parameter kedua bersifat opsional dan memungkinkan hasil bidang diatur secara manual. Jika ini tidak disediakan maka kolom tersebut diperbarui secara otomatis. Anda dapat meneruskan null atau kosong ke parameter ini untuk menyisipkan bidang dengan nilai bidang kosong. Jika Anda tidak yakin tentang sintaks kode bidang tertentu, buat bidang dalam Microsoft Word terlebih dahulu dan alihkan untuk melihat kode bidangnya.

{{% alert color="primary" %}}

Jika kode bidang Anda memiliki parameter yang berisi spasi, maka kode tersebut harus diapit oleh tanda ucapan. Jika tidak, bidang di Microsoft Word dan Aspose.Words mungkin tidak berfungsi seperti yang diharapkan karena parameter dianggap terpotong oleh keduanya.

{{% /alert %}}

Contoh kode berikut menunjukkan cara menyisipkan bidang gabungan ke dalam dokumen menggunakan **DocumentBuilder**:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertField-InsertField.cs" >}}

Teknik yang sama digunakan untuk menyisipkan bidang yang disarangkan di dalam bidang lain.

Contoh kode berikut menunjukkan cara menyisipkan kolom yang disarangkan ke dalam kolom lain menggunakan **DocumentBuilder**:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertNestedFields-InsertNestedFields.cs" >}}

### Tentukan Lokal di Tingkat Bidang

Pengenal bahasa adalah singkatan numerik standar internasional untuk bahasa di suatu negara atau wilayah geografis. Dengan Aspose.Words, Anda dapat menentukan Lokal di tingkat bidang menggunakan properti [LocaleId](https://reference.aspose.com/words/net/aspose.words.fields/field/localeid/), yang mendapatkan atau menetapkan ID lokal bidang tersebut.

Contoh kode berikut menunjukkan cara menggunakan opsi ini:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.cs" >}}

### Sisipkan Bidang yang Belum Diketik/Kosong

Jika Anda ingin memasukkan kolom yang belum diketik/kosong ({}) seperti yang diizinkan Microsoft Word, Anda dapat menggunakan metode [InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/) dengan parameter [FieldType.FieldNone](https://reference.aspose.com/words/net/aspose.words.fields/fieldtype/). Untuk memasukkan field ke dalam dokumen Word, Anda dapat menekan kombinasi tombol "Ctrl + F9".

Contoh kode berikut menunjukkan cara menyisipkan kolom kosong ke dalam dokumen:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertFieldNone-InsertFieldNone.cs" >}}

## Memasukkan Bidang ke dalam Dokumen menggunakan FieldBuilder
Cara alternatif untuk menyisipkan kolom di Aspose.Words adalah kelas [FieldBuilder](https://reference.aspose.com/words/net/aspose.words.fields/fieldbuilder/). Ini menyediakan antarmuka yang lancar untuk menentukan sakelar bidang dan nilai argumen sebagai teks, node, atau bahkan bidang bersarang.

Contoh kode berikut menunjukkan cara menyisipkan kolom ke dalam dokumen menggunakan **FieldBuilder**:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertFieldUsingFieldBuilder.cs" >}}

## Memasukkan Bidang menggunakan DOM

Anda juga dapat menyisipkan berbagai jenis bidang menggunakan [Aspose.Words Document Object Model (DOM)](/words/id/net/aspose-words-document-object-model/). Di bagian ini, kita akan melihat beberapa contoh.

### Memasukkan Bidang Gabungan ke dalam Dokumen menggunakan DOM

Bidang `MERGEFIELD` di dokumen Word dapat diwakili oleh kelas [FieldMergeField](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/). Anda dapat menggunakan kelas **FieldMergeField** untuk melakukan operasi berikut:

- tentukan nama bidang gabungan
- tentukan format bidang gabungan
- tentukan teks yang berada di antara pemisah bidang dan ujung bidang gabungan
- tentukan teks yang akan disisipkan setelah kolom penggabungan jika kolom tersebut tidak kosong
- tentukan teks yang akan disisipkan sebelum kolom gabungan jika kolom tersebut tidak kosong

{{% alert color="primary" %}}

Untuk lebih jelasnya lihat [FieldMergeField](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/) kelas API.

{{% /alert %}}

Contoh kode berikut menunjukkan cara menambahkan kolom `MERGE` menggunakan DOM ke paragraf dalam dokumen:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertMergeFieldUsingDOM-InsertMergeFieldUsingDOM.cs" >}}

### Memasukkan bidang Mail Merge `ADDRESSBLOCK` ke dalam Dokumen menggunakan DOM

Bidang `ADDRESSBLOCK` digunakan untuk memasukkan blok alamat mail merge ke dalam dokumen Word. Bidang `ADDRESSBLOCK` di dokumen Word dapat diwakili oleh kelas [FieldAddressBlock](https://reference.aspose.com/words/net/aspose.words.fields/fieldaddressblock/). Anda dapat menggunakan kelas **FieldAddressBlock** untuk melakukan operasi berikut:

- tentukan apakah akan mencantumkan nama negara/wilayah pada kolom tersebut
- tentukan apakah akan memformat alamat sesuai dengan negara/wilayah penerima sebagaimana ditentukan oleh POST*CODE (Universal Postal Union 2006)
- tentukan nama negara/wilayah yang dikecualikan
- tentukan format nama dan alamat
- tentukan ID bahasa yang digunakan untuk memformat alamat

{{% alert color="primary" %}}

Untuk lebih jelasnya lihat [FieldAddressBlock](https://reference.aspose.com/words/net/aspose.words.fields/fieldaddressblock/) kelas API.

{{% /alert %}}

Contoh kode berikut menunjukkan cara menambahkan Bidang Mail Merge `ADDRESSBLOCK` menggunakan DOM ke paragraf dalam dokumen:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertMailMergeAddressBlockFieldUsingDOM-InsertMailMergeAddressBlockFieldUsingDOM.cs" >}}

### Memasukkan bidang `ADVANCE` ke dalam Dokumen tanpa menggunakan DocumentBuilder

Bidang `ADVANCE` digunakan untuk mengimbangi teks berikutnya dalam satu baris ke kiri, kanan, atas atau bawah. Bidang `ADVANCE` di dokumen Word dapat diwakili oleh kelas [FieldAdvance](https://reference.aspose.com/words/net/aspose.words.fields/fieldadvance/). Anda dapat menggunakan kelas **FieldAdvance** untuk melakukan operasi berikut:

- tentukan jumlah titik di mana teks setelah bidang harus dipindahkan secara vertikal dari tepi atas halaman
- tentukan jumlah titik yang digunakan untuk memindahkan teks setelah bidang secara horizontal dari tepi kiri kolom, bingkai, atau kotak teks
- tentukan jumlah titik yang digunakan untuk memindahkan teks setelah bidang ke kiri, kanan, atas, atau bawah

{{% alert color="primary" %}}

Untuk lebih jelasnya lihat [FieldAdvance](https://reference.aspose.com/words/net/aspose.words.fields/fieldadvance/) kelas API.

{{% /alert %}}

Contoh kode berikut menunjukkan cara menambahkan Bidang `ADVANCE` menggunakan DOM ke paragraf dalam dokumen:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertAdvanceFieldWithOutDocumentBuilder-InsertAdvanceFieldWithOutDocumentBuilder.cs" >}}

### Memasukkan bidang `ASK` ke dalam Dokumen tanpa menggunakan DocumentBuilder

Bidang `ASK` digunakan untuk meminta pengguna agar teks ditetapkan ke dokumen Bookmark di Word. Bidang `ASK` di dokumen Word dapat diwakili oleh kelas [FieldAsk](https://reference.aspose.com/words/net/aspose.words.fields/fieldask/). Anda dapat menggunakan kelas **FieldAsk** untuk melakukan operasi berikut:

- tentukan nama penandanya
- tentukan respons pengguna default (nilai awal yang terdapat di jendela prompt)
- tentukan apakah respons pengguna harus diterima satu kali per operasi mail merge
- tentukan teks prompt (judul jendela prompt)

{{% alert color="primary" %}}

Untuk lebih jelasnya lihat [FieldAsk](https://reference.aspose.com/words/net/aspose.words.fields/fieldask/) kelas API.

{{% /alert %}}

Contoh kode berikut menunjukkan cara menambahkan Bidang `ASK` menggunakan DOM ke paragraf dalam dokumen:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertASKFieldWithOutDocumentBuilder-InsertASKFieldWithOutDocumentBuilder.cs" >}}

### Memasukkan bidang `AUTHOR` ke dalam Dokumen tanpa menggunakan DocumentBuilder

Bidang `AUTHOR` digunakan untuk menentukan nama pembuat Dokumen dari properti `Document`. Bidang `AUTHOR` di dokumen Word dapat diwakili oleh kelas [FieldAuthor](https://reference.aspose.com/words/net/aspose.words.fields/fieldauthor/). Anda dapat menggunakan kelas **FieldAuthor** untuk melakukan operasi berikut:

- tentukan nama penulis dokumen

{{% alert color="primary" %}}

Untuk lebih jelasnya lihat [FieldAuthor](https://reference.aspose.com/words/net/aspose.words.fields/fieldauthor/) kelas API.

{{% /alert %}}

Contoh kode berikut menunjukkan cara menambahkan Bidang `AUTHOR` menggunakan DOM ke paragraf dalam dokumen:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertAuthorField-InsertAuthorField.cs" >}}

### Memasukkan bidang `INCLUDETEXT` ke dalam Dokumen tanpa menggunakan DocumentBuilder

Bidang `INCLUDETEXT` menyisipkan teks dan grafik yang terdapat dalam dokumen yang disebutkan dalam kode bidang. Anda dapat menyisipkan seluruh dokumen atau sebagian dokumen yang dirujuk oleh penanda. Bidang dalam dokumen Word ini diwakili oleh INCLUDETEXT. Anda dapat menggunakan kelas [FieldIncludeText](https://reference.aspose.com/words/net/aspose.words.fields/fieldincludetext/) untuk melakukan operasi berikut:

- tentukan nama penanda dokumen yang disertakan
- tentukan lokasi dokumen

{{% alert color="primary" %}}

Untuk lebih jelasnya lihat [FieldIncludeText](https://reference.aspose.com/words/net/aspose.words.fields/fieldincludetext/) kelas API.

{{% /alert %}}

Contoh kode berikut menunjukkan cara menambahkan kolom `INCLUDETEXT` menggunakan DOM ke paragraf dalam dokumen:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertIncludeFieldWithoutDocumentBuilder-InsertFieldIncludeTextWithoutDocumentBuilder.cs" >}}

### Memasukkan bidang `TOA` ke dalam Dokumen tanpa menggunakan DocumentBuilder

Bidang `TOA` (*Tabel Otoritas*) membuat dan menyisipkan tabel otoritas. Bidang `TOA` mengumpulkan entri yang ditandai dengan bidang `TA` (*Entri Tabel Otoritas*). Microsoft Office Word menyisipkan bidang `TOA` ketika Anda mengklik *Sisipkan Tabel Otoritas* di grup **Tabel Otoritas** pada tab **References**. Saat Anda melihat bidang `TOA` di dokumen Anda, sintaksnya terlihat seperti ini:

{ `TOA` [Switches ] }

{{% alert color="primary" %}}

Untuk lebih jelasnya lihat [FieldToa](https://reference.aspose.com/words/net/aspose.words.fields/fieldtoa/) kelas API.

{{% /alert %}}

Contoh kode berikut menunjukkan cara menambahkan kolom `TOA` menggunakan DOM ke paragraf dalam dokumen:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertTOAFieldWithoutDocumentBuilder-InsertTOAFieldWithoutDocumentBuilder.cs" >}}
