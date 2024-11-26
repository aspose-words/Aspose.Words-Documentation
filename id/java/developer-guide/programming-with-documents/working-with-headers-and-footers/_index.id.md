---
title: Bekerja dengan Header dan Footer di Java
second_title: Aspose.Words Sitemap Java
articleTitle: Bekerja dengan Header dan Footer
linktitle: Bekerja dengan Header dan Footer
description: "Bagaimana cara memanipulasi header dan footer menggunakan JavaSitemap"
type: docs
weight: 150
url: /id/java/working-with-headers-and-footers/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words memungkinkan pengguna untuk bekerja dengan header dan footer dalam dokumen. Judul adalah teks yang ditempatkan di bagian atas halaman, dan footer adalah teks di bagian bawah halaman. Biasanya, daerah ini digunakan untuk memasukkan informasi yang harus diulang pada semua atau beberapa halaman dokumen, seperti nomor halaman, tanggal pembuatan, informasi perusahaan, dan sebagainya.

## Buat Header atau Footer menggunakan DocumentBuilder

Jika Anda ingin menambahkan header dokumen atau program footer secara tematik, cara termudah adalah menggunakan [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) kelas untuk melakukannya.

Contoh kode berikut menunjukkan cara menambahkan header dan footer untuk halaman dokumen:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "create-header-footer.java" >}}

## Tentukan Header atau Pilihan Footer

Ketika Anda menambahkan header atau footer ke dokumen, Anda dapat mengatur beberapa sifat canggih. Aspose.Words menyediakan pengguna dengan [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) Login [HeaderFooterCollection](https://reference.aspose.com/words/java/com.aspose.words/headerfootercollection/) kelas, serta [HeaderFooterType](https://reference.aspose.com/words/java/com.aspose.words/headerfootertype/) enumerasi yang memberi Anda lebih banyak kontrol atas proses penyesuaian header dan footer.

### Tentukan Header atau Jenis Footer

Anda dapat menentukan tiga jenis header yang berbeda dan tiga jenis footer yang berbeda untuk satu dokumen:

Sitemap Header dan / atau footer untuk halaman pertama
2. di Header dan / atau footer untuk bahkan halaman
3. Juni Header dan / atau footer untuk halaman yang aneh

Contoh kode berikut menunjukkan cara menambahkan header untuk halaman dokumen aneh:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "header-footer-type.java" >}}

### Tentukan Apakah untuk Menampilkan Header atau Footer yang Berbeda untuk Halaman Pertama

Seperti yang dikatakan di atas, Anda juga dapat mengatur header atau footer yang berbeda untuk halaman pertama. Untuk melakukan ini, Anda perlu mengatur Meme it [DifferentFirstPageHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getDifferentFirstPageHeaderFooter) Login `true` dan kemudian menentukan **HeaderFirst** Sitemap **FooterFirst** Sitemap

Contoh kode berikut menunjukkan cara mengatur header untuk halaman pertama hanya:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "different-first-page.java" >}}

### Tentukan Apakah untuk Menampilkan Header atau Footer yang Berbeda untuk Odd atau Bahkan Halaman

 Selanjutnya, Anda ingin mengatur header atau footer yang berbeda untuk odd dan bahkan halaman dalam dokumen. Untuk melakukan ini, Anda perlu mengatur Meme it [OddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOddAndEvenPagesHeaderFooter) Login `true` dan kemudian menentukan nilai **HeaderPrimary** Login **HeaderEven**, Sitemap **FooterPrimary** Login **FooterEven**Sitemap

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "odd-even-pages.java" >}}

### Masukkan Posisi Benar Gambar ke Header

Untuk menempatkan gambar di header atau footer, gunakan **HeaderPrimary** jenis header atau **FooterPrimary** Jenis footer dan [InsertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte) Login

Contoh kode berikut menunjukkan cara menambahkan gambar ke header:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "insert-image.java" >}}

### Mengatur Font dan Properti Paragraf untuk Teks Header atau Footer

Sitemap Aspose.Words Anda dapat mengatur sifat font dan paragraf, menggunakan **HeaderPrimary** jenis header atau **FooterPrimary** jenis footer, serta metode dan sifat untuk bekerja dengan font dan paragraf yang Anda gunakan untuk badan dokumen.

Contoh kode berikut menunjukkan cara mengatur teks di header ke Arial, berani, ukuran 14, dan keselarasan pusat:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "font-props.java" >}}

### Masukkan Nomor Halaman ke Header atau Footer

Jika perlu, Anda dapat menambahkan nomor halaman ke header atau footer. Untuk melakukan ini, gunakan **HeaderPrimary** jenis header atau **FooterPrimary** Jenis footer dan [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) metode untuk menambahkan bidang yang diperlukan.

Contoh kode berikut menunjukkan cara menambahkan nomor halaman ke footer di sebelah kanan:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "page-numbers.java" >}}

### Gunakan Header atau Footers Didefinisikan di Bagian Sebelumnya

Jika Anda perlu menyalin header atau footer dari bagian sebelumnya, Anda dapat melakukannya juga.

Contoh kode berikut menunjukkan cara menyalin header atau footer dari bagian sebelumnya:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "copy-headers-footers-from-previous-section.java" >}}

### Pastikan Header atau Footer muncul ketika Menggunakan Orientasi Halaman yang Berbeda dan Ukuran Halaman

Aspose.Words memungkinkan Anda untuk memberikan tampilan header atau footer ketika menggunakan orientasi dan ukuran halaman yang berbeda.

Contoh berikut menunjukkan cara melakukan ini:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "link-to-previous-header-footer.java" >}}

## Cara Hapus Hanya Header atau Hanya Footer

Setiap bagian dalam dokumen dapat memiliki hingga tiga header dan hingga tiga footer (untuk halaman pertama, bahkan, dan halaman aneh). Jika Anda ingin menghapus semua header atau semua footer dalam dokumen, Anda perlu loop melalui semua bagian dan menghapus setiap simpul header yang sesuai atau node footer.

Contoh kode berikut menunjukkan cara menghapus semua footer dari semua bagian tetapi meninggalkan header utuh. Anda dapat menghapus hanya header dengan cara yang sama:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "remove-footers.java" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file sampel dari contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Footer.docx)Sitemap

{{% /alert %}}
