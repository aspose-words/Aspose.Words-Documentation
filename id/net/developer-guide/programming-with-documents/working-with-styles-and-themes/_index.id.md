---
title: Bekerja dengan Gaya dan Tema di C#
second_title: Aspose.Words untuk .NET
articleTitle: Bekerja dengan Gaya dan Tema
linktitle: Bekerja dengan Gaya dan Tema
description: "Fitur pemformatan Microsoft Word tingkat lanjut, bekerja dengan gaya dan tema menggunakan C#."
type: docs
weight: 110
url: /id/net/working-with-styles-and-themes/
timestamp: 2024-10-24-11-44-28
---

Kelas [StyleCollection](https://reference.aspose.com/words/net/aspose.words/stylecollection/) digunakan untuk mengelola bawaan dan menerapkan pengaturan yang ditentukan pengguna ke gaya.

## Mengakses Gaya

Anda bisa mendapatkan kumpulan gaya yang ditentukan dalam dokumen menggunakan properti [Document.Styles](https://reference.aspose.com/words/net/aspose.words/documentbase/styles/). Koleksi ini menampung gaya bawaan dan gaya yang ditentukan pengguna dalam sebuah dokumen. Gaya tertentu dapat diperoleh berdasarkan nama/aliasnya, pengidentifikasi gaya, atau indeksnya. Contoh kode berikut menunjukkan cara mendapatkan akses ke kumpulan gaya yang ditentukan dalam dokumen.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-AccessStyles-AccessStyles.cs" >}}

## Cara Mengekstrak Konten Berdasarkan Gaya

Pada tingkat yang sederhana, mengambil konten berdasarkan gaya dari dokumen Word dapat berguna untuk mengidentifikasi, membuat daftar, dan menghitung paragraf serta rangkaian teks yang diformat dengan gaya tertentu. Misalnya, Anda mungkin perlu mengidentifikasi jenis konten tertentu dalam dokumen, seperti contoh, judul, referensi, kata kunci, nama gambar, dan studi kasus.

Untuk mengambil beberapa langkah lebih jauh, ini juga dapat digunakan untuk memanfaatkan struktur dokumen, yang ditentukan oleh gaya yang digunakannya, untuk mengubah tujuan dokumen untuk keluaran lain, seperti HTML. Ini sebenarnya adalah bagaimana dokumentasi Aspose dibuat, dengan menguji Aspose.Words. Alat yang dibuat menggunakan Aspose.Words mengambil dokumen sumber Word dan membaginya menjadi topik pada tingkat judul tertentu. File XML dibuat menggunakan Aspose.Words yang digunakan untuk membangun pohon navigasi yang dapat Anda lihat di sebelah kiri. Dan kemudian Aspose.Words mengubah setiap topik menjadi HTML.

Solusi untuk mengambil teks yang diformat dengan gaya tertentu dalam dokumen Word biasanya ekonomis dan mudah menggunakan Aspose.Words.

### Solusinya

Untuk mengilustrasikan betapa mudahnya Aspose.Words menangani pengambilan konten berdasarkan gaya, mari kita lihat sebuah contoh. Dalam contoh ini, kita akan mengambil teks yang diformat dengan gaya paragraf dan gaya karakter tertentu dari contoh dokumen Word. Pada tingkat tinggi, ini akan melibatkan:# Membuka dokumen Word menggunakan kelas [Document](https://reference.aspose.com/words/net/aspose.words/document/).# Mendapatkan koleksi semua paragraf dan semua proses dalam dokumen.# Memilih hanya paragraf dan proses yang diperlukan. Secara khusus, kami akan mengambil teks yang diformat dengan gaya paragraf 'Judul 1' dan gaya karakter 'Penekanan Intens' dari contoh dokumen Word ini.

![working-with-styles-and-themes-aspose-words-net](/words/net/working-with-styles-and-themes/working-with-styles-and-themes-1.png)


Dalam dokumen contoh ini, teks yang diformat dengan gaya paragraf 'Judul 1' adalah 'Sisipkan Tab', 'Gaya Cepat', dan 'Tema', dan teks yang diformat dengan gaya karakter 'Penekanan intens' adalah beberapa contoh warna biru, teks yang dicetak miring dan tebal seperti 'galeri' dan 'tampilan keseluruhan'.

### Kode

Implementasi kueri berbasis gaya cukup sederhana dalam model objek dokumen Aspose.Words, karena hanya menggunakan alat yang sudah ada. Dua metode kelas diimplementasikan untuk solusi ini: **ParagraphsByStyleName** – Metode ini mengambil array paragraf tersebut di dokumen yang memiliki nama gaya tertentu. **RunsByStyleName** – Metode ini mengambil larik yang dijalankan dalam dokumen yang memiliki nama gaya tertentu. Kedua metode ini sangat mirip, satu-satunya perbedaan adalah tipe node dan representasi gaya informasi dalam paragraf dan jalankan node. Berikut adalah implementasi ParagraphsByStyleName: Contoh di bawah ini temukan semua paragraf yang diformat dengan gaya yang ditentukan.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ExtractContentBasedOnStyles-ParagraphsByStyleName.cs" >}}

{{% alert color="primary" %}}

Implementasi ini juga menggunakan metode `Document.GetChildNodes` dari kelas `Document`, yang mengembalikan kumpulan semua node dengan tipe tertentu, yang dalam hal ini di semua paragraf.

Perhatikan bahwa parameter kedua metode **Document.GetChildNodes** diatur ke true. Hal ini memaksa metode **Document.GetChildNodes** untuk memilih dari semua node anak secara rekursif, daripada memilih anak terdekat saja.

{{% /alert %}}

Perlu diperhatikan juga bahwa kumpulan paragraf tidak menimbulkan overhead langsung karena paragraf dimuat ke dalam koleksi ini hanya saat Anda mengakses item di dalamnya. Kemudian, yang perlu Anda lakukan hanyalah menelusuri koleksi tersebut, menggunakan operator foreach standar dan menambahkan paragraf yang memiliki gaya tertentu ke array paragrafsWithStyle. Nama gaya `Paragraph` dapat ditemukan di properti [Style.Name](https://reference.aspose.com/words/net/aspose.words/style/name/) objek [Paragraph.ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraph/paragraphformat/). Implementasi RunsByStyleName hampir sama, meskipun kami jelas menggunakan [NodeType.Run](https://reference.aspose.com/words/net/aspose.words/nodetype/) untuk mengambil node yang dijalankan. Properti [Font.Style](https://reference.aspose.com/words/net/aspose.words/font/style/) dari objek [Run](https://reference.aspose.com/words/net/aspose.words/run/) digunakan untuk mengakses informasi gaya di node **Run**. Contoh di bawah ini temukan semua proses yang diformat dengan gaya yang ditentukan.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ExtractContentBasedOnStyles-RunsByStyleName.cs" >}}


Ketika kedua kueri diimplementasikan, yang perlu Anda lakukan hanyalah meneruskan objek dokumen dan menentukan nama gaya konten yang ingin Anda ambil: Contoh di bawah ini menjalankan kueri dan menampilkan hasilnya. Anda dapat mengunduh file template contoh ini dari [Di Sini](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Styles.docx).

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ExtractContentBasedOnStyles-ExtractContentBasedOnStyles.cs" >}}

### Hasil akhir

Ketika semuanya selesai, menjalankan sampel akan menampilkan output berikut:

![styles-and-themes-aspose-words-net](/words/net/working-with-styles-and-themes/working-with-styles-and-themes-2.png)


Seperti yang Anda lihat, ini adalah contoh yang sangat sederhana, memperlihatkan jumlah dan teks paragraf yang dikumpulkan dan dijalankan dalam contoh dokumen Word.

## Salin Semua Gaya dari Templat

Ada kalanya Anda ingin menyalin semua gaya dari satu dokumen ke dokumen lain. Anda dapat menggunakan metode `Document.CopyStylesFromTemplate` untuk menyalin gaya dari templat yang ditentukan ke dokumen. Saat gaya disalin dari templat ke dokumen, gaya dengan nama serupa dalam dokumen akan didefinisikan ulang agar sesuai dengan deskripsi gaya dalam templat. Gaya unik dari templat disalin ke dokumen. Gaya unik dalam dokumen tetap utuh. Contoh Below code menunjukkan cara menyalin gaya dari satu dokumen ke dokumen lain.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-CopyStyles-CopyStylesFromDocument.cs" >}}

## Cara Memanipulasi Properti Tema

Kami telah menambahkan API dasar di Aspose.Words untuk mengakses properti tema dokumen. Untuk saat ini, API ini mencakup objek publik berikut:

- Tema
- Font Tema
- TemaWarna

Inilah cara Anda mendapatkan properti tema:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Theme-ManipulateThemeProperties-GetThemeProperties.cs" >}}

Dan inilah cara Anda mengatur properti tema:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Theme-ManipulateThemeProperties-SetThemeProperties.cs" >}}
