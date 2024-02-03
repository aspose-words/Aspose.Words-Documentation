---
title: Bekerja dengan Properti Dokumen di C#
second_title: Aspose.Words untuk .NET
articleTitle: Bekerja dengan Properti Dokumen
linktitle: Bekerja dengan Properti Dokumen
description: "Aspose.Words untuk .NET memungkinkan penyimpanan beberapa informasi berguna tentang dokumen Anda, seperti API dan Nomor Versi atau Date Resmi, di properti dokumen bawaan atau khusus menggunakan C#."
type: docs
weight: 10
url: /id/net/work-with-document-properties/
---

Properti dokumen memungkinkan penyimpanan beberapa informasi berguna tentang dokumen Anda. Properti ini dapat dibagi menjadi dua kelompok:

* Sistem atau bawaan yang berisi nilai-nilai seperti judul dokumen, nama penulis, statistik dokumen, dan lain-lain.
* Ditentukan pengguna atau khusus, disediakan sebagai pasangan nama-nilai di mana pengguna dapat menentukan nama dan nilai.

Penting untuk mengetahui bahwa informasi tentang API dan Nomor Versi langsung ditulis ke dokumen keluaran. Misalnya, saat mengonversi dokumen ke PDF, Aspose.Words mengisi kolom "Aplikasi" dengan "Aspose.Words", dan kolom "Produser PDF" dengan "Aspose.Words untuk .NET YY.MN", dengan *YY.M.N* adalah versi Aspose.Words yang digunakan untuk konversi. Untuk detail selengkapnya, lihat [Nama Generator atau Produser Dicantumkan dalam Dokumen Keluaran](/words/id/net/generator-or-producer-name-included-in-output-documents/).

{{% alert color="primary" %}}

Perhatikan bahwa Anda **tidak bisa mengarahkan** Aspose.Words mengubah atau menghapus informasi ini dari dokumen keluaran.

{{% /alert %}}

## Akses Properti Dokumen

Untuk mengakses properti dokumen di Aspose.Words gunakan:

