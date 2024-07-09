---
title: Bekerja dengan Tabel Konten di Java
second_title: Aspose.Words Sitemap Java
articleTitle: Bekerja dengan Tabel Konten
linktitle: Bekerja dengan Tabel Konten
description: "Tabel kolom Konten dalam rincian. Cara membuat dan memodifikasi `TOC` kolom menggunakan JavaSitemap"
type: docs
weight: 170
url: /id/java/working-with-table-of-contents/
---

Seringkali Anda akan bekerja dengan dokumen yang mengandung tabel konten (TOC). Sitemap Aspose.Words Anda dapat memasukkan tabel konten Anda sendiri atau sepenuhnya membangun kembali tabel konten yang ada dalam dokumen hanya menggunakan beberapa baris kode.

Artikel ini menguraikan cara bekerja dengan tabel bidang konten dan menunjukkan:

- Bagaimana cara memasukkan TOC baru.
- Memperbarui TOC baru atau yang ada dalam dokumen.
- Tentukan beralih untuk mengontrol pemformatan dan struktur keseluruhan TOC.
- Bagaimana cara memodifikasi gaya dan penampilan tabel konten.
- Bagaimana cara menghapus seluruh `TOC` lapangan bersama dengan semua entri dari dokumen.

## Masukkan Tabel Konten Secara Program

Anda dapat memasukkan `TOC` (table of contents) ke dalam dokumen pada posisi saat ini dengan memanggil [InsertTableOfContents](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTableOfContents-java.lang.String) Login

Meja konten dalam dokumen Word dapat dibangun dalam beberapa cara dan diformat menggunakan berbagai pilihan. Bidang beralih bahwa Anda melewati metode mengontrol cara tabel dibangun dan ditampilkan dalam dokumen Anda.

Switch default yang digunakan dalam `TOC` login Microsoft Word Sitemap **""\o "1-3 \h \z \u"**Sitemap Deskripsi switch ini serta daftar switch yang didukung dapat ditemukan nanti dalam artikel. Anda dapat menggunakan panduan untuk mendapatkan sakelar yang benar atau jika Anda sudah memiliki dokumen yang mengandung serupa `TOC` Anda ingin Anda dapat menunjukkan kode lapangan (*ALT + F9 *) dan menyalin sakelar langsung dari lapangan.

Contoh kode berikut menunjukkan cara memasukkan tabel kolom Konten ke dalam dokumen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertATableOfContentsField-InsertATableOfContentsField.java" >}}

Contoh kode berikut menunjukkan cara memasukkan tabel konten (TOC) ke dalam dokumen menggunakan gaya judul sebagai entri:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertATableOfContentsUsingHeadingStyles-InsertATableOfContentsUsingHeadingStyles.java" >}}

Kode menunjukkan tabel konten baru dimasukkan ke dalam dokumen kosong. Login [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) kelas kemudian digunakan untuk memasukkan beberapa format konten sampel dengan gaya judul yang sesuai yang digunakan untuk menandai konten yang disertakan dalam TOC. Garis berikutnya kemudian mengisi `TOC` dengan memperbarui bidang dan tata letak halaman dokumen.

![insert-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-1.png)

{{% alert color="primary" %}}

Tanpa metode yang digunakan dalam contoh, ketika Anda membuka dokumen output, Anda akan menemukan `TOC` lapangan, tetapi tanpa konten yang terlihat. Ini karena `TOC` lapangan telah dimasukkan tetapi belum diisi sampai diperbarui dalam dokumen. Informasi lebih lanjut tentang ini dibahas di bagian berikutnya.

{{% /alert %}}

## Memperbarui Tabel Konten

Aspose.Words memungkinkan Anda untuk sepenuhnya memperbarui `TOC` hanya dengan beberapa baris kode. Ini dapat dilakukan untuk mengisi sisipan baru `TOC` atau untuk memperbarui yang ada `TOC` setelah perubahan dokumen telah dibuat.

Dua metode berikut harus digunakan untuk memperbarui `TOC` kolom dalam dokumen:

