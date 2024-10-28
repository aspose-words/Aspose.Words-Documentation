---
title: Bekerja dengan Kolom dan Baris di C++
second_title: Aspose.Words untuk C++
articleTitle: Bekerja dengan Kolom dan Baris
linktitle: Bekerja dengan Kolom dan Baris
description: "Bekerja dengan bagian tabel-baris, kolom, dan sel menggunakan C++. Tentukan Baris Header C++."
type: docs
weight: 30
url: /id/cpp/working-with-columns-and-rows/
---

Untuk kontrol lebih besar atas cara kerja tabel, pelajari cara memanipulasi kolom dan baris.

## Temukan Indeks Elemen Tabel

Kolom, baris, dan sel dikelola dengan mengakses simpul dokumen yang dipilih berdasarkan indeksnya. Menemukan indeks dari setiap node melibatkan pengumpulan semua node turunan dari tipe elemen dari node induk, dan kemudian menggunakan metode [IndexOf](https://reference.aspose.com/words/cpp/aspose.words/nodecollection/indexof/) untuk menemukan indeks dari node yang diinginkan dalam koleksi.

### Temukan Indeks Tabel dalam Dokumen

Terkadang Anda mungkin perlu membuat perubahan pada tabel tertentu dalam dokumen. Untuk melakukan ini, Anda dapat merujuk ke tabel berdasarkan indeksnya.

Contoh kode berikut menunjukkan cara mengambil indeks tabel dalam dokumen:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "retrieve-table-index.h" >}}

### Temukan Indeks Baris dalam Tabel {#find-the-index-of-a-row-in-a-table}

Demikian pula, Anda mungkin perlu membuat perubahan pada baris tertentu dalam tabel yang dipilih. Untuk melakukan ini, Anda juga dapat merujuk ke baris berdasarkan indeksnya.

Contoh kode berikut menunjukkan cara mengambil indeks baris dalam tabel:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "retrieve-row-index.h" >}}

### Temukan Indeks Sel dalam Satu Baris {#find-the-index-of-a-cell-in-a-row}

Terakhir, Anda mungkin perlu membuat perubahan pada sel tertentu, dan Anda juga dapat melakukannya dengan indeks sel.

Contoh kode berikut menunjukkan cara mengambil indeks sel dalam satu baris:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "retrieve-cell-index.h" >}}

## Bekerja dengan Kolom

Dalam Model Objek Dokumen Aspose.Words (DOM), simpul [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/) terdiri dari [Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/) simpul dan kemudian [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/) simpul. Jadi, dalam Model Objek `Document` dari Aspose.Words, seperti pada dokumen Word, tidak ada konsep kolom.

Secara desain, baris tabel di Microsoft Word dan Aspose.Words sepenuhnya independen, dan properti serta operasi dasar hanya terdapat di baris dan sel tabel. Ini memberi tabel kemampuan untuk memiliki beberapa atribut yang menarik:

- Setiap baris tabel dapat memiliki jumlah sel yang sama sekali berbeda
- Secara vertikal, sel setiap baris dapat memiliki lebar yang berbeda
- Dimungkinkan untuk menggabungkan tabel dengan format baris dan jumlah sel yang berbeda

Setiap operasi yang dilakukan pada kolom sebenarnya adalah "pintasan" yang melakukan operasi dengan mengubah sel baris secara kolektif sedemikian rupa sehingga terlihat seperti diterapkan ke kolom. Artinya, Anda dapat melakukan operasi pada kolom hanya dengan mengulangi indeks sel baris tabel yang sama.

Contoh kode berikut menyederhanakan operasi tersebut dengan membuktikan kelas facade yang mengumpulkan sel-sel yang membentuk "kolom" dari sebuah tabel:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "column-class.h" >}}

Contoh kode berikut menunjukkan cara menyisipkan kolom kosong ke dalam tabel:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "insert-blank-column.h" >}}

Contoh kode berikut menunjukkan cara menghapus kolom dari tabel dalam dokumen:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "remove-column.h" >}}

## Tentukan Baris sebagai Baris Header

Anda dapat memilih untuk mengulang baris pertama dalam tabel sebagai Baris Header hanya di halaman pertama atau di setiap halaman jika tabel dibagi menjadi beberapa. Di Aspose.Words, Anda dapat mengulang Baris Header di setiap halaman menggunakan properti [HeadingFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_headingformat/).

Anda juga dapat menandai beberapa baris header jika baris tersebut ditempatkan satu demi satu di awal tabel. Untuk melakukan ini, Anda perlu menerapkan properti **HeadingFormat** ke baris ini.

{{% alert color="primary" %}}

Perhatikan bahwa Baris Header tidak berfungsi di tabel bersarang. Artinya, jika Anda memiliki tabel di dalam tabel lain, pengaturan ini tidak akan berpengaruh. Ini adalah batasan Microsoft Word yang tidak mengizinkan ini, bukan Aspose.Words.

{{% /alert %}}

Contoh kode berikut menunjukkan cara membuat tabel yang menyertakan Baris Header yang berulang di halaman berikutnya:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "repeat-rows-on-subsequent-pages.h" >}}

## Jaga agar Tabel dan Baris tidak Pecah Di Seluruh Halaman

Ada kalanya konten tabel tidak boleh dibagi menjadi beberapa halaman. Misalnya, jika judul berada di atas tabel, judul dan tabel harus selalu disatukan pada halaman yang sama untuk mempertahankan tampilan yang tepat.

Ada dua teknik terpisah yang berguna untuk mencapai fungsionalitas ini:

- `Allow row break across pages`, yang diterapkan ke baris tabel
- `Keep with next`, yang diterapkan pada paragraf dalam sel tabel

Secara default, properti di atas dinonaktifkan.

### Jaga agar Baris tidak Melintasi Halaman {#keep-a-row-from-breaking-across-pages}

Ini melibatkan pembatasan konten di dalam sel baris agar tidak dipisah di seluruh halaman. Di Microsoft Word, ini dapat ditemukan di bawah Properti Tabel sebagai opsi "Izinkan baris untuk melintasi halaman". Dalam Aspose.Words ini ditemukan di bawah objek [RowFormat](hhttps://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/) dari [Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/) sebagai properti [RowFormat.AllowBreakAcrossPages](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_allowbreakacrosspages/).

Contoh kode berikut menunjukkan cara menonaktifkan pemutusan baris di seluruh halaman untuk setiap baris dalam tabel:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "row-format-disable-break-across-pages.h" >}}

### Jaga agar Tabel tidak Pecah Di Seluruh Halaman {#keep-a-table-from-breaking-across-pages}

Untuk menghentikan tabel agar tidak terbelah di seluruh halaman, kita perlu menentukan bahwa kita ingin konten yang terkandung di dalam tabel tetap bersama.

Untuk melakukannya, Aspose.Words menggunakan metode, yang memungkinkan pengguna memilih tabel dan mengaktifkan parameter [KeepWithNext](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_keepwithnext/) menjadi true untuk setiap paragraf di dalam sel tabel. Pengecualian adalah paragraf terakhir dalam tabel, yang harus disetel ke false.

Contoh kode berikut menunjukkan cara mengatur tabel agar tetap bersama di halaman yang sama:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "keep-table-together.h" >}}
