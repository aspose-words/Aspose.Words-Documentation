---
title: Mail Merge dan Pelaporan dalam C++
second_title: Aspose.Words untuk C++
articleTitle: Mail Merge dan Pelaporan
linktitle: Mail Merge dan Pelaporan
type: docs
description: "Mail Merge adalah fitur populer untuk membuat dokumen dengan cepat menggunakan C++. Aspose.Words untuk C++ mengambil fungsionalitas mail merge standar dan meningkatkannya selangkah lebih maju, mengubahnya menjadi solusi pelaporan lengkap yang memungkinkan Anda membuat dokumen yang lebih kompleks seperti laporan, katalog, inventaris, dan faktur."
keywords: "how to use mail merge c++"
weight: 30
url: /id/cpp/mail-merge-and-reporting/
timestamp: 2024-01-30-16-22-34
---

Mail Merge adalah fitur populer untuk membuat dokumen seperti surat, label, dan amplop dengan cepat dan mudah. Aspose.Words memungkinkan Anda membuat dokumen dari templat dengan bidang mail merge.

Bidang mail merge adalah bidang yang dapat Anda sisipkan ke dalam templat mail merge untuk menyertakan nilai tertentu dari catatan sumber data dalam dokumen keluaran. Misalnya, Anda dapat menyisipkan bidang gabungan di templat email sehingga sapaan akan memiliki nama depan penerima, bukan " Halo!". Aspose.Words menempatkan data dari sumber eksternal, seperti database atau file, ke dalam bidang ini dan memformatnya. Dokumen yang dihasilkan disimpan dalam folder yang ditentukan.

Aspose.Words mengambil fungsionalitas mail merge standar dan meningkatkannya selangkah lebih maju, mengubahnya menjadi solusi pelaporan lengkap yang memungkinkan Anda membuat dokumen yang lebih kompleks seperti laporan, katalog, inventaris, dan faktur. Berikut adalah beberapa keuntungan dari solusi pelaporan Aspose.Words:

- Rancang laporan dalam Microsoft Word menggunakan bidang mail merge standar
- Tentukan wilayah dalam dokumen yang berkembang, seperti baris urutan mendetail
- Sisipkan gambar selama mail merge
- Jalankan logika khusus apa pun, pemformatan kontrol, atau sisipkan konten kompleks menggunakan penangan peristiwa mail merge
- Isi dokumen dengan data dari semua jenis sumber data

{{% alert color="primary" %}}

Namespace [Aspose.Words.MailMerging](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/) digunakan untuk bekerja dengan penggabungan surat.

{{% /alert %}}

## Mekanisme dan Komponen Utama Mail Merge {#mechanism-and-main-components-of-a-mail-merge-operation}

Aspose.Words menyediakan kemampuan untuk memuat dokumen dalam berbagai [supported formats](https://reference.aspose.com/words/cpp/aspose.words/loadformat/) dan kemudian memungkinkan pengguna untuk melakukan operasi mail merge.

Biasanya, dokumen yang dimuat memungkinkan Anda menyimpan bidang gabungan, misalnya, dokumen dalam format DOCX. Tetapi ada format yang tidak menyimpan bidang seperti itu, misalnya, TXT. Jika Aspose.Words mendukung pemuatan format file seperti itu, Anda dapat menambahkan bidang gabungan langsung ke model dokumen, menyimpan dokumen dalam [supported format](https://reference.aspose.com/words/cpp/aspose.words/saveformat/) yang nyaman, dan melakukan operasi mail merge.

Operasi mail merge akan menggabungkan *mail merge template* dan *data source* Anda untuk menghasilkan *merged documents* individual.

## Apa itu Templat Mail Merge {#what-is-a-mail-merge-template}

Tujuan penerapan operasi mail merge menggunakan templat gabungan adalah untuk menyederhanakan proses pembuatan dokumen.

Ada beberapa cara untuk membuat dan mendesain template gabungan. Anda dapat menggunakan Microsoft Word, dan templat penggabungan tidak harus berupa templat Microsoft Word, yaitu dokumen dalam format DOT atau DOTX, dapat berupa dokumen biasa dalam format DOC atau DOCX. Anda perlu menyisipkan beberapa bidang khusus yang disebut bidang gabungan ke dalam templat ini di tempat-tempat di mana Anda ingin memasukkan data dari sumber data Anda nanti. Atau Anda dapat membuat templat gabungan secara terprogram menggunakan kelas [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/).

Templat penggabungan berisi teks utama, yang harus sama di semua dokumen keluaran setelah Anda melakukan operasi mail merge. Anda dapat menggunakan format apa pun untuk templat Anda jika ada kemampuan untuk menambahkan bidang gabungan ke dalamnya. Semua bidang gabungan dalam templat Anda akan diisi dari sumber data Anda selama operasi mail merge.


## Lihat Juga

- [Bekerja dengan templat mail merge di Word](https://docs.microsoft.com/en-us/power-platform/admin/work-mail-merge-templates)
