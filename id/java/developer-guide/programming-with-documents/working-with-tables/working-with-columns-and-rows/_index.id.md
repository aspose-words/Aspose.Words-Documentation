---
title: Bekerja dengan Kolom dan Baris di Java
second_title: Aspose.Words Sitemap Java
articleTitle: Bekerja dengan Kolom dan Baris
linktitle: Bekerja dengan Kolom dan Baris
description: "Bekerja dengan bagian dari tabel - baris, kolom, dan sel-sel yang menggunakan JavaSitemap Spesifikasi Baris Header JavaSitemap"
type: docs
weight: 30
url: /id/java/working-with-columns-and-rows/
timestamp: 2024-01-27-14-07-04
---

Untuk kontrol lebih lanjut tentang bagaimana meja bekerja, pelajari cara memanipulasi kolom dan baris.

## Temukan Indeks Elemen Tabel

Kolom, baris dan sel dikelola dengan mengakses node dokumen yang dipilih oleh indeksnya. Mencari indeks dari setiap node melibatkan mengumpulkan semua node anak dari jenis elemen dari node induk, dan kemudian menggunakan [IndexOf](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#indexOf-com.aspose.words.Node) metode untuk menemukan indeks node yang diinginkan dalam koleksi.

### Temukan Indeks Tabel dalam Dokumen

Kadang-kadang Anda mungkin perlu melakukan perubahan pada tabel tertentu dalam dokumen. Untuk melakukan ini, Anda dapat merujuk ke tabel dengan indeksnya.

Contoh kode berikut menunjukkan cara mengambil indeks tabel dalam dokumen:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-table-index.java" >}}

### Menemukan Indeks Baris di Meja

Demikian pula, Anda mungkin perlu melakukan perubahan pada baris tertentu di tabel yang dipilih. Untuk melakukan ini, Anda juga dapat merujuk ke baris dengan indeksnya.

Contoh kode berikut menunjukkan cara mengambil indeks baris dalam tabel:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-row-index.java" >}}

### Menemukan Indeks Sel di Baris

Akhirnya, Anda mungkin perlu membuat perubahan pada sel tertentu, dan Anda dapat melakukan ini dengan indeks sel juga.

Contoh kode berikut menunjukkan cara mengambil indeks sel berturut-turut:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-cell-index.java" >}}

## Bekerja dengan Kolom

Sitemap Aspose.Words Document Object Model SitemapDOMLogin [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) node terdiri dari [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) node dan kemudian [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) Login Jadi, di Meme it `Document` Model objek Aspose.WordsSeperti dalam dokumen Word, tidak ada konsep kolom.

Dengan desain, baris tabel di Microsoft Word Login Aspose.Words benar-benar independen, dan sifat dasar dan operasi yang terkandung hanya dalam baris dan sel-sel tabel. Ini memberikan tabel kemampuan untuk memiliki beberapa atribut yang menarik:

- Setiap baris meja dapat memiliki jumlah sel yang sama sekali berbeda
- Vertikal, sel-sel dari setiap baris dapat memiliki lebar yang berbeda
- Login Mungkin untuk bergabung dengan tabel dengan format baris yang berbeda dan jumlah sel

![work-with-columns-aspose-words-java](/words/java/working-with-columns-and-rows/working-with-columns-and-rows-1.png)

Setiap operasi yang dilakukan pada kolom sebenarnya "shortcuts" yang melakukan operasi dengan mengubah sel baris secara kolektif dengan cara yang terlihat seperti mereka diterapkan pada kolom. Itu, Anda dapat melakukan operasi pada kolom dengan hanya memperbarui indeks sel baris tabel yang sama.

Contoh kode berikut menyederhanakan operasi tersebut dengan membuktikan kelas fasad yang mengumpulkan sel-sel yang membuat "kolumn" tabel:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "column-class.java" >}}

Contoh kode berikut menunjukkan cara memasukkan kolom kosong ke dalam tabel:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "insert-blank-column.java" >}}

Contoh kode berikut menunjukkan cara menghapus kolom dari tabel dalam dokumen:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "remove-column.java" >}}

## Tentukan Baris sebagai Baris Header

Anda dapat memilih untuk mengulang baris pertama di meja sebagai Header Row hanya di halaman pertama atau di setiap halaman jika tabel dibagi menjadi beberapa. Sitemap Aspose.Words, Anda dapat mengulangi Row Header di setiap halaman menggunakan [HeadingFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getHeadingFormat) Login

Anda juga dapat menandai beberapa baris header jika baris tersebut terletak satu setelah yang lain di awal meja. Untuk melakukan ini, Anda perlu menerapkan Meme it **HeadingFormat** properti untuk baris ini.

{{% alert color="primary" %}}

Perhatikan bahwa Header Row tidak bekerja di tabel bersarang. Itu, jika Anda memiliki tabel di dalam tabel lain, pengaturan ini tidak akan berpengaruh. Ini adalah keterbatasan Microsoft Word tidak memungkinkan ini, tidak Aspose.WordsSitemap

{{% /alert %}}

Contoh kode berikut menunjukkan cara membangun tabel yang mencakup Header Rows yang mengulangi halaman berikutnya:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "repeat-rows-on-subsequent-pages.java" >}}

## Simpan Tabel dan Baris dari Breaking Across Pages {#keep-tables-and-rows-from-breaking-across-pages}

Ada kali di mana isi tabel tidak boleh dibagi di halaman. Misalnya, jika judul di atas meja, judul dan tabel harus selalu disimpan bersama di halaman yang sama untuk melestarikan penampilan yang tepat.

Ada dua teknik terpisah yang berguna untuk mencapai fungsi ini:

- Login `Allow row break across pages`, yang diterapkan pada baris tabel
- Login `Keep with next`, yang diterapkan untuk paragraf dalam sel tabel

Secara default, sifat di atas dinonaktifkan.

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-1.png" alt="keep-tables-and-rows-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

### Jauhkan Baris dari Breaking Across Pages {#keep-a-row-from-breaking-across-pages}

Ini melibatkan membatasi konten di dalam sel-sel dari dibagi di halaman. Sitemap Microsoft Word, ini dapat ditemukan di bawah Properti Meja sebagai opsi "Tirai rata untuk memecah halaman". Sitemap Aspose.Words ini ditemukan di bawah Meme it [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/) objek dari [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) sebagai properti [RowFormat.AllowBreakAcrossPages](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getAllowBreakAcrossPages)Sitemap

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-2.png" alt="keep-rows-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

Contoh kode berikut menunjukkan cara menonaktifkan baris putus di halaman untuk setiap baris di meja:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "row-format-disable-break-across-pages.java" >}}

### Simpan Tabel dari Breaking Across Pages {#keep-a-table-from-breaking-across-pages}

Untuk menghentikan tabel dari membagi halaman, kita perlu menentukan bahwa kita ingin konten yang terkandung dalam tabel untuk tetap bersama.

Untuk melakukan ini, Aspose.Words menggunakan metode, yang memungkinkan pengguna untuk memilih tabel dan mengaktifkan [KeepWithNext](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getKeepWithNext) parameter ke true untuk setiap paragraf dalam sel tabel. Pengecualian adalah paragraf terakhir di meja, yang harus diatur untuk falseSitemap

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-3.png" alt="keep-tables-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

Contoh kode berikut menunjukkan cara mengatur tabel untuk tetap bersama di halaman yang sama:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "keep-table-together.java" >}}
