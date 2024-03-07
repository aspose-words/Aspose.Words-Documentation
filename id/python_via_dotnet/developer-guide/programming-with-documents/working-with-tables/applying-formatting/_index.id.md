---
title: Pemformatan Tabel di Python
second_title: Aspose.Words untuk Python via .NET
articleTitle: Terapkan Pemformatan
linktitle: Terapkan Pemformatan
description: "Pemformatan tabel secara detail menggunakan Python. Gunakan Python untuk memformat setiap bagian tabel."
type: docs
weight: 70
url: /id/python-net/applying-formatting/
---

Setiap elemen tabel dapat diterapkan dengan format berbeda. Misalnya, pemformatan tabel akan diterapkan ke seluruh tabel, pemformatan baris hanya ke baris tertentu, pemformatan sel hanya ke sel tertentu.

Aspose.Words menyediakan API yang kaya untuk mengambil dan menerapkan pemformatan ke tabel. Anda dapat menggunakan node [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), [RowFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/), dan [CellFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/) untuk mengatur pemformatan.

Pada artikel ini, kita akan membahas tentang cara menerapkan pemformatan ke node tabel yang berbeda dan pengaturan pemformatan tabel apa yang didukung Aspose.Words.

## Terapkan Pemformatan ke Node Berbeda

Di bagian ini, kita akan melihat penerapan pemformatan ke berbagai node tabel.

### Pemformatan Tingkat Tabel

