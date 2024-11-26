---
title: Buat BarCode dalam Java
second_title: Aspose.Words untuk Java
articleTitle: Buat Gambar BarCode Khusus
linktitle: Buat Gambar BarCode Khusus
description: "Contoh pembuatan bentuk kode batang menggunakan Java."
type: docs
weight: 350
url: /id/java/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
timestamp: 2024-09-05-11-07-10
---

Barcode adalah representasi visual dari data dalam bentuk garis atau pola sejajar. Barcode banyak digunakan di berbagai industri seperti ritel, logistik, kesehatan, perbankan, dan banyak lainnya.

Microsoft Word memungkinkan pengguna menyematkan kode batang langsung ke dalam dokumen menggunakan bidang. Pengguna dapat menyisipkan jenis kode batang tertentu, seperti kode QR atau kode batang linier, menggunakan [BARCODE](https://learn.microsoft.com/en-us/openspecs/office_standards/ms-oi29500/cbc893c0-9683-416d-84c6-407a92451c19) lapangan.

Pada artikel ini, kita akan melihat bagaimana bidang BARCODE diimplementasikan di Aspose.Words dan bagaimana Aspose.Words memungkinkan pengguna untuk bekerja dengan dokumen Word yang telah ditambahkan barcode.

## Jenis Kode Batang yang Didukung oleh Aspose.Words

Aspose.Words mendukung berbagai jenis barcode. Jenis kode batang diteruskan sebagai nilai string di properti [BarcodeType](https://reference.aspose.com/words/java/com.aspose.words/barcodeparameters/#getBarcodeType).

{{% alert color="primary" %}}

Karena bekerja dengan kode batang dalam fungsionalitas Aspose.Words terbatas, pengguna dapat menggunakan pustaka apa pun, termasuk Aspose.Barcode, atau tulis renderingnya sendiri untuk bekerja dengan barcode. Anda dapat mempelajari lebih lanjut tentang jenis kode batang [didirikan oleh Aspose.BarCode](https://docs.aspose.com/barcode/java/barcode-types/).

{{% /alert %}}

Saat menyimpan ke format Word yang mendukung kode batang, Anda dapat menggunakan semua jenis kode batang yang didukung [diambil oleh Microsoft Word](https://support.microsoft.com/en-us/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3). Jika jenis kode batang yang diteruskan salah, Word akan menampilkan kesalahan.

Saat menyimpan ke format lain, seperti PDF, Aspose.Words mendelegasikan rendering kode batang ke kode pengguna, sehingga pengguna dibatasi pada jenis kode batang dari implementasi atau pustaka yang digunakan.

## Menyisipkan Kode Batang ke dalam Dokumen atau Memuat Dokumen dengan Kode Batang yang Ditambahkan

Aspose.Words memberikan kemampuan untuk:

1. Menyisipkan kode batang secara terprogram ke dalam dokumen menggunakan [DisplayBarcode](https://support.microsoft.com/en-au/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3) dan [MergeBarcode](https://support.microsoft.com/en-au/office/field-codes-mergebarcode-812fc43f-cb53-4782-8f9f-290ed08d34f3) kode bidang
2. Atau muat dokumen Word dengan kode batang yang sudah dimasukkan ke dalamnya untuk pekerjaan lebih lanjut

Aspose.Words memiliki antarmuka untuk membuat kode batang khusus yang membuatnya mudah digunakan [Aspose.Words](https://products.aspose.com/words/java/) dan [Aspose.BarCode](https://products.aspose.com/barcode/java/) bersama-sama untuk merender gambar kode batang dalam dokumen keluaran. Misalnya, Anda dapat membuat dokumen DOC, OOXML, atau RTF dan menambahkan bidang DISPLAYBARCODE ke dalamnya menggunakan Aspose.Words. Atau Anda dapat memuat dokumen DOC, OOXML, atau RTF dengan bidang DISPLAYBARCODE yang sudah ada di dalamnya dan menyediakan implementasi generator kode batang khusus Anda.

Bidang DISPLAYBARCODE tipikal memiliki sintaks berikut:

`{ DISPLAYBARCODE "SomeData" QR \h 720 }`

Di bawah ini adalah contoh pembuat kode menggunakan Aspose.Words dan Aspose.BarCode APIs. Contoh ini menunjukkan cara menyisipkan gambar kode batang pada posisi bidang DISPLAYBARCODE dalam dokumen Word:

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "barcode-generator.java" >}}

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "custom-barcode-generator.java" >}}

Anda juga dapat menyimpan dokumen dengan kode batang yang dimuat atau yang baru disisipkan dalam format halaman tetap seperti PDF, XPS, dll. Contoh kode berikut menunjukkan cara menyimpan dokumen Word ke format PDF:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "docx-to-pdf.java" >}}

{{% alert color="primary" %}}

Untuk informasi selengkapnya tentang mengonversi dokumen dari satu format ke format lainnya, lihat [Konversikan Dokumen](/words/java/convert-a-document/) bagian dokumentasi.

{{% /alert %}}

{{% alert color="primary" %}}

Anda juga dapat menggunakan antarmuka [IBarcodeGenerator](https://reference.aspose.com/words/java/com.aspose.words/ibarcodegenerator/) untuk mengonversi kode batang yang disematkan dalam dokumen Word menjadi gambar. Gambar yang dihasilkan dapat diekstraksi dari dokumen-lihat artikel Bekerja dengan Gambar untuk detailnya.

{{% /alert %}}

## Tentukan Opsi Kode Batang

Saat bekerja dengan kode batang, Anda dapat mengatur beberapa properti tambahan. Aspose.Words memberi Anda kelas [BarcodeParameters](https://reference.aspose.com/words/java/com.aspose.words/barcodeparameters/) - kelas untuk parameter kode batang yang diteruskan ke BarcodeGenerator.

Aspose.Words mendukung resolusi 96 ppi tersemat untuk gambar yang dihasilkan dengan [IBarcodeGenerator](https://reference.aspose.com/words/java/com.aspose.words/ibarcodegenerator/), yang membatasi ukuran minimum gambar kode batang. Untuk mengatasinya, pengembang dapat menyisipkan gambar kode batang dengan resolusi target secara manual ke dalam dokumen Word dan menyimpannya dalam format yang diperlukan. Untuk detail lebih lanjut dan contoh bekerja dengan kode batang, lihat artikel [Baca Kode Batang dari Word Dokumen](https://docs.aspose.com/barcode/java/read-barcode-from-word-document/).
