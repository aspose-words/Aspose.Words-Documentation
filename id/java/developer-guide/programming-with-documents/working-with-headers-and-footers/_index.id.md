---
title: Bekerja dengan Header dan Footer di Java
second_title: Aspose.Words untuk Java
articleTitle: Bekerja dengan Header dan Footer
linktitle: Bekerja dengan Header dan Footer
description: "Cara memanipulasi header dan footer menggunakan Java."
type: docs
weight: 150
url: /id/java/working-with-headers-and-footers/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words memungkinkan pengguna untuk bekerja dengan header dan footer dalam dokumen. Header adalah teks yang ditempatkan di bagian atas halaman, dan footer adalah teks di bagian bawah halaman. Biasanya, area ini digunakan untuk menyisipkan informasi yang harus diulang pada semua atau beberapa halaman dokumen, seperti nomor halaman, tanggal pembuatan, informasi perusahaan, dan sebagainya.

## Buat Header atau Footer menggunakan DocumentBuilder

Jika Anda ingin menambahkan header atau footer dokumen secara terprogram, cara termudah adalah dengan menggunakan kelas [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) untuk melakukannya.

Contoh kode berikut menunjukkan cara menambahkan header dan footer untuk halaman dokumen:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "create-header-footer.java" >}}

## Tentukan Opsi Header atau Footer

Saat Anda menambahkan header atau footer ke dokumen, Anda dapat mengatur beberapa properti lanjutan. Aspose.Words memberi pengguna kelas [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) dan [HeaderFooterCollection](https://reference.aspose.com/words/java/com.aspose.words/headerfootercollection/), serta pencacahan [HeaderFooterType](https://reference.aspose.com/words/java/com.aspose.words/headerfootertype/) yang memberi Anda kontrol lebih besar atas proses penyesuaian header dan footer.

### Tentukan Tipe Header atau Footer

Anda dapat menentukan tiga jenis header yang berbeda dan tiga jenis footer yang berbeda untuk satu dokumen:

1. Header dan / atau footer untuk halaman pertama
2. Header dan / atau footer untuk halaman genap
3. Header dan / atau footer untuk halaman ganjil

Contoh kode berikut menunjukkan cara menambahkan header untuk halaman dokumen ganjil:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "header-footer-type.java" >}}

### Tentukan Apakah akan Menampilkan Header atau Footer yang Berbeda untuk Halaman Pertama

Seperti yang dikatakan di atas, Anda juga dapat mengatur header atau footer yang berbeda untuk halaman pertama. Untuk melakukan ini, Anda perlu menyetel flag [DifferentFirstPageHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getDifferentFirstPageHeaderFooter) ke `true` lalu menentukan nilai **HeaderFirst** atau **FooterFirst**.

Contoh kode berikut menunjukkan cara mengatur header hanya untuk halaman pertama:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "different-first-page.java" >}}

### Tentukan Apakah akan Menampilkan Header atau Footer yang Berbeda untuk Halaman Ganjil atau Genap

 Selanjutnya, Anda ingin mengatur header atau footer yang berbeda untuk halaman ganjil dan genap dalam sebuah dokumen. Untuk melakukannya, Anda perlu menyetel flag [OddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOddAndEvenPagesHeaderFooter) menjadi `true` lalu menentukan nilai **HeaderPrimary** dan **HeaderEven**, atau **FooterPrimary** dan **FooterEven**.

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "odd-even-pages.java" >}}

### Sisipkan Gambar yang Benar-Benar Diposisikan ke dalam Header

Untuk menempatkan gambar di header atau footer, gunakan tipe header **HeaderPrimary** atau tipe footer **FooterPrimary** dan metode [InsertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte).

Contoh kode berikut menunjukkan cara menambahkan gambar ke header:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "insert-image.java" >}}

### Setel Properti Font dan Paragraf untuk Teks Header atau Footer

Dengan Aspose.Words Anda dapat mengatur properti font dan paragraf, menggunakan tipe header **HeaderPrimary** atau tipe footer **FooterPrimary**, serta metode dan properti untuk bekerja dengan font dan paragraf yang Anda gunakan untuk badan dokumen.

Contoh kode berikut menunjukkan cara mengatur teks di header menjadi Arial, tebal, ukuran 14, dan perataan tengah:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "font-props.java" >}}

### Masukkan Nomor Halaman ke dalam Header atau Footer

Jika perlu, Anda dapat menambahkan nomor halaman ke header atau footer. Untuk melakukannya, gunakan tipe header **HeaderPrimary** atau tipe footer **FooterPrimary** dan metode [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) untuk menambahkan bidang yang diperlukan.

Contoh kode berikut menunjukkan cara menambahkan nomor halaman ke footer di sebelah kanan:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "page-numbers.java" >}}

### Gunakan Header atau Footer yang Didefinisikan di Bagian Sebelumnya

Jika Anda perlu menyalin header atau footer dari bagian sebelumnya, Anda juga dapat melakukannya.

Contoh kode berikut menunjukkan cara menyalin header atau footer dari bagian sebelumnya:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "copy-headers-footers-from-previous-section.java" >}}

### Pastikan tampilan Header atau Footer saat Menggunakan Orientasi Halaman dan Ukuran Halaman yang Berbeda

Aspose.Words memungkinkan Anda memberikan tampilan header atau footer saat menggunakan orientasi dan ukuran halaman yang berbeda.

Contoh berikut menunjukkan cara melakukannya:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "link-to-previous-header-footer.java" >}}

## Cara Menghapus Hanya Header atau Hanya Footer

Setiap bagian dalam dokumen dapat memiliki hingga tiga header dan hingga tiga footer (untuk halaman pertama, genap, dan ganjil). Jika Anda ingin menghapus semua header atau semua footer dalam dokumen, Anda perlu mengulang semua bagian dan menghapus setiap node header atau footer yang sesuai.

Contoh kode berikut menunjukkan cara menghapus semua footer dari semua bagian tetapi membiarkan header tetap utuh. Anda hanya dapat menghapus header dengan cara yang sama:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "remove-footers.java" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file contoh contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Footer.docx).

{{% /alert %}}