Untuk menerapkan pemformatan ke tabel, Anda bisa menggunakan properti yang tersedia di node **Table** terkait menggunakan kelas [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), [PreferredWidth](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidth/), dan [TableCollection](https://reference.aspose.com/words/python-net/aspose.words.tables/tablecollection/).

{{% alert color="primary" %}}

Perhatikan bahwa tabel harus memiliki setidaknya satu baris sebelum properti tabel dapat diterapkan. Artinya saat membuat tabel dengan [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/), pemformatan ini harus dilakukan setelah panggilan pertama ke [InsertCell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_cell/#default), atau setelah baris pertama ditambahkan ke tabel, atau saat node dimasukkan langsung ke dalam DOM.

{{% /alert %}}

Gambar di bawah menunjukkan representasi fitur pemformatan **Table** di Microsoft Word dan properti terkaitnya dalam Aspose.Words.

![formattin-features-table-level-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-1.png)




![formatting-table-options-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-2.png)

Contoh kode berikut menunjukkan cara menerapkan batas kerangka ke tabel:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "apply-outline-border.py" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file contoh contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

Contoh kode berikut menunjukkan cara membuat tabel dengan semua batas diaktifkan (kisi):

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "build-table-with-borders.py" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file contoh contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

### Pemformatan Tingkat Baris

Pemformatan **Tingkat baris** dapat dikontrol menggunakan kelas [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/), [RowFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/row/row_format/), dan [RowCollection](https://reference.aspose.com/words/python-net/aspose.words.tables/rowcollection/).

{{% alert color="primary" %}}

Perhatikan bahwa **Row** hanya dapat menjadi simpul anak dari **Table**. Pada saat yang sama, setidaknya harus ada satu **Cell** di **Row** agar pemformatan dapat diterapkan padanya.

{{% /alert %}}

Gambar di bawah menunjukkan representasi fitur pemformatan **Row** di Microsoft Word dan properti terkaitnya dalam Aspose.Words.

![formatting-row-level-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-3.png)


Contoh kode berikut menunjukkan cara mengubah format baris tabel:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "modify-row-formatting.py" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file contoh contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

### Pemformatan Tingkat Sel

Pemformatan tingkat sel dikendalikan oleh kelas [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/), [CellFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/cell_format/), dan [CellCollection](https://reference.aspose.com/words/python-net/aspose.words.tables/cellcollection/).

{{% alert color="primary" %}}

Perhatikan bahwa **Cell** hanya dapat menjadi simpul anak dari **Row**. Pada saat yang sama, setidaknya harus ada satu [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) di **Cell** agar pemformatan dapat diterapkan padanya.

Selain **Paragraph**, Anda juga bisa memasukkan **Table** ke dalam **Cell**.

{{% /alert %}}

Gambar di bawah menunjukkan representasi fitur pemformatan **Cell** di Microsoft Word dan properti terkaitnya dalam Aspose.Words.

![formatting-cell-level-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-4.png)




![auto-formatting-cell-level-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-5.png)


Contoh kode berikut menunjukkan cara mengubah format sel tabel:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "modify-cell-formatting.py" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file contoh contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

Contoh kode berikut menunjukkan cara mengatur jumlah spasi (dalam poin) untuk ditambahkan ke kiri/atas/kanan/bawah konten sel:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "cell-padding.py" >}}

## Tentukan Ketinggian Baris

Cara termudah untuk mengatur tinggi baris adalah dengan menggunakan **DocumentBuilder**. Dengan menggunakan properti **RowFormat** yang sesuai, Anda dapat mengatur pengaturan ketinggian default atau menerapkan ketinggian berbeda untuk setiap baris dalam tabel.

Di Aspose.Words, tinggi baris tabel dikontrol oleh:

- properti tinggi baris – [Height](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/height/)
- properti aturan ketinggian untuk baris tertentu – [HeightRule](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/height_rule/)

Pada saat yang sama, ketinggian yang berbeda dapat diatur untuk setiap baris – ini memungkinkan Anda mengontrol pengaturan tabel secara luas.

{{% alert color="primary" %}}

Opsi aturan untuk menentukan ketinggian suatu objek dapat diatur menggunakan enumerasi [HeightRule](https://reference.aspose.com/words/python-net/aspose.words/heightrule/).

{{% /alert %}}

Contoh kode berikut memperlihatkan cara membuat tabel yang berisi satu sel dan menerapkan pemformatan baris:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "apply-row-formatting.py" >}}

## Menentukan Lebar Tabel dan Sel

Tabel dalam dokumen Microsoft Word menyediakan beberapa cara berbeda untuk mengubah ukuran tabel dan sel individual. Properti ini memungkinkan kontrol yang besar atas tampilan dan perilaku tabel, sehingga Aspose.Words mendukung perilaku tabel, seperti di Microsoft Word.

Penting untuk diketahui bahwa elemen tabel menyajikan beberapa properti berbeda yang dapat memengaruhi cara penghitungan lebar tabel secara keseluruhan, serta sel individual:

- Lebar yang disukai di atas meja
- Lebar yang disukai pada masing-masing sel
- Mengizinkan autofit di atas meja

Artikel ini merinci cara kerja berbagai properti penghitungan lebar tabel dan cara mendapatkan kontrol penuh atas penghitungan lebar tabel. Ini
sangat berguna untuk diketahui dalam kasus di mana tata letak tabel tidak muncul seperti yang diharapkan.

{{% alert color="primary" %}}

Dalam kebanyakan kasus, sel yang lebih disukai direkomendasikan daripada lebar tabel. Lebar sel yang disukai lebih sesuai dengan spesifikasi format DOCX serta model Aspose.Words.

Lebar sel sebenarnya adalah nilai terhitung untuk format DOCX. Lebar sel sebenarnya dapat bergantung pada banyak hal. Misalnya, mengubah margin halaman atau lebar tabel pilihan dapat memengaruhi lebar sel sebenarnya.

Lebar sel yang disukai adalah properti sel yang disimpan dalam dokumen. Itu tidak bergantung pada apa pun dan tidak berubah ketika Anda mengubah tabel atau properti sel lainnya.

{{% /alert %}}

{{% alert color="primary" %}}

Semua properti dan metode yang dijelaskan dalam artikel ini terkait dengan cara kerja tabel di Microsoft Word. Jadi dalam kebanyakan kasus, jika Anda membuat tabel secara terprogram tetapi merasa kesulitan untuk membuat tabel yang diinginkan, Anda dapat mencoba membuatnya secara visual di Microsoft Word terlebih dahulu, lalu cukup salin nilai pemformatannya ke dalam aplikasi Anda.

{{% /alert %}}

### Cara Menggunakan Lebar Pilihan

Lebar tabel atau sel individual yang diinginkan ditentukan melalui properti lebar pilihan, yang merupakan ukuran yang ingin ditampung oleh suatu elemen. Artinya, lebar yang diinginkan dapat ditentukan untuk seluruh tabel atau untuk sel individual. Dalam beberapa situasi, mungkin tidak mungkin untuk menyesuaikan lebar ini dengan tepat, namun lebar sebenarnya akan mendekati nilai ini dalam banyak kasus.

Jenis dan nilai lebar pilihan yang sesuai ditetapkan menggunakan metode kelas [PreferredWidth](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidth/):

- metode [Auto](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidthtype/) untuk menentukan otomatis atau "tidak ada lebar yang diinginkan"
- metode [FromPercent](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidthtype/) untuk menentukan persentase lebar
- metode [FromPoints](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidthtype/) untuk menentukan lebar dalam poin

Gambar di bawah menunjukkan representasi *fitur pengaturan lebar pilihan* di Microsoft Word dan properti terkaitnya di Aspose.Words.

![formatting-table-properties-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-8.png)

Contoh bagaimana opsi ini diterapkan pada tabel nyata dalam dokumen dapat dilihat pada gambar di bawah.

![tables-applying-options-python](/words/python-net/applying-formatting/applying-formatting-9.png)

{{% alert color="primary" %}}

Sebelum Anda dapat menggunakan lebar yang diinginkan dalam sebuah tabel, Anda harus memastikan bahwa tabel tersebut berisi setidaknya satu baris. Hal ini karena pemformatan tabel dalam dokumen Microsoft Word atau dokumen yang dibuat di Aspose.Words disimpan dalam baris tabel.

{{% /alert %}}

#### Tentukan Tabel Pilihan atau Lebar Sel

Di Aspose.Words, lebar tabel dan sel diatur menggunakan properti [Table.PreferredWidth](https://reference.aspose.com/words/python-net/aspose.words.tables/table/preferred_width/) dan properti [CellFormat.PreferredWidth](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/preferred_width/), dengan opsi yang tersedia dalam enumerasi [PreferredWidthType](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidthtype/):

- **Auto**, yang setara dengan tidak ada set lebar yang diinginkan
- **Percent**, yang menyesuaikan elemen relatif terhadap ruang yang tersedia di jendela atau ukuran wadah, dan menghitung ulang nilainya ketika lebar yang tersedia berubah
- **Points**, yang sesuai dengan elemen dengan lebar tertentu dalam poin

{{% alert color="primary" %}}

Secara default, tabel dapat digambarkan telah disesuaikan dengan 100% ruang yang tersedia di halaman. Dalam hal ini, ini berarti tabel akan mencoba mengambil ruang antara margin halaman kiri dan kanan.

{{% /alert %}}

Menggunakan properti [Table.PreferredWidth](https://reference.aspose.com/words/python-net/aspose.words.tables/table/preferred_width/) akan menyesuaikan lebar pilihannya relatif terhadap wadahnya: halaman, kolom teks, atau sel tabel luar jika itu adalah tabel bertumpuk.

Contoh kode berikut menunjukkan cara mengatur tabel agar pas secara otomatis hingga 50% lebar halaman:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "auto-fit-table-to-page-width.py" >}}

Menggunakan properti [CellFormat.PreferredWidth](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/preferred_width/) pada sel tertentu akan menyesuaikan lebar yang diinginkan.

Contoh kode berikut menunjukkan cara mengatur pengaturan lebar pilihan yang berbeda:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "preferred-width-settings.py" >}}

