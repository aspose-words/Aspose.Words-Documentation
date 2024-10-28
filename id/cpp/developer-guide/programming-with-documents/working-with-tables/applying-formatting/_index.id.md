---
title: Pemformatan Tabel dalam C++
second_title: Aspose.Words untuk C++
articleTitle: Menerapkan Pemformatan
linktitle: Menerapkan Pemformatan
description: "Pemformatan tabel secara detail menggunakan C++. Menggunakan C++ untuk memformat setiap bagian tabel."
type: docs
weight: 70
url: /id/cpp/applying-formatting/
---

Setiap elemen tabel dapat diterapkan dengan pemformatan yang berbeda. Misalnya, pemformatan tabel akan diterapkan ke seluruh tabel, pemformatan baris hanya ke baris tertentu, pemformatan sel hanya ke sel tertentu.

Aspose.Words menyediakan API yang kaya untuk mengambil dan menerapkan pemformatan ke tabel. Anda dapat menggunakan simpul [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/), [RowFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/), dan [CellFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/) untuk mengatur pemformatan.

Pada artikel ini, kita akan membahas tentang cara menerapkan pemformatan ke node tabel yang berbeda dan pengaturan pemformatan tabel apa yang didukung Aspose.Words.

## Terapkan Pemformatan ke Node yang Berbeda

Di bagian ini, kita akan melihat penerapan pemformatan ke berbagai simpul tabel.

### Pemformatan Tingkat Tabel

Untuk menerapkan pemformatan ke tabel, Anda dapat menggunakan properti yang tersedia pada simpul **Table** yang sesuai menggunakan kelas [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/), [PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/), dan [TableCollection](https://reference.aspose.com/words/cpp/aspose.words.tables/tablecollection/).

{{% alert color="primary" %}}

Perhatikan bahwa tabel harus memiliki setidaknya satu baris sebelum properti tabel dapat diterapkan. Artinya, saat membuat tabel dengan [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/), pemformatan ini harus dilakukan setelah pemanggilan pertama ke [InsertCell](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertcell/), atau setelah baris pertama ditambahkan ke tabel, atau saat node disisipkan langsung ke DOM.

{{% /alert %}}

Gambar-gambar di bawah ini menunjukkan representasi fitur pemformatan **Table** di Microsoft Word dan properti terkait di Aspose.Words.

![formattin-features-table-level-aspose-words-cpp](applying-formatting-1.png)

![formatting-table-options-aspose-words-cpp](applying-formatting-2.png)

Contoh kode berikut menunjukkan cara menerapkan batas garis luar ke tabel:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "apply-outline-border.h" >}}

Contoh kode berikut menunjukkan cara membuat tabel dengan semua batas diaktifkan (kisi):

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "build-table-with-borders.h" >}}

### Pemformatan Tingkat Baris

**Tingkat baris**

{{% alert color="primary" %}}

Perhatikan bahwa **Row** hanya dapat berupa simpul turunan dari **Table**. Pada saat yang sama, harus ada setidaknya satu **Cell** di **Row** agar pemformatan dapat diterapkan padanya.

{{% /alert %}}

Gambar-gambar di bawah ini menunjukkan representasi fitur pemformatan **Row** di Microsoft Word dan properti terkait di Aspose.Words.

![formatting-row-level-aspose-words-cpp](applying-formatting-3.png)

Contoh kode berikut menunjukkan cara mengubah pemformatan baris tabel:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "modify-row-formatting.h" >}}

### Pemformatan Tingkat Sel

Pemformatan tingkat sel dikontrol oleh kelas [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/), [CellFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/), dan [CellCollection](https://reference.aspose.com/words/cpp/aspose.words.tables/cellcollection/).

{{% alert color="primary" %}}

Perhatikan bahwa **Cell** hanya dapat berupa simpul turunan dari **Row**. Pada saat yang sama, harus ada setidaknya satu [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/) di **Cell** agar pemformatan dapat diterapkan padanya.

Selain **Paragraph**, Anda juga dapat menyisipkan **Table** ke dalam **Cell**.

{{% /alert %}}

Gambar-gambar di bawah ini menunjukkan representasi fitur pemformatan **Cell** di Microsoft Word dan properti terkait di Aspose.Words.

![formatting-cell-level-aspose-words-cpp](applying-formatting-4.png)

![auto-formatting-cell-level-aspose-words-cpp](applying-formatting-5.png)

Contoh kode berikut menunjukkan cara mengubah pemformatan sel tabel:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "modify-cell-formatting.h" >}}