* [BuiltInDocumentProperties](https://reference.aspose.com/words/net/aspose.words/document/builtindocumentproperties/) untuk mendapatkan properti bawaan.

* [CustomDocumentProperties](https://reference.aspose.com/words/net/aspose.words/document/customdocumentproperties/) untuk mendapatkan properti khusus.

**BuiltInDocumentProperties** dan **CustomDocumentProperties** adalah kumpulan objek [DocumentProperty](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/). Objek-objek ini dapat diperoleh melalui properti pengindeks berdasarkan nama atau indeks.

**BuiltInDocumentProperties** juga menyediakan akses ke properti dokumen melalui sekumpulan properti yang dimasukkan yang mengembalikan nilai dari tipe yang sesuai. **CustomDocumentProperties** memungkinkan Anda menambah atau menghapus properti dokumen dari dokumen.

Kelas [DocumentProperty](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/) memungkinkan Anda mendapatkan nama, nilai, dan tipe properti dokumen. [Value](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/value/) mengembalikan objek, tetapi ada serangkaian metode yang memungkinkan Anda mengonversi nilai properti ke tipe tertentu. Setelah Anda mengetahui tipe propertinya, Anda bisa menggunakan salah satu metode **DocumentProperty.ToXXX**, seperti **DocumentProperty.**[ToString](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/tostring/) dan **DocumentProperty.**[ToInt](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/toint/), untuk mendapatkan nilai tipe yang sesuai.

Contoh kode berikut menunjukkan cara menghitung semua properti bawaan dan kustom dalam dokumen:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-EnumerateProperties.cs" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file template contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

Di Microsoft Word, Anda dapat mengakses properti dokumen menggunakan menu "File → Properties".

<img src="/words/net/work-with-document-properties/work-with-document-properties-1.png" alt="bekerja-dengan-properti-dokumen-1.png" style="width:400px"/>

## Tambah atau Hapus Properti Dokumen

Anda tidak dapat menambah atau menghapus properti dokumen bawaan menggunakan Aspose.Words. Anda hanya dapat mengubah atau memperbarui nilainya.

Untuk menambahkan properti dokumen khusus dengan Aspose.Words, gunakan metode [Add](https://reference.aspose.com/words/net/aspose.words.properties/customdocumentproperties/add/#add/), meneruskan nama properti baru dan nilai tipe yang sesuai. Metode ini mengembalikan objek **DocumentProperty** yang baru dibuat.

Untuk menghapus properti khusus, gunakan metode [Remove](https://reference.aspose.com/words/net/aspose.words.properties/documentpropertycollection/remove/), berikan nama properti yang akan dihapus, atau metode [RemoveAt](https://reference.aspose.com/words/net/aspose.words.properties/documentpropertycollection/remove/at) untuk menghapus properti berdasarkan indeks. Anda juga dapat menghapus semua properti menggunakan metode [Clear](https://reference.aspose.com/words/net/aspose.words.properties/documentpropertycollection/clear/).

Contoh kode berikut memeriksa apakah properti kustom dengan nama tertentu ada dalam dokumen dan menambahkan beberapa properti dokumen kustom lainnya:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-CustomAdd.cs" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file template contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

Contoh kode berikut menunjukkan cara menghapus properti dokumen kustom:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-CustomRemove.cs" >}}

## Perbarui Properti Dokumen Bawaan

Aspose.Words tidak secara otomatis memperbarui properti dokumen, seperti yang dilakukan Microsoft Word dengan beberapa properti, namun menyediakan metode untuk memperbarui beberapa properti dokumen bawaan statistik. Panggil metode [UpdateWordCount](https://reference.aspose.com/words/net/aspose.words/document/updatewordcount/#updatewordcount/) untuk menghitung ulang dan memperbarui properti berikut:

* [Characters](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/characters/)
* [CharactersWithSpaces](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/characterswithspaces/)
* [Words](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/words/)
* [Paragraphs](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/paragraphs/)
* [Lines](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/lines/)

## Buat Properti Kustom Baru yang Tertaut ke Konten

Aspose.Words menyediakan metode [AddLinkToContent](https://reference.aspose.com/words/net/aspose.words.properties/customdocumentproperties/addlinktocontent/) untuk membuat properti dokumen kustom baru yang ditautkan ke konten. Properti ini mengembalikan objek properti yang baru dibuat atau null jika [LinkSource](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/linksource/) tidak valid.

Contoh kode berikut menunjukkan cara mengonfigurasi tautan ke properti khusus:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-ConfiguringLinkToContent.cs" >}}

## Dapatkan Variabel Dokumen

Anda bisa mendapatkan kumpulan variabel dokumen menggunakan properti [Variables](https://reference.aspose.com/words/net/aspose.words/document/variables/). Nama dan nilai variabel adalah string.

Contoh kode berikut menunjukkan cara menghitung variabel dokumen:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-GetVariables-GetVariables.cs" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file template contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

## Hapus Informasi Pribadi dari Dokumen

Jika Anda ingin berbagi dokumen Word dengan orang lain, Anda mungkin ingin menghapus informasi pribadi seperti nama penulis dan perusahaan. Untuk melakukan hal ini gunakan properti [RemovePersonalInformation](https://reference.aspose.com/words/net/aspose.words/document/removepersonalinformation/) untuk menyetel tanda yang menunjukkan bahwa Microsoft Word akan menghapus semua informasi pengguna dari komentar, revisi, dan properti dokumen setelah menyimpan dokumen.

Contoh kode berikut menunjukkan cara menghapus informasi pribadi:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-RemovePersonalInformation.cs" >}}

{{% alert color="primary" %}}

Menyetel opsi ini sebenarnya tidak menghapus informasi pribadi saat memproses dokumen di Aspose.Words dan hanya memengaruhi perilaku Microsoft Word.

{{% /alert %}}
