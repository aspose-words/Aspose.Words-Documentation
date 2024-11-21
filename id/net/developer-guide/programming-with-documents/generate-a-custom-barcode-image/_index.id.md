---
title: Cara Membuat Kode Baris
second_title: Aspose.Words untuk .NET
articleTitle: Membuat sebuah Barcode kustom Gambar
linktitle: Membuat sebuah Barcode kustom Gambar
description: "Contoh bentuk kode batang yang dihasilkan menggunakan C#."
type: docs
weight: 350
url: /id/net/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
timestamp: 2024-09-05-11-07-10
---

Kode batang adalah representasi visual dari data dalam bentuk garis sejajar atau pola. Kode batang digunakan luas di berbagai industri seperti ritel, logistik, kesehatan, perbankan dan lainnya.

Microsoft Word memungkinkan pengguna untuk menyematkan kode batang langsung ke dokumen menggunakan bidang. Pengguna dapat memasukkan jenis tertentu dari kode batang seperti kode QR atau kode batang linear menggunakan bidang [BARCODE](https://learn.microsoft.com/en-us/openspecs/office_standards/ms-oi29500/cbc893c0-9683-416d-84c6-407a92451c19).

Dalam artikel ini, kita akan melihat bagaimana bidang BARCODE diimplementasikan dalam Aspose.Words dan bagaimana Aspose.Words memungkinkan pengguna untuk bekerja dengan dokumen Word yang telah diberi kode batang sebelumnya.

## Tipe barcode yang didukung oleh Aspose.Words

Aspose.Words mendukung berbagai jenis barcode. Jenis barcode dilewatkan sebagai nilai string dalam properti [BarcodeType](https://reference.aspose.com/words/net/aspose.words.fields/barcodeparameters/barcodetype/).

{{% alert color="primary" %}}

Karena bekerja dengan barcode dalam fungsionalitas dari Aspose.Words terbatas, pengguna dapat menggunakan perpustakaan apa pun, termasuk Aspose. Barcode, atau menulis sendiri rendering untuk bekerja dengan kode batang. Anda dapat mempelajari lebih lanjut tentang jenis kode batang [supported by Aspose.BarCode](https://docs.aspose.com/barcode/net/barcode-types/).

{{% /alert %}}

Saat menyimpan dalam format Word yang mendukung barcode, anda dapat menggunakan setiap jenis barcode yang adalah [supported by Microsoft Word](https://support.microsoft.com/en-us/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3). Jika salah satu jenis barcode yang tidak benar dilewatkan, Word akan menampilkan sebuah kesalahan.

Saat menyimpan dalam format lain seperti PDF, Aspose.Words mendelegasikan rendering barcode ke kode pengguna sehingga pengguna terbatas pada tipe barcode dari implementasi atau perpustakaan yang digunakan.

## Sisipkan Barcode ke dalam Dokumen atau Muat Dokumen dengan Barcode yang Ditambah

Aspose.Words menyediakan kemampuan untuk:

1. Programatis memasukkan kode barcode ke dalam dokumen menggunakan kode bidang [DisplayBarcode](https://support.microsoft.com/en-au/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3) dan [MergeBarcode](https://support.microsoft.com/en-au/office/field-codes-mergebarcode-812fc43f-cb53-4782-8f9f-290ed08d34f3)
2. Atau muatlah sebuah dokumen Word dengan barcode yang sudah dimasukkan di dalamnya untuk pekerjaan selanjutnya

Aspose.Words memiliki antarmuka untuk membuat kode batang khusus yang membuatnya mudah untuk menggunakan [Aspose.Words](https://products.aspose.com/words/net/) dan [Aspose.BarCode](https://products.aspose.com/barcode/net/) bersama-sama untuk menghasilkan gambar kode batang dalam dokumen output. Sebagai contoh, Anda dapat membuat dokumen DOC, OOXML atau RTF dan menambahkan bidang DISPLAYBARCODE ke dalamnya menggunakan Aspose.Words. Atau Anda dapat memuat dokumen DOC, OOXML atau RTF dengan bidang DISPLAYBARCODE sudah ada di dalamnya dan memberikan implementasi Anda sendiri dari generator kode batang khusus.

Sebuah bidang DISPLAYBARCODE mempunyai sintaks berikut:

`{ DISPLAYBARCODE "SomeData" QR \h 720 }`

Di bawah ini adalah contoh kode generator menggunakan Aspose.Words dan Aspose. Barcode API. Contoh ini menunjukkan bagaimana cara memasukkan gambar barcode di posisi FIELD DISPLAY BARCODE dalam dokumen kata:

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "barcode-generator.cs" >}}

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "custom-barcode-generator.cs" >}}

Anda juga dapat menyimpan dokumen dengan barcode yang telah diisi atau disisipkan baru dalam format halaman tetap seperti PDF, XPS dll. Contoh kode di bawah ini menunjukkan cara menyimpan dokumen Word ke format PDF:

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "docx-to-pdf.cs" >}}

{{% alert color="primary" %}}

Untuk informasi lebih lanjut tentang konversi dokumen dari satu format ke format lainnya, lihat bagian dokumentasi [Convert a Document](/words/net/convert-a-document/).

{{% /alert %}}

{{% alert color="primary" %}}

Anda juga dapat menggunakan antarmuka [IBarcodeGenerator](https://reference.aspose.com/words/net/aspose.words.fields/ibarcodegenerator/) untuk mengonversi barcode yang tertanam dalam dokumen Word menjadi gambar. Gambar hasil dapat diekstrak dari dokumen - lihat artikel "Bekerja dengan Gambar" untuk rinciannya.

{{% /alert %}}

## Spesifikasikan Opsi Barcode

Ketika bekerja dengan barcode, Anda dapat mengatur beberapa properti tambahan. Aspose.Words menyediakan Anda dengan kelas [BarcodeParameters](https://reference.aspose.com/words/net/aspose.words.fields/barcodeparameters/) - kelas untuk parameter barcode untuk diteruskan ke BarcodeGenerator.

Aspose.Words mendukung resolusi tertanam 96 ppi untuk gambar yang dihasilkan dengan [IBarcodeGenerator](https://reference.aspose.com/words/net/aspose.words.fields/ibarcodegenerator/), yang membatasi ukuran minimum gambar barcode. Untuk mengatasi hal ini, pengembang dapat memasukkan gambar barcode secara manual dengan resolusi target ke dalam dokumen Word dan menyimpannya dalam format yang diperlukan. Untuk detail dan contoh lebih lanjut tentang bekerja dengan barcode, lihat artikel [Create Custom Barcodes with IBarcodeGenerator](https://docs.aspose.com/barcode/net/how-to-create-custom-barcodes-with-ibarcodegenerator/).
