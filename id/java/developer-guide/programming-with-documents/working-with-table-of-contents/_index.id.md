---
title: Bekerja dengan Daftar Isi dalam Java
second_title: Aspose.Words untuk Java
articleTitle: Bekerja dengan Daftar Isi
linktitle: Bekerja dengan Daftar Isi
description: "Daftar Isi bidang secara detail. Cara membuat dan memodifikasi bidang `TOC` menggunakan Java."
type: docs
weight: 170
url: /id/java/working-with-table-of-contents/
timestamp: 2024-10-21-11-17-44
---

Seringkali Anda akan bekerja dengan dokumen yang berisi daftar isi (TOC). Menggunakan Aspose.Words Anda dapat menyisipkan daftar isi Anda sendiri atau sepenuhnya membangun kembali daftar isi yang ada dalam dokumen hanya dengan menggunakan beberapa baris kode.

Artikel ini menguraikan cara bekerja dengan bidang daftar isi dan mendemonstrasikan:

- Cara menyisipkan TOC yang baru.
- Perbarui TOCs baru atau yang sudah ada dalam dokumen.
- Tentukan sakelar untuk mengontrol pemformatan dan struktur keseluruhan TOC.
- Cara memodifikasi gaya dan tampilan daftar isi.
- Cara menghapus seluruh bidang `TOC` bersama dengan semua entri dari dokumen.

## Sisipkan Daftar Isi Secara Terprogram

Anda dapat menyisipkan bidang `TOC` (daftar isi) ke dalam dokumen pada posisi saat ini dengan memanggil metode [InsertTableOfContents](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTableOfContents-java.lang.String).

Daftar isi dalam dokumen Word dapat dibuat dengan beberapa cara dan diformat menggunakan berbagai opsi. Sakelar bidang yang Anda berikan ke metode mengontrol cara tabel dibuat dan ditampilkan di dokumen Anda.

Sakelar default yang digunakan dalam `TOC` yang disisipkan dalam Microsoft Word adalah **"\o "1-3 \h \z \u"**. Deskripsi sakelar ini serta daftar sakelar yang didukung dapat ditemukan nanti di artikel. Anda dapat menggunakan panduan itu untuk mendapatkan sakelar yang benar atau jika Anda sudah memiliki dokumen yang berisi `TOC` serupa yang Anda inginkan, Anda dapat menampilkan kode bidang (*ALT+F9*) dan menyalin sakelar langsung dari bidang.

Contoh kode berikut menunjukkan cara menyisipkan bidang Daftar Isi ke dalam dokumen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertATableOfContentsField-InsertATableOfContentsField.java" >}}

Contoh kode berikut mendemonstrasikan cara menyisipkan Daftar isi (TOC) ke dalam dokumen menggunakan gaya judul sebagai entri:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertATableOfContentsUsingHeadingStyles-InsertATableOfContentsUsingHeadingStyles.java" >}}

Kode tersebut mendemonstrasikan daftar isi baru yang disisipkan ke dalam dokumen kosong. Kelas [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) kemudian digunakan untuk menyisipkan beberapa contoh pemformatan konten dengan gaya heading yang sesuai yang digunakan untuk menandai konten yang akan disertakan dalam TOC. Baris berikutnya kemudian mengisi `TOC` dengan memperbarui bidang dan tata letak halaman dokumen.

![insert-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-1.png)

{{% alert color="primary" %}}

Tanpa metode yang digunakan dalam contoh, saat Anda membuka dokumen keluaran, Anda akan menemukan bidang `TOC`, tetapi tanpa konten yang terlihat. Ini karena bidang `TOC` telah disisipkan tetapi belum diisi hingga diperbarui dalam dokumen. Informasi lebih lanjut tentang ini dibahas di bagian selanjutnya.

{{% /alert %}}

## Perbarui Daftar Isi

Aspose.Words memungkinkan Anda memperbarui `TOC` sepenuhnya hanya dengan beberapa baris kode. Ini dapat dilakukan untuk mengisi `TOC` yang baru disisipkan atau memperbarui `TOC` yang sudah ada setelah perubahan pada dokumen dilakukan.

