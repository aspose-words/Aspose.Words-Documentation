---
title: Templat Mail Merge dari Sintaks Mustachedalam C#
second_title: Aspose.Words untuk .NET
articleTitle: Templat Mail Merge dari Sintaks Mustache
linktitle: Templat Mail Merge dari Sintaks Mustache
type: docs
description: "Buat templat dengan sintaks Mustache menggunakan C#. sintaks Mustache adalah satu-satunya pilihan untuk digunakan dengan templat yang tidak berisi bidang (HTML atau TXT). Dengan templat Word, Anda memiliki dua opsi: bidang atau sintaks Mustache."
keywords: "mail merge template mustache syntax c#"
weight: 40
url: /id/net/mail-merge-template-from-mustache-syntax/
timestamp: 2024-07-11-08-07-06
---

Aspose.Words memungkinkan Anda membuat templat dengan sintaks mustache selain templat yang sudah dikenal. A Mustache adalah varian alternatif dari sintaks templat yang terdiri dari nama tag yang diapit dan didukung oleh objek model yang berisi data untuk templat.

Sintaks Mustache adalah satu-satunya pilihan untuk digunakan dengan templat yang tidak berisi bidang, seperti templat HTML dan TXT. Dengan templat Word, Anda memiliki dua opsi untuk menggunakan bidang atau sintaks Mustache.

Sintaks Mustache mendukung tag *foreach*, yang merupakan alternatif untuk menggunakan Mail Merge dengan wilayah. Jadi manfaatnya adalah Anda dapat menggunakan sintaks mustache jika karena alasan tertentu Anda tidak dapat atau hanya Anda tidak ingin menggunakan bidang gabungan dan wilayah gabungan.

Anda juga dapat menggabungkan bidang Mail Merge dengan beberapa bidang tambahan menggunakan tag *foreach* seperti yang ditunjukkan pada gambar di bawah ini.

<img src="mustache-syntax.png" alt="mustache_syntax" style="width:800px"/>

## Buat Templat Mustache

Poin penting pertama yang perlu diklarifikasi adalah bahwa Mustache bukanlah mesin templat. Mustache adalah varian sintaksis lain yang tersedia untuk templat apa pun dalam [load format](https://reference.aspose.com/words/net/aspose.words/loadformat/) yang didukung oleh Aspose.Words. Oleh karena itu, Anda dapat membuat templat seperti itu baik secara terprogram maupun melalui antarmuka, Anda hanya perlu menyertakan sintaks tertentu dan mematuhi spesifikasi Mustache.

Misalkan Anda perlu mengirim email yang sama ke 50 penerima untuk mempersonalisasi salam dengan nama depan yang sesuai. Anda dapat mengganti nama depan penerima dengan beberapa placeholder sebagai berikut:

> Dear {{FirstName}}
>
> I hereby...

Pertanyaannya di sini: bagaimana Anda dapat membuat 50 email dari 1 templat Mustache tunggal? Untuk menjawabnya, Anda perlu melakukan Mail Merge dengan wilayah untuk mengisi kurung kurawal untuk placeholder di templat dengan data aktual dan menghasilkan dokumen keluaran.

<img src="mustache-template.png" alt="mustache_template" style="width:650px"/>

{{% alert color="primary" %}}

Seperti yang Anda perhatikan dari contoh di atas, di Mustache Anda perlu menggunakan kurung kurawal untuk penampung yang terlihat seperti mustache saat Anda memutar kurung kurawal 90 derajat searah jarum jam.

{{% /alert %}}

## Bekerja dengan Sintaks Mustache

Mustache direpresentasikan sebagai urutan tanpa logika karena tidak memiliki pernyataan aliran kontrol khusus seperti loop *for* dan kondisi *if* dan *else*. Tetapi Anda dapat menggunakan daftar pemrosesan tag bagian dan lambda untuk mencapai evaluasi dan pengulangan bersyarat. Jadi untuk menyertakan sintaks Mustache dalam operasi Mail Merge, Anda perlu menggunakan properti [UseNonMergeFields](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/usenonmergefields/) dan menetapkan nilainya menjadi *True*.

Contoh kode berikut menunjukkan cara mengganti tag Mustache dengan data tertentu:

{{< gist "aspose-words-gists" "544788f602e697802e313a641cedb9b8" "mustache-syntax-using-data-table.cs" >}}

Anda dapat melihat perbedaan antara dokumen sebelum menjalankan Mail Merge dengan wilayah bersama dengan menerapkan properti **UseNonMergeFields**:

<img src="mustache-syntax-1.png" alt="mustache_syntax" style="width:400px"/>

{{% alert color="primary" %}}

Bagian dimulai dengan satu pon dan diakhiri dengan garis miring. Artinya, `{{#foreach list}}` memulai bagian "foreach" sedangkan `{{/foreach list}}` mengakhirinya.

{{% /alert %}}

Dan setelah menerapkan Mail Merge dengan wilayah:

<img src="mustache-syntax-2.png" alt="mustache_syntax_result" style="width:300px"/>

## Gunakan Bidang `IF` untuk Membuat Mail Merge Cerdas

Aspose.Words memungkinkan Anda menggunakan bidang Mail Merge dan tag Mustache dengan pernyataan `IF`. Bidang `IF` dapat digunakan dalam dokumen Mail Merge apa pun untuk menyembunyikan spasi dan koma yang tidak diinginkan jika bidang kosong.

Rumus bidang `IF` ditunjukkan di bawah ini:

**{ IF [Condition] [Display Result 1] [Display Result 2] }**

Di sini, Kondisinya dapat berupa bidang gabungan atau tag Mustache.

Misalnya, Anda dapat menggunakan bidang `IF` jika Anda perlu menyisipkan "miliknya", "dia", "dia", atau " dia " bergantung pada jenis kelaminnya sebagai berikut:

**{ IF { MERGEFIELD Gender } = "MALE" "teks benar" "teks salah"}**

**{ IF "{{ GENDER }}" = "MALE" "teks benar" "teks salah"}**

Contoh kode berikut menunjukkan cara melakukan operasi Mail Merge dengan tag Mustache dan bidang `IF`:

{{< gist "aspose-words-gists" "544788f602e697802e313a641cedb9b8" "use-if-else-mustache.cs" >}}

Anda dapat melihat perbedaan antara dokumen sebelum menerapkan properti **UseNonMergeFields**:

<img src="mustache-if-field-1.png" alt="mustache_if_field" style="width:800px"/>

Dan setelah menerapkan properti **UseNonMergeFields**:

<img src="mustache-if-field-2.png" alt="mustache-if-field-2.png" style="width:800px"/>
