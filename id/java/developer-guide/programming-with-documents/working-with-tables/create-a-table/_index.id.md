---
title: Cara Membuat Tabel di Java
second_title: Aspose.Words untuk Java
articleTitle: Buat Tabel
linktitle: Buat Tabel
description: "Berbagai cara untuk membuat tabel di dokumen Anda menggunakan Java."
type: docs
weight: 20
url: /id/java/create-a-table/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words memungkinkan pengguna membuat tabel dalam dokumen dari awal dan menyediakan beberapa metode berbeda untuk melakukannya. Artikel ini menyajikan detail tentang cara menambahkan tabel berformat ke dokumen Anda menggunakan setiap metode, serta perbandingan setiap metode di akhir artikel.

## Gaya Tabel Default

Tabel yang baru dibuat diberi nilai default yang serupa dengan yang digunakan di Microsoft Word:

| Properti Tabel | Bawaan dalam Aspose.Words |
| :- | :- |
| `Border Style` | `Single` |
| `Border Width` | `1/2 pt` |
| Warna Batas | `Black` |
| `Left and Right Padding` | `5.4 pts` |
| `AutoFit Mode` | `AutoFit to Window` |
| `Allow AutoFit` | `True` |
{{% alert color="primary" %}}

Sebuah tabel dapat sebaris jika diposisikan dengan rapat, atau mengambang jika dapat diposisikan di mana saja di halaman. Secara default, Aspose.Words selalu membuat tabel sebaris.

{{% /alert %}}

## Buat Tabel dengan DocumentBuilder

Di Aspose.Words, pengguna dapat membuat tabel dalam dokumen menggunakan [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/). Algoritma dasar untuk membuat tabel adalah sebagai berikut:

1. Mulai tabel dengan [StartTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable)
2. Tambahkan sel ke tabel menggunakan [InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell) - ini secara otomatis memulai baris baru
3. Secara opsional, gunakan properti [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) untuk menentukan pemformatan sel
4. Sisipkan konten sel menggunakan metode **DocumentBuilder** yang sesuai seperti [Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln), [InsertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte), dan lainnya
5. Ulangi langkah 2-4 hingga baris selesai
6. Panggil [EndRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) untuk mengakhiri baris saat ini
7. Secara opsional, gunakan properti [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) untuk menentukan pemformatan baris
8. Ulangi langkah 2-7 hingga tabel selesai
9. Panggil [EndTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) untuk menyelesaikan pembuatan tabel

{{% alert color="primary" %}}

Rincian penting:

- [StartTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable) juga dapat dipanggil di dalam sel, dalam hal ini ia memulai pembuatan tabel bersarang di dalam sel.
- Setelah memanggil [InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell), sel baru dibuat, dan konten apa pun yang Anda tambahkan menggunakan metode lain dari kelas [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) akan ditambahkan ke sel saat ini. Untuk membuat sel baru pada baris yang sama, panggil **InsertCell** lagi.
- Jika **InsertCell** dipanggil segera setelah [EndRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) dan akhir baris, tabel akan dilanjutkan pada baris baru.
- Metode [EndTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) untuk mengakhiri tabel hanya boleh dipanggil satu kali setelah memanggil **EndRow**. Memanggil **EndTable** memindahkan kursor dari sel saat ini ke posisi segera setelah tabel.

{{% /alert %}}

Proses pembuatan tabel dapat dilihat dengan jelas pada gambar berikut:

![creating-table-process](/words/java/create-a-table/creating-table-process.jpg)

Contoh kode berikut menunjukkan cara membuat tabel sederhana menggunakan **DocumentBuilder** dengan pemformatan default:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "create-simple-table.java" >}}

Contoh kode berikut menunjukkan cara membuat tabel berformat menggunakan DocumentBuilder:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "formatted-table.java" >}}

Contoh kode berikut menunjukkan cara menyisipkan tabel bersarang menggunakan DocumentBuilder:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "nested-table.java" >}}

## Buat Tabel melalui DOM (Model Objek Dokumen)

Anda dapat menyisipkan tabel langsung ke DOM dengan menambahkan simpul [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) baru pada posisi tertentu.

