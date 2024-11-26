---
title: Templat Mail Merge dari Sintaks Mustache
second_title: Aspose.Words untuk Java
articleTitle: Templat Mail Merge dari Sintaks Mustache
linktitle: Templat Mail Merge dari Sintaks Mustache
type: docs
description: "Buat templat dengan sintaks Mustache. sintaks Mustache adalah satu-satunya pilihan untuk digunakan dengan templat yang tidak berisi bidang (HTML atau TXT). Dengan templat Word, Anda memiliki dua opsi: bidang atau sintaks Mustache menggunakan Java."
keywords: "mail merge template mustache syntax java, Mail Merge java, mustache syntax java"
weight: 40
url: /id/java/mail-merge-template-from-mustache-syntax/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words memungkinkan Anda membuat templat dengan sintaks mustache selain templat yang sudah dikenal. A Mustache adalah varian alternatif dari sintaks templat yang terdiri dari nama tag yang diapit dan didukung oleh objek model yang berisi data untuk templat.

Sintaks Mustache adalah satu-satunya pilihan untuk digunakan dengan templat yang tidak berisi bidang, seperti templat HTML dan TXT. Dengan templat Word, Anda memiliki dua opsi untuk menggunakan bidang atau sintaks Mustache.

Sintaks Mustache mendukung tag *foreach*, yang merupakan alternatif untuk menggunakan Mail Merge dengan wilayah. Jadi manfaatnya adalah Anda dapat menggunakan sintaks mustache jika karena alasan tertentu Anda tidak dapat atau hanya Anda tidak ingin menggunakan bidang gabungan dan wilayah gabungan.

Anda juga dapat menggabungkan bidang Mail Merge dengan beberapa bidang tambahan menggunakan tag *foreach* seperti yang ditunjukkan pada gambar di bawah ini.

<img src="/words/java/mail-merge-template-from-mustache-syntax/mustache-syntax.png" alt="mustache_syntax_aspose_words_java" style="width:800px"/>

## Buat Templat Mustache

Poin penting pertama yang perlu diklarifikasi adalah bahwa Mustache bukanlah mesin templat. Mustache adalah varian sintaksis lain yang tersedia untuk templat apa pun dalam [muat format](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) yang didukung oleh Aspose.Words. Oleh karena itu, Anda dapat membuat templat seperti itu baik secara terprogram maupun melalui antarmuka, Anda hanya perlu menyertakan sintaks tertentu dan mematuhi spesifikasi Mustache.

Misalkan Anda perlu mengirim email yang sama ke 50 penerima untuk mempersonalisasi salam dengan nama depan yang sesuai. Anda dapat mengganti nama depan penerima dengan beberapa placeholder sebagai berikut:

> Dear {{FirstName}}
>
> I hereby...

Pertanyaannya di sini: bagaimana Anda dapat membuat 50 email dari 1 templat Mustache tunggal? Untuk menjawabnya, Anda perlu melakukan Mail Merge dengan wilayah untuk mengisi kurung kurawal untuk placeholder di templat dengan data aktual dan menghasilkan dokumen keluaran.

<img src="/words/java/mail-merge-template-from-mustache-syntax/mustache-template.png" alt="mustache_template_aspose_words_java" style="width:650px"/>

{{% alert color="primary" %}}

Seperti yang Anda perhatikan dari contoh di atas, di Mustache Anda perlu menggunakan kurung kurawal untuk penampung yang terlihat seperti mustache saat Anda memutar kurung kurawal 90 derajat searah jarum jam.

{{% /alert %}}

## Bekerja dengan Sintaks Mustache

Mustache direpresentasikan sebagai urutan tanpa logika karena tidak memiliki pernyataan aliran kontrol khusus seperti loop *for* dan kondisi *if* dan *else*. Tetapi Anda dapat menggunakan daftar pemrosesan tag bagian dan lambda untuk mencapai evaluasi dan pengulangan bersyarat. Jadi untuk menyertakan sintaks Mustache dalam operasi Mail Merge, Anda perlu menggunakan properti [UseNonMergeFields](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getUseNonMergeFields) dan menetapkan nilainya menjadi *True*.

Contoh kode berikut menunjukkan cara mengganti tag Mustache dengan data tertentu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeUsingMustacheTemplateSyntax-MustacheSyntaxUsingDataTable.java" >}}

Anda dapat melihat perbedaan antara dokumen sebelum menjalankan Mail Merge dengan wilayah bersama dengan menerapkan properti **UseNonMergeFields**:

<img src="/words/java/mail-merge-template-from-mustache-syntax/mustache-syntax-1.png" alt="mustache_syntax_aspose_words_java" style="width:400px"/>

{{% alert color="primary" %}}

Bagian dimulai dengan satu pon dan diakhiri dengan garis miring. Artinya, `{{#foreach list}}` memulai bagian "foreach" sedangkan `{{/foreach list}}` mengakhirinya.

{{% /alert %}}

Dan setelah menerapkan Mail Merge dengan wilayah:

<img src="/words/java/mail-merge-template-from-mustache-syntax/mustache-syntax-2.png" alt="mustache_syntax_result_aspose_words_java" style="width:300px"/>

## Gunakan Bidang `IF` untuk Membuat Mail Merge Cerdas

Aspose.Words memungkinkan Anda menggunakan bidang Mail Merge dan tag Mustache dengan pernyataan `IF`. Bidang `IF` dapat digunakan dalam dokumen Mail Merge apa pun untuk menyembunyikan spasi dan koma yang tidak diinginkan jika bidang kosong.

Rumus bidang `IF` ditunjukkan di bawah ini:

**{ IF [Condition] [Display Result 1] [Display Result 2] }**

Di sini, Kondisinya dapat berupa bidang gabungan atau tag Mustache.

Misalnya, Anda dapat menggunakan bidang `IF` jika Anda perlu menyisipkan "miliknya", "dia", "dia", atau " dia " bergantung pada jenis kelaminnya sebagai berikut:

**{ IF { MERGEFIELD Gender } = "MALE" "teks benar" "teks salah"}**

**{ IF "{{ GENDER }}" = "MALE" "teks benar" "teks salah"}**

Contoh kode berikut menunjukkan cara melakukan operasi Mail Merge dengan tag Mustache dan bidang `IF`:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeUsingMustacheTemplateSyntax-UseOfIfElseMustacheSyntax.java" >}}

Anda dapat melihat perbedaan antara dokumen sebelum menerapkan properti **UseNonMergeFields**:

<img src="/words/java/mail-merge-template-from-mustache-syntax/mustache-if-field-1.png" alt="mustache_if_field_aspose_words_java" style="width:800px"/>

Dan setelah menerapkan properti **UseNonMergeFields**:

<img src="/words/java/mail-merge-template-from-mustache-syntax/mustache-if-field-2.png" alt="mustache_if_field_2_aspose_words_java" style="width:800px"/>
