---
title: Bekerja dengan Properti Dokumen
second_title: Aspose.Words untuk Python via .NET
articleTitle: Bekerja dengan Properti Dokumen
linktitle: Bekerja dengan Properti Dokumen
description: "Aspose.Words untuk Python memungkinkan penyimpanan beberapa informasi berguna tentang dokumen Anda, seperti API dan Nomor Versi atau Date Resmi, di properti dokumen bawaan atau khusus."
type: docs
weight: 10
url: /id/python-net/work-with-document-properties/
timestamp: 2024-01-31-14-23-37
---

Properti dokumen memungkinkan penyimpanan beberapa informasi berguna tentang dokumen Anda. Properti ini dapat dibagi menjadi dua kelompok:

* Sistem atau bawaan yang berisi nilai-nilai seperti judul dokumen, nama penulis, statistik dokumen, dan lain-lain.
* Ditentukan pengguna atau khusus, disediakan sebagai pasangan nama-nilai di mana pengguna dapat menentukan nama dan nilai.

Penting untuk mengetahui bahwa informasi tentang API dan Nomor Versi langsung ditulis ke dokumen keluaran. Misalnya, saat mengonversi dokumen ke PDF, Aspose.Words mengisi kolom "Aplikasi" dengan "Aspose.Words", dan kolom "Produser PDF" dengan "Aspose.Words untuk .NET YY.MN", dengan *YY.M.N* adalah versi Aspose.Words yang digunakan untuk konversi. Untuk detail selengkapnya, lihat [Nama Generator atau Produser Dicantumkan dalam Dokumen Keluaran](/words/id/python-net/generator-or-producer-name-included-in-output-documents/).

{{% alert color="primary" %}}

Perhatikan bahwa Anda **tidak bisa mengarahkan** Aspose.Words mengubah atau menghapus informasi ini dari dokumen keluaran.

{{% /alert %}}

## Akses Properti Dokumen

Untuk mengakses properti dokumen di Aspose.Words gunakan:

* [built_in_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/built_in_document_properties/) untuk mendapatkan properti bawaan.

* [custom_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/custom_document_properties/) untuk mendapatkan properti khusus.

[built_in_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/built_in_document_properties/) dan [custom_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/custom_document_properties/) adalah kumpulan objek [DocumentProperty](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/). Objek-objek ini dapat diperoleh melalui properti pengindeks berdasarkan nama atau indeks.

[built_in_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/built_in_document_properties/) juga menyediakan akses ke properti dokumen melalui sekumpulan properti yang dimasukkan yang mengembalikan nilai dari tipe yang sesuai. [custom_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/custom_document_properties/) memungkinkan Anda menambah atau menghapus properti dokumen dari dokumen.

Kelas [DocumentProperty](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/) memungkinkan Anda mendapatkan nama, nilai, dan tipe properti dokumen. [value](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/value/) mengembalikan objek, tetapi ada serangkaian metode yang memungkinkan Anda mengonversi nilai properti ke tipe tertentu. Setelah Anda mengetahui tipe propertinya, Anda bisa menggunakan salah satu metode **Properti Dokumen.to_XXX**, seperti **Properti Dokumen.\_\_str\_\_** dan [DocumentProperty.to_int](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/to_int/), untuk mendapatkan nilai tipe yang sesuai.

Contoh kode berikut menunjukkan cara menghitung semua properti bawaan dan kustom dalam dokumen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-EnumerateProperties.py" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file template contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

Di Microsoft Word, Anda dapat mengakses properti dokumen menggunakan menu "File → Properties".

<img src="/words/python-net/work-with-document-properties/work-with-document-properties-1.png" alt="bekerja-dengan-properti-dokumen-1.png" style="width:400px"/>

## Tambah atau Hapus Properti Dokumen

Anda tidak dapat menambah atau menghapus properti dokumen bawaan menggunakan Aspose.Words. Anda hanya dapat mengubah atau memperbarui nilainya.

Untuk menambahkan properti dokumen khusus dengan Aspose.Words, gunakan metode [add](https://reference.aspose.com/words/python-net/aspose.words.properties/customdocumentproperties/add/), meneruskan nama properti baru dan nilai tipe yang sesuai. Metode ini mengembalikan objek [DocumentProperty](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/) yang baru dibuat.

Untuk menghapus properti khusus, gunakan metode [remove](https://reference.aspose.com/words/python-net/aspose.words.properties/documentpropertycollection/remove/), berikan nama properti yang akan dihapus, atau metode [remove_at](https://reference.aspose.com/words/python-net/aspose.words.properties/documentpropertycollection/remove_at/) untuk menghapus properti berdasarkan indeks. Anda juga dapat menghapus semua properti menggunakan metode [clear](https://reference.aspose.com/words/python-net/aspose.words.properties/documentpropertycollection/clear/).

Contoh kode berikut memeriksa apakah properti kustom dengan nama tertentu ada dalam dokumen dan menambahkan beberapa properti dokumen kustom lainnya:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-AddCustomDocumentProperties.py" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file template contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

Contoh kode berikut menunjukkan cara menghapus properti dokumen kustom:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-CustomRemove.py" >}}

## Perbarui Properti Dokumen Bawaan

Aspose.Words tidak secara otomatis memperbarui properti dokumen, seperti yang dilakukan Microsoft Word dengan beberapa properti, namun menyediakan metode untuk memperbarui beberapa properti dokumen bawaan statistik. Panggil metode [update_word_count](https://reference.aspose.com/words/python-net/aspose.words/document/update_word_count/) untuk menghitung ulang dan memperbarui properti berikut:

* [characters](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/characters/)
* [characters_with_spaces](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/characters_with_spaces/)
* [words](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/words/)
* [paragraphs](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/paragraphs/)
* [lines](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/lines/)

## Buat Properti Kustom Baru yang Tertaut ke Konten

Aspose.Words menyediakan metode [add_link_to_content](https://reference.aspose.com/words/python-net/aspose.words.properties/customdocumentproperties/add_link_to_content/) untuk membuat properti dokumen kustom baru yang ditautkan ke konten. Properti ini mengembalikan objek properti yang baru dibuat atau null jika **tautan_sumber** tidak valid.

Contoh kode berikut menunjukkan cara mengonfigurasi tautan ke properti khusus:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-ConfiguringLinkToContent.py" >}}

## Dapatkan Variabel Dokumen

Anda bisa mendapatkan kumpulan variabel dokumen menggunakan properti [variables](https://reference.aspose.com/words/python-net/aspose.words/document/variables/). Nama dan nilai variabel adalah string.

Contoh kode berikut menunjukkan cara menambahkan dan mengakses variabel dokumen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-GetVariables.py" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file template contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

## Hapus Informasi Pribadi dari Dokumen

Jika Anda ingin berbagi dokumen Word dengan orang lain, Anda mungkin ingin menghapus informasi pribadi seperti nama penulis dan perusahaan. Untuk melakukan hal ini gunakan properti [remove_personal_information](https://reference.aspose.com/words/python-net/aspose.words/document/remove_personal_information/) untuk menyetel tanda yang menunjukkan bahwa Microsoft Word akan menghapus semua informasi pengguna dari komentar, revisi, dan properti dokumen setelah menyimpan dokumen.

Contoh kode berikut menunjukkan cara menghapus informasi pribadi:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-RemovePersonalInformation.py" >}}

{{% alert color="primary" %}}

Menyetel opsi ini sebenarnya tidak menghapus informasi pribadi saat memproses dokumen di Aspose.Words dan hanya memengaruhi perilaku Microsoft Word.

{{% /alert %}}
