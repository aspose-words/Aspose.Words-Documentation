---
title: Bekerja dengan Daftar Isi
second_title: Aspose.Words untuk Python via .NET
articleTitle: Bekerja dengan Daftar Isi
linktitle: Bekerja dengan Daftar Isi
description: "Sisipkan dan kelola 'Daftar Isi' dalam dokumen menggunakan Python."
type: docs
weight: 170
url: /id/python-net/working-with-table-of-contents/
---

Seringkali Anda akan bekerja dengan dokumen yang berisi daftar isi (TOC). Dengan menggunakan Aspose.Words Anda dapat menyisipkan daftar isi Anda sendiri atau membangun kembali seluruh daftar isi yang ada dalam dokumen hanya dengan menggunakan beberapa baris kode. Artikel ini menguraikan cara bekerja dengan bidang daftar isi dan menunjukkan:

- Cara memasukkan `TOC` baru
- Perbarui TOC baru atau yang sudah ada dalam dokumen.
- Tentukan sakelar untuk mengontrol pemformatan dan struktur keseluruhan TOC.
- Cara memodifikasi gaya dan tampilan daftar isi.
- Cara menghapus seluruh bidang `TOC` beserta semua entri dari dokumen.

## Menyisipkan Daftar Isi Secara Terprogram

Anda dapat menyisipkan kolom `TOC` (daftar isi) ke dalam dokumen pada posisi saat ini dengan memanggil metode [DocumentBuilder.insert_table_of_contents](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_table_of_contents/).

Daftar isi dalam dokumen Word dapat dibuat dengan beberapa cara dan diformat menggunakan berbagai pilihan. Bidang beralih yang Anda teruskan ke metode mengontrol cara tabel dibuat dan ditampilkan di dokumen Anda.

Sakelar default yang digunakan dalam `TOC` yang dimasukkan ke dalam Microsoft Word adalah **"\o "1-3 \h \z \u"**. Deskripsi sakelar ini serta daftar sakelar yang didukung dapat ditemukan nanti di artikel. Anda dapat menggunakan panduan tersebut untuk mendapatkan sakelar yang benar atau jika Anda sudah memiliki dokumen berisi `TOC` serupa yang Anda inginkan, Anda dapat menampilkan kode bidang (*ALT+F9*) dan menyalin sakelar langsung dari bidang.

Contoh kode berikut menunjukkan cara menyisipkan kolom Daftar Isi ke dalam dokumen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertTableOfContents.py" >}}

Kode tersebut menunjukkan daftar isi baru yang dimasukkan ke dalam dokumen kosong. Kelas [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) kemudian digunakan untuk menyisipkan beberapa contoh format konten dengan gaya judul yang sesuai yang digunakan untuk menandai konten yang akan dimasukkan dalam TOC. Baris berikutnya kemudian mengisi `TOC` dengan memperbarui bidang dan tata letak halaman dokumen.

{{% alert color="primary" %}}

Tanpa metode yang digunakan dalam contoh, saat Anda membuka dokumen keluaran, Anda akan menemukan bidang `TOC`, tetapi tanpa konten yang terlihat. Hal ini karena bidang `TOC` telah disisipkan namun belum diisi hingga diperbarui dalam dokumen. Informasi lebih lanjut mengenai hal ini dibahas pada bagian berikutnya.

{{% /alert %}}

## Perbarui Daftar Isi

Aspose.Words memungkinkan Anda memperbarui `TOC` sepenuhnya hanya dengan beberapa baris kode. Hal ini dapat dilakukan untuk mengisi `TOC` yang baru disisipkan atau memperbarui `TOC` yang sudah ada setelah perubahan pada dokumen dilakukan. Dua metode berikut harus digunakan untuk memperbarui bidang `TOC` dalam dokumen:

