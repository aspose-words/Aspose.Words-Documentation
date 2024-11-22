---
title: Bersarang Mail Merge dengan Wilayah dalam C++
second_title: Aspose.Words untuk C++
articleTitle: Bersarang Mail Merge dengan Wilayah
linktitle: Bersarang Mail Merge dengan Wilayah
type: docs
description: "Lakukan operasi Mail Merge dengan wilayah bersarang menggunakan C++. Penggabungan bersarang adalah fitur yang memungkinkan Anda menggabungkan data hierarki dari sumber data ke dalam templat penggabungan Anda."
keywords: "mail merge with nested regions c++"
weight: 30
url: /id/cpp/nested-mail-merge-with-regions/
timestamp: 2024-09-24-14-35-44
---

Dalam beberapa skenario, Anda mungkin perlu menggunakan Mail Merge bersarang dengan wilayah. Penggabungan bersarang adalah fitur yang memungkinkan Anda menggabungkan data hierarki dari sumber data ke dalam templat penggabungan untuk mengisi dokumen Anda dengan mudah. Pada dasarnya, data hierarkis direpresentasikan sebagai sekumpulan item data, dan hubungan hierarkis menggambarkan bagaimana item data terkait satu sama lain (satu item data adalah induk dari item lainnya).

Aspose.Words memungkinkan Anda melakukan operasi Mail Merge dengan wilayah bersarang. Anda dapat menggunakan fitur ini jika Anda memiliki sumber data yang disusun menjadi struktur seperti pohon dan Anda ingin menjalankan operasi Mail Merge untuk mengisi templat dengan data hierarkis.

{{% alert color="primary" %}}

Mail merge bersarang hanya relevan saat menjalankan Mail Merge dengan wilayah.

{{% /alert %}}

## Apa itu Mail MergeBersarang

Wilayah Mail Merge disebut bersarang jika Anda memiliki dua atau lebih wilayah Mail Merge di mana salah satunya berada di dalam wilayah lainnya dalam bentuk hierarki. Perhatikan bahwa setiap wilayah berisi data dari satu tabel.

Contoh paling umum dari Mail Merge bersarang adalah urutan yang berisi beberapa item di mana Anda perlu menautkan banyak tabel data dan menyajikan informasi dalam templat.

Gambar di bawah ini menunjukkan dua wilayah bersarang di mana wilayah *Order* Mail Merge adalah induk dari wilayah *Item* mail merge.

<img src="nested-mail-merge-with-regions-1.png" alt="nested_mail_merge_with_regions" style="width:650px"/>

## Cara Memproses Mail Merge dengan Wilayah Bersarang

Data yang akan digabungkan ke dalam templat dapat berasal dari berbagai sumber, terutama basis data relasional atau dokumen XML. Dalam contoh kita, kita akan menggunakan sebuah [SQLite](https://www.sqlite.org/index.html) basis data untuk menyimpan data kami dan memuatnya dengan implementasi sumber data khusus.

Gambar di bawah ini menunjukkan bagaimana data dari tabel *Order* yang diteruskan ke wilayah penggabungan bersarang akan ditautkan ke tabel *Item*, serta keluaran yang dihasilkan selama operasi penggabungan.

<img src="nested-mail-merge-with-regions-2.png" alt="mail_merge_with_nested_regions" style="width:650px"/>

Seperti yang dapat Anda lihat dari dokumen keluaran, setiap pesanan dari tabel **Order** dimasukkan ke dalam templat gabungan dengan semua item terkait pesanan dari tabel **Item**. Pesanan berikutnya akan disisipkan beserta itemnya hingga semua pesanan dan itemnya terdaftar. Urutan bersarang Mail Merge dengan wilayah dalam templat harus sesuai dengan hubungan data antara tabel di sumber data.

## Cara Membuat Relasi Data dari Sumber Data Khusus

Implementasikan antarmuka [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) untuk membuat hubungan dalam struktur induk-anak dari sumber data kustom Anda. Gunakan metode [GetChildDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/getchilddatasource/) untuk mengembalikan data turunan yang relevan dari catatan induk saat ini.

Contoh kode berikut mendemonstrasikan cara membuat faktur menggunakan Mail Merge bersarang dengan wilayah dari [SQLite](https://www.sqlite.org/index.html) database dengan [SQLiteCpp](https://github.com/SRombauts/SQLiteCpp):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "nested-mail-merge.h" >}}