Contoh kode berikut menunjukkan cara mengatur jumlah ruang (dalam poin) untuk ditambahkan ke kiri/atas/kanan / bawah isi sel:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "cell-padding.h" >}}

## Tentukan Ketinggian Baris

Cara paling sederhana untuk mengatur tinggi baris adalah dengan menggunakan **DocumentBuilder**. Dengan menggunakan properti **RowFormat** yang sesuai, Anda dapat mengatur pengaturan ketinggian default atau menerapkan ketinggian yang berbeda untuk setiap baris dalam tabel.

Dalam Aspose.Words, tinggi baris tabel dikontrol oleh:

- properti tinggi baris – [Height](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_height/)
- properti aturan tinggi untuk baris yang diberikan - [HeightRule](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_heightrule/)

Pada saat yang sama, ketinggian yang berbeda dapat diatur untuk setiap baris-ini memungkinkan Anda untuk mengontrol pengaturan tabel secara luas.

{{% alert color="primary" %}}

Opsi aturan untuk menentukan tinggi objek dapat diatur menggunakan pencacahan [HeightRule](https://reference.aspose.com/words/cpp/aspose.words/heightrule/).

{{% /alert %}}

Contoh kode berikut menunjukkan cara membuat tabel yang berisi satu sel dan menerapkan pemformatan baris:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "apply-row-formatting.h" >}}

## Menentukan Lebar Tabel dan Sel

Tabel dalam dokumen Microsoft Word menyediakan beberapa cara berbeda untuk mengubah ukuran tabel dan sel individual. Properti ini memungkinkan kontrol yang cukup besar atas tampilan dan perilaku tabel, sehingga Aspose.Words mendukung perilaku tabel, seperti pada Microsoft Word.

Penting untuk diketahui bahwa elemen tabel menyajikan beberapa properti berbeda yang dapat memengaruhi bagaimana lebar tabel secara keseluruhan, serta sel individual, dihitung:

- Lebar yang disukai di atas meja
- Lebar yang disukai pada sel individual
- Mengizinkan autofit di atas meja

Artikel ini merinci cara kerja berbagai properti penghitungan lebar tabel dan cara mendapatkan kontrol penuh atas penghitungan lebar tabel. Ini adalah
sangat berguna untuk diketahui dalam kasus di mana tata letak tabel tidak muncul seperti yang diharapkan.

{{% alert color="primary" %}}

Dalam kebanyakan kasus, sel yang disukai direkomendasikan daripada lebar tabel. Lebar sel yang disukai lebih sesuai dengan spesifikasi format DOCX serta model Aspose.Words.

Lebar sel sebenarnya adalah nilai yang dihitung untuk format DOCX. Lebar sel yang sebenarnya dapat bergantung pada banyak hal. Misalnya, mengubah margin halaman atau lebar tabel yang disukai dapat memengaruhi lebar sel yang sebenarnya.

Lebar sel yang disukai adalah properti sel yang disimpan dalam dokumen. Itu tidak bergantung pada apa pun dan tidak berubah saat Anda mengubah tabel atau properti sel lainnya.

{{% /alert %}}

{{% alert color="primary" %}}

Semua properti dan metode yang dijelaskan dalam artikel ini terkait dengan cara kerja tabel di Microsoft Word. Jadi dalam banyak kasus, jika Anda membuat tabel secara terprogram tetapi merasa kesulitan untuk membuat tabel yang diinginkan, Anda dapat mencoba membuatnya secara visual di Microsoft Word terlebih dahulu, lalu cukup salin nilai pemformatan ke dalam aplikasi Anda.

{{% /alert %}}

### Cara Menggunakan Lebar yang Diinginkan

Lebar tabel atau sel individual yang diinginkan ditentukan melalui properti preferred width, yang merupakan ukuran yang ingin disesuaikan oleh elemen. Artinya, lebar yang disukai dapat ditentukan untuk seluruh tabel atau untuk sel individual. Dalam beberapa situasi, lebar ini mungkin tidak dapat disesuaikan dengan tepat, tetapi lebar sebenarnya akan mendekati nilai ini dalam banyak kasus.

