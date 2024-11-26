---
title: Mail Merge Templat dalam C++
second_title: Aspose.Words untuk C++
articleTitle: Mail Merge Templat
linktitle: Mail Merge Templat
type: docs
description: "Buat templat Mail Merge untuk menentukan konten tetap dalam dokumen keluaran, lalu buat dokumen gabungan menggunakan bidang gabungan."
keywords: "create Mail Merge template с++"
weight: 10
url: /id/cpp/mail-merge-template/
timestamp: 2024-01-31-14-23-37
---

Adalah umum untuk menggunakan templat gabungan sebagai dokumen dasar untuk operasi Mail Merge baik jika itu adalah Mail Merge sederhana atau Mail Merge dengan wilayah. Mail merge dengan wilayah lebih kuat dan populer daripada Mail Merge sederhana. Mail Merge sederhana dianggap sebagai kasus khusus Mail Merge dengan wilayah di mana wilayah tersebut merupakan keseluruhan dokumen. Semua dijelaskan pada artikel selanjutnya "Jenis Operasi Mail Merge" secara lebih rinci.

Templat memastikan bahwa teks dalam dokumen gabungan keluaran diformat dengan benar, dan operasi Mail Merge menjamin bahwa teks dari sumber data dimasukkan dengan benar ke dalam templat gabungan.

Aspose.Words menyediakan kemampuan untuk membuat templat Mail Merge untuk menentukan konten tetap dan kemudian membuat dokumen gabungan menggunakan bidang gabungan. Dengan demikian, templat penggabungan akan memiliki teks yang diperlukan, yang sama di semua dokumen keluaran, dan bidang penggabungan untuk mengisi konten yang berubah. Hasilnya, informasi dari sumber data yang ditentukan akan ditambahkan ke templat gabungan melalui bidang-bidang ini selama pembuatan dokumen gabungan.

## Apa itu Templat Mail Merge

Templat Mail Merge adalah dokumen hasil personalisasi yang berisi data tetap dan bidang gabungan yang Anda inginkan untuk teks variabelnya. Templat gabungan dapat dalam format apa pun yang mendukung bidang, misalnya, DOC, DOCX, DOT, DOTX, RTF. Selain itu, Anda juga dapat menggunakan template mustache yang dijelaskan pada artikel "Sintaks TemplateMustache" secara lebih detail.

Anda dapat membuat templat gabungan untuk menjadi model dokumen baru, dan templat tersebut harus menyertakan teks utama yang harus sama untuk setiap versi dokumen yang digabungkan. Menambahkan bidang gabungan di dalam templat akan mewakili data personalisasi seperti nama atau alamat yang diambil dari sumber data. Operasi Mail Merge akan secara otomatis menyisipkan data personalisasi dari sumber data Anda ke dokumen templat gabungan Anda.

Selain itu, Anda dapat menambahkan wilayah Mail Merge di templat Anda dengan menyisipkan dua bidang Mail Merge untuk menandai awal dan akhir wilayah mail. Artikel selanjutnya "Jenis Operasi Mail Merge" menjelaskannya secara lebih rinci.

## Buat Templat Mail Merge

Anda dapat membuat templat dan menambahkan bidang gabungan tertentu ke dalamnya, yang akan diganti dengan nilai dari sumber data baik secara manual, misalnya, menggunakan Microsoft Word, atau secara terprogram menggunakan Aspose.Words. Pada artikel ini, kita akan melihat cara terprogram untuk membuat template.

Gunakan kelas [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) untuk membuat templat gabungan yang diperlukan menggunakan Aspose.Words. Anda dapat menyertakan teks, bidang gabungan, dan jeda baris dalam templat tersebut menggunakan metode [InsertTextInput](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/inserttextinput/), [InsetField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/), dan [InsertParagraph](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertparagraph/).

Contoh kode berikut menunjukkan cara membuat templat mail merge:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeTemplate-CreateMailMergeTemplate.cpp" >}}

Gambar di bawah ini menunjukkan template yang dibuat:

<img src="mail-merge-template-1.png" alt="mail_merge_template-aspose-words-cpp" style="width:650px"/>

## Menyesuaikan Properti Templat Mail Merge

Aspose.Words memungkinkan Anda menyesuaikan templat melalui banyak properti. Kustomisasi template akan dijelaskan di bawah ini melalui contoh penyesuaian beberapa properti gambar dan teks.

### Sesuaikan Properti Gambar

Anda dapat menentukan properti gambar menggunakan kelas [ImageFieldMergingArgs](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imagefieldmergingargs/).

Contoh kode berikut menunjukkan cara menentukan nama file gambar dan ukuran gambar:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeFormFields-ImageFieldMerging.cpp" >}}

### Sesuaikan Properti Teks

Anda dapat menggunakan properti [Text](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/fieldmergingargs/get_text/) untuk menyisipkan teks ke dalam dokumen untuk bidang penggabungan saat ini. Selain itu, Anda dapat mengubah pemformatan teks dan paragraf di dalam templat Anda menggunakan kelas [Font](https://reference.aspose.com/words/cpp/aspose.words/font/) dan [ParagraphFormat](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/). Anda dapat menangani teks yang akan disisipkan sebelum atau sesudah bidang penggabungan dengan menggunakan properti [TextBefore](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/get_textbefore/) dan [TextAfter](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/get_textafter/) yang disertakan dalam kelas [FieldMergeField](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/).

Contoh kode berikut menunjukkan cara menyisipkan Kotak Centang atau HTML selama operasi mail merge:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeFormFields-MailMergeFormFields.cpp" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file contoh contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

Anda juga dapat memeriksa implementasi kelas `HandleMergeField` dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Lihat Juga

* Untuk detail lebih lanjut tentang cara membuat templat di Microsoft Word secara manual, silakan periksa [Buat Templat](https://support.microsoft.com/en-us/office/save-a-word-document-as-a-template-cb17846d-ecec-49d4-82ea-a6f5e3e8b9ae) artikel dalam Dokumentasi Microsoft
