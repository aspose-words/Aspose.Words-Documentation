---
title: Cara Membuat Tabel di C#
second_title: Aspose.Words untuk .NET
articleTitle: Buat Tabel
linktitle: Buat Tabel
description: "Panduan cara membuat tabel di C# dengan berbagai cara. Buat tabel di C# untuk dokumen Anda."
type: docs
weight: 20
url: /id/net/create-a-table/
---

Aspose.Words memungkinkan pengguna membuat tabel dalam dokumen dari awal dan menyediakan beberapa metode berbeda untuk melakukannya. Artikel ini menyajikan detail tentang cara menambahkan tabel berformat ke dokumen Anda menggunakan setiap metode, serta perbandingan setiap metode di akhir artikel.

## Gaya Tabel Default

Tabel yang baru dibuat diberikan nilai default yang mirip dengan yang digunakan di Microsoft Word:

|  Properti Tabel |  Bawaan di Aspose.Words |
|  :---------------------  |  :----------------------  |
|  `Border Style`            |  `Single`  |
|  `Border Width`            |  `1/2 pt`                   |
|  `Border Color`            |  `Black`  |
|  `Left and Right Padding`  |  `5.4 pts`                  |
|  `AutoFit Mode`            |  `AutoFit to Window`        |
|  `Allow AutoFit`           |  `True`  |

{{% alert color="primary" %}}

Sebuah tabel bisa menjadi inline jika posisinya rapat, atau mengambang jika bisa diposisikan dimana saja pada halaman. Secara default, Aspose.Words selalu membuat tabel inline.

{{% /alert %}}

## Buat Tabel dengan DocumentBuilder

Di Aspose.Words, pengguna dapat membuat tabel dalam dokumen menggunakan [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/). Algoritma dasar untuk membuat tabel adalah sebagai berikut:

1. Mulai tabel dengan [StartTable](https://reference.aspose.com/words/net/aspose.words/documentbuilder/starttable/)
2. Tambahkan sel ke tabel menggunakan [InsertCell](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertcell/) – ini secara otomatis memulai baris baru
3. Secara opsional, gunakan properti [CellFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/cellformat/) untuk menentukan format sel
4. Sisipkan konten sel menggunakan metode **DocumentBuilder** yang sesuai seperti [Writeln](https://reference.aspose.com/words/net/aspose.words/documentbuilder/writeln/), [InsertImage](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertimage/), dan lainnya
5. Ulangi langkah 2-4 hingga baris selesai
6. Panggil [EndRow](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endrow/) untuk mengakhiri baris saat ini
7. Secara opsional, gunakan properti [RowFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/rowformat/) untuk menentukan format baris
8. Ulangi langkah 2-7 hingga tabel selesai
9. Hubungi [EndTable](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endtable/) untuk menyelesaikan pembuatan tabel

{{% alert color="primary" %}}

Detail penting:

* [StartTable](https://reference.aspose.com/words/net/aspose.words/documentbuilder/starttable/) juga bisa dipanggil di dalam sel, dalam hal ini ia memulai pembuatan tabel bersarang di dalam sel.
* Setelah memanggil [InsertCell](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertcell/), sel baru dibuat, dan konten apa pun yang Anda tambahkan menggunakan metode lain dari kelas [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) akan ditambahkan ke sel saat ini. Untuk membuat sel baru pada baris yang sama, panggil **InsertCell** lagi.
* Jika **InsertCell** dipanggil segera setelah [EndRow](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endrow/) dan akhir baris, tabel akan dilanjutkan ke baris baru.
* Metode [EndTable](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endtable/) untuk mengakhiri tabel hanya boleh dipanggil satu kali setelah memanggil **EndRow**. Memanggil **EndTable** akan memindahkan kursor dari sel saat ini ke posisi tepat setelah tabel.

{{% /alert %}}

Proses pembuatan tabel terlihat jelas pada gambar berikut:

![creating-table-process](/words/net/create-a-table/creating-table-process.jpg)

Contoh kode berikut menunjukkan cara membuat tabel sederhana menggunakan **DocumentBuilder** dengan format default:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "create-simple-table.cs" >}}

Contoh kode berikut menunjukkan cara membuat tabel berformat menggunakan DocumentBuilder:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "formatted-table.cs" >}}

Contoh kode berikut menunjukkan cara menyisipkan tabel bertumpuk menggunakan DocumentBuilder:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "nested-table.cs" >}}

