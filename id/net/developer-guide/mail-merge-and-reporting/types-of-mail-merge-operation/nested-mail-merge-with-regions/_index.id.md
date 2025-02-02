﻿---
title: Bersarang Mail Merge dengan Wilayah dalam C#
second_title: Aspose.Words untuk .NET
articleTitle: Bersarang Mail Merge dengan Wilayah
linktitle: Bersarang Mail Merge dengan Wilayah
type: docs
description: "Lakukan operasi Mail Merge dengan wilayah bersarang menggunakan C#. Penggabungan bersarang adalah fitur yang memungkinkan Anda menggabungkan data hierarki dari sumber data ke dalam templat penggabungan Anda."
keywords: "mail merge with nested regions c#"
weight: 10
url: /id/net/nested-mail-merge-with-regions/
timestamp: 2024-07-11-08-07-06
---

Dalam beberapa skenario, Anda mungkin perlu menggunakan Mail Merge bersarang dengan wilayah. Penggabungan bersarang adalah fitur yang memungkinkan Anda menggabungkan data hierarki dari sumber data ke dalam templat penggabungan untuk mengisi dokumen Anda dengan mudah. Pada dasarnya, data hierarkis direpresentasikan sebagai sekumpulan item data, dan hubungan hierarkis menggambarkan bagaimana item data terkait satu sama lain (satu item data adalah induk dari item lainnya).

Aspose.Words memungkinkan Anda melakukan operasi Mail Merge dengan wilayah bersarang. Anda dapat menggunakan fitur ini jika Anda memiliki sumber data yang disusun menjadi struktur seperti pohon dan Anda ingin menjalankan operasi Mail Merge untuk mengisi templat dengan data hierarkis.

{{% alert color="primary" %}}

Mail Merge bersarang hanya relevan saat menjalankan Mail Merge dengan wilayah.

{{% /alert %}}

## Apa itu Mail MergeBersarang

Wilayah Mail Merge disebut bersarang jika Anda memiliki dua atau lebih wilayah Mail Merge di mana salah satunya berada di dalam wilayah lainnya dalam bentuk hierarki. Perhatikan bahwa setiap wilayah berisi data dari satu tabel.

Contoh paling umum dari Mail Merge bersarang adalah urutan yang berisi beberapa item di mana Anda perlu menautkan beberapa tabel data dan menyajikan informasi dalam templat.

Gambar di bawah ini menunjukkan dua wilayah bersarang di mana wilayah *Order* Mail Merge adalah induk dari wilayah *Item* Mail Merge.

<img src="nested-mail-merge-with-regions-1.png" alt="nested_mail_merge_with_regions" style="width:650px"/>

## Cara Memproses Mail Merge dengan Wilayah Bersarang

Data yang akan digabungkan ke dalam templat dapat berasal dari berbagai sumber, terutama basis data relasional atau dokumen XML. Dalam contoh kita, kita akan menggunakan file XML untuk menyimpan data kita dan memuatnya langsung ke **DataSet**.

Aspose.Words memungkinkan Anda memproses Mail Merge dengan wilayah bersarang menggunakan hubungan data yang ditentukan dalam **DataSet**. Saat objek **DataSet** memuat XML, objek tersebut menggunakan skema yang disediakan atau menyimpulkannya dari struktur XML itu sendiri untuk mencapainya. Dari struktur ini, ia menciptakan hubungan antar tabel jika diperlukan.

Gambar di bawah ini menunjukkan bagaimana data dari tabel *Order* yang diteruskan ke wilayah penggabungan bersarang akan ditautkan ke tabel *Item*, serta keluaran yang dihasilkan selama operasi penggabungan.

<img src="nested-mail-merge-with-regions-2.png" alt="mail_merge_with_nested_regions" style="width:650px"/>

Seperti yang dapat Anda lihat dari dokumen keluaran, setiap pesanan dari tabel **Order** dimasukkan ke dalam templat gabungan dengan semua item terkait pesanan dari tabel **Item**. Pesanan berikutnya akan disisipkan beserta itemnya hingga semua pesanan dan itemnya terdaftar. Urutan bersarang Mail Merge dengan wilayah dalam templat harus sesuai dengan hubungan data antara tabel di sumber data.

Contoh kode berikut menunjukkan cara membuat faktur menggunakan Mail Merge bersarang dengan wilayah:

{{< gist "aspose-words-gists" "c68048adceb3bda6a1511c7d6f5ebf7b" "nested-mail-merge.cs" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file contoh contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail%20merge%20data%20-%20Orders.xml).

Anda dapat memeriksa implementasi pengaturan relasi data secara manual dari [Aspose.Words Github](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/DocsExamples/DocsExamples/Mail%20Merge%20and%20Reporting/Complex%20examples%20and%20helpers/Nested%20MailMerge%20custom.cs).

{{% /alert %}}

## Cara Mengatur Relasi Data dalam Mail Merge Bersarang dengan Wilayah

Anda perlu menyiapkan semua hubungan data dalam struktur induk-anak untuk menjalankan Mail Merge bersarang dengan wilayah dengan benar. Melewatkan langkah penting ini dapat menyebabkan kegagalan dalam menjalankan Mail Merge bersarang dengan wilayah.

Saat mengambil data untuk Mail Merge bersarang dari file XML menggunakan metode **ReadXml**, hubungan dibuat secara otomatis sesuai dengan struktur dokumen XML. Namun, Anda perlu memastikan bahwa hubungan yang benar telah dibuat.

Jika Mail Merge tidak berfungsi seperti yang diharapkan, maka Anda mungkin perlu merestrukturisasi file XML Anda atau secara eksplisit membuat relasi antara objek DataTable di DataSet.

A `DataSet` yang memiliki tabel data terkait akan menggunakan objek **DataRelation** untuk mewakili hubungan induk-anak di antara tabel.

Contoh kode berikut menunjukkan cara membuat `DataRelation` antara tabel pelanggan dan tabel pesanan dengan menggunakan objek `DataRelation`:

{{< gist "aspose-words-gists" "c68048adceb3bda6a1511c7d6f5ebf7b" "disable-foreign-key-constraints.cs" >}}

## Cara Membuat Relasi Data dari Sumber Data Khusus

Implementasikan antarmuka [IMailMergeDataSource](https://reference.aspose.com/words/net/aspose.words.mailmerging/imailmergedatasource/) untuk membuat hubungan dalam struktur induk-anak dari sumber data kustom Anda. Gunakan metode [GetChildDataSource](https://reference.aspose.com/words/net/aspose.words.mailmerging/imailmergedatasource/getchilddatasource/) untuk mengembalikan data turunan yang relevan dari catatan induk saat ini.

Contoh berikut menunjukkan cara membuat relasi data menggunakan **GetChildDataSource**:

{{< gist "aspose-words-gists" "c68048adceb3bda6a1511c7d6f5ebf7b" "get-child-data-source.cs" >}}
