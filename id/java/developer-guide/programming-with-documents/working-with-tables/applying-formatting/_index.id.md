---
title: Sitemap Java
second_title: Aspose.Words Sitemap Java
articleTitle: Daftar Tabel
linktitle: Daftar Tabel
description: "Tabel format dalam rincian. Sitemap Java untuk memformat setiap bagian dari tabel."
type: docs
weight: 70
url: /id/java/applying-formatting/
timestamp: 2024-01-27-14-07-04
---

Setiap elemen tabel dapat diterapkan dengan format yang berbeda. Misalnya, format tabel akan diterapkan pada seluruh tabel, format baris untuk hanya baris tertentu, format sel hanya untuk sel-sel tertentu.

Aspose.Words Sitemap API untuk mengambil dan menerapkan format ke tabel. Anda dapat menggunakan [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/), Login [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) node untuk mengatur format.

Dalam artikel ini, kita akan berbicara tentang cara menerapkan format ke node tabel yang berbeda dan pengaturan format tabel apa Aspose.Words Login

## Menerapkan Format ke Node Berbeda

Di bagian ini, kita akan melihat menerapkan format ke berbagai node tabel.

### Format Tingkat Meja

Untuk menerapkan format ke tabel Anda dapat menggunakan properti yang tersedia sesuai **Table** Login [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/), Login [TableCollection](https://reference.aspose.com/words/java/com.aspose.words/tablecollection/) kelas.

{{% alert color="primary" %}}

Perhatikan bahwa tabel harus memiliki setidaknya satu baris sebelum sifat tabel dapat diterapkan. Ini berarti bahwa ketika membangun meja dengan Meme it [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/), format ini harus dilakukan setelah panggilan pertama untuk [InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell()), atau setelah baris pertama ditambahkan ke meja, atau ketika node dimasukkan langsung ke dalam DOMSitemap

{{% /alert %}}

Gambar di bawah ini menunjukkan representasi dari **Table** fitur format dalam Microsoft Word dan sifatnya yang sesuai Aspose.WordsSitemap

![apply-formatting-to-table-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-1.png)

![apply-formatting-to-table-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-2.png)

Contoh kode berikut menunjukkan cara menerapkan batas garis ke meja:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "apply-outline-border.java" >}}

Contoh kode berikut menunjukkan cara membangun tabel dengan semua batas diaktifkan (grid):

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "build-table-with-borders.java" >}}

### Format Tingkat Baris

Baris-level** format dapat dikontrol menggunakan [Row](https://reference.aspose.com/words/java/com.aspose.words/row/), [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/), Login [RowCollection](https://reference.aspose.com/words/java/com.aspose.words/rowcollection/) kelas.

{{% alert color="primary" %}}

Login **Row** hanya bisa menjadi node anak dari **Table**Sitemap Pada saat yang sama, harus ada setidaknya satu **Cell** Sitemap **Row** sehingga format dapat diterapkan untuk itu. Meme it

{{% /alert %}}

Gambar di bawah ini menunjukkan representasi dari **Row** fitur format dalam Microsoft Word dan sifatnya yang sesuai Aspose.WordsSitemap

![apply-formatting-to-row-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-3.png)

Contoh kode berikut menunjukkan cara memodifikasi format baris tabel:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "modify-row-formatting.java" >}}

### Format Tingkat Sel

Format tingkat sel dikendalikan oleh [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/), [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/), Login [CellCollection](https://reference.aspose.com/words/java/com.aspose.words/cellcollection/) kelas.

{{% alert color="primary" %}}

Login **Cell** hanya bisa menjadi node anak dari **Row**Sitemap Pada saat yang sama, harus ada setidaknya satu [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) Sitemap **Cell** sehingga format dapat diterapkan untuk itu. Meme it

Selain **Paragraph**, Anda juga dapat memasukkan **Table** Sitemap **Cell**Sitemap

{{% /alert %}}

Gambar di bawah ini menunjukkan representasi dari **Cell** fitur format dalam Microsoft Word dan sifatnya yang sesuai Aspose.WordsSitemap

![apply-formatting-to-cell-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-4.png)

![apply-auto-formatting-to-row-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-5.png)

Contoh kode berikut menunjukkan cara memodifikasi format sel tabel:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "modify-cell-formatting.java" >}}

Contoh kode berikut menunjukkan cara mengatur jumlah ruang (dalam poin) untuk menambahkan ke kiri / atas / kanan / bawah konten sel:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "cell-padding.java" >}}

## Menentukan Tinggi Baris

