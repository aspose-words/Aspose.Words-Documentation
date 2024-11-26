---
title: Ganti Kolom dengan Teks Java
second_title: Aspose.Words untuk Java
articleTitle: Ganti Bidang dengan Teks Statis
linktitle: Ganti Bidang dengan Teks Statis
description: "Pelajari cara mengganti bidang dengan teks dalam Java. Ganti bidang dengan data statis menggunakan Java API."
type: docs
weight: 37
url: /id/java/replace-fields/
timestamp: 2024-01-27-14-07-04
---

Mengganti bidang sering kali diperlukan saat Anda ingin menyimpan dokumen sebagai salinan statis. Misalnya, saat mengirim sebagai lampiran dalam email. Mengonversi bidang seperti `DATE` atau `TIME` menjadi teks statis akan memungkinkan dokumen menampilkan tanggal yang sama seperti saat dikirim. Selain itu, dalam beberapa situasi, Anda mungkin perlu menghapus bidang `IF` bersyarat dari dokumen Anda dan menggantinya dengan hasil teks terbaru. Misalnya, mengonversi hasil bidang `IF` menjadi teks statis sehingga tidak akan lagi mengubah nilainya secara dinamis saat bidang dalam dokumen diperbarui.

Diagram di bawah ini menunjukkan bagaimana bidang `IF` disimpan dalam dokumen:

* teks dikelilingi oleh simpul bidang khusus - [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/) dan [FieldEnd](https://reference.aspose.com/words/java/com.aspose.words/fieldend/)
* simpul [FieldSeparator](https://reference.aspose.com/words/java/com.aspose.words/fieldseparator/) memisahkan teks di dalam bidang menjadi kode bidang dan hasil bidang
* kode bidang menentukan perilaku umum bidang, sedangkan hasil bidang mempertahankan hasil terbaru saat bidang ini diperbarui menggunakan Microsoft Word atau Aspose.Words
* hasil bidang adalah apa yang disimpan di bidang dan ditampilkan di dokumen saat dilihat

![update-remove-a-field-aspose-words](/words/java/replace-fields/updating-and-removing-a-field-1.png)

Strukturnya juga dapat dilihat di bawah ini dalam bentuk hierarki menggunakan proyek demo **"DocumentExplorer"**, yang dikirimkan bersama penginstal **Aspose.Words**.

![update-remove-a-field-aspose-words-2](/words/java/replace-fields/updating-and-removing-a-field-2.png)

## Bidang yang Tidak Dapat Diganti dengan Teks

Mengganti bidang dengan teks statis tidak berfungsi dengan baik untuk beberapa bidang di header atau footer.

Misalnya, mencoba mengonversi bidang `PAGE` di header atau footer menjadi teks statis akan menghasilkan nilai yang sama yang ditampilkan di semua halaman. Ini karena header dan footer diulang di beberapa halaman, dan jika tetap sebagai bidang, mereka ditangani secara khusus sehingga menampilkan hasil yang benar untuk setiap halaman.

Namun, di header, bidang `PAGE` diterjemahkan dengan baik menjadi teks statis. Rangkaian teks ini akan dievaluasi seolah-olah itu adalah halaman terakhir di bagian tersebut, yang akan menyebabkan bidang `PAGE` di header menampilkan halaman terakhir di semua halaman.

Contoh kode berikut menunjukkan cara mengganti bidang dengan hasil terbarunya:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UnlinkFields-UnlinkFields.java" >}}

## Mengonversi Jenis Bidang Tertentu di Bagian Dokumen Tertentu

Karena metode **ConvertFieldsToStaticText** menerima dua parameter-properti [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) dan enumerasi [FieldType](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/), dimungkinkan untuk meneruskan simpul komposit apa pun ke metode ini. Ini memungkinkan bidang dikonversi menjadi teks statis hanya di bagian tertentu dari dokumen.

Misalnya, Anda dapat meneruskan objek [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) dan mengonversi bidang dengan tipe yang ditentukan dari seluruh dokumen menjadi teks statis, atau Anda dapat meneruskan objek [Body](https://reference.aspose.com/words/java/com.aspose.words/body/) dari suatu bagian dan hanya mengonversi bidang yang ditemukan di badan tersebut.

{{% alert color="primary" %}}

Saat melewati simpul tingkat blok seperti [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), ketahuilah bahwa dalam beberapa kasus, bidang dapat menjangkau beberapa paragraf. Jika ini terjadi, disarankan untuk meneruskan induk komposit sebagai gantinya untuk menghindari hal ini.

{{% /alert %}}

Pencacahan [FieldType](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) yang diteruskan ke metode **ConvertFieldsToStaticText** menentukan jenis bidang apa yang harus dikonversi menjadi teks statis. Jenis bidang lain apa pun yang ditemukan dalam dokumen akan tetap tidak berubah.

Contoh kode berikut menunjukkan cara memilih bidang dengan tipe tertentu - *targetFieldType* di simpul tertentu - *compositeNode* lalu mengonversinya menjadi teks statis:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldHelper-FieldsHelper.java" >}}

Contoh kode berikut menunjukkan cara mengonversi semua bidang `IF` dalam dokumen menjadi teks statis:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInDocument-ConvertFieldsInDocument.java" >}}

Contoh kode berikut menunjukkan cara mengonversi semua bidang `PAGE` di Badan dokumen menjadi teks statis:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInBody-ConvertFieldsInBody.java" >}}

Contoh kode berikut menunjukkan cara mengonversi semua bidang `IF` di paragraf terakhir menjadi teks statis:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInParagraph-ConvertFieldsInParagraph.java" >}}