Dua metode berikut harus digunakan untuk memperbarui bidang `TOC` dalam dokumen:

1. [Document.updateFields()](https://reference.aspose.com/words/java/com.aspose.words/Document#updateFields())
1. [Document.updatePageLayout()](https://reference.aspose.com/words/java/com.aspose.words/Document#updatePageLayout())

Harap dicatat bahwa kedua metode pembaruan ini harus dipanggil dalam urutan itu. Jika dibalik, daftar isi akan diisi tetapi tidak ada nomor halaman yang akan ditampilkan. Sejumlah TOCs yang berbeda dapat diperbarui. Metode ini akan secara otomatis memperbarui semua TOCs yang ditemukan dalam dokumen.

Contoh kode berikut menunjukkan cara membangun kembali bidang `TOC` sepenuhnya dalam dokumen dengan menjalankan pembaruan bidang:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertATableOfContentsField-UpdateTableOfContents.java" >}}

Panggilan pertama ke [Document.updateFields()](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields) akan membuat `TOC`, semua entri teks terisi dan `TOC` tampak hampir selesai. Satu-satunya hal yang hilang adalah nomor halaman yang untuk saat ini ditampilkan dengan "?".

Panggilan kedua ke [Document.updatePageLayout()](https://reference.aspose.com/words/java/com.aspose.words/document/#updatePageLayout) akan membuat tata letak dokumen dalam memori. Ini perlu dilakukan untuk mengumpulkan nomor halaman entri. Nomor halaman yang benar yang dihitung dari pemanggilan ini kemudian dimasukkan ke dalam TOC.

## Gunakan Sakelar untuk Mengontrol Perilaku Daftar Isi

Seperti bidang lainnya, bidang `TOC` dapat menerima sakelar yang ditentukan dalam kode bidang yang mengontrol bagaimana daftar isi dibuat. Sakelar tertentu digunakan untuk mengontrol entri mana yang disertakan dan pada level apa sementara sakelar lain digunakan untuk mengontrol tampilan TOC. Sakelar dapat digabungkan bersama untuk memungkinkan pembuatan daftar isi yang kompleks.

![ccontrol-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-2.png)


Secara default, sakelar di atas ini disertakan saat menyisipkan `TOC` default dalam dokumen. A `TOC` tanpa sakelar akan menyertakan konten dari gaya heading bawaan (seolah-olah sakelar \O disetel).

Sakelar `TOC` yang tersedia yang didukung oleh Aspose.Words tercantum di bawah ini dan penggunaannya dijelaskan secara rinci. Mereka dapat dibagi menjadi beberapa bagian terpisah berdasarkan jenisnya. Sakelar di bagian pertama menentukan konten apa yang akan disertakan dalam `TOC` dan sakelar di bagian kedua mengontrol tampilan TOC.

Jika sakelar tidak tercantum di sini, maka sakelar tersebut saat ini tidak didukung. Semua sakelar akan didukung di versi mendatang. Kami menambahkan dukungan lebih lanjut untuk setiap rilis.

### Sakelar Penandaan Entri

| Beralih | Deskripsi |
| :- | :- |
| **Heading Styles** <br>* (\O Beralih)* <br> | <p>Sakelar ini menentukan bahwa `TOC` harus dibuat dari gaya heading bawaan. Dalam Microsoft Word, ini didefinisikan oleh Heading 1 - Heading 9. Dalam Aspose.Words gaya ini diwakili oleh pencacahan StyleIdentifier yang sesuai. Pencacahan ini mewakili pengidentifikasi gaya yang tidak bergantung pada lokal, misalnya, `StyleIdentifier.Heading1` mewakili gaya Heading 1. Dengan menggunakan ini, pemformatan dan properti gaya dapat diambil dari kumpulan Gaya dokumen. Kelas Gaya yang sesuai dapat diambil dari koleksi `Document.Styles` dengan menggunakan properti terindeks dari tipe StyleIdentifier.</p><p>![style-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-3.png)</p><p><br><br>Konten apa pun yang diformat dengan gaya ini disertakan dalam daftar isi. Level heading akan menentukan level hierarki entri yang sesuai di TOC. Misalnya, paragraf dengan gaya Heading 1 akan diperlakukan sebagai level pertama dalam `TOC` sedangkan paragraf dengan Heading 2 akan diperlakukan sebagai level berikutnya dalam hierarki dan seterusnya.</p> |
| **Outline Levels** <br>* (\U beralih)* <br> | <p>Setiap paragraf dapat menentukan tingkat kerangka di bawah opsi Paragraf.</p><p>![modify-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-4.png)</p><p><br><br>Pengaturan ini menentukan level mana paragraf ini harus diperlakukan dalam hierarki dokumen. Ini adalah praktik yang umum digunakan untuk menyusun tata letak dokumen dengan mudah. Hierarki ini dapat dilihat dengan mengubah ke Tampilan Garis Besar di Microsoft Word. Mirip dengan gaya heading, mungkin ada 1 – 9 level outline selain level "Teks Isi". Garis besar level 1-9 akan muncul di `TOC` di level hierarki yang sesuai <br>Konten apa pun dengan tingkat kerangka baik yang diatur dalam gaya paragraf atau langsung pada paragraf itu sendiri disertakan dalam TOC. Dalam Aspose.Words level garis besar diwakili oleh properti `ParagraphFormat.OutlineLevel` dari simpul Paragraf. Tingkat garis besar gaya paragraf direpresentasikan dengan cara yang sama oleh properti `Style.ParagraphFormat`.</p><p>{{% alert color="primary" %}}</p><p>Perhatikan bahwa gaya heading bawaan seperti Heading 1 memiliki tingkat kerangka wajib yang ditetapkan dalam pengaturan gaya.</p><p>{{% /alert %}}</p> |
| **Custom Styles** <br>* (\T beralih)* <br> | <p>Sakelar ini akan memungkinkan gaya khusus digunakan saat mengumpulkan entri untuk digunakan di TOC. Ini sering digunakan bersama dengan sakelar \O untuk menyertakan gaya khusus bersama dengan gaya heading bawaan di TOC. <br>Parameter sakelar harus diapit dalam tanda ucapan. Banyak gaya khusus dapat disertakan, untuk setiap gaya, nama harus ditentukan diikuti dengan koma diikuti dengan level di mana gaya tersebut akan muncul di `TOC` as. Gaya selanjutnya juga dipisahkan dengan koma. <br>Misalnya</p><p>{{< highlight csharp >}}
{ TOC \o "1-3" \t "CustomHeading1, 1,   CustomHeading2, 2"}{{< /highlight >}}</p><p>akan menggunakan konten yang ditata dengan CustomHeading1 sebagai konten level 1 di `TOC` dan CustomHeading2 sebagai level 2.</p> |
| Gunakan Bidang TC <br>*(Sakelar\F dan \L)* <br> | <p>Dalam versi Microsoft Word yang lebih lama, satu-satunya cara untuk membuat `TOC` adalah dengan menggunakan bidang TC. Bidang-bidang ini disisipkan tersembunyi ke dalam dokumen meskipun kode bidang ditampilkan. Mereka menyertakan teks yang harus ditampilkan di entri dan `TOC` dibuat darinya. Fungsionalitas ini sekarang tidak terlalu sering digunakan tetapi mungkin masih berguna dalam beberapa kesempatan untuk menyertakan entri dalam `TOC` yang tidak menjorok agar terlihat dalam dokumen. <br>Saat disisipkan, bidang ini tampak tersembunyi meskipun kode bidang ditampilkan. Mereka tidak dapat dilihat tanpa menampilkan konten tersembunyi. Untuk melihat bidang ini Menampilkan pemformatan paragraf harus dipilih.</p><p>![setup-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-5.png)</p><p>Bidang-bidang ini dapat disisipkan ke dalam dokumen pada posisi apa pun seperti bidang lainnya dan diwakili oleh pencacahan `FieldType.FieldTOCEntry`.<br>Sakelar \F dalam `TOC` digunakan untuk menentukan bahwa bidang TC harus digunakan sebagai entri. Sakelar itu sendiri tanpa pengenal tambahan berarti bahwa bidang TC apa pun dalam dokumen akan disertakan. Parameter tambahan apa pun, seringkali satu huruf, akan menetapkan bahwa hanya bidang TC yang memiliki sakelar \f yang cocok yang akan disertakan dalam TOC. Misalnya *</p><p>{{< highlight csharp >}}
{ TOC \f t }{{< /highlight >}}</p><p>hanya akan menyertakan bidang TC seperti</p><p>{{< highlight csharp >}}
{ TC \f t }{{< /highlight >}}</p><p>Bidang `TOC` juga memiliki sakelar terkait, sakelar "\L " menetapkan bahwa hanya bidang TC dengan level dalam rentang yang ditentukan yang disertakan.</p><p>![table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-6.png)</p><p><br><br>Bidang `TC` itu sendiri juga dapat memiliki set sakelar `{several, multiple, a few, many, numerous}`. Ini adalah:</p><p>- \F - Dijelaskan di atas.*</p><p>- \L - Menentukan level mana di bidang `TOC` ini TC akan muncul. A `TOC` yang menggunakan sakelar yang sama ini hanya akan menyertakan bidang TC ini jika berada dalam rentang yang ditentukan.</p><p>- `_\N` - Penomoran halaman untuk entri `TOC` ini tidak ditampilkan. Contoh kode cara menyisipkan bidang TC dapat ditemukan di bagian selanjutnya.</p> |

### Sakelar Terkait Penampilan

| Beralih | Deskripsi |
| :- | :- |
| **Omit Page Numbers** <br>* (\N Beralih)* | <p>Sakelar ini digunakan untuk menyembunyikan nomor halaman untuk level tertentu dari TOC. Misalnya, Anda dapat menentukan</p><p>{{< highlight csharp >}}
{TOC \o "1-4" \n "3-4" }{{< /highlight >}}</p><p>dan nomor halaman pada entri level 3 dan empat akan disembunyikan bersama dengan titik-titik pemimpin (jika ada). Untuk menentukan hanya satu level, rentang tetap harus digunakan, misalnya, "1-1" akan mengecualikan nomor halaman hanya untuk level pertama. <br>Tidak menyediakan rentang level akan menghilangkan nomor halaman untuk semua level di TOC. Ini berguna untuk disetel saat mengekspor dokumen ke HTML atau format serupa. Ini karena format berbasis HTML tidak memiliki konsep halaman apa pun dan karenanya tidak memerlukan penomoran halaman apa pun.</p><p>![table-of-contents-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-7.png)</p> |
| Sisipkan sebagai hyperlink <br>* (\H Beralih)* | <p>Sakelar ini menetapkan bahwa entri `TOC` disisipkan sebagai hyperlink. Saat melihat dokumen di Microsoft Word, entri ini akan tetap muncul sebagai teks biasa di dalam `TOC` tetapi diberi hyperlink dan dengan demikian dapat digunakan untuk menavigasi ke posisi entri asli dalam dokumen dengan menggunakan *Ctrl + Left Click* di Microsoft Word. Saat sakelar ini disertakan, tautan ini juga disimpan dalam format lain. Misalnya, dalam format berbasis HTML termasuk EPUB dan format yang dirender seperti PDF dan XPS, ini akan diekspor sebagai tautan yang berfungsi. <br>Tanpa set sakelar ini, `TOC` di semua keluaran ini akan diekspor sebagai teks biasa dan tidak akan menunjukkan perilaku ini. Jika dokumen dibuka di MS Word teks entri juga tidak dapat diklik dengan cara ini, tetapi nomor halaman masih dapat digunakan untuk menavigasi ke entri asli.</p><p>![tree-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-8.png)</p> |
| **Set Separator Character** <br>* (\P Beralih)* <br> | <p>Sakelar ini memungkinkan konten yang memisahkan judul entri dan penomoran halaman diubah dengan mudah di TOC. Pemisah yang akan digunakan harus ditentukan setelah sakelar ini dan diapit tanda ucapan. <br>Bertentangan dengan apa yang didokumentasikan dalam dokumentasi Office, hanya satu karakter yang dapat digunakan, bukan hingga lima. Ini berlaku untuk MS Word dan Aspose.Words. <br>Menggunakan sakelar ini tidak disarankan karena tidak memungkinkan banyak kontrol atas apa yang digunakan untuk memisahkan entri dan nomor halaman dalam TOC. Sebagai gantinya, disarankan untuk mengedit gaya `TOC` yang sesuai seperti `StyleIdentifier.TOC1` dan dari sana edit gaya pemimpin dengan akses ke anggota font tertentu, dll. Rincian lebih lanjut tentang cara melakukannya dapat ditemukan nanti di artikel.</p><p>![list-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-9.png)</p> |
| **Preserve Tab Entries** <br>* (\W Beralih)* | <p>Menggunakan sakelar ini akan menentukan bahwa entri apa pun yang memiliki karakter tab, misalnya, judul yang memiliki tab di akhir baris, akan dipertahankan sebagai karakter tab yang tepat saat mengisi TOC. Ini berarti fungsi karakter tab akan ada di `TOC` dan dapat digunakan untuk memformat entri. Misalnya, entri tertentu dapat menggunakan penghentian tab dan karakter tab untuk memberi spasi pada teks secara merata. Selama level `TOC` yang sesuai menentukan penghentian tab yang setara, entri `TOC` yang dihasilkan akan muncul dengan spasi yang sama. <br><br>Dalam situasi yang sama jika sakelar ini tidak ditentukan maka karakter tab akan diubah menjadi setara spasi putih sebagai tab yang tidak berfungsi. Hasilnya kemudian tidak akan muncul seperti yang diharapkan.</p><p>![tab-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-10.png)</p> |
| **Preserve New Line Entries** <br>* (\X Beralih)* <br> | <p>Mirip dengan sakelar di atas, sakelar ini menetapkan bahwa judul yang mencakup beberapa baris (menggunakan karakter baris baru, bukan paragraf terpisah) akan dipertahankan seperti pada TOC yang dihasilkan. Misalnya, judul yang akan tersebar di beberapa baris dapat menggunakan karakter baris baru (Ctrl + Enter atau `ControlChar.LineBreak`) untuk memisahkan konten di baris yang berbeda. Dengan sakelar ini ditentukan, entri dalam `TOC` akan mempertahankan karakter baris baru ini seperti yang ditunjukkan di bawah ini. <br><br>Dalam situasi ini, jika sakelar tidak ditentukan, maka karakter baris baru diubah menjadi satu spasi putih.</p><p>![tab-space-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-11.png)</p> |

## Sisipkan Bidang TC

Anda dapat menyisipkan bidang TC baru pada posisi `DocumentBuilder` saat ini dengan memanggil metode `DocumentBuilder.InsertField` dan menetapkan nama bidang sebagai "TC " bersama dengan sakelar apa pun yang diperlukan.

Contoh kode berikut menunjukkan cara menyisipkan bidang `TC` ke dalam dokumen menggunakan [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertTCField-InsertTCField.java" >}}

Seringkali baris teks tertentu ditetapkan untuk `TOC` dan ditandai dengan bidang `TC`. Cara mudah untuk melakukannya di MS Word adalah dengan menyorot teks dan menekan *ALT+SHIFT+O*. Ini secara otomatis membuat bidang `TC` menggunakan teks yang dipilih. Teknik yang sama dapat dilakukan melalui kode. Kode di bawah ini akan menemukan teks yang cocok dengan input dan menyisipkan bidang `TC` di posisi yang sama dengan teks. Kode ini didasarkan pada teknik yang sama yang digunakan dalam artikel. Contoh kode berikut menunjukkan cara menemukan dan menyisipkan bidang `TC` pada teks dalam dokumen.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-FindAndInsertATCField-InsertTCFieldHandler.java" >}}

## Memodifikasi Daftar Isi

### Mengubah Pemformatan Gaya

Pemformatan entri dalam `TOC` tidak menggunakan gaya asli dari entri yang ditandai, sebaliknya, setiap level diformat menggunakan gaya `TOC` yang setara. Misalnya, level pertama dalam `TOC` diformat dengan gaya **TOC1**, level kedua diformat dengan gaya **TOC2** dan seterusnya. Artinya, untuk mengubah tampilan `TOC` gaya ini harus dimodifikasi. Dalam Aspose.Words gaya ini diwakili oleh `StyleIdentifier.TOC1` yang tidak bergantung pada lokal hingga `StyleIdentifier.TOC9` dan dapat diambil dari koleksi `Document.Styles` menggunakan pengidentifikasi ini.

Setelah gaya dokumen yang sesuai telah diambil, pemformatan untuk gaya ini dapat dimodifikasi. Setiap perubahan pada gaya ini akan secara otomatis tercermin dalam TOCs dalam dokumen.

Contoh kode berikut mengubah properti pemformatan yang digunakan dalam gaya `TOC` tingkat pertama.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-ModifyATableOfContents-changeAFormattingPropertyUsedInFirstLevelTOCStyle.java" >}}

Penting juga untuk dicatat bahwa pemformatan langsung apa pun dari sebuah paragraf (didefinisikan pada paragraf itu sendiri dan bukan dalam gaya) yang ditandai untuk disertakan dalam `TOC` akan disalin dalam entri di TOC. Misalnya, jika gaya Heading 1 digunakan untuk menandai konten untuk `TOC` dan gaya ini memiliki pemformatan Tebal, sedangkan paragraf juga memiliki pemformatan miring yang langsung diterapkan padanya. Entri `TOC` yang dihasilkan tidak akan dicetak tebal karena merupakan bagian dari pemformatan gaya, namun akan dicetak miring karena diformat langsung pada paragraf.

Anda juga dapat mengontrol pemformatan pemisah yang digunakan antara setiap entri dan nomor halaman. Secara default, ini adalah garis putus-putus yang tersebar ke penomoran halaman menggunakan karakter tab dan perhentian tab kanan berbaris di dekat margin kanan.

Menggunakan kelas `Style` yang diambil untuk level `TOC` tertentu yang ingin Anda modifikasi, Anda juga dapat mengubah tampilannya di dokumen.

Untuk mengubah tampilannya terlebih dahulu `Style.ParagraphFormat` harus dipanggil untuk mengambil pemformatan paragraf untuk gaya tersebut. Dari sini, penghentian tab dapat diambil dengan memanggil `ParagraphFormat.TabStops` dan penghentian tab yang sesuai diubah. Dengan menggunakan teknik yang sama, tab itu sendiri dapat dipindahkan atau dihapus sama sekali.

Contoh kode berikut menunjukkan cara mengubah posisi perhentian tab kanan di paragraf terkait `TOC`.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-ModifyATableOfContents-modifyPositionOfRightTabStopInTOC.java" >}}

## Menghapus Daftar Isi dari Dokumen

Daftar isi dapat dihapus dari dokumen dengan menghapus semua simpul yang ditemukan di antara simpul `FieldStart` dan FieldEnd dari bidang `TOC`.

Kode di bawah ini menunjukkan hal ini. Penghapusan bidang `TOC` lebih sederhana daripada bidang normal karena kami tidak melacak bidang bersarang. Sebagai gantinya, kami memeriksa simpul `FieldEnd` bertipe `FieldType.FieldTOC` yang berarti kami telah menemukan akhir dari TOC saat ini. Teknik ini dapat digunakan dalam kasus ini tanpa mengkhawatirkan bidang bersarang apa pun karena kita dapat mengasumsikan bahwa dokumen apa pun yang dibentuk dengan benar tidak akan memiliki bidang `TOC` yang sepenuhnya bersarang di dalam bidang `TOC` lainnya.

Pertama, `FieldStart` node dari masing-masing `TOC` dikumpulkan dan disimpan. `TOC` yang ditentukan kemudian disebutkan sehingga semua node di dalam bidang dikunjungi dan disimpan. Node kemudian dihapus dari dokumen. Contoh kode berikut menunjukkan cara menghapus `TOC` tertentu dari dokumen.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-RemoveATableOfContents-RemoveATableOfContents.java" >}}

## Ekstrak Daftar Isi

Jika Anda ingin mengekstrak daftar isi dari dokumen Word apa pun, contoh kode berikut dapat digunakan.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-ExtractTableOfContents-ExtractTableOfContents.java" >}}
