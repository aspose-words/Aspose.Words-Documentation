---
title: Mail Merge dan Pelaporan dalam Python
second_title: Aspose.Words untuk Python via .NET
articleTitle: Mail Merge dan Pelaporan
linktitle: Mail Merge dan Pelaporan
type: docs
description: "Mail Merge adalah fitur populer untuk membuat dokumen dengan cepat menggunakan Python. Aspose.Words untuk Python via .NET mengambil fungsionalitas Mail Merge standar dan meningkatkannya selangkah lebih maju, mengubahnya menjadi solusi pelaporan lengkap yang memungkinkan Anda membuat dokumen yang lebih kompleks seperti laporan, katalog, inventaris, dan faktur."
keywords: "how to use Mail Merge python"
weight: 30
url: /id/python-net/mail-merge-and-reporting/
timestamp: 2024-01-27-14-07-04
---

Mail Merge adalah fitur populer untuk membuat dokumen seperti surat, label, dan amplop dengan cepat dan mudah. Aspose.Words memungkinkan Anda membuat dokumen dari templat dengan bidang Mail Merge.

Bidang Mail Merge adalah bidang yang dapat Anda sisipkan ke dalam templat mail merge untuk menyertakan nilai tertentu dari catatan sumber data dalam dokumen keluaran. Misalnya, Anda dapat menyisipkan bidang gabungan di templat email sehingga sapaan akan memiliki nama depan penerima, bukan " Halo!". Aspose.Words menempatkan data dari sumber eksternal, seperti database atau file, ke dalam bidang ini dan memformatnya. Dokumen yang dihasilkan disimpan dalam folder yang ditentukan.

Aspose.Words mengambil fungsionalitas Mail Merge standar dan meningkatkannya selangkah lebih maju, mengubahnya menjadi solusi pelaporan lengkap yang memungkinkan Anda membuat dokumen yang lebih kompleks seperti laporan, katalog, inventaris, dan faktur. Berikut adalah beberapa keuntungan dari solusi pelaporan Aspose.Words:

- Rancang laporan dalam Microsoft Word menggunakan bidang Mail Merge standar
- Tentukan wilayah dalam dokumen yang berkembang, seperti baris urutan terperinci (saat ini tidak didukung dalam versi Python)
- Sisipkan gambar selama mail merge
- Jalankan logika khusus apa pun, pemformatan kontrol, atau sisipkan konten kompleks menggunakan penangan peristiwa Mail Merge (saat ini tidak didukung dalam versi Python)
- Isi dokumen dengan data dari semua jenis sumber data (saat ini tidak didukung dalam versi Python, hanya sumber data array yang didukung)

{{% alert color="primary" %}}

Modul [aspose.words.mailmerging](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/) digunakan untuk bekerja dengan penggabungan surat.

{{% /alert %}}

## Mekanisme dan Komponen Utama dari Operasi Mail Merge {#mechanism-and-main-components-of-a-mail-merge-operation}

Aspose.Words menyediakan kemampuan untuk memuat dokumen dalam berbagai [supported formats](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) dan kemudian memungkinkan pengguna untuk melakukan operasi Mail Merge.

Biasanya, dokumen yang dimuat memungkinkan Anda menyimpan bidang gabungan, misalnya, dokumen dalam format DOCX. Tetapi ada format yang tidak menyimpan bidang seperti itu, misalnya, TXT. Jika Aspose.Words mendukung pemuatan format file seperti itu, Anda dapat menambahkan bidang gabungan langsung ke model dokumen, menyimpan dokumen dalam [supported format](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) yang nyaman, dan melakukan operasi Mail Merge.

Operasi Mail Merge akan menggabungkan *mail merge template* dan *data source* Anda untuk menghasilkan *merged documents* individual.

## Apa itu Templat Mail Merge {#what-is-a-mail-merge-template}

Tujuan penerapan operasi mail merge menggunakan templat gabungan adalah untuk menyederhanakan proses pembuatan dokumen.

Ada beberapa cara untuk membuat dan mendesain template gabungan. Anda dapat menggunakan Microsoft Word, dan templat penggabungan tidak harus berupa templat Microsoft Word, yaitu dokumen dalam format DOT atau DOTX, dapat berupa dokumen biasa dalam format DOC atau DOCX. Anda perlu menyisipkan beberapa bidang khusus yang disebut bidang gabungan ke dalam templat ini di tempat-tempat di mana Anda ingin memasukkan data dari sumber data Anda nanti. Atau Anda dapat membuat templat gabungan secara terprogram menggunakan kelas [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/).

Templat penggabungan berisi teks utama, yang harus sama di semua dokumen keluaran setelah Anda melakukan operasi Mail Merge. Anda dapat menggunakan format apa pun untuk templat Anda jika ada kemampuan untuk menambahkan bidang gabungan ke dalamnya. Semua bidang gabungan dalam templat Anda akan diisi dari sumber data Anda selama operasi Mail Merge.

## Tipe Sumber Data untuk Operasi Mail Merge {#data-source-types-for-a-mail-merge-operation}

Saat ini Aspose.Words untuk Python via .NET Mail Merge hanya menerima larik nilai sebagai sumber data. Jenis lain akan ditambahkan di versi mendatang.

Contoh kode berikut menunjukkan cara membuat templat sederhana dan mengisinya dengan data menggunakan fungsionalitas Mail Merge:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Mail Merge and Reporting-base_operations-SimpleMailMerge.py" >}}


## Dokumen Gabungan dari Operasi Mail Merge {#merged-documents-of-a-mail-merge-operation}

Dokumen gabungan adalah hasil dari operasi Mail Merge saat Anda menggabungkan templat dengan sumber data. Semua bidang gabungan dalam dokumen gabungan diganti dengan data aktual dari sumber data Anda.

Gambar berikut menunjukkan contoh templat gabungan dengan bidang gabungan sebelum melakukan operasi Mail Merge.

![mail-merge-and-reporting-fields-aspose-words-net](mail-merge-and-reporting-1.jpg)

Gambar berikut menunjukkan contoh dokumen gabungan keluaran sebagai hasil dari menjalankan operasi Mail Merge.

![mail-merge-and-reporting-result-aspose-words-net](mail-merge-and-reporting-2.jpg)

## Lihat Juga

- [Bekerja dengan templat Mail Merge dalam Word](https://docs.microsoft.com/en-us/power-platform/admin/work-mail-merge-templates)