## Buat Tabel melalui DOM (Document Object Model)

Anda dapat memasukkan tabel langsung ke DOM dengan menambahkan node [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/) baru pada posisi tertentu.

Harap dicatat bahwa segera setelah pembuatan node tabel, tabel itu sendiri akan benar-benar kosong, artinya belum berisi baris dan sel. Untuk menyisipkan baris dan sel ke dalam tabel, tambahkan node anak [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) dan [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/) yang sesuai ke DOM.

{{% alert color="primary" %}}

Metode pembuatan tabel ini menggunakan tabel default yang sama seperti saat menggunakan **DocumentBuilder**.

{{% /alert %}}

Contoh kode berikut menunjukkan cara membuat tabel baru dari awal dengan menambahkan node anak yang sesuai ke pohon dokumen:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "insert-table-directly.cs" >}}

## Buat Tabel dari HTML

Aspose.Words mendukung penyisipan konten ke dalam dokumen dari sumber HTML menggunakan metode [InsertHtml](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserthtml/). Masukannya bisa berupa halaman HTML lengkap atau hanya sebagian cuplikan.

Dengan menggunakan metode **InsertHtml**, pengguna dapat memasukkan tabel ke dalam dokumen melalui tag tabel seperti `<table>`, `<tr>`, `<td>`.

Contoh kode berikut menunjukkan cara menyisipkan tabel ke dalam dokumen dari string yang berisi tag HTML:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "insert-table-from-html.cs" >}}

## Sisipkan Salinan Tabel yang Ada

Seringkali Anda perlu membuat tabel berdasarkan tabel yang sudah ada di dokumen. Cara termudah untuk menduplikasi tabel sambil mempertahankan semua format adalah dengan mengkloning node Tabel menggunakan metode [Clone](https://reference.aspose.com/words/net/aspose.words/node/clone/).

Teknik yang sama dapat digunakan untuk menambahkan salinan baris atau sel yang ada ke tabel.

Contoh kode berikut menunjukkan cara menduplikasi tabel menggunakan konstruktor simpul:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "clone-complete-table.cs" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file contoh contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

Contoh kode berikut menunjukkan cara mengkloning baris terakhir tabel dan menambahkannya ke tabel:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "clone-last-row.cs" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file contoh contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

Jika Anda ingin membuat tabel dalam dokumen yang berkembang secara dinamis dengan setiap rekaman dari sumber data Anda, maka metode di atas tidak disarankan. Sebaliknya, keluaran yang diinginkan lebih mudah dicapai dengan menggunakan Mail merge dengan wilayah. Anda dapat mempelajari lebih lanjut tentang teknik ini di bagian [Mail Merge dengan Wilayah](/words/net/types-of-mail-merge-operations/#mail-merge-with-regions).

## Bandingkan Cara Membuat Tabel

Aspose.Words menyediakan beberapa metode untuk membuat tabel baru dalam sebuah dokumen. Setiap metode memiliki kelebihan dan kekurangannya masing-masing, sehingga pilihan metode mana yang akan digunakan seringkali bergantung pada situasi spesifik.

Mari kita lihat lebih dekat cara membuat tabel berikut dan bandingkan kelebihan dan kekurangannya:

|  metode | Keuntungan |  Kekurangan |
|  :-  |  :-  |  :-  |
| Melalui `DocumentBuilder` | Metode standar untuk menyisipkan tabel dan konten dokumen lainnya | Terkadang sulit untuk membuat banyak jenis tabel secara bersamaan dengan contoh pembuat yang sama |
| Melalui DOM |  Lebih cocok dengan kode di sekitarnya yang membuat dan menyisipkan node langsung ke DOM tanpa menggunakan **DocumentBuilder** | Tabel dibuat "kosong": sebelum melakukan sebagian besar operasi, Anda harus memanggil [EnsureMinimum](https://reference.aspose.com/words/net/aspose.words.tables/table/ensureminimum/) untuk membuat node anak yang hilang |
| Dari HTML | Dapat membuat tabel baru dari sumber HTML menggunakan tag seperti `<table>`, `<tr>`, `<td>` | Tidak semua kemungkinan format tabel Microsoft Word dapat diterapkan ke HTML |
| Mengkloning tabel yang sudah ada | Anda dapat membuat salinan tabel yang sudah ada sambil mempertahankan semua format baris dan sel | Node anak yang sesuai harus dihapus sebelum tabel siap digunakan |