1. [Document.updateFields()](https://reference.aspose.com/words/java/com.aspose.words/Document#updateFields())
1. [Document.updatePageLayout()](https://reference.aspose.com/words/java/com.aspose.words/Document#updatePageLayout())

Harap dicatat bahwa dua metode pembaruan ini diperlukan untuk disebut dalam urutan itu. Jika membalikkan tabel konten akan diisi tetapi tidak ada nomor halaman akan ditampilkan. Jumlah TOC yang berbeda dapat diperbarui. Metode ini akan secara otomatis memperbarui semua TOC yang ditemukan dalam dokumen.

Contoh kode berikut menunjukkan cara membangun kembali sepenuhnya `TOC` bidang dalam dokumen dengan memprovokasi pembaruan lapangan:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertATableOfContentsField-UpdateTableOfContents.java" >}}

Panggilan pertama [Document.updateFields()](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields) akan membangun <span notrans="<span notrans=" `TOC`"=""></span>Sitemap semua entri teks diisi dan Meme it `TOC` muncul hampir lengkap. Satu-satunya hal yang hilang adalah nomor halaman yang sekarang ditampilkan dengan "?".

Panggilan kedua [Document.updatePageLayout()](https://reference.aspose.com/words/java/com.aspose.words/document/#updatePageLayout) akan membangun tata letak dokumen dalam memori. Perlu dilakukan untuk mengumpulkan nomor halaman entri. Jumlah halaman yang benar dihitung dari panggilan ini kemudian dimasukkan ke dalam TOC.

## Gunakan Switch untuk Mengontrol Tabel Konten Perilaku

Seperti di bidang lain, Meme it `TOC` bidang dapat menerima switch didefinisikan dalam kode lapangan yang mengontrol bagaimana tabel konten dibangun. Sakelar tertentu digunakan untuk mengontrol entri yang disertakan dan pada tingkat apa sementara yang lain digunakan untuk mengontrol tampilan TOC. Saklar dapat digabungkan bersama untuk memungkinkan tabel konten yang kompleks untuk diproduksi.

![ccontrol-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-2.png)


Secara default, switch ini di atas disertakan ketika memasukkan default `TOC` dalam dokumen. Login `TOC` tanpa switch akan menyertakan konten dari gaya judul bawaan (seperti jika sakelar \O ditetapkan).

Sitemap `TOC` beralih yang didukung oleh Aspose.Words tercantum di bawah ini dan penggunaannya dijelaskan secara rinci. Mereka dapat dibagi menjadi bagian terpisah berdasarkan jenis mereka. Sakelar di bagian pertama menentukan konten apa yang disertakan dalam `TOC` dan sakelar di bagian kedua mengontrol penampilan TOC.

Jika switch tidak terdaftar di sini maka saat ini tidak didukung. Semua switch akan didukung dalam versi masa depan. Kami menambahkan dukungan lebih lanjut untuk setiap rilis.

### Login

|  Login | Sitemap |
|  :-  |  :-  |
| **Heading Styles** <br/> *(\O Switch)* <br/> | <p>Switch ini mendefinisikan bahwa `TOC` harus dibangun dari gaya kepala built-in. Sitemap Microsoft Word, ini didefinisikan oleh Heading 1 – Heading 9. Dalam Aspose.Words gaya ini diwakili oleh numerasi StyleIdentifier yang sesuai. Enumerasi ini mewakili pengidentifikasi gaya lokal, misalnya, `StyleIdentifier.Heading1` mewakili gaya Heading 1. Menggunakan ini, format dan sifat gaya dapat diambil dari koleksi Style dokumen. Kelas Gaya yang sesuai dapat diambil dari `Document.Styles` koleksi dengan menggunakan properti terindeks dari tipe StyleIdentifier.</p>

<p>![style-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-3.png)</p>

<p><br/><br/>Setiap konten yang diformat dengan gaya ini disertakan dalam tabel konten. Tingkat judul akan menentukan tingkat hirarkis yang sesuai dari entri di TOC. Misalnya, paragraf dengan judul 1 gaya akan diperlakukan sebagai tingkat pertama di `TOC` sedangkan paragraf dengan Heading 2 akan diperlakukan sebagai tingkat berikutnya dalam hirarki dan sebagainya.</p>
 |
| **Outline Levels** <br/> *(\U switch)* <br/> | <p>Setiap paragraf dapat mendefinisikan tingkat garis besar di bawah opsi Paragraf.</p>

<p>![modify-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-4.png)</p>

<p><br/><br/>Pengaturan ini menentukan tingkat paragraf ini harus diobati dalam hierarki dokumen. Ini adalah praktik yang umum digunakan untuk dengan mudah mengatur tata letak dokumen. hierarki ini dapat dilihat dengan mengubah ke Outline View di Microsoft WordSitemap Mirip dengan gaya judul, bisa ada 1 – 9 tingkat garis samping tingkat "Body Text". Tingkat garis besar 1 – 9 akan muncul di `TOC` di tingkat hierarki yang sesuai <br/>Setiap konten dengan tingkat garis besar baik diatur dalam gaya paragraf atau langsung pada paragraf itu sendiri termasuk dalam TOC. Sitemap Aspose.Words tingkat garis besar diwakili oleh Meme it `ParagraphFormat.OutlineLevel` properti dari node Paragraf. Tingkat garis besar gaya paragraf diwakili dengan cara yang sama dengan `Style.ParagraphFormat` Login</p>

<p>{{% alert color="primary" %}}</p>

<p>Perhatikan bahwa gaya judul bawaan seperti Heading 1 memiliki set wajib tingkat garis besar dalam pengaturan gaya.</p>

<p>{{% /alert %}}</p>
 |
| **Custom Styles** <br/> *(\T switch)* <br/> | <p>Switch ini akan memungkinkan gaya kustom untuk digunakan ketika mengumpulkan entri untuk digunakan di TOC. Ini sering digunakan bersama dengan sakelar \ O untuk menyertakan gaya kustom bersama dengan gaya kepala built-in di TOC. <br/>Parameter switch harus ditutup dalam tanda pidato. Banyak gaya kustom dapat disertakan, untuk setiap gaya, nama harus ditentukan diikuti oleh komma diikuti oleh tingkat bahwa gaya harus muncul di `TOC` Sitemap Gaya lebih lanjut juga dipisahkan oleh komma juga. <br/>Sitemap</p>

<p>{{< highlight csharp >}}
{ TOC \o "1-3" \t "CustomHeading1, 1,   CustomHeading2, 2"}{{< /highlight >}}</p>

<p>akan menggunakan konten dengan CustomHeading1 sebagai konten level 1 di `TOC` dan CustomHeading2 sebagai level 2.</p>
 |
| Gunakan Bidang TC <br/> * (\F dan \ L Switches) * <br/> | <p>Dalam versi lama Microsoft Word, satu-satunya cara untuk membangun `TOC` adalah penggunaan bidang TC. Bidang ini dimasukkan tersembunyi ke dalam dokumen bahkan ketika kode lapangan ditampilkan. Mereka termasuk teks yang harus ditampilkan di entri dan `TOC` dibangun dari mereka. Fungsi ini sekarang tidak digunakan sangat sering tetapi mungkin masih berguna dalam beberapa kesempatan untuk memasukkan entri di `TOC` yang tidak teridentifikasi terlihat dalam dokumen. <br/>Ketika memasukkan bidang ini muncul tersembunyi bahkan ketika kode lapangan ditampilkan. Mereka tidak dapat dilihat tanpa menunjukkan konten tersembunyi. Untuk melihat bidang ini Tampilkan format paragraf harus dipilih.</p>

<p>![setup-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-5.png)</p>

<p>Bidang ini dapat dimasukkan ke dalam dokumen pada setiap posisi seperti bidang lain dan diwakili oleh `FieldType.FieldTOCEntry` Sitemap<br/>Sakelar \F dalam `TOC` digunakan untuk menentukan bahwa bidang TC harus digunakan sebagai entri. Sakelar sendiri tanpa pengidentifikasi tambahan berarti bahwa setiap bidang TC dalam dokumen akan disertakan. Setiap parameter tambahan, sering satu huruf, akan menunjuk satu-satunya bidang TC yang memiliki switch \f yang cocok akan dimasukkan dalam TOC. Sitemap</p>

<p>{{< highlight csharp >}}
{ TOC \f t }{{< /highlight >}}</p>

<p>hanya akan mencakup bidang TC seperti Meme it</p>

<p>{{< highlight csharp >}}
{ TC \f t }{{< /highlight >}}</p>

<p>Login `TOC` lapangan juga memiliki sakelar terkait, sakelar "\L" menentukan bahwa hanya lapangan TC dengan tingkat dalam kisaran yang ditentukan disertakan.</p>

<p>![table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-6.png)</p>

<p><br/><br/>Login `TC` ladang sendiri juga bisa {several, `multiple`, a few, `many`, numerous} beralih set. Sitemap</p>

<p>- \F - Dijelaskan di atas. Sitemap</p>

<p>- \L - Mendefinisikan tingkat di `TOC` Bidang TC ini akan muncul. Meme it Login `TOC` yang menggunakan switch yang sama ini hanya akan mencakup bidang TC ini jika berada dalam kisaran yang ditentukan.</p>

<p>Login Login `TOC` entri tidak ditampilkan. Kode sampel cara memasukkan kolom TC dapat ditemukan di bagian berikutnya.</p>
 |

### Penampilan Saklar Terkait

|  Login | Sitemap |
|  :-  |  :-  |
| **Omit Page Numbers** <br/> *(\N Switch)* | <p>Switch ini digunakan untuk menyembunyikan nomor halaman untuk tingkat tertentu TOC. Misalnya, Anda dapat mendefinisikan</p>

<p>{{< highlight csharp >}}
{TOC \o "1-4" \n "3-4" }{{< /highlight >}}</p>

<p>dan nomor halaman pada entri tingkat 3 dan empat akan disembunyikan bersama dengan titik-titik pemimpin (jika ada). Untuk menentukan satu tingkat kisaran harus tetap digunakan, misalnya, "1-1" akan mengecualikan nomor halaman hanya untuk tingkat pertama. <br/>Menyediakan rentang level tidak akan memomit nomor halaman untuk semua tingkat di TOC. Ini berguna untuk mengatur ketika mengekspor dokumen ke HTML atau format serupa. Ini karena format berbasis HTML tidak memiliki konsep halaman dan dengan demikian tidak perlu nomor halaman.</p>

<p>![table-of-contents-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-7.png)</p>
 |
| Masukkan Sebagai Hyperlinks <br/> *(\H Switch)* | <p>Switch ini menentukan bahwa `TOC` entri dimasukkan sebagai hyperlink. Ketika melihat dokumen dalam Microsoft Word entri ini masih akan muncul sebagai teks normal di dalam `TOC` tetapi di hyperlink dan dengan demikian dapat digunakan untuk menavigasi ke posisi entri asli dalam dokumen dengan menggunakan * Ctrl + Klik Kiri * Microsoft WordSitemap Ketika switch ini disertakan kemudian tautan ini juga dipertahankan dalam format lain. Contohnya, dalam format berbasis HTML termasuk format EPUB dan rendered seperti PDF dan XPS, ini akan diekspor sebagai link kerja. <br/>Tanpa set switch ini, `TOC` dalam semua output ini akan diekspor sebagai teks biasa dan tidak akan menunjukkan perilaku ini. Jika dokumen dibuka di MS Word teks entri juga tidak dapat diklik dengan cara ini tetapi nomor halaman masih dapat digunakan untuk menavigasi entri asli.</p>

<p>![tree-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-8.png)</p>
 |
| **Set Separator Character** <br/> *(\P Switch)* <br/> | <p>Switch ini memungkinkan konten memisahkan judul entri dan nomor halaman untuk mudah diubah di TOC. Pemisah untuk digunakan harus ditentukan setelah sakelar ini dan tertutup dalam tanda bicara. <br/>Terjemahkan ke apa yang didokumentasikan dalam dokumentasi Office, hanya satu karakter yang dapat digunakan daripada hingga lima. Ini berlaku untuk Word MS dan Aspose.WordsSitemap <br/>Menggunakan switch ini tidak dianjurkan karena tidak memungkinkan banyak kontrol atas apa yang digunakan untuk memisahkan entri dan nomor halaman di TOC. Sebaliknya, disarankan untuk mengedit yang tepat `TOC` gaya seperti `StyleIdentifier.TOC1` dan dari sana mengedit gaya pemimpin dengan akses ke anggota font tertentu dll. Rincian lebih lanjut tentang cara melakukan ini dapat ditemukan nanti dalam artikel.</p>

<p>![list-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-9.png)</p>
 |
| **Preserve Tab Entries** <br/> *(\W Switch)* | <p>Menggunakan switch ini akan menentukan bahwa setiap entri yang memiliki karakter tab, misalnya, judul yang memiliki tab di akhir garis, akan dipertahankan sebagai karakter tab yang tepat ketika mengisi TOC. Ini berarti fungsi karakter tab akan hadir dalam `TOC` dan dapat digunakan untuk memformat entri. Misalnya, entri tertentu dapat menggunakan stop tab dan karakter tab untuk meratakan teks. Selama `TOC` tingkat mendefinisikan tab yang setara berhenti kemudian dihasilkan `TOC` entri akan muncul dengan jarak yang sama. <br/><br/>Dalam situasi yang sama jika sakelar ini tidak didefinisikan maka karakter tab akan dikonversi ke ruang putih yang setara dengan tab yang tidak berfungsi. Output akan muncul seperti yang diharapkan.</p>

<p>![tab-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-10.png)</p>
 |
| **Preserve New Line Entries** <br/> *(\X Switch)* <br/> | <p>Mirip dengan sakelar di atas, sakelar ini menentukan bahwa judul membentang lebih dari beberapa garis (menggunakan karakter garis baru, bukan paragraf terpisah) akan dipertahankan karena mereka berada di TOC yang dihasilkan. Misalnya, judul yang menyebar di beberapa garis dapat menggunakan karakter garis baru (Ctrl + Enter atau `ControlChar.LineBreak`) untuk memisahkan konten di berbagai garis. Dengan saklar ini ditentukan, entri di `TOC` akan menjaga karakter garis baru ini seperti yang ditunjukkan di bawah ini. <br/><br/>Dalam situasi ini, jika sakelar tidak didefinisikan maka karakter garis baru dikonversi ke ruang putih tunggal.</p>

<p>![tab-space-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-11.png)</p>
 |

## Masukkan Bidang TC

Anda dapat memasukkan bidang TC baru pada posisi saat ini `DocumentBuilder` dengan memanggil `DocumentBuilder.InsertField` metode dan menentukan nama lapangan sebagai "TC" bersama dengan sakelar yang diperlukan.

Contoh kode berikut menunjukkan cara memasukkan `TC` ke dalam dokumen menggunakan [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)Sitemap

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertTCField-InsertTCField.java" >}}

Sering garis teks tertentu ditunjuk untuk Meme it `TOC` dan ditandai dengan `TC` Login Cara mudah untuk melakukan ini di MS Word adalah untuk menyoroti teks dan tekan * ALT + SHIFT + O *. Ini secara otomatis menciptakan `TC` kolom menggunakan teks yang dipilih. Teknik yang sama dapat dicapai melalui kode. Kode di bawah ini akan menemukan teks yang cocok input dan masukkan `TC` bidang dalam posisi yang sama dengan teks. Kode didasarkan pada teknik yang sama digunakan dalam artikel. Contoh kode berikut menunjukkan cara menemukan dan memasukkan `TC` kolom pada teks dalam dokumen.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-FindAndInsertATCField-InsertTCFieldHandler.java" >}}

## Modifikasi Tabel Konten

### Mengubah Format Gaya

Pemformatan entri di `TOC` tidak menggunakan gaya asli dari entri yang ditandai, bukan, setiap tingkat diformat menggunakan setara `TOC` Login Misalnya, tingkat pertama di Meme it `TOC` diformat dengan **Login** gaya, tingkat kedua diformat dengan **Login** gaya dan sebagainya. Ini berarti bahwa untuk mengubah tampilan `TOC` gaya ini harus dimodifikasi. Sitemap Aspose.Words gaya ini diwakili oleh lokale-independent `StyleIdentifier.TOC1` Sitemap `StyleIdentifier.TOC9` dan dapat diambil dari Meme it `Document.Styles` koleksi menggunakan pengidentifikasi ini.

Setelah gaya dokumen yang sesuai telah mengambil format untuk gaya ini dapat dimodifikasi. Setiap perubahan pada gaya ini akan secara otomatis tercermin dalam TOC dalam dokumen.

Contoh kode berikut mengubah properti format yang digunakan pada tingkat pertama `TOC` Login

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-ModifyATableOfContents-changeAFormattingPropertyUsedInFirstLevelTOCStyle.java" >}}

Hal ini juga berguna untuk dicatat bahwa setiap format langsung paragraf (dibuktikan pada paragraf itu sendiri dan tidak dalam gaya) ditandai untuk dimasukkan dalam `TOC` akan disalin di entri di TOC. Misalnya, jika gaya Heading 1 digunakan untuk menandai konten untuk `TOC` dan gaya ini memiliki format Bold sementara paragraf juga memiliki format italic langsung diterapkan untuk itu. Sitemap `TOC` entri tidak akan berani karena itu adalah bagian dari format gaya namun itu akan menjadi italic karena ini diformat langsung pada paragraf.

Anda juga dapat mengontrol format pemisah yang digunakan antara setiap entri dan nomor halaman. Secara default, ini adalah garis bertitik yang tersebar di halaman yang menghitung menggunakan karakter tab dan tab kanan berhenti berbaring dekat dengan margin yang tepat.

Menggunakan `Style` kelas diambil untuk tertentu `TOC` tingkat yang ingin Anda modifikasi, Anda juga dapat memodifikasi bagaimana ini muncul dalam dokumen.

Untuk mengubah bagaimana ini muncul pertama `Style.ParagraphFormat` harus disebut untuk mengambil format paragraf untuk gaya. Dari ini, tab berhenti dapat diambil dengan memanggil `ParagraphFormat.TabStops` dan tab yang tepat berhenti dimodifikasi. Menggunakan teknik yang sama ini tab itu sendiri dapat dipindahkan atau dihapus sama sekali.

Contoh kode berikut menunjukkan cara memodifikasi posisi tab kanan berhenti di `TOC` paragraf terkait.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-ModifyATableOfContents-modifyPositionOfRightTabStopInTOC.java" >}}

## Hapus Tabel Konten dari Dokumen

Tabel konten dapat dihapus dari dokumen dengan menghapus semua node yang ditemukan di antara `FieldStart` dan node FieldEnd dari `TOC` Login

Kode di bawah ini menunjukkan ini. Penghapusan `TOC` lapangan lebih sederhana dari lapangan normal karena kita tidak melacak ladang bersarang. Sebaliknya, kami memeriksa Meme it `FieldEnd` node adalah tipe `FieldType.FieldTOC` yang berarti kita telah menemukan ujung TOC saat ini. Teknik ini dapat digunakan dalam kasus ini tanpa khawatir tentang bidang bersarang apa pun karena kita dapat menganggap bahwa setiap dokumen yang terbentuk dengan benar tidak akan memiliki sepenuhnya bersarang `TOC` di dalam bidang lain `TOC` Login

Pertama `FieldStart` Sitemap `TOC` dikumpulkan dan disimpan. Sitemap `TOC` kemudian disebutkan sehingga semua node di dalam bidang dikunjungi dan disimpan. node kemudian dihapus dari dokumen. Contoh kode berikut menunjukkan bagaimana menghapus yang ditentukan `TOC` dari dokumen.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-RemoveATableOfContents-RemoveATableOfContents.java" >}}

## Tabel Ekstrak Konten

Jika Anda ingin mengekstrak tabel konten dari dokumen Word, sampel kode berikut dapat digunakan.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-ExtractTableOfContents-ExtractTableOfContents.java" >}}
