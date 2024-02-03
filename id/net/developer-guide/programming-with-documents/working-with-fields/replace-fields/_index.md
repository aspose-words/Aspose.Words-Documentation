---
title: Ganti Bidang C#
second_title: Aspose.Words untuk .NET
articleTitle: Ganti Bidang dengan Teks Statis
linktitle: Ganti Bidang dengan Teks Statis
description: "Pelajari cara mengganti kolom dengan teks di C#. Ganti kolom dengan data statis menggunakan .NET API."
type: docs
weight: 37
url: /id/net/replace-fields/
---

Mengganti kolom sering kali diperlukan saat Anda ingin menyimpan dokumen sebagai salinan statis. Misalnya saat mengirim sebagai lampiran di email. Mengonversi bidang seperti `DATE` atau `TIME` menjadi teks statis akan memungkinkan dokumen menampilkan tanggal yang sama seperti saat dikirim. Selain itu, dalam beberapa situasi, Anda mungkin perlu menghapus bidang `IF` bersyarat dari dokumen Anda dan menggantinya dengan hasil teks terbaru. Misalnya, mengonversi hasil bidang `IF` menjadi teks statis sehingga tidak lagi berubah nilainya secara dinamis ketika bidang dalam dokumen diperbarui.

Diagram di bawah menunjukkan bagaimana bidang `IF` disimpan dalam dokumen:

* teks dikelilingi oleh node bidang khusus – [FieldStart](https://reference.aspose.com/words/net/aspose.words.fields/fieldstart/) dan [FieldEnd](https://reference.aspose.com/words/net/aspose.words.fields/fieldend)
* Node [FieldSeparator](https://reference.aspose.com/words/net/aspose.words.fields/fieldseparator/) memisahkan teks di dalam field menjadi kode field dan hasil field
* kode bidang mendefinisikan perilaku umum bidang, sedangkan hasil bidang mempertahankan hasil terbaru ketika bidang ini diperbarui menggunakan Microsoft Word atau Aspose.Words
* Hasil field adalah apa yang disimpan di field dan ditampilkan di dokumen saat dilihat

![update-remove-a-field-aspose-words](/words/net/replace-fields/updating-and-removing-a-field-1.png)

Strukturnya juga dapat dilihat di bawah dalam bentuk hierarki menggunakan [proyek demo *"Penjelajah Dokumen"*](https://github.com/aspose-words/Aspose.Words-for-.NET)*.*

![update-remove-a-field-aspose-words-2](/words/net/replace-fields/updating-and-removing-a-field-2.png)

## Bidang yang Tidak Dapat Diganti dengan Teks

Mengganti bidang dengan teks statis tidak berfungsi dengan baik untuk beberapa bidang di header atau footer.

Misalnya, mencoba mengonversi bidang `PAGE` di header atau footer menjadi teks statis akan menghasilkan nilai yang sama yang ditampilkan di semua halaman. Hal ini karena header dan footer diulangi di beberapa halaman, dan jika tetap sebagai bidang, header dan footer tersebut ditangani secara khusus sehingga menampilkan hasil yang benar untuk setiap halaman.

Namun, di header, bidang `PAGE` diterjemahkan dengan baik menjadi teks statis. Rangkaian teks ini akan dievaluasi seolah-olah itu adalah halaman terakhir di bagian tersebut, yang akan menyebabkan bidang `PAGE` apa pun di header menampilkan halaman terakhir di semua halaman.

Contoh kode berikut menunjukkan cara mengganti kolom dengan hasil terbarunya:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-UnlinkFields.cs" >}}

## Konversi Jenis Bidang Tertentu di Bagian Dokumen Tertentu

Karena metode **ConvertFieldsToStaticText** menerima dua parameter – properti [CompositeNode](https://reference.aspose.com/words/net/aspose.words/compositenode/) dan enumerasi [FieldType](https://reference.aspose.com/words/net/aspose.words.fields/fieldtype/), node komposit apa pun dapat diteruskan ke metode ini. Hal ini memungkinkan bidang dikonversi menjadi teks statis hanya di bagian tertentu dari dokumen.

Misalnya, Anda dapat meneruskan objek [Document](https://reference.aspose.com/words/net/aspose.words/document/) dan mengonversi bidang jenis tertentu dari seluruh dokumen menjadi teks statis, atau Anda dapat meneruskan objek [Body](https://reference.aspose.com/words/net/aspose.words/body/) suatu bagian dan hanya mengonversi bidang yang ditemukan di isi tersebut.

{{% alert color="primary" %}}

Saat meneruskan node tingkat blok seperti [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/), ketahuilah bahwa dalam beberapa kasus, bidang dapat mencakup beberapa paragraf. Jika ini terjadi, disarankan untuk meneruskan induk komposit untuk menghindari hal ini.

{{% /alert %}}

Pencacahan [FieldType](https://reference.aspose.com/words/net/aspose.words.fields/fieldtype/) yang diteruskan ke metode **ConvertFieldsToStaticText** menentukan jenis bidang apa yang harus diubah menjadi teks statis. Jenis bidang lain apa pun yang ditemukan dalam dokumen tidak akan berubah.

Contoh kode berikut menunjukkan cara memilih bidang dengan tipe tertentu – *targetFieldType* di node tertentu – *compositeNode* dan kemudian mengonversinya menjadi teks statis:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldsHelper-FieldsHelper.cs" >}}

Contoh kode berikut menunjukkan cara mengonversi semua bidang `IF` dalam dokumen menjadi teks statis:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-ConvertFieldsInDocument-ConvertFieldsInDocument.cs" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file contoh contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Linked%20fields.docx).

{{% /alert %}}

Contoh kode berikut menunjukkan cara mengonversi semua bidang `PAGE` di Badan dokumen menjadi teks statis:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-ConvertFieldsInBody-ConvertFieldsInBody.cs" >}}

Contoh kode berikut menunjukkan cara mengonversi semua bidang `IF` di paragraf terakhir menjadi teks statis:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-ConvertFieldsInParagraph-ConvertFieldsInParagraph.cs" >}}
