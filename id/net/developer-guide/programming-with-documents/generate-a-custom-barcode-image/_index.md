---
title: Cara Membuat Barcode
second_title: Aspose.Words untuk .NET
articleTitle: Hasilkan Gambar Kode Batang Khusus
linktitle: Hasilkan Gambar Kode Batang Khusus
description: "Contoh pembuatan bentuk barcode menggunakan C#."
type: docs
weight: 350
url: /id/net/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
---

Aspose.Words memiliki antarmuka untuk menghasilkan kode batang khusus yang membuatnya sangat mudah untuk menggunakan Aspose.Words dan [Aspose.BarCode](https://products.aspose.com/barcode/net/) secara bersamaan untuk merender gambar kode batang dalam dokumen keluaran. Misalnya, Anda dapat memuat dokumen DOC, OOXML, atau RTF yang berisi Bidang `DISPLAYBARCODE` ke dalam Aspose.Words, menyediakan penerapan pembuat kode batang khusus, dan menyimpannya ke format halaman tetap seperti PDF, XPS, dll.

Bidang `DISPLAYBARCODE` yang khas memiliki sintaks berikut:

{ `DISPLAYBARCODE` "SomeData" QR \h 720 }

Di bawah ini adalah contoh generator kode yang memanfaatkan `Aspose.BarCode` API. Contoh ini menunjukkan cara menyisipkan gambar barcode pada posisi Bidang `DISPLAYBARCODE` di dokumen Word menggunakan Aspose.Words dan `Aspose.BarCode` API:

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "barcode-generator.cs" >}}

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "custom-barcode-generator.cs" >}}
