---
title: Bekerja dengan Gambar dalam Java
second_title: Aspose.Words untuk Java
articleTitle: Bekerja dengan Gambar
linktitle: Bekerja dengan Gambar
type: docs
description: "Bentuk gambar dalam detail dan fitur lanjutan yang disediakan oleh Aspose.Words untuk Java."
weight: 300
url: /id/java/working-with-images/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words memungkinkan pengguna untuk bekerja dengan gambar dengan cara yang sangat fleksibel. Dalam artikel ini, Anda hanya dapat menjelajahi beberapa kemungkinan bekerja dengan gambar.

## Cara Mengekstrak Gambar dari Dokumen {#how-to-extract-images-from-a-document}

Semua gambar disimpan di dalam simpul **Shape** dalam Dokumen. Untuk mengekstrak semua gambar atau gambar yang memiliki tipe tertentu dari dokumen, ikuti langkah-langkah berikut:

- Gunakan metode [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/shape/#getChildNodes) untuk memilih semua simpul Bentuk.
- Iterate melalui koleksi node yang dihasilkan.
- Periksa properti boolean [hasImage](https://reference.aspose.com/words/java/com.aspose.words/shape/#hasImage).
- Ekstrak data gambar menggunakan properti [ImageData](https://reference.aspose.com/words/java/com.aspose.words/shape/#getImageData).
- Simpan data gambar ke file.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-ExtractImagesToFiles-ExtractImagesToFiles.java" >}}

## Cara Menyisipkan Kode Batang pada setiap Halaman Dokumen {#how-to-insert-barcode-on-each-documen-page}

Contoh ini memungkinkan Anda menambahkan kode batang yang sama atau berbeda pada semua atau halaman tertentu dari dokumen Word. Tidak ada cara langsung untuk menambahkan kode batang di semua halaman dokumen, tetapi Anda dapat menggunakan metode [moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int), [moveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int), dan [insertImage](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder#insertImage(byte[])) untuk berpindah ke bagian atau header/footer mana pun dan menyisipkan gambar kode batang seperti yang Anda lihat di kode berikut.

Contoh kode berikut menunjukkan cara menyisipkan gambar kode batang pada setiap halaman dokumen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-InsertBarcodeImage-InsertBarcodeImage.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-InsertBarcodeImage-InsertBarcodeIntoFooter.java" >}}

## Kunci Rasio Aspek Gambar {#lock-aspect-ratio-of-image}

Rasio aspek suatu bentuk geometris adalah rasio ukurannya dalam dimensi yang berbeda. Anda dapat mengunci rasio aspek gambar menggunakan [AspectRatioLocked](https://reference.aspose.com/words/java/com.aspose.words/shape/#getAspectRatioLocked). Nilai default rasio aspek bentuk bergantung pada [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/). Ini benar untuk `ShapeType.Image` dan false untuk tipe bentuk lainnya.

Contoh kode berikut menunjukkan cara bekerja dengan rasio aspek:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetImageAspectRatioLocked-DocumentBuilderSetImageAspectRatioLocked.java" >}}

## Cara Mendapatkan Batas Bentuk Sebenarnya dalam Poin {#how-to-get-actual-bounds-of-shape-in-points}

Jika Anda menginginkan kotak pembatas sebenarnya dari bentuk seperti yang dirender pada halaman, Anda dapat mencapainya dengan menggunakan properti [BoundsInPoints](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getBoundsInPoints).

Contoh kode berikut menunjukkan cara menggunakan properti ini:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.java" >}}

## Pangkas Gambar

Pemotongan gambar biasanya mengacu pada penghapusan bagian luar gambar yang tidak diinginkan untuk membantu meningkatkan pembingkaian. Ini juga digunakan untuk menghilangkan beberapa bagian gambar untuk meningkatkan fokus pada area tertentu.

Contoh kode berikut menunjukkan cara mencapainya menggunakan Aspose.Words API:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-CropImages-CropImageCall.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-CropImages-CropImage.java" >}}

## Menyimpan Gambar sebagai WMF

Aspose.Words menyediakan fungsionalitas untuk menyimpan semua gambar yang tersedia dalam dokumen ke [WMF](https://docs.fileformat.com/image/wmf/)format saat mengonversi DOCX menjadi RTF.

Contoh kode berikut menunjukkan cara menyimpan gambar sebagai WMF dengan opsi penyimpanan RTF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.java" >}}