Harap dicatat bahwa segera setelah pembuatan simpul tabel, tabel itu sendiri akan benar-benar kosong, yaitu belum berisi baris dan sel. Untuk menyisipkan baris dan sel ke dalam tabel, tambahkan simpul turunan [Row](https://reference.aspose.com/words/java/com.aspose.words/run/) dan [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) yang sesuai ke DOM.

{{% alert color="primary" %}}

Metode pembuatan tabel ini menggunakan default tabel yang sama seperti saat menggunakan **DocumentBuilder**.

{{% /alert %}}

Contoh kode berikut menunjukkan cara membuat tabel baru dari awal dengan menambahkan simpul turunan yang sesuai ke pohon dokumen:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "insert-table-directly.java" >}}

## Buat Tabel dari HTML

Aspose.Words mendukung penyisipan konten ke dalam dokumen dari sumber HTML menggunakan metode [InsertHtml](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHtml-java.lang.String). Inputnya bisa berupa halaman HTML penuh atau hanya sebagian cuplikan.

Dengan menggunakan metode **InsertHtml** ini, pengguna dapat menyisipkan tabel ke dalam dokumen melalui tag tabel seperti `<table>`, `<tr>`, `<td>`.

Contoh kode berikut menunjukkan cara menyisipkan tabel ke dalam dokumen dari string yang berisi tag HTML:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "insert-table-from-html.java" >}}

## Menyisipkan Salinan Tabel yang Sudah Ada

Sering kali Anda perlu membuat tabel berdasarkan tabel yang sudah ada di dokumen. Cara termudah untuk menduplikasi tabel sambil mempertahankan semua pemformatan adalah dengan mengkloning simpul Tabel menggunakan metode [deepClone](https://reference.aspose.com/words/java/com.aspose.words/node/#deepClone-boolean).

Teknik yang sama dapat digunakan untuk menambahkan salinan baris atau sel yang ada ke tabel.

Contoh kode berikut menunjukkan cara menduplikasi tabel menggunakan konstruktor node:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "clone-complete-table.java" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file contoh contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

Contoh kode berikut menunjukkan cara mengkloning baris terakhir tabel dan menambahkannya ke tabel:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "clone-last-row.java" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file contoh contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

Jika Anda ingin membuat tabel dalam dokumen yang berkembang secara dinamis dengan setiap catatan dari sumber data Anda, maka metode di atas tidak disarankan. Sebaliknya, keluaran yang diinginkan lebih mudah dicapai dengan menggunakan Mail merge dengan wilayah. Anda dapat mempelajari lebih lanjut tentang teknik ini di [Mail Merge dengan Wilayah](/words/java/types-of-mail-merge-operations/) bagian.

## Bandingkan Cara Membuat Tabel

Aspose.Words menyediakan beberapa metode untuk membuat tabel baru dalam dokumen. Setiap metode memiliki kelebihan dan kekurangannya masing-masing, sehingga pilihan yang akan digunakan seringkali bergantung pada situasi tertentu.

Mari kita lihat lebih dekat cara membuat tabel ini dan bandingkan pro dan kontranya:

| Metode | Keuntungan | Kekurangan |
| :- | :- | :- |
| Melalui `DocumentBuilder` | Metode standar untuk menyisipkan tabel dan konten dokumen lainnya | Terkadang sulit untuk membuat banyak variasi tabel secara bersamaan dengan instance builder yang sama |
| Melalui DOM | Lebih cocok dengan kode di sekitarnya yang membuat dan menyisipkan node langsung ke DOM tanpa menggunakan **DocumentBuilder** | Tabel dibuat "kosong": sebelum melakukan sebagian besar operasi, Anda harus memanggil [EnsureMinimum](https://reference.aspose.com/words/java/com.aspose.words/table/#ensureMinimum) untuk membuat simpul turunan yang hilang |
| Dari HTML | Dapat membuat tabel baru dari HTML sumber menggunakan tag seperti `<table>`, `<tr>`, `<td>` | Tidak semua format tabel Microsoft Word yang memungkinkan dapat diterapkan ke HTML |
| Mengkloning tabel yang ada | Anda dapat membuat salinan tabel yang ada dengan tetap mempertahankan semua pemformatan baris dan sel | Node turunan yang sesuai harus dihapus sebelum tabel siap digunakan |
