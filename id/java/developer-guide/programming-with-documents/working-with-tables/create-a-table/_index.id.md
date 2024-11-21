---
title: Cara Membuat Tabel di Java
second_title: Aspose.Words Sitemap Java
articleTitle: Buat Tabel
linktitle: Buat Tabel
description: "Cara yang berbeda untuk membuat tabel dalam dokumen Anda menggunakan JavaSitemap"
type: docs
weight: 20
url: /id/java/create-a-table/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words memungkinkan pengguna untuk membuat tabel dalam dokumen dari awal dan menyediakan beberapa metode yang berbeda untuk melakukannya. Artikel ini menyajikan rincian tentang cara menambahkan tabel yang diformat ke dokumen Anda menggunakan setiap metode, serta perbandingan setiap metode pada akhir artikel.

## Gaya Meja Default

Tabel yang baru dibuat diberikan nilai default yang mirip dengan yang digunakan Microsoft WordSitemap

| Harta site | Login Aspose.Words |
|  :-  |  :-  |
| `Border Style` |  `Single`  |
| `Border Width` | `1/2 pt` |
| Warna Perbatasan |  `Black`  |
| `Left and Right Padding` | `5.4 pts` |
| `AutoFit Mode` | `AutoFit to Window` |
| `Allow AutoFit` |  `True`  |
{{% alert color="primary" %}}

Meja dapat masuk jika diposisikan rapat, atau mengambang jika dapat diposisikan di mana saja di halaman. Login Aspose.Words selalu membuat tabel inline.

{{% /alert %}}

## Buat Tabel dengan DocumentBuilder

Sitemap Aspose.Words, pengguna dapat membuat tabel dalam dokumen menggunakan [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)Sitemap Algoritme dasar untuk membuat tabel adalah sebagai berikut:

Sitemap Mulai tabel dengan [StartTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable)
2. di Tambahkan sel ke meja menggunakan [InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell) - ini secara otomatis memulai baris baru
3. Juni Opsional, gunakan [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) properti untuk menentukan format sel
4. Oktober Masukkan konten sel menggunakan yang sesuai **DocumentBuilder** metode seperti [Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln), [InsertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte), dan lain-lain
5. Juli Ulangi langkah 2-4 sampai baris selesai
6. Juni Login [EndRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) untuk mengakhiri baris saat ini
Sitemap Opsional, gunakan [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) properti untuk menentukan format baris
Sitemap Ulangi langkah 2-7 sampai tabel selesai
9. Juni Login [EndTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) untuk menyelesaikan membangun meja

{{% alert color="primary" %}}

Detail penting:

- Login [StartTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable) juga dapat disebut di dalam sel, dalam hal itu mulai penciptaan meja bersarang dalam sel.
- Setelah panggilan [InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell), sel baru diciptakan, dan konten apa pun yang Anda tambahkan menggunakan metode lain dari [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) kelas akan ditambahkan ke sel saat ini. Untuk membuat sel baru pada baris yang sama, panggilan **InsertCell** lagi.
- Sitemap **InsertCell** disebut segera setelah [EndRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) dan akhir baris, tabel akan terus di baris baru.
- Sitemap [EndTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) metode untuk mengakhiri tabel hanya boleh disebut setelah memanggil **EndRow**Sitemap Login **EndTable** memindahkan kursor dari sel saat ini ke posisi segera setelah tabel.

{{% /alert %}}

Proses pembuatan meja dapat terlihat jelas dalam gambar berikut:

![creating-table-process](/words/java/create-a-table/creating-table-process.jpg)

Contoh kode berikut menunjukkan cara membuat tabel sederhana menggunakan **DocumentBuilder** dengan format default:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "create-simple-table.java" >}}

Contoh kode berikut menunjukkan cara membuat tabel yang diformat menggunakan DocumentBuilder:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "formatted-table.java" >}}

Contoh kode berikut menunjukkan cara memasukkan tabel bersarang menggunakan DocumentBuilder:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "nested-table.java" >}}

## Buat Tabel melalui DOM SitemapDocument Object ModelSitemap

Anda dapat memasukkan tabel langsung ke tabel DOM dengan menambahkan yang baru [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) node pada posisi tertentu.

