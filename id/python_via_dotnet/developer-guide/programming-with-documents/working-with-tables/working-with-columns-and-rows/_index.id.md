---
title: Bekerja dengan Kolom dan Baris
second_title: Aspose.Words untuk Python via .NET
articleTitle: Bekerja dengan Kolom dan Baris
linktitle: Bekerja dengan Kolom dan Baris
description: "Bekerja dengan bagian tabel – baris, kolom, dan sel menggunakan Python. Tentukan Python Baris Header."
type: docs
weight: 30
url: /id/python-net/working-with-columns-and-rows/
timestamp: 2024-01-27-14-07-04
---

Untuk kontrol lebih besar terhadap cara kerja tabel, pelajari cara memanipulasi kolom dan baris.

## Menemukan Indeks Elemen Tabel

Kolom, baris, dan sel dikelola dengan mengakses node dokumen yang dipilih berdasarkan indeksnya. Menemukan indeks dari setiap node melibatkan pengumpulan semua node anak dari tipe elemen dari node induk, dan kemudian menggunakan metode [IndexOf](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/index_of/) untuk menemukan indeks dari node yang diinginkan dalam koleksi.

### Menemukan Indeks Tabel dalam Dokumen

Terkadang Anda mungkin perlu membuat perubahan pada tabel tertentu dalam dokumen. Untuk melakukan ini, Anda bisa merujuk ke tabel berdasarkan indeksnya.

Contoh kode berikut menunjukkan cara mengambil indeks tabel dalam dokumen:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "retrieve-table-index.py" >}}

### Menemukan Indeks suatu Baris dalam Tabel

Demikian pula, Anda mungkin perlu membuat perubahan pada baris tertentu dalam tabel yang dipilih. Untuk melakukan ini, Anda juga dapat merujuk ke baris berdasarkan indeksnya.

Contoh kode berikut menunjukkan cara mengambil indeks baris dalam tabel:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "retrieve-row-index.py" >}}

### Menemukan Indeks Sel dalam Satu Baris

Terakhir, Anda mungkin perlu membuat perubahan pada sel tertentu, dan Anda juga dapat melakukannya dengan indeks sel.

Contoh kode berikut menunjukkan cara mengambil indeks sel dalam satu baris:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "retrieve-cell-index.py" >}}

## Bekerja dengan Kolom

Dalam Aspose.Words Document Object Model (DOM), node [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) terdiri dari node [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) dan kemudian node [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/). Jadi, dalam Model Objek `Document` Aspose.Words, seperti dalam dokumen Word, tidak ada konsep kolom.

Secara desain, baris tabel di Microsoft Word dan Aspose.Words sepenuhnya independen, dan properti serta operasi dasar hanya terdapat di baris dan sel tabel. Hal ini memberikan tabel kemampuan untuk memiliki beberapa atribut menarik:

- Setiap baris tabel dapat memiliki jumlah sel yang sangat berbeda
- Secara vertikal, sel setiap baris dapat memiliki lebar berbeda
- Dimungkinkan untuk menggabungkan tabel dengan format baris dan jumlah sel berbeda

Setiap operasi yang dilakukan pada kolom sebenarnya adalah "pintasan" yang melakukan operasi dengan mengubah sel baris secara kolektif sedemikian rupa sehingga terlihat seperti diterapkan pada kolom. Artinya, Anda dapat melakukan operasi pada kolom hanya dengan melakukan iterasi pada indeks sel baris tabel yang sama.

Contoh kode berikut menyederhanakan operasi tersebut dengan membuktikan kelas fasad yang mengumpulkan sel-sel yang membentuk "kolom" tabel:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "column-class.py" >}}

Contoh kode berikut menunjukkan cara menyisipkan kolom kosong ke dalam tabel:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "insert-blank-column.py" >}}

Contoh kode berikut memperlihatkan cara menghapus kolom dari tabel di dokumen:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "remove-column.py" >}}

## Tentukan Baris sebagai Baris Header

Anda dapat memilih untuk mengulang baris pertama dalam tabel sebagai Baris Header hanya pada halaman pertama atau pada setiap halaman jika tabel dipecah menjadi beberapa. Di Aspose.Words, Anda dapat mengulang Baris Header di setiap halaman menggunakan properti [HeadingFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/heading_format/).

Anda juga dapat menandai beberapa baris header jika baris tersebut terletak satu demi satu di awal tabel. Untuk melakukan ini, Anda perlu menerapkan properti **HeadingFormat** ke baris ini.

{{% alert color="primary" %}}

Perhatikan bahwa Baris Header tidak berfungsi di tabel bertumpuk. Artinya, jika Anda memiliki tabel di dalam tabel lain, pengaturan ini tidak akan berpengaruh. Ini adalah batasan Microsoft Word yang tidak mengizinkan hal ini, bukan Aspose.Words.

{{% /alert %}}

Contoh kode berikut menunjukkan cara membuat tabel yang menyertakan Baris Header yang berulang di halaman berikutnya:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "repeat-rows-on-subsequent-pages.py" >}}

## Jaga agar Tabel dan Baris tidak Terpecah di Halaman

Ada kalanya isi tabel tidak boleh dipecah menjadi beberapa halaman. Misalnya, jika judul berada di atas tabel, judul dan tabel harus selalu diletakkan bersamaan pada halaman yang sama untuk menjaga tampilan yang tepat.

Ada dua teknik terpisah yang berguna untuk mencapai fungsi ini:

- `Allow row break across pages`, yang diterapkan pada baris tabel
- `Keep with next`, yang diterapkan pada paragraf di sel tabel

Secara default, properti di atas dinonaktifkan.

### Cegah Satu Baris agar Tidak Melanggar Halaman

Hal ini melibatkan pembatasan konten di dalam sel-sel baris agar tidak dipecah menjadi satu halaman. Di Microsoft Word, ini dapat ditemukan di bawah Properti Tabel sebagai opsi "Izinkan baris untuk dipecah melintasi halaman". Di Aspose.Words ini ditemukan di bawah objek [RowFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/) [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) sebagai properti [RowFormat.AllowBreakAcrossPages](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/allow_break_across_pages/).

Contoh kode berikut menunjukkan cara menonaktifkan baris pemisah di seluruh halaman untuk setiap baris dalam tabel:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "row-format-disable-break-across-pages.py" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file contoh contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Table%20spanning%20two%20pages.docx).

{{% /alert %}}

### Jaga agar Tabel tidak Melanggar Halaman

Untuk menghentikan tabel agar tidak terpecah menjadi beberapa halaman, kita perlu menentukan bahwa kita ingin konten yang terdapat dalam tabel tetap bersama.

Untuk melakukan hal ini, Aspose.Words menggunakan metode yang memungkinkan pengguna memilih tabel dan mengaktifkan parameter [KeepWithNext](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/keep_with_next/) ke true untuk setiap paragraf dalam sel tabel. Pengecualiannya adalah paragraf terakhir dalam tabel, yang harus disetel ke false.

Contoh kode berikut menunjukkan cara mengatur tabel agar tetap bersama di halaman yang sama:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "keep-table-together.py" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file contoh contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Table%20spanning%20two%20pages.docx).

{{% /alert %}}
