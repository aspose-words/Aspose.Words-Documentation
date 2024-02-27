---
title: Bekerja dengan Header dan Footer di C#
second_title: Aspose.Words untuk .NET
articleTitle: Bekerja dengan Header dan Footer
linktitle: Bekerja dengan Header dan Footer
description: "Cara memanipulasi header dan footer menggunakan C#. Buat header dan footer C#. Hapus header atau footer C#."
type: docs
weight: 150
url: /id/net/working-with-headers-and-footers/
---

Aspose.Words memungkinkan pengguna untuk bekerja dengan header dan footer dalam sebuah dokumen. Header adalah teks yang ditempatkan di bagian atas halaman, dan footer adalah teks di bagian bawah halaman. Biasanya, area ini digunakan untuk menyisipkan informasi yang harus diulang pada seluruh atau beberapa halaman dokumen, seperti nomor halaman, tanggal pembuatan, informasi perusahaan, dan sebagainya.

## Buat Header atau Footer menggunakan DocumentBuilder

Jika Anda ingin menambahkan header atau footer dokumen secara terprogram, cara termudah adalah menggunakan kelas [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) untuk melakukannya.

Contoh kode berikut menunjukkan cara menambahkan header dan footer untuk halaman dokumen:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "create-header-footer.cs" >}}

## Tentukan Opsi Header atau Footer

Saat Anda menambahkan header atau footer ke dokumen, Anda dapat mengatur beberapa properti tingkat lanjut. Aspose.Words memberi pengguna kelas [HeaderFooter](https://reference.aspose.com/words/net/aspose.words/headerfooter/) dan [HeaderFooterCollection](https://reference.aspose.com/words/net/aspose.words/headerfootercollection/), serta enumerasi [HeaderFooterType](https://reference.aspose.com/words/net/aspose.words/headerfootertype/) yang memberi Anda kontrol lebih besar atas proses penyesuaian header dan footer.

### Tentukan Jenis Header atau Footer

Anda dapat menentukan tiga tipe header berbeda dan tiga tipe footer berbeda untuk satu dokumen:
1. Header dan/atau footer untuk halaman pertama
2. Header dan/atau footer untuk halaman genap
3. Header dan/atau footer untuk halaman ganjil

Contoh kode berikut menunjukkan cara menambahkan header untuk halaman dokumen ganjil:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "header-footer-type.cs" >}}

### Tentukan Apakah Akan Menampilkan Header atau Footer Berbeda untuk Halaman Pertama

Seperti disebutkan di atas, Anda juga dapat mengatur header atau footer berbeda untuk halaman pertama. Untuk melakukan ini, Anda perlu menyetel tanda [DifferentFirstPageHeaderFooter](https://reference.aspose.com/words/net/aspose.words/pagesetup/differentfirstpageheaderfooter/) ke `true` dan kemudian menentukan nilai **HeaderFirst** atau **FooterFirst**.

Contoh kode berikut menunjukkan cara menyetel header untuk halaman pertama saja:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "different-first-page.cs" >}}

### Tentukan Apakah Akan Menampilkan Header atau Footer Berbeda untuk Halaman Ganjil atau Genap

 Selanjutnya, Anda ingin mengatur header atau footer yang berbeda untuk halaman ganjil dan genap dalam sebuah dokumen. Untuk melakukan ini, Anda perlu menyetel tanda [OddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/net/aspose.words/pagesetup/oddandevenpagesheaderfooter/) ke `true` dan kemudian menentukan nilai **HeaderPrimary** dan **HeaderEven**, atau **FooterPrimary** dan **FooterEven**.

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "odd-even-pages.cs" >}}

### Sisipkan Gambar yang Diposisikan Sepenuhnya ke dalam Header

Untuk menempatkan gambar di header atau footer, gunakan tipe header **HeaderPrimary** atau tipe footer **FooterPrimary** dan metode [InsertImage](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertimage/).

Contoh kode berikut menunjukkan cara menambahkan gambar ke header:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "insert-image.cs" >}}

### Atur Properti Font dan Paragraf untuk Teks Header atau Footer

Dengan Aspose.Words Anda dapat mengatur properti font dan paragraf, menggunakan tipe header **HeaderPrimary** atau tipe footer **FooterPrimary**, serta metode dan properti untuk bekerja dengan font dan paragraf yang Anda gunakan untuk badan dokumen.

Contoh kode berikut menunjukkan cara mengatur teks di header menjadi Arial, tebal, ukuran 14, dan perataan tengah:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "font-props.cs" >}}

### Masukkan Nomor Halaman ke Header atau Footer

Jika perlu, Anda dapat menambahkan nomor halaman pada header atau footer. Untuk melakukannya, gunakan tipe header **HeaderPrimary** atau tipe footer **FooterPrimary** dan metode [InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/) untuk menambahkan bidang yang diperlukan.

Contoh kode berikut menunjukkan cara menambahkan nomor halaman ke footer di sebelah kanan:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "page-numbers.cs" >}}

### Gunakan Header atau Footer yang Ditentukan di Bagian Sebelumnya

Jika Anda perlu menyalin header atau footer dari bagian sebelumnya, Anda juga dapat melakukannya.

Contoh kode berikut menunjukkan cara menyalin header atau footer dari bagian sebelumnya:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "copy-headers-footers-from-previous-section.cs" >}}

### Pastikan tampilan Header atau Footer saat Menggunakan Orientasi Halaman dan Ukuran Halaman Berbeda

Aspose.Words memungkinkan Anda memberikan tampilan header atau footer saat menggunakan orientasi dan ukuran halaman berbeda.

Contoh berikut menunjukkan cara melakukannya:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "link-to-previous-header-footer.cs" >}}

## Cara Menghapus Header Saja atau Footer Saja

Setiap bagian dalam dokumen dapat memiliki hingga tiga header dan hingga tiga footer (untuk halaman pertama, genap, dan ganjil). Jika Anda ingin menghapus semua header atau footer dalam dokumen, Anda perlu mengulang semua bagian dan menghapus setiap node header atau node footer yang sesuai.

Contoh kode berikut menunjukkan cara menghapus semua footer dari semua bagian tetapi membiarkan header tetap utuh. Anda hanya dapat menghapus header dengan cara serupa:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "remove-footers.cs" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file contoh contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Header%20and%20footer%20types.docx).

{{% /alert %}}