---
title: Mail Merge Templat dalam Java
second_title: Aspose.Words untuk Java
articleTitle: Mail Merge Templat
linktitle: Mail Merge Templat
type: docs
description: "Buat templat Mail Merge untuk menentukan konten tetap dalam dokumen keluaran, lalu buat dokumen gabungan menggunakan bidang gabungan di Java."
keywords: "create Mail Merge template Java, Mail Merge Java"
weight: 10
url: /id/java/mail-merge-template/
timestamp: 2024-01-31-14-23-37
---

Adalah umum untuk menggunakan templat gabungan sebagai dokumen dasar untuk operasi Mail Merge baik jika itu adalah Mail Merge sederhana atau Mail Merge dengan wilayah. Mail merge dengan wilayah lebih kuat dan populer daripada mail merge sederhana. Mail Merge sederhana dianggap sebagai kasus khusus Mail Merge dengan wilayah di mana wilayah tersebut merupakan keseluruhan dokumen. Semua dijelaskan dalam artikel berikutnya "Jenis Operasi Mail Merge" secara lebih rinci.

Templat memastikan bahwa teks dalam dokumen gabungan keluaran diformat dengan benar, dan operasi Mail Merge menjamin bahwa teks dari sumber data dimasukkan dengan benar ke dalam templat gabungan.

Aspose.Words menyediakan kemampuan untuk membuat templat Mail Merge untuk menentukan konten tetap dan kemudian membuat dokumen gabungan menggunakan bidang gabungan. Dengan demikian, templat penggabungan akan memiliki teks yang diperlukan, yang sama di semua dokumen keluaran, dan bidang penggabungan untuk mengisi konten yang berubah. Hasilnya, informasi dari sumber data yang ditentukan akan ditambahkan ke templat gabungan melalui bidang-bidang ini selama pembuatan dokumen gabungan.

## Apa itu Templat Mail Merge

Templat Mail Merge adalah dokumen hasil personalisasi yang berisi data tetap dan bidang gabungan yang Anda inginkan untuk teks variabelnya. Templat gabungan dapat dalam format apa pun yang mendukung bidang, misalnya, DOC, DOCX, DOT, DOTX, RTF. Selain itu, Anda juga dapat menggunakan template mustache yang dijelaskan pada artikel "Sintaks TemplateMustache" secara lebih detail.

Anda dapat membuat templat gabungan untuk menjadi model dokumen baru, dan templat tersebut harus menyertakan teks utama yang harus sama untuk setiap versi dokumen yang digabungkan. Menambahkan bidang gabungan di dalam templat akan mewakili data personalisasi seperti nama atau alamat yang diambil dari sumber data. Operasi Mail Merge akan secara otomatis menyisipkan data personalisasi dari sumber data Anda ke dokumen templat gabungan Anda.

Selain itu, Anda dapat menambahkan wilayah Mail Merge di templat Anda dengan menyisipkan dua bidang Mail Merge untuk menandai awal dan akhir wilayah mail. Artikel selanjutnya "Jenis Operasi Mail Merge" menjelaskannya secara lebih rinci.

## Buat Templat Mail Merge

Anda dapat membuat templat dan menambahkan bidang gabungan tertentu ke dalamnya, yang akan diganti dengan nilai dari sumber data baik secara manual, misalnya, menggunakan Microsoft Word, atau secara terprogram menggunakan Aspose.Words. Pada artikel ini, kita akan melihat cara terprogram untuk membuat template.

Gunakan kelas [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) untuk membuat templat gabungan yang diperlukan menggunakan Aspose.Words. Anda dapat menyertakan teks, bidang gabungan, dan jeda baris dalam templat tersebut menggunakan [InsertTextInput](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTextInput(java.lang.String,int,java.lang.String,java.lang.String,int)), [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField(int,boolean)), dan [InsertParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertParagraph()) metode.

Contoh kode berikut menunjukkan cara membuat templat Mail Merge:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeTemplate-CreateMailMergeTemplate.java" >}}

Gambar di bawah ini menunjukkan template yang dibuat:

<img src="/words/java/mail-merge-template/mail-merge-template-1.png" alt="mail_merge_template_aspose_words_java" style="width:650px"/>

## Menyesuaikan Properti Templat Mail Merge

Aspose.Words memungkinkan Anda menyesuaikan templat melalui banyak properti. Kustomisasi template akan dijelaskan di bawah ini melalui contoh penyesuaian beberapa properti gambar dan teks.

### Sesuaikan Properti Gambar

Anda dapat menentukan properti gambar menggunakan kelas [ImageFieldMergingArgs](https://reference.aspose.com/words/java/com.aspose.words/imagefieldmergingargs/). Perhatikan bahwa Anda dapat menyisipkan gambar dari database seperti yang dijelaskan dalam [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/c693ec7a8957051c206edc69612094a4169f6def/Examples/DocsExamples/Java/src/main/java/DocsExamples/Mail_Merge_And_Reporting/WorkingWithFields.java#L226).

Contoh kode berikut menunjukkan cara menentukan nama file gambar dan ukuran gambar:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeFormFields-ImageFieldMerging.java" >}}

### Sesuaikan Properti Teks

Anda dapat menggunakan kelas [Teks]https://reference.aspose.com/words/java/com.aspose.words/Fieldmergingargs#Text) properti untuk menyisipkan teks ke dalam dokumen untuk bidang penggabungan saat ini. Selain itu, Anda dapat mengubah pemformatan teks dan paragraf di dalam templat menggunakan [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) dan [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/). Anda dapat menangani teks yang akan disisipkan sebelum atau sesudah bidang penggabungan dengan menggunakan properti [TextBefore](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/#TextBefore) dan [TextAfter](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/#TextAfter) yang disertakan dalam kelas [FieldMergeField](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/).

Contoh kode berikut menunjukkan cara menyisipkan Kotak Centang atau HTML selama operasi Mail Merge:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeFormFields-MailMergeFormFields.java" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file contoh contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Mail%20merge%20destinations%20-%20Fax.docx).

Anda juga dapat memeriksa implementasi kelas `HandleMergeField` dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Mail_Merge_And_Reporting/WorkingWithFields.java).

{{% /alert %}}

## Lihat Juga

* Untuk detail lebih lanjut tentang cara membuat templat di Microsoft Word secara manual, silakan periksa [Buat Template](https://support.microsoft.com/en-us/office/save-a-word-document-as-a-template-cb17846d-ecec-49d4-82ea-a6f5e3e8b9ae) artikel dalam Dokumentasi Microsoft
