---
title: Bekerja dengan Gaya dalam C++
second_title: Aspose.Words untuk C++
articleTitle: Bekerja dengan Gaya
linktitle: Bekerja dengan Gaya
description: "Fitur pemformatan Microsoft Word yang disempurnakan, bekerja dengan gaya dan tema menggunakan C++."
type: docs
weight: 110
url: /id/cpp/working-with-styles-and-themes/
timestamp: 2024-01-30-16-22-34
---

Kelas [StyleCollection](https://reference.aspose.com/words/cpp/aspose.words/stylecollection/) digunakan untuk mengelola bawaan dan menerapkan pengaturan yang ditentukan pengguna ke gaya.

## Cara Mengekstrak Konten Berdasarkan Gaya

Pada tingkat yang sederhana, mengambil konten berdasarkan gaya dari dokumen Word dapat berguna untuk mengidentifikasi, membuat daftar, dan menghitung paragraf dan rangkaian teks yang diformat dengan gaya tertentu. Misalnya, Anda mungkin perlu mengidentifikasi jenis konten tertentu dalam dokumen, seperti contoh, judul, referensi, kata kunci, nama gambar, dan studi kasus.

Untuk melangkah lebih jauh, ini juga dapat digunakan untuk memanfaatkan struktur dokumen, yang ditentukan oleh gaya yang digunakannya, untuk mengarahkan ulang dokumen ke keluaran lain, seperti HTML. Ini sebenarnya bagaimana dokumentasi Aspose dibuat, menguji Aspose.Words. Alat yang dibuat menggunakan Aspose.Words mengambil dokumen Word sumber dan membaginya menjadi topik pada tingkat judul tertentu. File XML dibuat menggunakan Aspose.Words yang digunakan untuk membuat pohon navigasi yang dapat Anda lihat di sebelah kiri. Dan kemudian Aspose.Words mengubah setiap topik menjadi HTML.

Solusi untuk mengambil teks yang diformat dengan gaya tertentu dalam dokumen Word biasanya ekonomis dan mudah menggunakan Aspose.Words.

### Solusinya

Untuk mengilustrasikan betapa mudahnya Aspose.Words menangani pengambilan konten berdasarkan gaya, mari kita lihat sebuah contoh. Dalam contoh ini, kita akan mengambil teks yang diformat dengan gaya paragraf tertentu dan gaya karakter dari contoh dokumen Word. Pada tingkat tinggi, ini akan melibatkan:
- Membuka dokumen Word menggunakan kelas `Document`.
- Mendapatkan koleksi semua paragraf dan semua proses dalam dokumen.
- Memilih hanya paragraf dan run yang diperlukan. Secara khusus, kita akan mengambil teks yang diformat dengan gaya paragraf ' Heading 1' dan gaya karakter 'Penekanan Intens' dari contoh dokumen Word ini.

![working-with-styles-aspose-words-cpp-1](working-with-styles-1.png)


Dalam contoh dokumen ini, teks yang diformat dengan gaya paragraf ' Heading 1' adalah 'Sisipkan Tab',' Gaya Cepat', dan 'Tema', dan teks yang diformat dengan gaya karakter' Penekanan intens 'adalah beberapa contoh warna biru, dicetak miring, teks tebal seperti' galeri 'dan'tampilan keseluruhan'.

### Kodenya

Implementasi kueri berbasis gaya cukup sederhana dalam model objek dokumen Aspose.Words, karena hanya menggunakan alat yang sudah ada. Dua metode kelas diimplementasikan untuk solusi ini: **ParagraphsByStyleName** - Metode ini mengambil larik paragraf tersebut dalam dokumen yang memiliki nama gaya tertentu. **RunsByStyleName** - Metode ini mengambil larik yang dijalankan dalam dokumen yang memiliki nama gaya tertentu. Kedua metode ini sangat mirip, satu-satunya perbedaan adalah tipe node dan representasi informasi gaya di dalam node paragraph dan run. Berikut adalah implementasi dari ParagraphsByStyleName. Contoh di bawah ini menemukan semua paragraf yang diformat dengan gaya yang ditentukan.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ExtractContentBasedOnStyles-ParagraphsByStyleName.cpp" >}}

{{% alert color="primary" %}}

Implementasi ini juga menggunakan metode `Document.GetChildNodes` dari kelas `Document`, yang mengembalikan kumpulan semua node dengan tipe yang ditentukan, yang dalam hal ini di semua paragraf.

Perhatikan bahwa parameter kedua dari metode **Document.GetChildNodes** disetel ke true. Ini memaksa metode **Document.GetChildNodes** untuk memilih dari semua node turunan secara rekursif, daripada hanya memilih turunan terdekat.

{{% /alert %}}

Perlu juga ditunjukkan bahwa kumpulan paragraf tidak langsung membuat overhead karena paragraf dimuat ke dalam koleksi ini hanya saat Anda mengakses item di dalamnya. Kemudian, yang perlu Anda lakukan adalah menelusuri koleksi, menggunakan standar untuk setiap operator dan menambahkan paragraf yang memiliki gaya yang ditentukan ke array paragraphsWithStyle. Nama gaya `Paragraph` dapat ditemukan di Gaya. Nama properti dari objek `Paragraph.ParagraphFormat`. Implementasi RunsByStyleName hampir sama, meskipun kami jelas menggunakan `NodeType.Run` untuk mengambil node yang dijalankan. Properti `Font.Style` dari objek `Run` digunakan untuk mengakses informasi gaya di simpul **Run**. Contoh below code menemukan semua proses yang diformat dengan gaya yang ditentukan.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ExtractContentBasedOnStyles-RunsByStyleName.cpp" >}}


Saat kedua kueri diimplementasikan, yang perlu Anda lakukan hanyalah meneruskan objek dokumen dan menentukan nama gaya konten yang ingin Anda ambil: Contoh di bawah menjalankan kueri dan menampilkan hasil. Anda dapat mengunduh file templat contoh ini dari sini.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ExtractContentBasedOnStyles-ExtractContentBasedOnStyles.cpp" >}}

#### Hasil Akhir

Setelah semuanya selesai, menjalankan sampel akan menampilkan output berikut:

![working-with-styles-aspose-words-cpp-2](working-with-styles-2.png)


Seperti yang Anda lihat, ini adalah contoh yang sangat sederhana, menunjukkan jumlah dan teks paragraf yang dikumpulkan dan berjalan dalam contoh dokumen Word.

## Cara Menyisipkan dan Bekerja dengan Bidang Daftar Isi

Seringkali Anda akan bekerja dengan dokumen yang berisi daftar isi (TOC). Menggunakan Aspose.Words Anda dapat menyisipkan daftar isi Anda sendiri atau sepenuhnya membangun kembali daftar isi yang ada dalam dokumen hanya dengan menggunakan beberapa baris kode. Artikel ini menguraikan cara bekerja dengan bidang daftar isi dan mendemonstrasikan:

- Cara menyisipkan `TOC`baru
- Perbarui TOCs baru atau yang sudah ada dalam dokumen.
- Tentukan sakelar untuk mengontrol pemformatan dan struktur keseluruhan dari TOC.
- Cara memodifikasi gaya dan tampilan daftar isi.
- Cara menghapus seluruh bidang `TOC` bersama dengan semua entri dari dokumen.

### Sisipkan Bidang TC

Seringkali baris teks tertentu ditetapkan untuk `TOC` dan ditandai dengan bidang `TC`. Cara mudah untuk melakukannya di MS Word adalah dengan menyorot teks dan menekan *ALT+SHIFT+O*. Ini secara otomatis membuat bidang `TC` menggunakan teks yang dipilih. Teknik yang sama dapat dilakukan melalui kode. Kode di bawah ini akan menemukan teks yang cocok dengan input dan menyisipkan bidang `TC` di posisi yang sama dengan teks. Kode ini didasarkan pada teknik yang sama yang digunakan dalam artikel. Contoh di bawah ini menunjukkan cara menemukan dan menyisipkan bidang `TC` pada teks dalam dokumen.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertTCFieldsAtText-DocumentBuilderInsertTCFieldsAtText.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertTCFieldsAtText-InsertTCFieldHandler.cpp" >}}

### Memodifikasi Daftar Isi

#### Mengubah Pemformatan Gaya

Pemformatan entri dalam `TOC` tidak menggunakan gaya asli dari entri yang ditandai, sebaliknya, setiap level diformat menggunakan gaya `TOC` yang setara. Misalnya, level pertama dalam `TOC` diformat dengan gaya **TOC1**, level kedua diformat dengan gaya **TOC2** dan seterusnya. Artinya, untuk mengubah tampilan `TOC` gaya ini harus dimodifikasi. Dalam Aspose.Words gaya ini diwakili oleh lokal independen `StyleIdentifier.TOC1` hingga `StyleIdentifier.TOC9` dan dapat diambil dari koleksi `Document.Styles` menggunakan pengidentifikasi ini. Setelah gaya dokumen yang sesuai telah diambil, pemformatan untuk gaya ini dapat dimodifikasi. Setiap perubahan pada gaya ini akan secara otomatis tercermin pada TOCs dalam dokumen. Contoh below code mengubah properti pemformatan yang digunakan dalam gaya `TOC` tingkat pertama.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ChangeStyleOfTOCLevel-ChangeStyleOfTOCLevel.cpp" >}}

Penting juga untuk dicatat bahwa pemformatan langsung apa pun dari sebuah paragraf (didefinisikan pada paragraf itu sendiri dan bukan dalam gaya) yang ditandai untuk menyertakan `TOC` akan disalin dalam entri di TOC. Misalnya, jika gaya Heading 1 digunakan untuk menandai konten untuk `TOC` dan gaya ini memiliki pemformatan Tebal, sedangkan paragraf juga memiliki pemformatan miring yang langsung diterapkan padanya. Entri `TOC` yang dihasilkan tidak akan dicetak tebal karena merupakan bagian dari pemformatan gaya, namun akan dicetak miring karena diformat langsung pada paragraf. Anda juga dapat mengontrol pemformatan pemisah yang digunakan antara setiap entri dan nomor halaman. Secara default, ini adalah garis putus-putus yang tersebar ke penomoran halaman menggunakan karakter tab dan perhentian tab kanan berbaris di dekat margin kanan.

Menggunakan kelas `Style` yang diambil untuk level `TOC` tertentu yang ingin Anda modifikasi, Anda juga dapat mengubah tampilannya di dokumen. Untuk mengubah tampilannya terlebih dahulu `Style.ParagraphFormat` harus dipanggil untuk mengambil pemformatan paragraf untuk gaya tersebut. Dari sini, penghentian tab dapat diambil dengan memanggil `ParagraphFormat.TabStops` dan penghentian tab yang sesuai diubah. Dengan menggunakan teknik yang sama, tab itu sendiri dapat dipindahkan atau dihapus sama sekali. Contoh below code menunjukkan cara mengubah posisi perhentian tab kanan dalam paragraf terkait `TOC`. Anda dapat mengunduh file templat contoh ini dari sini.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ChangeTOCTabStops-ChangeTOCTabStops.cpp" >}}

### Menghapus Daftar Isi dari Dokumen

Daftar isi dapat dihapus dari dokumen dengan menghapus semua simpul yang ditemukan di antara simpul `FieldStart` dan FieldEnd dari bidang `TOC`. Kode di bawah ini menunjukkan hal ini. Penghapusan bidang `TOC` lebih sederhana daripada bidang normal karena kami tidak melacak bidang bersarang. Sebagai gantinya, kami memeriksa simpul `FieldEnd` bertipe `FieldType.FieldTOC` yang berarti kami telah menemukan akhir dari TOC saat ini. Teknik ini dapat digunakan dalam kasus ini tanpa mengkhawatirkan bidang bersarang apa pun karena kita dapat mengasumsikan bahwa dokumen apa pun yang dibentuk dengan benar tidak akan memiliki bidang `TOC` yang sepenuhnya bersarang di dalam bidang `TOC` lainnya. Pertama, `FieldStart` simpul dari masing-masing `TOC` dikumpulkan dan disimpan. `TOC` yang ditentukan kemudian disebutkan sehingga semua node di dalam bidang dikunjungi dan disimpan. Node kemudian dihapus dari dokumen. Contoh below code mendemonstrasikan cara menghapus `TOC` tertentu dari dokumen. Anda dapat mengunduh file templat contoh ini dari sini.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-RemoveTOCFromDocument-RemoveTOCFromDocument.cpp" >}}

## Sisipkan Pemisah Gaya untuk Meletakkan Gaya Paragraf yang Berbeda

Pemisah gaya dapat ditambahkan ke akhir paragraf menggunakan Pintasan Keyboard Ctrl + Alt + Enter ke dalam MS Word. Fitur ini memungkinkan dua gaya paragraf berbeda yang digunakan dalam satu paragraf cetak logis. Jika Anda ingin beberapa teks dari awal judul tertentu muncul di Daftar Isi tetapi tidak ingin seluruh judul ada di Daftar Isi, Anda dapat menggunakan fitur ini. Contoh be low code menunjukkan cara menyisipkan pemisah gaya untuk meletakkan gaya paragraf yang berbeda.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-InsertStyleSeparator-ParagraphInsertStyleSeparator.cpp" >}}

## Salin Semua Gaya dari Templat

Ada beberapa kasus ketika Anda ingin menyalin semua gaya dari satu dokumen ke dokumen lainnya. Anda dapat menggunakan metode `Document.CopyStylesFromTemplate` untuk menyalin gaya dari templat yang ditentukan ke dokumen. Saat gaya disalin dari templat ke dokumen, gaya dengan nama yang sama dalam dokumen didefinisikan ulang agar sesuai dengan deskripsi gaya di templat. Gaya unik dari templat disalin ke dokumen. Gaya unik dalam dokumen tetap utuh. Contoh below code menunjukkan cara menyalin gaya dari satu dokumen ke dokumen lainnya.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-CopyStyles-CopyStylesFromDocument.cpp" >}}