#### Menemukan Jenis dan Nilai Lebar Pilihan

Anda dapat menggunakan properti [Type](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidth/type/) dan [Value](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidth/value/) untuk menemukan detail lebar yang diinginkan dari tabel atau sel yang diinginkan.

Contoh kode berikut menunjukkan cara mengambil tipe lebar sel tabel yang diinginkan:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "retrieve-preferred-width-type.py" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file contoh contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

### Cara Mengatur Penyesuaian Otomatis

Properti [AllowAutoFit](https://reference.aspose.com/words/python-net/aspose.words.tables/table/allow_auto_fit/) memungkinkan sel dalam tabel tumbuh dan menyusut sesuai dengan kriteria yang dipilih. Misalnya, Anda bisa menggunakan opsi **Paskan Otomatis ke Jendela** untuk menyesuaikan tabel dengan lebar halaman, dan opsi **Paskan Otomatis ke Konten** untuk memungkinkan setiap sel membesar atau menyusut sesuai dengan kontennya.

{{% alert color="primary" %}}

Selain itu, properti **AllowAutoFit** dapat digunakan bersama dengan lebar sel pilihan untuk memformat sel yang secara otomatis sesuai dengan kontennya, namun juga memiliki lebar awal. Jika perlu, lebar sel dapat bertambah melewati lebar ini.

{{% /alert %}}

Secara default, Aspose.Words menyisipkan tabel baru menggunakan **Paskan Otomatis ke Jendela**. Tabel akan berukuran sesuai dengan lebar halaman yang tersedia. Untuk mengubah ukuran tabel, Anda bisa memanggil metode [AutoFit](https://reference.aspose.com/words/python-net/aspose.words.tables/table/auto_fit/#autofitbehavior). Metode ini menerima enumerasi [AutoFitBehavior](https://reference.aspose.com/words/python-net/aspose.words.tables/autofitbehavior/) yang menentukan jenis autofit yang diterapkan pada tabel.

Penting untuk diketahui bahwa metode autofit sebenarnya adalah pintasan yang menerapkan properti berbeda ke tabel secara bersamaan. Ini adalah properti yang benar-benar memberikan tabel perilaku yang diamati. Kami akan membahas properti ini untuk setiap opsi penyesuaian otomatis.

Contoh kode berikut menunjukkan cara mengatur tabel untuk mengecilkan atau memperbesar setiap sel sesuai dengan isinya:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "allow-auto-fit.py" >}}