Jenis dan nilai lebar pilihan yang sesuai ditetapkan menggunakan metode kelas [PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/):

- metode [Auto](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/auto/) untuk menentukan otomatis atau "tidak ada lebar yang disukai"
- metode [FromPercent](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/frompercent/) untuk menentukan lebar persentase
- metode [FromPoints](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/frompoints/) untuk menentukan lebar dalam poin

Gambar-gambar di bawah ini menunjukkan representasi dari *preferred width setting features* dalam Microsoft Word dan properti yang sesuai dalam Aspose.Words.

![formatting-table-properties-aspose-words-cpp](applying-formatting-8.png)

Contoh bagaimana opsi ini diterapkan ke tabel nyata dalam dokumen dapat dilihat pada gambar di bawah ini.

![todo:image_alt_text](applying-formatting-9.png)

{{% alert color="primary" %}}

Sebelum Anda dapat menggunakan lebar yang diinginkan dalam tabel, Anda harus memastikan bahwa tabel berisi setidaknya satu baris. Ini karena pemformatan tabel seperti itu dalam dokumen Microsoft Word atau dalam dokumen yang dibuat di Aspose.Words disimpan di baris tabel.

{{% /alert %}}

#### Tentukan Tabel atau Lebar Sel yang Disukai

Dalam Aspose.Words, lebar tabel dan sel diatur menggunakan properti [Table.PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_preferredwidth/) dan properti [CellFormat.PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_preferredwidth/), dengan opsi yang tersedia dalam enumerasi [PreferredWidthType](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidthtype/):

- **Auto**, yang setara dengan tidak ada set lebar yang disukai
- **Percent**, yang sesuai dengan elemen relatif terhadap ruang yang tersedia di ukuran jendela atau wadah, dan menghitung ulang nilainya saat lebar yang tersedia berubah
- **Points**, yang sesuai dengan elemen dengan lebar yang ditentukan dalam poin

{{% alert color="primary" %}}

Secara default, tabel dapat digambarkan sebagai dipasang ke 100% ruang yang tersedia di halaman. Dalam hal ini, ini berarti tabel akan mencoba mengambil ruang antara margin halaman kiri dan kanan.

{{% /alert %}}

Menggunakan properti [Table.PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_preferredwidth/) akan menyesuaikan lebar pilihannya relatif terhadap penampungnya: halaman, kolom teks, atau sel tabel luar jika itu adalah tabel bersarang.

Contoh kode berikut menunjukkan cara mengatur tabel agar pas secara otomatis hingga 50% dari lebar halaman:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "auto-fit-to-page-width.h" >}}

Menggunakan properti [CellFormat.PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_preferredwidth/) pada sel tertentu akan menyesuaikan lebar pilihannya.

Contoh kode berikut menunjukkan cara mengatur pengaturan lebar pilihan yang berbeda:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "preferred-width-settings.h" >}}

#### Temukan Jenis dan Nilai Lebar yang Disukai

Anda dapat menggunakan properti [Type](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidthtype/) dan [Value](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidthtype/) untuk menemukan detail lebar yang diinginkan dari tabel atau sel yang diinginkan.

Contoh kode berikut menunjukkan cara mengambil tipe lebar yang disukai dari sel tabel:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "retrieve-preferred-width-type.h" >}}

### Cara Mengatur Autofit

Properti [AllowAutoFit](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_allowautofit/) memungkinkan sel dalam tabel tumbuh dan menyusut sesuai dengan kriteria yang dipilih. Misalnya, Anda dapat menggunakan opsi **AutoFit to Window** untuk menyesuaikan tabel dengan lebar halaman, dan opsi **AutoFit to Content** untuk memungkinkan setiap sel membesar atau mengecil sesuai dengan isinya.

{{% alert color="primary" %}}

Selain itu, properti **AllowAutoFit** dapat digunakan bersama dengan lebar sel yang disukai untuk memformat sel yang secara otomatis sesuai dengan kontennya, tetapi juga memiliki lebar awal. Jika perlu, lebar sel kemudian dapat tumbuh melewati lebar ini.

{{% /alert %}}

