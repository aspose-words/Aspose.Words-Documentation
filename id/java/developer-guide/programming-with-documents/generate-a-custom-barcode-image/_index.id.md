---
title: Buat Barcode di Java
second_title: Aspose.Words untuk Java
articleTitle: Membuat Kode Barcode Khusus
linktitle: Membuat Kode Barcode Khusus
description: "Contoh bentuk kode batang yang dihasilkan menggunakan Java."
type: docs
weight: 350
url: /id/java/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
timestamp: 2024-09-05-11-07-10
---

Sebuah barcode adalah representasi visual data dalam bentuk garis sejajar atau pola. Barcode digunakan luas di berbagai industri seperti ritel, logistik, kesehatan, perbankan dan banyak lagi.

Microsoft Word memungkinkan pengguna untuk memasukkan barcode langsung ke dalam dokumen menggunakan bidang. Pengguna dapat memasukkan jenis barcode tertentu, seperti kode QR atau barcode linear, menggunakan bidang [BARCODE](https://learn.microsoft.com/en-us/openspecs/office_standards/ms-oi29500/cbc893c0-9683-416d-84c6-407a92451c19).

Dalam artikel ini, kita akan melihat bagaimana bidang BARCODE diimplementasikan dalam Aspose.Words dan bagaimana Aspose.Words memungkinkan pengguna untuk bekerja dengan dokumen Word yang telah diberi kode batang sebelumnya.

## Tipe Barcode yang didukung oleh Aspose.Words

Aspose.Words mendukung berbagai jenis kode batang. Jenis kode batang diteruskan sebagai nilai string pada properti [BarcodeType](https://reference.aspose.com/words/java/com.aspose.words/barcodeparameters/#getBarcodeType).

{{% alert color="primary" %}}

Karena bekerja dengan barcode dalam fungsionalitas Aspose.Words terbatas, pengguna dapat menggunakan perpustakaan apa pun, termasuk Aspose. Barcode, atau menulis render sendiri untuk bekerja dengan barcode. Anda dapat mempelajari lebih lanjut tentang jenis kode batang [supported by Aspose.BarCode](https://docs.aspose.com/barcode/java/barcode-types/).

{{% /alert %}}

Saat menyimpan ke format Word yang mendukung barcode, Anda dapat menggunakan jenis barcode apa pun yang adalah [supported by Microsoft Word](https://support.microsoft.com/en-us/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3). Jika jenis barcode yang tidak benar dilewatkan, Word akan menampilkan pesan kesalahan.

Saat menyimpan dalam format lain seperti PDF, Aspose.Words mendelegasikan rendering barcode ke kode pengguna, sehingga pengguna terbatas pada tipe barcode dari implementasi atau perpustakaan yang digunakan.

## Sisipkan barcode ke dalam dokumen atau muat dokumen dengan barcode yang ditambahkan

Aspose.Words menyediakan kemampuan untuk:

1. Secara programatik masukkan kode bar ke dalam dokumen menggunakan [DisplayBarcode](https://support.microsoft.com/en-au/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3) dan [MergeBarcode](https://support.microsoft.com/en-au/office/field-codes-mergebarcode-812fc43f-cb53-4782-8f9f-290ed08d34f3) kode bidang
2. Atau muatkan sebuah dokumen word dengan barcode yang sudah dimasukkan untuk pekerjaan lebih lanjut

Aspose.Words memiliki antarmuka untuk membuat barcode kustom yang membuatnya mudah untuk menggunakan [Aspose.Words](https://products.aspose.com/words/java/) dan [Aspose.BarCode](https://products.aspose.com/barcode/java/) bersama-sama untuk menampilkan gambar barcode di dokumen output. Misalnya, Anda dapat membuat dokumen DOC, OOXML atau RTF dan menambahkan bidang DISPLAYBARCODE ke dalamnya menggunakan Aspose.Words. Atau Anda dapat memuat dokumen DOC, OOXML atau RTF dengan bidang DISPLAYBARCODE sudah ada di dalamnya dan menyediakan implementasi Anda sendiri dari generator barcode kustom.

Sebuah bidang khas DISPLAYBARCODE memiliki sintaks berikut:

`{ DISPLAYBARCODE "SomeData" QR \h 720 }`

Di bawah ini adalah contoh kode generator menggunakan Aspose.Words dan Aspose. Barcode API. Contoh ini menunjukkan bagaimana untuk memasukkan gambar kode batang di posisi DISPLAYBARCODE bidang dalam dokumen Word:

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "barcode-generator.java" >}}

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "custom-barcode-generator.java" >}}

Anda juga dapat menyimpan dokumen dengan barcode yang dimuat atau yang baru dimasukkan dalam format halaman tetap seperti PDF, XPS dll. Contoh kode di bawah ini menunjukkan cara untuk menyimpan dokumen Word dalam format PDF:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "docx-to-pdf.java" >}}

{{% alert color="primary" %}}

Untuk informasi lebih lanjut tentang konversi dokumen dari satu format ke format lainnya, lihat bagian dokumentasi [Convert a Document](/words/java/convert-a-document/).

{{% /alert %}}

{{% alert color="primary" %}}

Anda juga dapat menggunakan antarmuka [IBarcodeGenerator](https://reference.aspose.com/words/java/com.aspose.words/ibarcodegenerator/) untuk mengonversi barcode yang tertanam dalam dokumen Word ke dalam gambar. Gambar hasilnya dapat diekstrak dari dokumen - lihat artikel "Bekerja dengan Gambar" untuk detailnya.

{{% /alert %}}

## Spesifikasikan Opsi Barcode

Saat bekerja dengan bar kode, Anda dapat mengatur beberapa properti tambahan. Aspose.Words menyediakan kelas [BarcodeParameters](https://reference.aspose.com/words/java/com.aspose.words/barcodeparameters/) – kelas untuk parameter bar kode yang dilewatkan ke BarcodeGenerator.

Aspose.Words mendukung resolusi tertanam 96 ppi untuk gambar yang dihasilkan dengan [IBarcodeGenerator](https://reference.aspose.com/words/java/com.aspose.words/ibarcodegenerator/), yang membatasi ukuran minimum dari gambar barcode. Untuk mengatasi hal ini, para pengembang dapat memasukkan secara manual gambar barcode dengan resolusi target ke dalam dokumen Word dan menyimpannya dalam format yang diperlukan. Untuk rincian lebih lanjut dan contoh tentang bekerja dengan barcode, lihat artikel [Read Barcodes from Word Documents](https://docs.aspose.com/barcode/java/read-barcode-from-word-document/).