1. [Document.update_fields](https://reference.aspose.com/words/python-net/aspose.words/document/update_fields/)
1. [Document.update_page_layout](https://reference.aspose.com/words/python-net/aspose.words/document/update_page_layout/)

Harap dicatat bahwa kedua metode pembaruan ini harus dipanggil dalam urutan itu. Jika dibalik maka daftar isi akan terisi tetapi tidak ada nomor halaman yang ditampilkan. Sejumlah TOC berbeda dapat diperbarui. Metode ini secara otomatis akan memperbarui semua TOC yang ditemukan dalam dokumen.

Contoh kode berikut menunjukkan cara membangun kembali bidang `TOC` dalam dokumen dengan menerapkan pembaruan bidang:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-UpdateFields.py" >}}

Panggilan pertama ke [Document.update_fields](https://reference.aspose.com/words/python-net/aspose.words/document/update_fields/) akan membuat `TOC`, semua entri teks terisi dan `TOC` tampak hampir selesai. Satu-satunya hal yang hilang adalah nomor halaman yang untuk saat ini ditampilkan dengan "?". Panggilan kedua ke [Document.update_page_layout](https://reference.aspose.com/words/python-net/aspose.words/document/update_page_layout/) akan membangun tata letak dokumen di memori. Hal ini perlu dilakukan untuk mengumpulkan nomor halaman entri. Nomor halaman yang benar yang dihitung dari panggilan ini kemudian dimasukkan ke dalam TOC.

## Gunakan Sakelar untuk Mengontrol Perilaku Daftar Isi.

Seperti bidang lainnya, bidang `TOC` dapat menerima sakelar yang ditentukan dalam kode bidang yang mengontrol cara pembuatan daftar isi. Sakelar tertentu digunakan untuk mengontrol entri mana yang disertakan dan pada level berapa, sementara sakelar lain digunakan untuk mengontrol tampilan TOC. Switch dapat digabungkan bersama untuk memungkinkan dihasilkannya daftar isi yang kompleks.

![working-with-table-of-contents-aspose-words-net](/words/python-net/working-with-table-of-contents/working-with-table-of-contents-1.png)


Secara default, saklar-saklar di atas disertakan ketika memasukkan `TOC` default ke dalam dokumen. `TOC` tanpa saklar akan menyertakan konten dari gaya judul bawaan (seolah-olah saklar \O diatur). Sakelar `TOC` yang tersedia dan didukung oleh Aspose.Words tercantum di bawah ini dan penggunaannya dijelaskan secara rinci. Mereka dapat dibagi menjadi beberapa bagian berdasarkan tipenya. Tombol di bagian pertama menentukan konten apa yang akan disertakan dalam `TOC` dan tombol di bagian kedua mengontrol tampilan TOC. Jika sebuah saklar tidak tercantum di sini maka saklar tersebut saat ini tidak didukung. Semua sakelar akan didukung di versi mendatang. Kami menambahkan dukungan lebih lanjut pada setiap rilis.

### Sakelar Penandaan Masuk

|  Mengalihkan | Keterangan |
|  :-  |  :-  |
| **Heading Styles**<br>*(\O Beralih)* | <p>Peralihan ini menentukan bahwa `TOC` harus dibuat dari gaya judul bawaan. Di Microsoft Word, gaya ini ditentukan oleh Heading 1 – Heading 9. Dalam Aspose.Words, gaya ini diwakili oleh enumerasi StyleIdentifier yang sesuai. Pencacahan ini mewakili pengidentifikasi independen lokal suatu gaya, misalnya `StyleIdentifier.Heading1` mewakili gaya Heading 1. Dengan menggunakan ini, pemformatan dan properti gaya dapat diambil dari koleksi Gaya dokumen. Kelas Gaya yang sesuai dapat diambil dari koleksi `Document.Styles` dengan menggunakan properti terindeks dari tipe StyleIdentifier.</p>

<p>![working-with-table-of-contents-styles](/words/python-net/working-with-table-of-contents/working-with-table-of-contents-2.png)</p>

<p>Konten apa pun yang diformat dengan gaya ini disertakan dalam daftar isi. Tingkat judul akan menentukan tingkat hierarki entri yang sesuai di TOC. Misalnya, paragraf dengan gaya Heading 1 akan diperlakukan sebagai level pertama dalam `TOC` sedangkan paragraf dengan Heading 2 akan diperlakukan sebagai level berikutnya dalam hierarki dan seterusnya.</p> |
| **Outline Levels**<br>*(\U beralih)* | <p>Setiap paragraf dapat menentukan tingkat kerangka di bawah Opsi paragraf.</p>

<p>![working-with-table-of-contents-paragraph](/words/python-net/working-with-table-of-contents/working-with-table-of-contents-3.png)</p>

<p>Pengaturan ini menentukan tingkat mana paragraf ini harus diperlakukan dalam hierarki dokumen. Ini adalah praktik yang umum digunakan untuk menyusun tata letak dokumen dengan mudah. Hierarki ini dapat dilihat dengan mengubah ke Tampilan Garis Besar di Microsoft Word. Mirip dengan gaya judul, mungkin ada 1 – 9 level kerangka selain level "Teks Isi". Garis besar tingkat 1 – 9 akan muncul dalam `TOC` pada tingkat hierarki yang sesuai<br>Konten apa pun dengan tingkat garis besar yang diatur dalam gaya paragraf atau langsung pada paragraf itu sendiri termasuk dalam TOC. Di Aspose.Words, level garis besar diwakili oleh properti `ParagraphFormat.OutlineLevel` dari node Paragraph. Tingkat kerangka gaya paragraf direpresentasikan dengan cara yang sama oleh properti `Style.ParagraphFormat`.</p>

<p>{{% alert color="primary" %}}</p>

<p>Perhatikan bahwa gaya judul bawaan seperti Judul 1 memiliki tingkat garis besar yang wajib diatur dalam pengaturan gaya.</p>

<p>{{% /alert %}}</p> |
| **Custom Styles**<br>*(\T saklar)* | <p>Peralihan ini akan memungkinkan gaya khusus digunakan saat mengumpulkan entri untuk digunakan dalam TOC. Ini sering digunakan bersama dengan tombol \O untuk menyertakan gaya khusus bersama dengan gaya judul bawaan di TOC.<br>Parameter sakelar harus diapit dalam tanda ucapan. Banyak gaya khusus yang dapat disertakan, untuk setiap gaya, namanya harus ditentukan diikuti dengan koma diikuti dengan tingkat gaya yang akan muncul di `TOC`. Gaya selanjutnya juga dipisahkan dengan koma.<br>Contohnya</p>

<p>{{< highlight csharp >}}
{ TOC \o "1-3" \t "CustomHeading1, 1,   CustomHeading2, 2"}{{< /highlight >}}</p>

<p>akan menggunakan konten yang ditata dengan CustomHeading1 sebagai konten level 1 di `TOC` dan CustomHeading2 sebagai level 2.</p> |
| **Use TC Fields**<br>*(\F dan \L Switch)* | <p>Di Microsoft Word versi lama, satu-satunya cara untuk membuat `TOC` adalah dengan menggunakan bidang TC. Bidang-bidang ini dimasukkan secara tersembunyi ke dalam dokumen bahkan ketika kode bidang ditampilkan. Mereka menyertakan teks yang harus ditampilkan di entri dan `TOC` dibuat darinya. Fungsionalitas ini sekarang tidak terlalu sering digunakan namun mungkin masih berguna dalam beberapa kesempatan untuk menyertakan entri dalam `TOC` yang tidak menjorok ke dalam agar terlihat dalam dokumen.<br>Saat disisipkan, kolom-kolom ini tampak tersembunyi bahkan ketika kode kolom ditampilkan. Mereka tidak dapat dilihat tanpa menampilkan konten tersembunyi. Untuk melihat bidang ini Tampilkan pemformatan paragraf harus dipilih.</p>

<p>![working-with-table-of-contents-paragraph-settings](/words/python-net/working-with-table-of-contents/working-with-table-of-contents-4.png)</p> Bidang-bidang ini dapat dimasukkan ke dalam dokumen di posisi mana pun seperti bidang lainnya dan diwakili oleh enumerasi `FieldType.FieldTOCEntry`.<br>Tombol \F di `TOC` digunakan untuk menentukan bahwa kolom TC harus digunakan sebagai entri. Peralihan sendiri tanpa pengidentifikasi tambahan berarti bahwa bidang TC apa pun dalam dokumen akan disertakan. Parameter tambahan apa pun, seringkali berupa satu huruf, akan menunjukkan bahwa hanya kolom TC yang memiliki tombol \f yang cocok yang akan disertakan dalam TOC. Contohnya *</p>

<p>{{< highlight csharp >}}{ TOC \f t }{{< /highlight >}}</p>

<p>hanya akan menyertakan bidang TC seperti</p>

<p>{{< highlight csharp >}}{   TC \f t }{{< /highlight >}}</p>

<p>Bidang `TOC` juga memiliki sakelar terkait, sakelar "\L" menetapkan bahwa hanya bidang TC dengan level dalam rentang tertentu yang disertakan.</p>

<p>![todo:image_alt_text](/words/python-net/working-with-table-of-contents/working-with-table-of-contents-5.png)</p>

<p>Bidang `TC` sendiri juga dapat memiliki beberapa saklar yang disetel. Ini adalah:</p>

<p>- *\F – Dijelaskan di atas.*</p>

<p>- *\L – Menentukan level di `TOC` mana bidang TC ini akan muncul. `TOC` yang menggunakan saklar yang sama hanya akan menyertakan bidang TC ini jika berada dalam rentang yang ditentukan.*</p>

<p>- _\N – Penomoran halaman untuk entri `TOC` ini tidak ditampilkan. Contoh kode cara menyisipkan kolom TC dapat ditemukan di bagian berikutnya.</p> |

### Sakelar Terkait Penampilan

|  Mengalihkan | Keterangan |
|  :-  |  :-  |
| **Omit Page Numbers**<br>*(\N Beralih)* | <p>Tombol ini digunakan untuk menyembunyikan nomor halaman pada level TOC tertentu. Misalnya Anda dapat mendefinisikan</p>

<p>{{< highlight csharp >}}{TOC \o "1-4" \n "3-4" }{{< /highlight >}}</p>

<p>dan nomor halaman pada entri level 3 dan empat akan disembunyikan bersama dengan titik-titik pemimpin (jika ada). Untuk menentukan hanya satu tingkat, rentang tetap harus digunakan, misalnya "1-1" akan mengecualikan nomor halaman hanya untuk tingkat pertama.<br>Tidak menyediakan rentang level akan menghilangkan nomor halaman untuk semua level dalam TOC. Ini berguna untuk mengatur saat mengekspor dokumen ke HTML atau format serupa. Hal ini karena format berbasis HTML tidak memiliki konsep halaman apa pun sehingga tidak memerlukan penomoran halaman apa pun.</p>

<p>![todo:image_alt_text](/words/python-net/working-with-table-of-contents/working-with-table-of-contents-6.png)</p> |
| **Insert As Hyperlinks**<br>*(\H Beralih)* | <p>Peralihan ini menetapkan bahwa entri `TOC` disisipkan sebagai hyperlink. Saat melihat dokumen di Microsoft Word, entri ini akan tetap muncul sebagai teks biasa di dalam `TOC` namun diberi hyperlink sehingga dapat digunakan untuk menavigasi ke posisi entri asli di dokumen dengan menggunakan *Ctrl + Klik Kiri* di Microsoft Word. Jika peralihan ini disertakan maka tautan ini juga disimpan dalam format lain. Misalnya dalam format berbasis HTML termasuk EPUB dan format yang dirender seperti PDF dan XPS, format ini akan diekspor sebagai tautan yang berfungsi.<br>Tanpa sakelar ini disetel, `TOC` di semua keluaran ini akan diekspor sebagai teks biasa dan tidak akan menunjukkan perilaku ini. Jika dokumen dibuka di MS Word, teks entri juga tidak dapat diklik dengan cara ini tetapi nomor halaman masih dapat digunakan untuk menavigasi ke entri asli.</p>

<p>![working-with-table-of-contents-titles](/words/python-net/working-with-table-of-contents/working-with-table-of-contents-7.png)</p> |
| **Set Separator Character**<br>*(\P Beralih)* | <p>Peralihan ini memungkinkan konten yang memisahkan judul entri dan penomoran halaman dapat dengan mudah diubah di TOC. Pemisah yang akan digunakan harus ditentukan setelah saklar ini dan diapit dalam tanda ucapan.<br>Bertentangan dengan apa yang didokumentasikan dalam dokumentasi Office, hanya satu karakter yang dapat digunakan, bukan maksimal lima karakter. Ini berlaku untuk MS Word dan Aspose.Words.<br>Penggunaan saklar ini tidak disarankan karena tidak memberikan banyak kendali atas apa yang digunakan untuk memisahkan entri dan nomor halaman di TOC. Sebaliknya disarankan untuk mengedit gaya `TOC` yang sesuai seperti `StyleIdentifier.TOC1` dan dari sana mengedit gaya pemimpin dengan akses ke anggota font tertentu, dll. Detail lebih lanjut tentang cara melakukan ini dapat ditemukan nanti di artikel.</p>

<p>![working-with-table-of-contents-toc](/words/python-net/working-with-table-of-contents/working-with-table-of-contents-8.png)</p> |
| **Preserve Tab Entries**<br>*(\W Beralih)* | <p>Menggunakan saklar ini akan menentukan bahwa setiap entri yang memiliki karakter tab, misalnya judul yang memiliki tab di akhir baris, akan dipertahankan sebagai karakter tab yang tepat ketika mengisi TOC. Ini berarti fungsi karakter tab akan ada di `TOC` dan dapat digunakan untuk memformat entri. Misalnya entri tertentu mungkin menggunakan tab stop dan karakter tab untuk meratakan jarak teks. Selama tingkat `TOC` yang sesuai menentukan perhentian tab yang setara, maka entri `TOC` yang dihasilkan akan muncul dengan spasi yang sama.<br><br>Dalam situasi yang sama jika saklar ini tidak ditentukan maka karakter tab akan diubah menjadi spasi putih yang setara dengan tab yang tidak berfungsi. Outputnya kemudian tidak akan muncul seperti yang diharapkan.</p>

<p>![working-with-table-of-contents-aspose](/words/python-net/working-with-table-of-contents/working-with-table-of-contents-9.png)</p> |
| **Preserve New Line Entries**<br>*(\X Beralih)* | <p>Mirip dengan tombol di atas, tombol ini menetapkan bahwa judul yang mencakup beberapa baris (menggunakan karakter baris baru, bukan paragraf terpisah) akan dipertahankan sebagaimana berada di TOC yang dihasilkan. Misalnya, judul yang tersebar di beberapa baris dapat menggunakan karakter baris baru (Ctrl + Enter atau `ControlChar.LineBreak`) untuk memisahkan konten di baris yang berbeda. Dengan saklar ini ditentukan, entri di `TOC` akan mempertahankan karakter baris baru ini seperti yang ditunjukkan di bawah ini.<br><br>Dalam situasi ini jika saklar tidak ditentukan maka karakter baris baru akan diubah menjadi spasi putih tunggal.</p>

<p>![working-with-table-of-contents-aspose-words](/words/python-net/working-with-table-of-contents/working-with-table-of-contents-10.png)</p> |

## Masukkan Bidang TC

Anda dapat menyisipkan kolom TC baru pada posisi [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) saat ini dengan memanggil metode [DocumentBuilder.insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) dan menentukan nama kolom sebagai "TC" beserta sakelar apa pun yang diperlukan. Contoh di bawah ini menunjukkan cara menyisipkan bidang `TC` ke dalam dokumen menggunakan [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertTCField.py" >}}


## Ubah Daftar Isi

Pemformatan entri di `TOC` tidak menggunakan gaya asli dari entri yang ditandai, melainkan setiap level diformat menggunakan gaya `TOC` yang setara. Misalnya level pertama di `TOC` diformat dengan style **TOC1**, level kedua diformat dengan style **TOC2** dan seterusnya. Artinya, untuk mengubah tampilan `TOC`, gaya ini harus dimodifikasi. Di Aspose.Words, gaya ini diwakili oleh [StyleIdentifier.TOC1](https://reference.aspose.com/words/python-net/aspose.words/styleidentifier/#toc1) independen lokal hingga [StyleIdentifier.TOC9](https://reference.aspose.com/words/python-net/aspose.words/styleidentifier/#toc9) dan dapat diambil dari koleksi [Document.styles](https://reference.aspose.com/words/python-net/aspose.words/documentbase/styles/) menggunakan pengidentifikasi ini.

Setelah gaya dokumen yang sesuai diambil, format untuk gaya ini dapat dimodifikasi. Setiap perubahan pada gaya ini akan secara otomatis tercermin pada Daftar Isi dalam dokumen. Contoh di bawah ini mengubah properti pemformatan yang digunakan dalam gaya `TOC` tingkat pertama.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_table_of_content-ChangeStyleOfTOCLevel.py" >}}

Penting juga untuk dicatat bahwa setiap format langsung dari sebuah paragraf (ditentukan pada paragraf itu sendiri dan bukan dalam gayanya) yang ditandai untuk disertakan dalam `TOC` akan disalin ke dalam entri di TOC. Misalnya jika gaya Judul 1 digunakan untuk menandai konten `TOC` dan gaya ini memiliki format Tebal sedangkan paragraf juga memiliki format miring yang langsung diterapkan padanya. Entri `TOC` yang dihasilkan tidak akan dicetak tebal karena merupakan bagian dari pemformatan gaya, namun akan dicetak miring karena diformat langsung pada paragraf.

Anda juga dapat mengontrol format pemisah yang digunakan antara setiap entri dan nomor halaman. Secara default, ini adalah garis putus-putus yang tersebar ke seluruh penomoran halaman menggunakan karakter tab dan tab stop kanan berjejer di dekat margin kanan.

Dengan menggunakan kelas [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) yang diambil untuk tingkat `TOC` tertentu yang ingin Anda ubah, Anda juga dapat mengubah tampilannya di dokumen. Untuk mengubah tampilannya, [Style.paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/style/paragraph_format/) harus dipanggil terlebih dahulu untuk mengambil format paragraf untuk gaya tersebut. Dari sini tab stop dapat diambil dengan memanggil [ParagraphFormat.tab_stops](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/tab_stops/) dan tab stop yang sesuai diubah. Dengan menggunakan teknik yang sama, tab itu sendiri dapat dipindahkan atau dihapus semuanya. Contoh di bawah ini menunjukkan cara mengubah posisi tab stop kanan di paragraf terkait `TOC`.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_table_of_content-ChangeTOCTabStops.py" >}}

## Hapus Daftar Isi dari Dokumen

Daftar isi dapat dihapus dari dokumen dengan menghapus semua node yang ditemukan antara node [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) dan [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) pada bidang `TOC`. Kode di bawah menunjukkan hal ini. Penghapusan bidang `TOC` lebih sederhana daripada bidang normal karena kami tidak melacak bidang yang disarangkan. Sebaliknya kita memeriksa node [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) bertipe [FieldType.FIELD_TOC](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtype/#field_toc) yang berarti kita telah menemui akhir TOC saat ini. Teknik ini dapat digunakan dalam kasus ini tanpa mengkhawatirkan bidang yang disarangkan karena kita dapat berasumsi bahwa dokumen apa pun yang dibentuk dengan benar tidak akan memiliki bidang `TOC` yang sepenuhnya bertumpuk di dalam bidang `TOC` lainnya.

Pertama, node [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) dari setiap `TOC` dikumpulkan dan disimpan. `TOC` yang ditentukan kemudian dihitung sehingga semua node dalam bidang tersebut dikunjungi dan disimpan. Node tersebut kemudian dihapus dari dokumen. Contoh Below code menunjukkan cara menghapus `TOC` tertentu dari dokumen.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-remove_content-RemoveTOCFromDocument.py" >}}

## Ekstrak Daftar Isi

Jika Anda ingin mengekstrak daftar isi dari dokumen Word apa pun, contoh kode berikut dapat digunakan.

{{< highlight python >}}
doc = aw.Document(docs_base.my_dir + "Table of contents.docx")

for field in doc.range.fields :
            
    if (field.type == aw.fields.FieldType.FIELD_HYPERLINK) :
                
        hyperlink = field.as_field_hyperlink()
        if (hyperlink.sub_address != None and hyperlink.sub_address.find("_Toc") == 0) :
                    
            tocItem = field.start.get_ancestor(aw.NodeType.PARAGRAPH).as_paragraph()
                        
            print(tocItem.to_string(aw.SaveFormat.TEXT).strip())
            print("------------------")
    
            bm = doc.range.bookmarks.get_by_name(hyperlink.sub_address)
            pointer = bm.bookmark_start.get_ancestor(aw.NodeType.PARAGRAPH).as_paragraph()
                        
            print(pointer.to_string(aw.SaveFormat.TEXT))
{{< /highlight >}}