Secara default, Aspose.Words menyisipkan tabel baru menggunakan **AutoFit to Window**. Tabel akan diberi ukuran sesuai dengan lebar halaman yang tersedia. Untuk mengubah ukuran tabel, Anda dapat memanggil metode [AutoFit](https://reference.aspose.com/words/cpp/aspose.words.tables/table/autofit/). Metode ini menerima enumerasi [AutoFitBehavior](https://reference.aspose.com/words/cpp/aspose.words.tables/autofitbehavior/) yang menentukan jenis autofit yang diterapkan ke tabel.

Penting untuk diketahui bahwa metode autofit sebenarnya adalah pintasan yang menerapkan properti berbeda ke tabel secara bersamaan. Ini adalah properti yang benar-benar memberikan tabel perilaku yang diamati. Kami akan membahas properti ini untuk setiap opsi autofit.

Contoh kode berikut menunjukkan cara mengatur tabel untuk mengecilkan atau menumbuhkan setiap sel sesuai dengan isinya:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "allow-auto-fit.h" >}}

#### AutoFit Tabel ke Jendela

Saat pemasangan otomatis ke jendela diterapkan ke tabel, operasi berikut sebenarnya dilakukan di belakang layar:

1. Properti **Table.AllowAutoFit** diaktifkan untuk mengubah ukuran kolom secara otomatis agar sesuai dengan konten yang tersedia, menggunakan nilai **Table.PreferredWidth** sebesar 100%
2. **CellFormat.PreferredWidth** dihapus dari semua sel tabel
   {{% alert color="primary" %}}
   Perhatikan bahwa ini sedikit berbeda dari perilaku Microsoft Word, di mana lebar pilihan setiap sel diatur ke nilai yang sesuai berdasarkan ukuran dan kontennya saat ini. Aspose.Words tidak memperbarui lebar yang disukai sehingga hanya dihapus saja.
   {{% /alert %}}
3. Lebar kolom dihitung ulang untuk konten tabel saat ini-hasil akhirnya adalah tabel yang menempati seluruh lebar yang tersedia
4. Lebar kolom dalam tabel berubah secara otomatis saat pengguna mengedit teks

Contoh kode berikut menunjukkan cara menyesuaikan tabel secara otomatis ke lebar halaman:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "auto-fit-table-to-page-width.h" >}}

#### AutoFit Tabel ke Konten

Saat tabel melengkapi konten secara otomatis, langkah-langkah berikut sebenarnya dilakukan di belakang layar:

1. Properti **Table.AllowAutoFit** diaktifkan untuk mengubah ukuran setiap sel secara otomatis sesuai dengan kontennya

2. Lebar tabel yang disukai dihapus dari **Table.PreferredWidth**, **CellFormat.PreferredWidth** dihapus untuk setiap sel tabel
   {{% alert color="primary" %}}

   Perhatikan bahwa opsi isiotomatis ini menghapus lebar yang diinginkan dari sel, seperti pada Microsoft Word. Jika Anda ingin mempertahankan ukuran kolom dan menambah atau mengurangi kolom agar sesuai dengan konten, Anda harus menyetel properti **Table.AllowAutoFit** ke **True** sendiri daripada menggunakan pintasan autofit.{{% /alert %}}

3. Lebar kolom dihitung ulang untuk konten tabel saat ini-hasil akhirnya adalah tabel dengan lebar kolom dan lebar seluruh tabel diubah ukurannya secara otomatis agar paling sesuai dengan konten saat pengguna mengedit teks

Contoh kode berikut menunjukkan cara menambahkan tabel secara otomatis ke kontennya:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "auto-fit-table-to-contents.h" >}}

#### Nonaktifkan AutoFit dalam Tabel dan Gunakan Lebar Kolom Tetap

Jika tabel menonaktifkan autofit dan lebar kolom tetap digunakan sebagai gantinya, langkah-langkah berikut akan dilakukan:

1. properti **Table.AllowAutoFit** dinonaktifkan sehingga kolom tidak bertambah atau menyusut sesuai kontennya
2. Lebar yang disukai dari seluruh tabel dihapus dari **Table.PreferredWidth**, **CellFormat.PreferredWidth** dihapus dari semua sel tabel
3. Hasil akhirnya adalah tabel yang lebar kolomnya ditentukan oleh properti [CellFormat.Width](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_width/), dan kolomnya tidak diubah ukurannya secara otomatis saat pengguna memasukkan teks atau saat halaman diubah ukurannya