Harap dicatat bahwa segera setelah pembuatan node tabel, tabel itu sendiri akan benar-benar kosong, itu tidak mengandung baris dan sel. Untuk memasukkan baris dan sel ke dalam tabel, tambahkan yang sesuai [Row](https://reference.aspose.com/words/java/com.aspose.words/run/) Login [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) node anak ke DOMSitemap

{{% alert color="primary" %}}

Metode ini membuat tabel menggunakan default tabel yang sama saat menggunakan **DocumentBuilder**Sitemap

{{% /alert %}}

Contoh kode berikut menunjukkan cara membangun tabel baru dari awal dengan menambahkan simpul anak yang tepat ke pohon dokumen:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "insert-table-directly.java" >}}

## Buat Tabel dari HTML

Aspose.Words mendukung memasukkan konten ke dalam dokumen dari sumber HTML menggunakan [InsertHtml](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHtml-java.lang.String) Login Masukan dapat menjadi halaman HTML penuh atau hanya cuplikan parsial.

Menggunakan ini **InsertHtml** metode, pengguna dapat memasukkan tabel ke dalam dokumen melalui tag tabel seperti `<table>`, `<tr>`, `<td>`Sitemap

Contoh kode berikut menunjukkan cara memasukkan tabel ke dalam dokumen dari string yang berisi tag HTML:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "insert-table-from-html.java" >}}

## Masukkan Salinan Tabel Yang Ada

Ada sering kali kali ketika Anda perlu membuat tabel berdasarkan tabel yang sudah ada dalam dokumen. Cara termudah untuk menggandakan tabel sambil mempertahankan semua format adalah untuk mengkloning node Tabel menggunakan [deepClone](https://reference.aspose.com/words/java/com.aspose.words/node/#deepClone-boolean) Login

Teknik yang sama dapat digunakan untuk menambahkan salinan baris atau sel yang ada ke meja.

Contoh kode berikut menunjukkan cara menggandakan tabel menggunakan konstruktor node:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "clone-complete-table.java" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file sampel dari contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx)Sitemap

{{% /alert %}}

Contoh kode berikut menunjukkan bagaimana untuk mengacaukan baris terakhir dari tabel dan mengubahnya ke tabel:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "clone-last-row.java" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file sampel dari contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx)Sitemap

{{% /alert %}}

Jika Anda melihat membuat tabel dalam dokumen yang tumbuh secara dinamis dengan setiap catatan dari sumber data Anda, maka metode di atas tidak disarankan. Sebaliknya, output yang diinginkan lebih mudah dicapai dengan menggunakan Mail merge dengan daerah. Anda dapat mempelajari lebih lanjut tentang teknik ini di Meme it [Mail Merge Login](/words/java/types-of-mail-merge-operations/) Sitemap

## Bandingkan Cara Membuat Meja

Aspose.Words menyediakan beberapa metode untuk membuat tabel baru dalam dokumen. Setiap metode memiliki kelebihan dan kekurangannya sendiri, sehingga pilihan yang sering digunakan tergantung pada situasi tertentu.

Mari kita lihat lebih dekat dengan cara membuat tabel dan membandingkan pro dan kontra mereka:

|  Login | Sitemap |  Login |
|  :-  |  :-  |  :-  |
| Login `DocumentBuilder` | Metode standar untuk memasukkan tabel dan konten dokumen lainnya | Kadang-kadang sulit untuk membuat banyak varietas tabel pada saat yang sama dengan instance pembangun yang sama |
| Login DOM |  Cocok lebih baik dengan kode sekitarnya yang menciptakan dan memasukkan node langsung ke DOM tanpa menggunakan **DocumentBuilder** | Tabel dibuat "kosong": sebelum melakukan sebagian besar operasi, Anda harus memanggil [EnsureMinimum](https://reference.aspose.com/words/java/com.aspose.words/table/#ensureMinimum) untuk membuat node anak yang hilang |
| Dari HTML | Dapat membuat tabel baru dari sumber HTML menggunakan tag seperti `<table>`, `<tr>`, `<td>` | Tidak semua mungkin Microsoft Word format tabel dapat diterapkan ke HTML |
| Menutup tabel yang ada | Anda dapat membuat salinan tabel yang ada sambil mempertahankan semua baris dan format sel | Node anak yang tepat harus dihapus sebelum tabel siap digunakan |