#### Paskan Otomatis Tabel ke Jendela

Saat penyesuaian otomatis ke jendela diterapkan ke tabel, operasi berikut sebenarnya dilakukan di belakang layar:

1. Properti **Table.AllowAutoFit** diaktifkan untuk secara otomatis mengubah ukuran kolom agar sesuai dengan konten yang tersedia, menggunakan nilai **Table.PreferredWidth** 100%
2. **CellFormat.PreferredWidth** dihapus dari semua sel tabel
      {{% alert color="primary" %}}
   Perhatikan bahwa ini sedikit berbeda dari perilaku Microsoft Word, di mana lebar pilihan setiap sel diatur ke nilai yang sesuai berdasarkan ukuran dan kontennya saat ini. Aspose.Words tidak memperbarui lebar yang diinginkan sehingga hanya dihapus saja.
      {{% /alert %}}
3. Lebar kolom dihitung ulang untuk isi tabel saat ini – hasil akhirnya adalah tabel yang menempati seluruh lebar yang tersedia
4. Lebar kolom pada tabel berubah secara otomatis saat pengguna mengedit teks

Contoh kode berikut menunjukkan cara menyesuaikan tabel secara otomatis dengan lebar halaman:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "auto-fit-table-to-page-width.py" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file contoh contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

#### Paskan Otomatis Tabel ke Konten

Saat tabel dilengkapi konten secara otomatis, langkah-langkah berikut sebenarnya dilakukan di belakang layar:

1. Properti **Table.AllowAutoFit** diaktifkan untuk secara otomatis mengubah ukuran setiap sel sesuai dengan kontennya

2. Lebar tabel pilihan dihapus dari **Table.PreferredWidth**, **CellFormat.PreferredWidth** dihapus untuk setiap sel tabel
      {{% alert color="primary" %}}

   Perhatikan bahwa opsi penyesuaian otomatis ini menghilangkan lebar sel yang diinginkan, seperti di Microsoft Word. Jika Anda ingin mempertahankan ukuran kolom dan menambah atau mengurangi kolom agar sesuai dengan konten, Anda harus mengatur properti **Table.AllowAutoFit** ke **True** sendiri daripada menggunakan pintasan penyesuaian otomatis.{{% /alert %}}

3. Lebar kolom dihitung ulang untuk isi tabel saat ini – hasil akhirnya adalah tabel dimana lebar kolom dan lebar seluruh tabel secara otomatis diubah ukurannya agar paling sesuai dengan konten saat pengguna mengedit teks

Contoh kode berikut menunjukkan cara menyesuaikan tabel secara otomatis dengan kontennya:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "auto-fit-table-to-contents.py" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file contoh contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

#### Nonaktifkan AutoFit di Tabel dan Gunakan Lebar Kolom Tetap

Jika penyesuaian otomatis tabel dinonaktifkan dan digunakan lebar kolom tetap, langkah-langkah berikut akan dilakukan:

1. Properti **Table.AllowAutoFit** dinonaktifkan sehingga kolom tidak bertambah atau menyusut sesuai isinya
2. Lebar seluruh tabel yang diinginkan dihapus dari **Table.PreferredWidth**, **CellFormat.PreferredWidth** dihapus dari semua sel tabel
3. Hasil akhirnya adalah tabel yang lebar kolomnya ditentukan oleh properti [CellFormat.Width](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/width/), dan ukuran kolomnya tidak otomatis diubah saat pengguna memasukkan teks atau saat mengubah ukuran halaman

{{% alert color="primary" %}}