{{% alert color="primary" %}}

Perhatikan bahwa jika tidak ada lebar yang ditentukan untuk **CellFormat.Width**, nilai default satu inci (72 poin) digunakan.

{{% /alert %}}

Contoh kode berikut menunjukkan cara menonaktifkan autofit dan mengaktifkan lebar tetap untuk tabel yang ditentukan:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "auto-fit-table-to-fixed-column-widths.h" >}}

### Urutan Prioritas saat Menghitung Lebar Sel

Aspose.Words memungkinkan pengguna untuk menentukan lebar tabel atau sel melalui beberapa objek, termasuk [CellFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/) - properti [Width](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_width/) sebagian besar tersisa dari versi sebelumnya, namun tetap berguna untuk menyederhanakan pengaturan lebar sel.

Penting untuk diketahui bahwa properti **CellFormat.Width** bekerja secara berbeda tergantung pada properti width mana yang sudah ada dalam tabel.

Aspose.Words menggunakan urutan berikut untuk menghitung lebar sel:

| Pesan | Properti | Deskripsi |
| :- | :- | :- |
|  | [AllowAutoFit](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_allowautofit/) ditentukan | Jika **AutoFit** diaktifkan:<br />– tabel dapat bertambah melewati lebar yang diinginkan untuk mengakomodasi konten-biasanya tidak menyusut di bawah lebar yang diinginkan<br />- setiap perubahan pada nilai **CellFormat.Width** diabaikan dan sel akan sesuai dengan isinya sebagai gantinya |
|  | [PreferredWidthType](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/get_type/) dengan nilai **Points** atau **Percent** | **CellFormat.Width** diabaikan |
|  | [PreferredWidthType](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/get_type/) dengan nilai **Auto** | Nilai dari **CellFormat.Width** disalin dan menjadi lebar pilihan sel (dalam poin) |

{{% alert color="primary" %}}

Setiap perubahan pada properti width tidak diperbarui dalam lebar yang disukai dan sebagai gantinya harus diterapkan pada lebar yang disukai.

{{% /alert %}}

{{% alert color="primary" %}}

Saat membuat tata letak tabel tetap, tentukan lebar sel. Sel tanpa lebar tidak dapat disimpan ke format DOC. Format dokumen selain DOC, seperti DOCX, memungkinkan, pada prinsipnya, menyimpan sel tanpa lebar dalam tata letak tabel tetap.

{{% /alert %}}

## Izinkan jarak antar sel

Anda bisa mendapatkan atau mengatur ruang tambahan di antara sel tabel yang mirip dengan opsi" Spasi sel " di Microsoft Word. Ini dapat dilakukan dengan menggunakan properti [AllowCellSpacing](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_allowcellspacing/).

Contoh bagaimana opsi ini diterapkan ke tabel nyata dalam dokumen dapat dilihat pada gambar di bawah ini.

<img src="applying-formatting-10.png" alt="formatting-spacing-between-cells-aspose-words-cpp" style="width:500px"/>

Contoh kode berikut menunjukkan cara mengatur jarak antar sel:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "allow-cell-spacing.h" >}}

## Terapkan Batas dan Bayangan

Batas dan bayangan dapat diterapkan ke seluruh tabel menggunakan [Table.SetBorder](https://reference.aspose.com/words/cpp/aspose.words.tables/table/setborder/), [Table.SetBorders](https://reference.aspose.com/words/cpp/aspose.words.tables/table/setborders/), dan [Table.SetShading](https://reference.aspose.com/words/cpp/aspose.words.tables/table/setshading/), atau hanya ke sel tertentu menggunakan [CellFormat.Borders](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_borders/) dan [CellFormat.Shading](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_shading/). Selain itu, batas baris dapat diatur menggunakan [RowFormat.Borders](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_borders/), namun bayangan tidak dapat diterapkan dengan cara ini.

Gambar-gambar di bawah ini menunjukkan pengaturan batas dan bayangan di Microsoft Word dan properti terkait di Aspose.Words.

![formatting-border-line-aspose-words-cpp](applying-formatting-6.png)

![formatting-cell-color-aspose-words-cpp](applying-formatting-7.png)

Contoh kode berikut menunjukkan cara memformat tabel dan sel dengan batas dan bayangan yang berbeda:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "format-table-and-cell-with-different-borders.h" >}}