---
title: Mail Merge Mustache Sintaksis
second_title: Aspose.Words untuk Python via .NET
articleTitle: Templat Mail Merge dari Sintaks Mustache
linktitle: Templat Mail Merge dari Sintaks Mustache
type: docs
description: "Buat templat dengan sintaks Mustache menggunakan Python. sintaks Mustache adalah satu-satunya pilihan untuk digunakan dengan templat yang tidak berisi bidang (HTML atau TXT). Dengan templat Word, Anda memiliki dua opsi: bidang atau sintaks Mustache."
keywords: "mail merge template mustache syntax python"
weight: 40
url: /id/python-net/mail-merge-template-from-mustache-syntax/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words memungkinkan Anda membuat templat dengan sintaks mustache selain templat yang sudah dikenal. A Mustache adalah varian alternatif dari sintaks templat yang terdiri dari nama tag yang diapit oleh `{{ }}` dan didukung oleh objek model yang berisi data untuk templat tersebut.

Sintaks Mustache adalah satu-satunya pilihan untuk digunakan dengan templat yang tidak berisi bidang, seperti templat HTML dan TXT. Dengan templat Word, Anda memiliki dua opsi untuk menggunakan bidang atau sintaks Mustache.

Sintaks Mustache mendukung tag *foreach*, yang merupakan alternatif untuk menggunakan Mail Merge dengan wilayah. Jadi manfaatnya adalah Anda dapat menggunakan sintaks mustache jika karena alasan tertentu Anda tidak dapat atau hanya Anda tidak ingin menggunakan bidang gabungan dan wilayah gabungan.

Anda juga dapat menggabungkan bidang Mail Merge dengan beberapa bidang tambahan menggunakan tag *foreach* seperti yang ditunjukkan pada gambar di bawah ini.

<img src="mustache-syntax.png" alt="mustache_syntax" style="width:800px"/>

## Buat Templat Mustache

Poin penting pertama yang perlu diklarifikasi adalah bahwa Mustache bukanlah mesin templat. Mustache adalah varian sintaksis lain yang tersedia untuk templat apa pun dalam [load format](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) yang didukung oleh Aspose.Words. Oleh karena itu, Anda dapat membuat templat seperti itu baik secara terprogram maupun melalui antarmuka, Anda hanya perlu menyertakan sintaks tertentu dan mematuhi spesifikasi Mustache.

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

Mustache direpresentasikan sebagai urutan tanpa logika karena tidak memiliki pernyataan aliran kontrol khusus seperti loop *for* dan kondisi *if* dan *else*. Tetapi Anda dapat menggunakan daftar pemrosesan tag bagian dan lambda untuk mencapai evaluasi dan pengulangan bersyarat. Jadi untuk menyertakan sintaks Mustache dalam operasi Mail Merge, Anda perlu menggunakan properti [use_non_merge_fields](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/use_non_merge_fields/) dan menetapkan nilainya menjadi *True*.

## Gunakan Bidang `IF` untuk Membuat Mail Merge Cerdas

Aspose.Words memungkinkan Anda menggunakan bidang Mail Merge dan tag Mustache dengan pernyataan `IF`. Bidang `IF` dapat digunakan dalam dokumen Mail Merge apa pun untuk menyembunyikan spasi dan koma yang tidak diinginkan jika bidang kosong.

Rumus bidang `IF` ditunjukkan di bawah ini:

**{ IF [Condition] [Display Result 1] [Display Result 2] }**

Di sini, Kondisinya dapat berupa bidang gabungan atau tag Mustache.

Misalnya, Anda dapat menggunakan bidang `IF` jika Anda perlu menyisipkan "miliknya", "dia", "dia", atau " dia " bergantung pada jenis kelaminnya sebagai berikut:

**{ IF { MERGEFIELD Gender } = "MALE" "teks benar" "teks salah"}**

**{ IF "{{ GENDER }}" = "MALE" "teks benar" "teks salah"}**

Contoh kode berikut menunjukkan cara melakukan operasi Mail Merge dengan tag Mustache dan bidang `IF`:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Mail Merge and Reporting-base_operations-UseOfifelseMustacheSyntax.py" >}}

Anda dapat melihat perbedaan antara dokumen sebelum menerapkan properti [use_non_merge_fields](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/use_non_merge_fields/):

<img src="mustache-if-field-1.png" alt="mustache_if_field" style="width:800px"/>

Dan setelah menerapkan properti [use_non_merge_fields](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/use_non_merge_fields/):

<img src="mustache-if-field-2.png" alt="mustache-if-field-2.png" style="width:800px"/>
