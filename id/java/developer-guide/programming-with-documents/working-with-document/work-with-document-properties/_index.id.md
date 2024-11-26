---
title: Bekerja dengan Properti Dokumen dalam Java
second_title: Aspose.Words untuk Java
articleTitle: Bekerja dengan Properti Dokumen
linktitle: Bekerja dengan Properti Dokumen
description: "Aspose.Words untuk Java memungkinkan penyimpanan beberapa informasi berguna tentang dokumen Anda, seperti API dan Nomor Versi atau Tanggal Resmi, di properti dokumen bawaan atau kustom."
type: docs
weight: 10
url: /id/java/work-with-document-properties/
timestamp: 2024-01-31-14-23-37
---

Properti dokumen memungkinkan penyimpanan beberapa informasi berguna tentang dokumen Anda. Properti ini dapat dibagi menjadi dua kelompok:

* Sistem atau built-in yang berisi nilai-nilai seperti judul dokumen, nama penulis, statistik dokumen, dan lain-lain.
* Ditentukan pengguna atau khusus, disediakan sebagai pasangan nama-nilai di mana pengguna dapat menentukan nama dan nilai.

Berguna untuk mengetahui bahwa informasi tentang API dan Nomor Versi langsung ditulis ke dokumen keluaran. Misalnya, saat mengonversi dokumen menjadi PDF, Aspose.Words mengisi bidang "Aplikasi" dengan "Aspose.Words", dan bidang "ProduserPDF" dengan "Aspose.Words untuk Java YY.M. N", di mana *YY.M.N* adalah versi Aspose.Words yang digunakan untuk konversi. Untuk lebih jelasnya, lihat [Generator atau Nama Produk yang Digunakan dalam Dokumen Keluarga](/words/java/generator-or-producer-name-included-in-output-documents/).

{{% alert color="primary" %}}

Perhatikan bahwa Anda **cannot direct** Aspose.Words untuk mengubah atau menghapus informasi ini dari dokumen keluaran.

{{% /alert %}}

## Mengakses Properti Dokumen

Untuk mengakses properti dokumen dalam Aspose.Words gunakan:

* [BuiltInDocumentProperties](https://reference.aspose.com/words/java/com.aspose.words/document/#getBuiltInDocumentProperties) untuk mendapatkan properti bawaan.

* [CustomDocumentProperties](https://reference.aspose.com/words/java/com.aspose.words/document/#getCustomDocumentProperties) untuk mendapatkan properti khusus.

**BuiltInDocumentProperties**

**BuiltInDocumentProperties**

Kelas [DocumentProperty](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/) memungkinkan Anda mendapatkan nama, nilai, dan tipe properti dokumen. [Nilai]https://reference.aspose.com/words/java/com.aspose.words/documentproperty#Value) mengembalikan objek, tetapi ada serangkaian metode yang memungkinkan Anda mengonversi nilai properti ke tipe tertentu. Setelah Anda mengetahui jenis propertinya, Anda dapat menggunakan salah satu metode **DocumentProperty.ToXXX**, seperti **DocumentProperty.**[ToString](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#toString) dan **DocumentProperty.**[ToInt](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#toInt), untuk mendapatkan nilai dari tipe yang sesuai.

Contoh kode berikut menunjukkan cara menghitung semua properti bawaan dan properti khusus dalam dokumen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-EnumerateProperties.java" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file templat contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

Di Microsoft Word, Anda dapat mengakses properti dokumen menggunakan menu "File → Properties".

<img src="/words/java/work-with-document-properties/work-with-document-properties-1.png" alt="work-with-document-properties-aspose-words-java.png" style="width:400px"/>

## Menambah atau Menghapus Properti Dokumen

Anda tidak dapat menambah atau menghapus properti dokumen bawaan menggunakan Aspose.Words. Anda hanya dapat mengubah atau memperbarui nilainya.

Untuk menambahkan properti dokumen khusus dengan Aspose.Words, gunakan metode [Add](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#add-java.lang.String-boolean), berikan nama properti baru dan nilai dari tipe yang sesuai. Metode mengembalikan objek **DocumentProperty** yang baru dibuat.

Untuk menghapus properti khusus, gunakan metode [Remove](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#remove-java.lang.String), berikan nama properti untuk dihapus, atau metode [RemoveAt](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#removeAt-int) untuk menghapus properti berdasarkan indeks. Anda juga dapat menghapus semua properti menggunakan metode [Clear](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#clear).

Contoh kode berikut memeriksa apakah properti kustom dengan nama tertentu ada di dokumen dan menambahkan beberapa properti dokumen kustom lainnya:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-CustomAdd.java" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file templat contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

Contoh kode berikut menunjukkan cara menghapus properti dokumen khusus:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-CustomRemove.java" >}}

## Perbarui properti Dokumen bawaan

Aspose.Words tidak memperbarui properti dokumen secara otomatis, seperti yang dilakukan Microsoft Word dengan beberapa properti, tetapi menyediakan metode untuk memperbarui beberapa properti dokumen bawaan statistik. Panggil metode [UpdateWordCount](https://reference.aspose.com/words/java/com.aspose.words/document/#updateWordCount) untuk menghitung ulang dan memperbarui properti berikut:

* [Characters](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Characters)
* [CharactersWithSpaces](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#CharactersWithSpaces)
* [Words](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Words)
* [Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Paragraphs)
* [Lines](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Lines)

## Buat Properti Kustom Baru yang Ditautkan ke Konten

Aspose.Words menyediakan metode [AddLinkToContent](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#addLinkToContent-java.lang.String-java.lang.String) untuk membuat properti dokumen kustom baru yang ditautkan ke konten. Properti ini mengembalikan objek properti yang baru dibuat atau null jika [LinkSource](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#isLinkToContent) tidak valid.

Contoh kode berikut menunjukkan cara mengonfigurasi tautan ke properti khusus:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-ConfiguringLinkToContent.java" >}}

## Dapatkan Variabel Dokumen

Anda bisa mendapatkan kumpulan variabel dokumen menggunakan properti [Variables](https://reference.aspose.com/words/java/com.aspose.words/document/#getVariables). Nama dan nilai variabel adalah string.

Contoh kode berikut menunjukkan cara menghitung variabel dokumen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-GetDocumentVariables-GetDocumentVariables.java" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file templat contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

## Menghapus Informasi Pribadi dari Dokumen

Jika Anda ingin membagikan dokumen Word dengan orang lain, Anda mungkin ingin menghapus informasi pribadi seperti nama penulis dan perusahaan. Untuk melakukannya, gunakan properti [RemovePersonalInformation](https://reference.aspose.com/words/java/com.aspose.words/document/#getRemovePersonalInformation) untuk menyetel tanda yang menunjukkan bahwa Microsoft Word akan menghapus semua informasi pengguna dari komentar, revisi, dan properti dokumen setelah menyimpan dokumen.

{{% alert color="primary" %}}

Menyetel opsi ini sebenarnya tidak menghapus informasi pribadi saat memproses dokumen dalam Aspose.Words dan hanya memengaruhi perilaku Microsoft Word.

{{% /alert %}}
