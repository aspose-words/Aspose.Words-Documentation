---
title: Bekerja dengan Gambar Java
second_title: Aspose.Words Sitemap Java
articleTitle: Bekerja dengan Gambar
linktitle: Bekerja dengan Gambar
type: docs
description: "Bentuk gambar dalam detail dan fitur canggih yang disediakan oleh Aspose.Words Sitemap JavaSitemap"
weight: 300
url: /id/java/working-with-images/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words memungkinkan pengguna untuk bekerja dengan gambar dengan cara yang sangat fleksibel. Dalam artikel ini, Anda dapat menjelajahi hanya beberapa kemungkinan bekerja dengan gambar.

## Cara Mengekstrak Gambar dari Dokumen {#how-to-extract-images-from-a-document}

Semua gambar disimpan di dalam **Shape** node dalam Dokumen. Untuk mengekstrak semua gambar atau gambar memiliki jenis tertentu dari dokumen, ikuti langkah-langkah ini:

- Gunakan [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/shape/#getChildNodes) metode untuk memilih semua Bentuk node.
- Terlebih melalui koleksi node yang dihasilkan.
- Sitemap [hasImage](https://reference.aspose.com/words/java/com.aspose.words/shape/#hasImage) harta benda.
- Ekstrak data gambar menggunakan [ImageData](https://reference.aspose.com/words/java/com.aspose.words/shape/#getImageData) Login
- Simpan data gambar ke file.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-ExtractImagesToFiles-ExtractImagesToFiles.java" >}}

## Cara Masukkan Barcode pada setiap Halaman Dokumen {#how-to-insert-barcode-on-each-documen-page}

Contoh ini memungkinkan Anda menambahkan barcode yang sama atau berbeda pada semua atau halaman tertentu dari dokumen Word. Tidak ada cara langsung untuk menambahkan barcode pada semua halaman dokumen tetapi Anda dapat menggunakan [moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int), [moveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int) Login [insertImage](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder#insertImage(byte[])) metode untuk pindah ke bagian atau header / footers dan masukkan gambar barcode saat Anda dapat melihat dalam kode berikut

Contoh kode berikut menunjukkan cara memasukkan gambar barcode pada setiap halaman dokumen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-InsertBarcodeImage-InsertBarcodeImage.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-InsertBarcodeImage-InsertBarcodeIntoFooter.java" >}}

## Konfigurasi Kunci Rasio Gambar {#lock-aspect-ratio-of-image}

Rasio aspek dari bentuk geometris adalah rasio ukurannya dalam dimensi yang berbeda. Anda dapat mengunci rasio aspek dari gambar menggunakan [AspectRatioLocked](https://reference.aspose.com/words/java/com.aspose.words/shape/#getAspectRatioLocked)Sitemap Nilai default dari rasio aspek bentuk tergantung pada [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/)Sitemap Sitemap true Sitemap `ShapeType.Image` Login false untuk jenis bentuk lainnya.

Contoh kode berikut menunjukkan cara bekerja dengan rasio aspek:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetImageAspectRatioLocked-DocumentBuilderSetImageAspectRatioLocked.java" >}}

## Cara Mendapatkan Luka Sebenarnya Bentuk di Poin {#how-to-get-actual-bounds-of-shape-in-points}

Jika Anda ingin kotak terikat sebenarnya dari bentuk seperti yang diberikan di halaman, Anda dapat mencapai ini dengan menggunakan [BoundsInPoints](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getBoundsInPoints) Login

Contoh kode berikut menunjukkan cara menggunakan properti ini:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.java" >}}

## Gambar Tanaman

Perendaman gambar biasanya mengacu pada penghapusan bagian luar yang tidak diinginkan dari gambar untuk membantu meningkatkan framing. Ini juga digunakan untuk menghilangkan beberapa bagian dari gambar untuk meningkatkan fokus pada area tertentu.

Contoh kode berikut menunjukkan cara mencapai ini menggunakan Aspose.Words APISitemap

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-CropImages-CropImageCall.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-CropImages-CropImage.java" >}}

## Gambar Tabungan sebagai WMF

Aspose.Words menyediakan fungsi untuk menyimpan semua gambar yang tersedia dalam dokumen untuk [Login](https://docs.fileformat.com/image/wmf/)format sementara mengkonversi DOCX ke RTF.

Contoh kode berikut menunjukkan cara menyimpan gambar sebagai WMF dengan RTF menyimpan opsi:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.java" >}}
