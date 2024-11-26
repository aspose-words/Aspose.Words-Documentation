---
title: Bekerja dengan Kolom dan Baris dalam Java
second_title: Aspose.Words untuk Java
articleTitle: Bekerja dengan Kolom dan Baris
linktitle: Bekerja dengan Kolom dan Baris
description: "Bekerja dengan bagian tabel-baris, kolom, dan sel menggunakan Java. Tentukan Baris Header Java."
type: docs
weight: 30
url: /id/java/working-with-columns-and-rows/
timestamp: 2024-01-27-14-07-04
---

Untuk kontrol lebih besar atas cara kerja tabel, pelajari cara memanipulasi kolom dan baris.

## Temukan Indeks Elemen Tabel

Kolom, baris, dan sel dikelola dengan mengakses simpul dokumen yang dipilih berdasarkan indeksnya. Menemukan indeks dari setiap node melibatkan pengumpulan semua node turunan dari tipe elemen dari node induk, dan kemudian menggunakan metode [IndexOf](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#indexOf-com.aspose.words.Node) untuk menemukan indeks dari node yang diinginkan dalam koleksi.

### Temukan Indeks Tabel dalam Dokumen

Terkadang Anda mungkin perlu membuat perubahan pada tabel tertentu dalam dokumen. Untuk melakukan ini, Anda dapat merujuk ke tabel berdasarkan indeksnya.

Contoh kode berikut menunjukkan cara mengambil indeks tabel dalam dokumen:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-table-index.java" >}}

### Menemukan Indeks Baris dalam sebuah Tabel

Demikian pula, Anda mungkin perlu membuat perubahan pada baris tertentu dalam tabel yang dipilih. Untuk melakukan ini, Anda juga dapat merujuk ke baris berdasarkan indeksnya.

Contoh kode berikut menunjukkan cara mengambil indeks baris dalam tabel:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-row-index.java" >}}

### Menemukan Indeks Sel dalam Satu Baris

Terakhir, Anda mungkin perlu membuat perubahan pada sel tertentu, dan Anda juga dapat melakukannya dengan indeks sel.

Contoh kode berikut menunjukkan cara mengambil indeks sel dalam satu baris:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-cell-index.java" >}}

## Bekerja dengan Kolom

Dalam Model Objek Dokumen Aspose.Words (DOM), simpul [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) terdiri dari [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) simpul dan kemudian [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) simpul. Jadi, dalam Model Objek `Document` dari Aspose.Words, seperti pada dokumen Word, tidak ada konsep kolom.

Secara desain, baris tabel di Microsoft Word dan Aspose.Words sepenuhnya independen, dan properti serta operasi dasar hanya terdapat di baris dan sel tabel. Ini memberi tabel kemampuan untuk memiliki beberapa atribut yang menarik:

- Setiap baris tabel dapat memiliki jumlah sel yang sama sekali berbeda
- Secara vertikal, sel setiap baris dapat memiliki lebar yang berbeda
- Dimungkinkan untuk menggabungkan tabel dengan format baris dan jumlah sel yang berbeda

![work-with-columns-aspose-words-java](/words/java/working-with-columns-and-rows/working-with-columns-and-rows-1.png)

Setiap operasi yang dilakukan pada kolom sebenarnya adalah "pintasan" yang melakukan operasi dengan mengubah sel baris secara kolektif sedemikian rupa sehingga terlihat seperti diterapkan ke kolom. Artinya, Anda dapat melakukan operasi pada kolom hanya dengan mengulangi indeks sel baris tabel yang sama.

Contoh kode berikut menyederhanakan operasi tersebut dengan membuktikan kelas facade yang mengumpulkan sel-sel yang membentuk "kolom" dari sebuah tabel:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "column-class.java" >}}

Contoh kode berikut menunjukkan cara menyisipkan kolom kosong ke dalam tabel:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "insert-blank-column.java" >}}

Contoh kode berikut menunjukkan cara menghapus kolom dari tabel dalam dokumen:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "remove-column.java" >}}

## Tentukan Baris sebagai Baris Header

Anda dapat memilih untuk mengulang baris pertama dalam tabel sebagai Baris Header hanya di halaman pertama atau di setiap halaman jika tabel dibagi menjadi beberapa. Di Aspose.Words, Anda dapat mengulang Baris Header di setiap halaman menggunakan properti [HeadingFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getHeadingFormat).

Anda juga dapat menandai beberapa baris header jika baris tersebut ditempatkan satu demi satu di awal tabel. Untuk melakukan ini, Anda perlu menerapkan properti **HeadingFormat** ke baris ini.

{{% alert color="primary" %}}

Perhatikan bahwa Baris Header tidak berfungsi di tabel bersarang. Artinya, jika Anda memiliki tabel di dalam tabel lain, pengaturan ini tidak akan berpengaruh. Ini adalah batasan Microsoft Word yang tidak mengizinkan ini, bukan Aspose.Words.

{{% /alert %}}

Contoh kode berikut menunjukkan cara membuat tabel yang menyertakan Baris Header yang berulang di halaman berikutnya:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "repeat-rows-on-subsequent-pages.java" >}}

## Jaga agar Tabel dan Baris tidak Pecah Di Seluruh Halaman {#keep-tables-and-rows-from-breaking-across-pages}

Ada kalanya konten tabel tidak boleh dibagi menjadi beberapa halaman. Misalnya, jika judul berada di atas tabel, judul dan tabel harus selalu disatukan pada halaman yang sama untuk mempertahankan tampilan yang tepat.

Ada dua teknik terpisah yang berguna untuk mencapai fungsionalitas ini:

- `Allow row break across pages`, yang diterapkan ke baris tabel
- `Keep with next`, yang diterapkan pada paragraf dalam sel tabel

Secara default, properti di atas dinonaktifkan.

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-1.png" alt="keep-tables-and-rows-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

### Jaga agar Baris tidak Melintasi Halaman {#keep-a-row-from-breaking-across-pages}

Ini melibatkan pembatasan konten di dalam sel baris agar tidak dipisah di seluruh halaman. Di Microsoft Word, ini dapat ditemukan di bawah Properti Tabel sebagai opsi "Izinkan baris untuk melintasi halaman". Dalam Aspose.Words ini ditemukan di bawah objek [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/) dari [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) sebagai properti [RowFormat.AllowBreakAcrossPages](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getAllowBreakAcrossPages).

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-2.png" alt="keep-rows-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

Contoh kode berikut menunjukkan cara menonaktifkan pemutusan baris di seluruh halaman untuk setiap baris dalam tabel:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "row-format-disable-break-across-pages.java" >}}

### Jaga agar Tabel tidak Pecah Di Seluruh Halaman {#keep-a-table-from-breaking-across-pages}

Untuk menghentikan tabel agar tidak terbelah di seluruh halaman, kita perlu menentukan bahwa kita ingin konten yang terkandung di dalam tabel tetap bersama.

Untuk melakukannya, Aspose.Words menggunakan metode, yang memungkinkan pengguna memilih tabel dan mengaktifkan parameter [KeepWithNext](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getKeepWithNext) menjadi true untuk setiap paragraf di dalam sel tabel. Pengecualian adalah paragraf terakhir dalam tabel, yang harus disetel ke false.

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-3.png" alt="keep-tables-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

Contoh kode berikut menunjukkan cara mengatur tabel agar tetap bersama di halaman yang sama:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "keep-table-together.java" >}}