Cara paling sederhana untuk mengatur ketinggian baris adalah untuk menggunakan **DocumentBuilder**Sitemap Menggunakan yang sesuai **RowFormat** properti, Anda dapat mengatur pengaturan ketinggian default atau menerapkan ketinggian yang berbeda untuk setiap baris di meja.

Sitemap Aspose.Words, tinggi baris meja dikendalikan oleh:

- properti tinggi baris - [Height](https://reference.aspose.com/words/java/com.aspose.words/row/format#Height)
- properti aturan tinggi untuk baris tertentu - [HeightRule](https://reference.aspose.com/words/java/com.aspose.words/row/format#HeightRule)

Pada saat yang sama, ketinggian yang berbeda dapat diatur untuk setiap baris - ini memungkinkan Anda untuk mengontrol pengaturan tabel secara luas.

{{% alert color="primary" %}}

Pilihan rule untuk menentukan ketinggian objek dapat diatur menggunakan [HeightRule](https://reference.aspose.com/words/java/com.aspose.words/heightrule/) Login

{{% /alert %}}

Contoh kode berikut menunjukkan cara membuat tabel yang mengandung sel tunggal dan menerapkan format baris:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "apply-row-formatting.java" >}}

## Tentukan Tabel dan Lebar Sel

Tabel di sebuah Microsoft Word dokumen menyediakan beberapa cara berbeda untuk mengubah ukuran tabel dan sel-sel individu. Properti ini memungkinkan kontrol yang cukup besar atas penampilan dan perilaku meja, sehingga Aspose.Words mendukung perilaku tabel, seperti dalam Microsoft WordSitemap

Penting untuk mengetahui bahwa elemen tabel menyajikan beberapa sifat yang berbeda yang dapat mempengaruhi bagaimana lebar tabel keseluruhan, serta sel-sel individu, dihitung:

- Lebar yang disukai di meja
- Lebar yang disukai pada sel individual
- Memungkinkan autofit di meja

Artikel ini rincian bagaimana berbagai properti perhitungan lebar meja bekerja dan bagaimana untuk mendapatkan kontrol penuh atas perhitungan lebar meja. Sitemap
terutama berguna untuk mengetahui dalam kasus-kasus seperti tata letak tabel tidak muncul seperti yang diharapkan.

{{% alert color="primary" %}}

Dalam kebanyakan kasus, sel yang disukai direkomendasikan dari lebar meja. Lebar sel yang disukai lebih sejalan dengan spesifikasi format DOCX serta Aspose.Words Login

Lebar sel sebenarnya merupakan nilai yang dihitung untuk format DOCX. Lebar sel yang sebenarnya dapat tergantung pada banyak hal. Misalnya, mengubah margin halaman atau lebar meja yang disukai dapat mempengaruhi lebar sel yang sebenarnya.

Lebar sel yang disukai adalah properti sel yang disimpan dalam dokumen. Tidak tergantung pada apa pun dan tidak berubah ketika Anda mengubah tabel atau sifat sel lainnya.

{{% /alert %}}

{{% alert color="primary" %}}

Semua properti dan metode yang dijelaskan dalam artikel ini terkait dengan bagaimana tabel bekerja di Microsoft WordSitemap Jadi dalam kebanyakan kasus, jika Anda membangun program meja Anda secara tematik tetapi mencarinya sulit untuk membuat meja yang diinginkan, Anda tidak dapat mencoba secara visual menciptakannya secara visual Microsoft Word pertama dan kemudian hanya menyalin nilai format ke aplikasi Anda.

{{% /alert %}}

### Cara Menggunakan Lebar Preferred

Lebar yang diinginkan dari meja atau sel-sel individu didefinisikan melalui properti lebar yang disukai, yang merupakan ukuran bahwa elemen berusaha sesuai. Itu, lebar yang disukai dapat ditentukan untuk seluruh meja atau untuk sel-sel individu. Dalam beberapa situasi mungkin tidak mungkin untuk menyesuaikan lebar ini persis, tetapi lebar sebenarnya akan dekat dengan nilai ini dalam kebanyakan kasus.

Jenis dan nilai lebar pilihan yang tepat diatur menggunakan metode [PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/) kelas:

- Login [Auto](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#AUTO) lapangan untuk menentukan auto atau "tidak ada lebar pilihan"
- Login [FromPercent](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#fromPercent-double) metode untuk menentukan lebar persentase
- Login [FromPoints](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#fromPoints-double) metode untuk menentukan lebar poin

Gambar di bawah ini menunjukkan representasi dari fitur pengaturan lebar yang dipreferensikan * Microsoft Word dan sifatnya yang sesuai Aspose.WordsSitemap

![formatting-table-properties-aspose-words-java](/words/java/applying-formatting/applying-formatting-8.png)

Contoh bagaimana opsi ini diterapkan pada tabel nyata dalam dokumen dapat dilihat dalam gambar di bawah ini.

![table-applied-options-java](/words/java/applying-formatting/applying-formatting-9.png)

{{% alert color="primary" %}}

Sebelum Anda dapat menggunakan lebar pilihan di meja, Anda harus memastikan bahwa tabel mengandung setidaknya satu baris. Ini karena format tabel seperti itu dalam Microsoft Word dokumen atau dalam dokumen yang dibuat dalam Aspose.Words disimpan di baris tabel.

{{% /alert %}}

#### Tentukan Tabel Preferred atau Lebar Sel

Sitemap Aspose.Words, lebar meja dan sel diatur menggunakan [Table.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/table/#getPreferredWidth) properti dan [CellFormat.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getPreferredWidth) properti, dengan pilihan yang tersedia di [PreferredWidthType](https://reference.aspose.com/words/java/com.aspose.words/preferredwidthtype/) Sitemap

- Login **Auto**, yang setara dengan tidak ada set lebar pilihan
- Login **Percent**, yang sesuai dengan unsur yang relatif terhadap ruang yang tersedia di jendela atau ukuran wadah, dan merekalkan nilai ketika perubahan lebar yang tersedia
- Login **Points**, yang sesuai dengan elemen lebar yang ditentukan dalam poin

{{% alert color="primary" %}}

Secara default, tabel dapat digambarkan sesuai dengan 100% ruang yang tersedia di halaman. Dalam hal ini, ini berarti tabel akan mencoba untuk mengambil ruang antara margin halaman kiri dan kanan.

{{% /alert %}}

Menggunakan [Table.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/table/#getPreferredWidth) properti akan menyesuaikan lebar pilihan relatif ke wadahnya: halaman, kolom teks, atau sel meja luar jika itu adalah tabel bersarang.

Contoh kode berikut menunjukkan cara mengatur tabel untuk auto-fit hingga 50% dari lebar halaman:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-page-width.java" >}}

Menggunakan [CellFormat.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getPreferredWidth) properti pada sel tertentu akan menyesuaikan lebar yang disukai.

Contoh kode berikut menunjukkan cara mengatur pengaturan lebar pilihan yang berbeda:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "preferred-width-settings.java" >}}

#### Temukan Jenis dan Nilai Lebar yang Lebih disukai

Anda dapat menggunakan [Type](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#getType) Login [Value](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#getValue) properti untuk menemukan rincian lebar yang disukai dari tabel atau sel yang diinginkan.

Contoh kode berikut menunjukkan cara mengambil jenis lebar yang disukai dari sel meja:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "retrieve-preferred-width-type.java" >}}

### Cara Mengatur Autofit

Login [AllowAutoFit](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowAutoFit) properti memungkinkan sel di meja untuk tumbuh dan menyusut sesuai dengan kriteria yang dipilih. Misalnya, Anda dapat menggunakan **AutoFit ke jendela** opsi untuk menyesuaikan tabel ke lebar halaman, dan **Otomatis untuk Konten** opsi untuk memungkinkan setiap sel untuk tumbuh atau menyusut sesuai dengan kontennya.

{{% alert color="primary" %}}

Sitemap **AllowAutoFit** properti dapat digunakan bersamaan dengan lebar sel yang disukai untuk memformat sel yang secara otomatis menyesuaikan kontennya, tetapi juga memiliki lebar awal. Jika perlu, lebar sel kemudian dapat tumbuh melewati lebar ini.

{{% /alert %}}

Login Aspose.Words masukkan meja baru menggunakan **AutoFit ke jendela**Sitemap Meja akan berukuran sesuai dengan lebar halaman yang tersedia. Untuk mengubah ukuran tabel, Anda dapat memanggil [AutoFit](https://reference.aspose.com/words/java/com.aspose.words/table/#autoFit-int) Login Metode ini menerima [AutoFitBehavior](https://reference.aspose.com/words/java/com.aspose.words/autofitbehavior/) enumerasi yang menentukan jenis autofit apa yang diterapkan pada tabel.

Penting untuk mengetahui bahwa metode autofit sebenarnya adalah shortcut yang menerapkan sifat yang berbeda pada tabel pada saat yang sama. Ini adalah sifat yang benar-benar memberikan tabel perilaku yang diamati. Kami akan membahas sifat ini untuk setiap opsi autofit.

Contoh kode berikut menunjukkan cara mengatur tabel untuk mengecilkan atau menumbuhkan setiap sel sesuai dengan kontennya:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "allow-auto-fit.java" >}}

Kami akan menggunakan tabel berikut untuk menerapkan berbagai pengaturan pas otomatis sebagai demonstrasi.

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-1.png" alt="apply-different-autofit-settings-to-a-table-aspose-words-java" style="width:500px"/>

#### Meja AutoFit ke Window

Ketika autofitting ke jendela diterapkan ke meja, operasi berikut sebenarnya dilakukan di belakang adegan:

Sitemap Login **Table.AllowAutoFit** properti diaktifkan untuk secara otomatis mengubah ukuran kolom agar sesuai dengan konten yang tersedia, menggunakan **Table.PreferredWidth** nilai 100%
2. di **CellFormat.PreferredWidth** dihapus dari semua sel tabel
      {{% alert color="primary" %}}
   Perhatikan bahwa ini sedikit berbeda dari Meme it Microsoft Word perilaku, di mana lebar pilihan setiap sel diatur sesuai nilai berdasarkan ukuran dan konten saat ini. Aspose.Words tidak memperbarui lebar yang disukai sehingga mereka hanya mendapatkan jelas. Meme it
      {{% /alert %}}
3. Juni Lebar kolom dihitung untuk konten tabel saat ini - hasil akhir adalah tabel yang menempati seluruh lebar yang tersedia
4. Oktober Lebar kolom dalam perubahan tabel secara otomatis sebagai pengguna mengedit teks

Contoh kode berikut menunjukkan cara autofit tabel ke lebar halaman:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-table-to-page-width.java" >}}

Contoh bagaimana opsi ini diterapkan pada tabel di atas dapat dilihat di gambar di bawah ini.

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-2.png" alt="autofit-table-aspose-words-java" style="width:500px"/>

#### Tabel AutoFit ke Konten

Ketika tabel diotomatiskan konten, langkah-langkah berikut benar-benar dilakukan di belakang adegan:

Sitemap Login **Table.AllowAutoFit** properti diaktifkan untuk mengubah ukuran secara otomatis setiap sel sesuai dengan kontennya

2. di Lebar meja yang disukai dihapus dari **Table.PreferredWidth**, **CellFormat.PreferredWidth** dihapus untuk setiap sel meja
      {{% alert color="primary" %}}

   Perhatikan bahwa opsi autofit ini menghilangkan lebar yang disukai dari sel, seperti dalam Microsoft WordSitemap Jika Anda ingin menyimpan ukuran kolom dan meningkatkan atau menurunkan kolom agar sesuai konten, Anda harus mengatur **Table.AllowAutoFit** properti **True** sendiri daripada menggunakan shortcut autofit.{{% /alert %}}

3. Juni Lebar kolom dihitung ulang untuk konten tabel saat ini - hasil akhir adalah tabel di mana lebar kolom dan lebar seluruh tabel secara otomatis diubah menjadi yang terbaik sesuai dengan konten sebagai pengguna mengedit teks

Contoh kode berikut menunjukkan cara autofit tabel ke kontennya:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-table-to-contents.java" >}}

Contoh bagaimana opsi ini diterapkan pada tabel di atas dapat dilihat di gambar di bawah ini.

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-3.png" alt="resize-column-autofit-settings-aspose-words-java" style="width:500px"/>

#### Disable AutoFit di Tabel dan Gunakan Lebar Kolom Tetap

Jika tabel memiliki lebar kolom yang dinonaktifkan dan tetap digunakan, langkah-langkah berikut dilakukan:

Sitemap **Table.AllowAutoFit** properti dinonaktifkan sehingga kolom tidak tumbuh atau mengecilkan konten mereka
2. di Lebar yang disukai dari seluruh meja dihapus dari **Table.PreferredWidth**, **CellFormat.PreferredWidth** dihapus dari semua sel tabel
3. Juni Hasil akhir adalah tabel yang lebar kolom ditentukan oleh [CellFormat.Width](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getWidth) properti, dan kolomnya tidak otomatis diubah ketika pengguna memasukkan teks atau ketika halaman diubah

{{% alert color="primary" %}}

Perhatikan bahwa jika tidak ada lebar ditentukan untuk **CellFormat.Width**, nilai default satu inci (72 poin) digunakan.

{{% /alert %}}

Contoh kode berikut menunjukkan cara menonaktifkan autofit dan memungkinkan lebar tetap untuk tabel yang ditentukan:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-table-to-fixed-column-widths.java" >}}

Contoh bagaimana opsi ini diterapkan pada tabel di atas dapat dilihat di gambar di bawah ini.

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-4.png" alt="disable-autofit-settings-to-a-table-aspose-words-java" style="width:500px"/>

### Order of Precedence ketika Menghitung Lebar Sel

Aspose.Words memungkinkan pengguna untuk menentukan lebar meja atau sel melalui beberapa objek, termasuk [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) Sitemap [Width](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getWidth) properti sebagian besar tersisa dari versi sebelumnya, namun, masih berguna untuk menyederhanakan pengaturan lebar sel.

Penting untuk mengetahui bahwa **CellFormat.Width** properti bekerja berbeda tergantung pada yang sifat lebar lainnya sudah ada di meja.

Aspose.Words menggunakan urutan berikut untuk menghitung lebar sel:

|  Sitemap |  Login |  Sitemap |
|  -----  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  1      |  [AllowAutoFit](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowAutoFit) ditentukan |  Sitemap **AutoFit** diaktifkan:<br/>- tabel dapat menumbuhkan lebar pilihan untuk mengakomodasi konten - biasanya tidak menyusut di bawah lebar pilihan<br/>- setiap perubahan pada **CellFormat.Width** nilai diabaikan dan sel akan sesuai dengan kontennya bukan Meme it |
|  2      |  [PreferredWidthType](https://reference.aspose.com/words/java/com.aspose.words/preferredwidthtype/) dengan nilai **Points** Sitemap **Percent** |  **CellFormat.Width** diabaikan |
|  3      |  [PreferredWidthType](https://reference.aspose.com/words/java/com.aspose.words/preferredwidthtype/) dengan nilai **Auto** |  Nilai dari **CellFormat.Width** disalin dan menjadi lebar sel yang disukai (dalam poin) |

{{% alert color="primary" %}}

Setiap perubahan pada properti lebar tidak diperbarui dalam lebar yang disukai dan tidak boleh diterapkan pada lebar yang disukai.

{{% /alert %}}

{{% alert color="primary" %}}

Sementara membuat tata letak meja tetap, tentukan lebar sel. Sel tanpa lebar tidak dapat disimpan ke format DOC. Format dokumen selain DOC, seperti DOCX, memungkinkan, pada prinsipnya, menyimpan sel tanpa lebar dalam tata letak meja tetap.

{{% /alert %}}

## Memungkinkan Spacing Antara Sel

Anda bisa mendapatkan atau mengatur ruang tambahan antara sel-sel meja yang mirip dengan opsi "perawatan" di Microsoft WordSitemap Ini dapat dilakukan dengan menggunakan [AllowCellSpacing](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowCellSpacing) Login

Contoh bagaimana opsi ini diterapkan pada tabel nyata dalam dokumen dapat dilihat dalam gambar di bawah ini.

<img src="/words/java/applying-formatting/applying-formatting-10.png" alt="formatting-spacing-between-cells-aspose-words-java" style="width:500px"/>

Contoh kode berikut menunjukkan cara mengatur jarak antara sel:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "allow-cell-spacing.java" >}}

## Menerapkan Perbatasan dan Shading

Perbatasan dan pencukur dapat diterapkan baik ke seluruh meja menggunakan [Table.SetBorder](https://reference.aspose.com/words/java/com.aspose.words/table/#setBorder-int-int-double-java.awt.Color-boolean), [Table.SetBorders](https://reference.aspose.com/words/java/com.aspose.words/table/#setBorders-int-double-java.awt.Color) Login [Table.SetShading](https://reference.aspose.com/words/java/com.aspose.words/table/#setShading-int-java.awt.Color-java.awt.Color), atau hanya untuk sel tertentu menggunakan [CellFormat.Borders](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getBorders) Login [CellFormat.Shading](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getShading)Sitemap Selain itu, perbatasan baris dapat diatur menggunakan [RowFormat.Borders](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getBorders), namun tidak dapat diterapkan dengan cara ini.

Gambar di bawah ini menunjukkan pengaturan perbatasan dan bayangan di Microsoft Word dan sifatnya yang sesuai Aspose.WordsSitemap

![apply-borders-shading-aspose-words-java-1](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-6.png)


![apply-borders-shading-aspose-words-java-2](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-7.png)


Contoh kode berikut menunjukkan cara memformat tabel dan sel dengan batas yang berbeda dan membentuk:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "format-table-and-cell-with-different-borders.java" >}}