Perhatikan bahwa jika lebar tidak ditentukan untuk **CellFormat.Width**, nilai default satu inci (72 poin) akan digunakan.

{{% /alert %}}

Contoh kode berikut menunjukkan cara menonaktifkan penyesuaian otomatis dan mengaktifkan lebar tetap untuk tabel yang ditentukan:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "auto-fit-table-to-fixed-column-widths.py" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file contoh contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

### Urutan Prioritas saat Menghitung Lebar Sel

Aspose.Words memungkinkan pengguna untuk menentukan lebar tabel atau sel melalui beberapa objek, termasuk [CellFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/) – properti [Width](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/width/q)-nya sebagian besar merupakan sisa dari versi sebelumnya, namun tetap berguna untuk menyederhanakan pengaturan lebar sel.

Penting untuk mengetahui bahwa properti **CellFormat.Width** bekerja secara berbeda tergantung pada properti lebar lainnya yang sudah ada di tabel.

Aspose.Words menggunakan urutan berikut untuk menghitung lebar sel:

|  Memesan |  Properti |  Keterangan |
|  -----  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  1      |  [AllowAutoFit](https://reference.aspose.com/words/python-net/aspose.words.tables/table/allow_auto_fit/) ditentukan |  Jika **AutoFit** diaktifkan:<br>- tabel dapat tumbuh melebihi lebar yang diinginkan untuk menampung konten – biasanya tidak menyusut di bawah lebar yang diinginkan<br>- setiap perubahan pada nilai **CellFormat.Width** akan diabaikan dan sel akan disesuaikan dengan isinya |
|  2      |  [PreferredWidthType](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidthtype/) dengan nilai **Points** atau **Percent** |  **CellFormat.Width** diabaikan |
|  3      |  [PreferredWidthType](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidthtype/) dengan nilai **Auto** |  Nilai dari **CellFormat.Width** disalin dan menjadi lebar sel yang diinginkan (dalam poin) |

{{% alert color="primary" %}}

Perubahan apa pun pada properti lebar tidak diperbarui pada lebar yang diinginkan dan harus diterapkan pada lebar yang diinginkan.

{{% /alert %}}

{{% alert color="primary" %}}

Saat membuat tata letak tabel tetap, tentukan lebar sel. Sel tanpa lebar tidak dapat disimpan ke format DOC. Format dokumen selain DOC, seperti DOCX, pada prinsipnya memungkinkan menyimpan sel tanpa lebar dalam tata letak tabel tetap.

{{% /alert %}}

## Izinkan Jarak Antar Sel

Anda bisa mendapatkan atau mengatur spasi tambahan antar sel tabel mirip dengan opsi "spasi sel" di Microsoft Word. Hal ini dapat dilakukan dengan menggunakan properti [AllowCellSpacing](https://reference.aspose.com/words/python-net/aspose.words.tables/table/allow_cell_spacing/).

Contoh bagaimana opsi ini diterapkan pada tabel nyata dalam dokumen dapat dilihat pada gambar di bawah.

<img src="/words/python-net/applying-formatting/applying-formatting-10.png" alt="memformat-jarak-antar-sel-aspose-kata-python" style="width:500px"/>

Contoh kode berikut menunjukkan cara mengatur jarak antar sel:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "allow-cell-spacing.py" >}}

## Menerapkan Batas dan Bayangan

Batas dan bayangan dapat diterapkan ke seluruh tabel menggunakan [Table.SetBorder](https://reference.aspose.com/words/python-net/aspose.words.tables/table/set_border/), [Table.SetBorders](https://reference.aspose.com/words/python-net/aspose.words.tables/table/set_borders/), dan [Table.SetShading](https://reference.aspose.com/words/python-net/aspose.words.tables/table/set_shading/), atau hanya ke sel tertentu menggunakan [CellFormat.Borders](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/borders/) dan [CellFormat.Shading](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/shading/). Selain itu, batas baris dapat diatur menggunakan [RowFormat.Borders](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/borders/), namun bayangan tidak dapat diterapkan dengan cara ini.

Gambar di bawah menunjukkan pengaturan batas dan bayangan di Microsoft Word dan properti terkait di Aspose.Words.

![formatting-border-line-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-6.png)

![formatting-cell-color-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-7.png)

Contoh kode berikut menunjukkan cara memformat tabel dan sel dengan batas dan bayangan berbeda:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "format-table-and-cell-with-different-borders.py" >}}