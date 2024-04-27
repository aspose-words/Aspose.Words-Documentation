---
title: Mengganti Bidang dengan Teks Java
second_title: Aspose.Words Sitemap Java
articleTitle: Mengganti Bidang dengan Teks Statis
linktitle: Mengganti Bidang dengan Teks Statis
description: "Pelajari cara mengganti kolom dengan teks dalam JavaSitemap Mengubah bidang dengan data statis menggunakan Java APISitemap"
type: docs
weight: 37
url: /id/java/replace-fields/
---

Bidang pengisian sering diperlukan ketika Anda ingin menyimpan dokumen Anda sebagai salinan statis. Sebagai contoh, ketika pengiriman sebagai lampiran dalam e-mail. Mengkonversi bidang seperti `DATE` Sitemap `TIME` untuk teks statis akan memungkinkan dokumen untuk menampilkan tanggal yang sama ketika dikirim. Juga, dalam beberapa situasi, Anda mungkin perlu menghapus kondisional `IF` kolom dari dokumen Anda dan gantinya dengan hasil teks terbaru. Misalnya, mengubah hasil dari `IF` kolom untuk teks statis sehingga tidak akan lagi secara dinamis mengubah nilainya ketika bidang dalam dokumen diperbarui.

Diagram di bawah ini menunjukkan bagaimana `IF` bidang disimpan dalam dokumen:

* Teks dikelilingi oleh node lapangan khusus - [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/) Login [FieldEnd](https://reference.aspose.com/words/java/com.aspose.words/fieldend/)
* Sitemap [FieldSeparator](https://reference.aspose.com/words/java/com.aspose.words/fieldseparator/) node memisahkan teks dalam kolom ke dalam kode lapangan dan hasil lapangan
* kode lapangan mendefinisikan perilaku umum lapangan, sementara hasil lapangan mempertahankan hasil terbaru ketika bidang ini diperbarui menggunakan Microsoft Word Sitemap Aspose.Words
* Hasil lapangan adalah apa yang disimpan di lapangan dan ditampilkan dalam dokumen saat dilihat

![update-remove-a-field-aspose-words](/words/java/replace-fields/updating-and-removing-a-field-1.png)

Struktur juga dapat dilihat di bawah dalam bentuk hirarkis menggunakan proyek demo **“DocumentExplorer”**, yang kapal dengan Meme it **Aspose.Words** Login

![update-remove-a-field-aspose-words-2](/words/java/replace-fields/updating-and-removing-a-field-2.png)

## Bidang yang Tidak Dapat Digantikan oleh Teks

Mengganti lapangan dengan teks statis tidak bekerja dengan benar untuk beberapa bidang di header atau footer.

Sebagai contoh, mencoba mengkonversi `PAGE` lapangan dalam header atau footer untuk teks statis akan menghasilkan nilai yang sama ditampilkan pada semua halaman. Ini karena header dan footer diulang di beberapa halaman, dan ketika mereka tetap sebagai bidang, mereka ditangani terutama sehingga mereka menampilkan hasil yang benar untuk setiap halaman.

Namun, di header, `PAGE` bidang menerjemahkan dengan baik untuk menjalankan teks statis. Ini menjalankan teks akan dievaluasi seolah-olah itu adalah halaman terakhir di bagian, yang akan menyebabkan setiap `PAGE` lapangan di header untuk menampilkan halaman terakhir di semua halaman.

Contoh kode berikut menunjukkan cara mengganti lapangan dengan hasil terbarunya:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UnlinkFields-UnlinkFields.java" >}}

## Konversi Jenis Bidang tertentu di Bagian Dokumen Spesifik

Sitemap **ConvertFieldsToStaticText** metode menerima dua parameter – [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) properti dan [FieldType](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) enumerasi, dimungkinkan untuk melewati node komposit untuk metode ini. Hal ini memungkinkan bidang untuk dikonversi ke teks statis hanya di bagian tertentu dokumen.

Misalnya, Anda dapat melewati [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) objek dan mengkonversi bidang dari jenis yang ditentukan dari seluruh dokumen ke teks statis, atau Anda dapat lulus [Body](https://reference.aspose.com/words/java/com.aspose.words/body/) objek bagian dan hanya mengubah bidang yang ditemukan dalam tubuh itu.

{{% alert color="primary" %}}

Ketika melewati node level blok seperti [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), menyadari bahwa dalam beberapa kasus, bidang dapat mencakup beberapa paragraf. Jika ini terjadi dianjurkan untuk melewati orang tua komposit bukan untuk menghindari ini.

{{% /alert %}}

Login [FieldType](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) enumerasi yang dilewati ke **ConvertFieldsToStaticText** metode menentukan jenis bidang apa yang harus diubah menjadi teks statis. Jenis bidang lain yang ditemukan dalam dokumen akan tetap tidak berubah.

Contoh kode berikut menunjukkan bagaimana memilih bidang tipe spesifik - *targetFieldType* dalam node tertentu – *compositeNode* dan kemudian mengubahnya menjadi teks statis:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldHelper-FieldsHelper.java" >}}

Contoh kode berikut menunjukkan bagaimana mengkonversi semua `IF` bidang dalam dokumen teks statis:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInDocument-ConvertFieldsInDocument.java" >}}

Contoh kode berikut menunjukkan bagaimana mengkonversi semua `PAGE` bidang dalam tubuh dokumen ke teks statis:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInBody-ConvertFieldsInBody.java" >}}

Contoh kode berikut menunjukkan bagaimana mengkonversi semua `IF` bidang dalam paragraf terakhir untuk teks statis:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInParagraph-ConvertFieldsInParagraph.java" >}}
