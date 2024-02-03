---
title: Bekerja dengan Gaya dan Tema
second_title: Aspose.Words untuk Python via .NET
articleTitle: Bekerja dengan Gaya dan Tema
linktitle: Bekerja dengan Gaya dan Tema
description: "Akses dan kelola gaya dan tema dalam dokumen menggunakan Python."
type: docs
weight: 110
url: /id/python-net/working-with-styles-and-themes/
---

Kelas [StyleCollection](https://reference.aspose.com/words/python-net/aspose.words/stylecollection/) digunakan untuk mengelola bawaan dan menerapkan pengaturan yang ditentukan pengguna ke gaya.

## Mengakses Gaya

Anda bisa mendapatkan kumpulan gaya yang ditentukan dalam dokumen menggunakan properti [Document.styles](https://reference.aspose.com/words/python-net/aspose.words/documentbase/styles/). Koleksi ini menampung gaya bawaan dan gaya yang ditentukan pengguna dalam sebuah dokumen. Gaya tertentu dapat diperoleh berdasarkan nama/aliasnya, pengidentifikasi gaya, atau indeksnya. Contoh kode berikut menunjukkan cara mendapatkan akses ke kumpulan gaya yang ditentukan dalam dokumen.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-AccessStyles.py" >}}

## Cara Mengekstrak Konten Berdasarkan Gaya

Pada tingkat yang sederhana, mengambil konten berdasarkan gaya dari dokumen Word dapat berguna untuk mengidentifikasi, membuat daftar, dan menghitung paragraf serta rangkaian teks yang diformat dengan gaya tertentu. Misalnya, Anda mungkin perlu mengidentifikasi jenis konten tertentu dalam dokumen, seperti contoh, judul, referensi, kata kunci, nama gambar, dan studi kasus.

Untuk mengambil beberapa langkah lebih jauh, ini juga dapat digunakan untuk memanfaatkan struktur dokumen, yang ditentukan oleh gaya yang digunakannya, untuk mengubah tujuan dokumen untuk keluaran lain, seperti HTML. Ini sebenarnya adalah bagaimana dokumentasi Aspose dibuat, dengan menguji Aspose.Words. Alat yang dibuat menggunakan Aspose.Words mengambil dokumen sumber Word dan membaginya menjadi topik pada tingkat judul tertentu. File XML dibuat menggunakan Aspose.Words yang digunakan untuk membangun pohon navigasi yang dapat Anda lihat di sebelah kiri. Dan kemudian Aspose.Words mengubah setiap topik menjadi HTML.

Solusi untuk mengambil teks yang diformat dengan gaya tertentu dalam dokumen Word biasanya ekonomis dan mudah menggunakan Aspose.Words.

### Solusinya

Untuk mengilustrasikan betapa mudahnya Aspose.Words menangani pengambilan konten berdasarkan gaya, mari kita lihat sebuah contoh. Dalam contoh ini, kita akan mengambil teks yang diformat dengan gaya paragraf tertentu dan gaya karakter dari contoh dokumen Word. Pada tingkat tinggi, hal ini akan melibatkan:
- Membuka dokumen Word menggunakan kelas [Document](https://reference.aspose.com/words/python-net/aspose.words/document/).
- Mendapatkan koleksi semua paragraf dan semua proses dalam dokumen.
- Memilih hanya paragraf yang diperlukan dan berjalan. Secara khusus, kami akan mengambil teks yang diformat dengan gaya paragraf 'Judul 1' dan gaya karakter 'Penekanan Intens' dari contoh dokumen Word ini.

![working-with-styles-and-themes-aspose-words-net](/words/python-net/working-with-styles-and-themes/working-with-styles-and-themes-1.png)


Dalam dokumen contoh ini, teks yang diformat dengan gaya paragraf 'Judul 1' adalah 'Sisipkan Tab', 'Gaya Cepat', dan 'Tema', dan teks yang diformat dengan gaya karakter 'Penekanan intens' adalah beberapa contoh warna biru, teks yang dicetak miring dan tebal seperti 'galeri' dan 'tampilan keseluruhan'.

### Kode

Implementasi query berbasis gaya cukup sederhana pada model objek dokumen Aspose.Words, karena hanya menggunakan alat yang sudah ada. Dua metode kelas diimplementasikan untuk solusi ini:
- **paragraf_menurut_nama_gaya** – Metode ini mengambil larik paragraf dalam dokumen yang memiliki nama gaya tertentu.
- **berjalan_oleh_gaya_nama** – Metode ini mengambil larik yang dijalankan dalam dokumen yang memiliki nama gaya tertentu. Kedua metode ini sangat mirip, satu-satunya perbedaan adalah tipe node dan representasi informasi gaya dalam paragraf dan node yang dijalankan. Berikut adalah implementasi dari `paragraphs_by_style_name`: Contoh di bawah ini temukan semua paragraf yang diformat dengan gaya yang ditentukan.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-ParagraphsByStyleName.py" >}}

{{% alert color="primary" %}}

Implementasi ini juga menggunakan metode [Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) dari kelas [Document](https://reference.aspose.com/words/python-net/aspose.words/document/), yang mengembalikan kumpulan semua node dengan tipe tertentu, yang dalam hal ini di semua paragraf.

Perhatikan bahwa parameter kedua metode [Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) diatur ke `True`. Hal ini memaksa metode [Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) untuk memilih dari semua node anak secara rekursif, daripada memilih anak terdekat saja.

{{% /alert %}}

Perlu diperhatikan juga bahwa kumpulan paragraf tidak menimbulkan overhead langsung karena paragraf dimuat ke dalam koleksi ini hanya saat Anda mengakses item di dalamnya. Kemudian, yang perlu Anda lakukan hanyalah menelusuri koleksi tersebut, menggunakan operator foreach standar dan menambahkan paragraf yang memiliki gaya tertentu ke arrayparagraphs_with_style. Nama gaya `Paragraph` dapat ditemukan di properti [Style.name](https://reference.aspose.com/words/python-net/aspose.words/style/name/) objek [Paragraph.paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/paragraph/paragraph_format/). Implementasi **berjalan_oleh_nama_gaya** hampir sama, meskipun kami jelas menggunakan [NodeType.RUN](https://reference.aspose.com/words/python-net/aspose.words/nodetype/#run) untuk mengambil node yang dijalankan. Properti [Font.style](https://reference.aspose.com/words/python-net/aspose.words/font/style/) objek [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) digunakan untuk mengakses informasi gaya di node [Run](https://reference.aspose.com/words/python-net/aspose.words/run/). Contoh di bawah ini temukan semua proses yang diformat dengan gaya yang ditentukan.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-RunsByStyleName.py" >}}


Ketika kedua kueri diimplementasikan, yang perlu Anda lakukan hanyalah meneruskan objek dokumen dan menentukan nama gaya konten yang ingin Anda ambil: Contoh di bawah ini menjalankan kueri dan menampilkan hasilnya. Anda dapat mengunduh file template contoh ini dari [Di Sini](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Styles.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-ExtractContentBasedOnStyles.py" >}}

### Hasil akhir

Ketika semuanya selesai, menjalankan sampel akan menampilkan output berikut:

![styles-and-themes-aspose-words-net](/words/python-net/working-with-styles-and-themes/working-with-styles-and-themes-2.png)


Seperti yang Anda lihat, ini adalah contoh yang sangat sederhana, memperlihatkan jumlah dan teks paragraf yang dikumpulkan dan dijalankan dalam contoh dokumen Word.

## Salin Semua Gaya dari Templat

Ada kalanya Anda ingin menyalin semua gaya dari satu dokumen ke dokumen lain. Anda dapat menggunakan metode [Document.copy_styles_from_template](https://reference.aspose.com/words/python-net/aspose.words/document/copy_styles_from_template/) untuk menyalin gaya dari templat yang ditentukan ke dokumen. Saat gaya disalin dari templat ke dokumen, gaya dengan nama serupa dalam dokumen akan didefinisikan ulang agar sesuai dengan deskripsi gaya dalam templat. Gaya unik dari templat disalin ke dokumen. Gaya unik dalam dokumen tetap utuh. Contoh Below code menunjukkan cara menyalin gaya dari satu dokumen ke dokumen lain.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-CopyStyles.py" >}}

## Cara Memanipulasi Properti Tema

Kami telah menambahkan API dasar di Aspose.Words untuk mengakses properti tema dokumen. Untuk saat ini, API ini mencakup objek publik berikut:

- [Theme](https://reference.aspose.com/words/python-net/aspose.words.themes/theme/)
- [ThemeFonts](https://reference.aspose.com/words/python-net/aspose.words.themes/themefonts/)
- [ThemeColors](https://reference.aspose.com/words/python-net/aspose.words.themes/themecolors/)

Inilah cara Anda mendapatkan properti tema:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-GetThemeProperties.py" >}}

Dan inilah cara Anda mengatur properti tema:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-SetThemeProperties.py" >}}
