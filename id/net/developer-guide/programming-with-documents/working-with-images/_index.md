---
title: Bekerja dengan Gambar di C#
second_title: Aspose.Words untuk .NET
articleTitle: Bekerja dengan Gambar
linktitle: Bekerja dengan Gambar
description: "Bentuk gambar secara detail dan fitur-fitur canggih yang disediakan oleh Aspose.Words untuk .NET."
type: docs
weight: 300
url: /id/net/working-with-images/
---

Aspose.Words memungkinkan pengguna bekerja dengan gambar dengan cara yang sangat fleksibel. Pada artikel ini, Anda hanya dapat menjelajahi beberapa kemungkinan bekerja dengan gambar.

## Cara Memasukkan Gambar {#insert-an-image}

[DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) menyediakan beberapa kelebihan metode [InsertImage](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertimage/) yang memungkinkan Anda menyisipkan gambar inline atau floating. Jika gambar adalah metafile EMF atau WMF, maka akan dimasukkan ke dalam dokumen dalam format metafile. Semua gambar lainnya akan disimpan dalam format PNG. Metode **InsertImage** dapat menggunakan gambar dari berbagai sumber:

- Dari file atau `URL` dengan meneruskan parameter `String` [InsertImage](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertimage/)
- Dari aliran dengan meneruskan parameter `Stream` **InsertImage**
- Dari objek Gambar dengan meneruskan parameter Gambar **InsertImage**
- Dari array byte dengan meneruskan parameter array byte **InsertImage**

Untuk masing-masing metode **InsertImage**, ada kelebihan lebih lanjut yang memungkinkan Anda menyisipkan gambar dengan opsi berikut:
- Inline atau floating pada posisi tertentu, misalnya **InsertImage**
- Skala persentase atau ukuran khusus, misalnya **InsertImage**; selanjutnya, metode **InsertImage** mengembalikan objek [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) yang baru saja dibuat dan disisipkan sehingga Anda dapat memodifikasi properti Bentuk lebih lanjut

### Cara Menyisipkan Gambar Sebaris {#insert-an-inline-image}

Berikan satu string yang mewakili file yang berisi gambar ke **InsertImage** untuk menyisipkan gambar ke dalam dokumen sebagai grafik sebaris

Contoh kode berikut menunjukkan cara menyisipkan gambar sebaris pada posisi kursor ke dalam dokumen:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertInlineImage.cs" >}}

### Cara Memasukkan Gambar Mengambang {#insert-a-floating-image}

Contoh kode berikut menunjukkan cara menyisipkan gambar mengambang dari file atau `URL` pada posisi dan ukuran tertentu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertFloatingImage.cs" >}}

## Cara Mengekstrak Gambar dari Dokumen {#how-to-extract-images-from-a-document}

Semua gambar disimpan di dalam node **Shape** di [Document](https://reference.aspose.com/words/net/aspose.words/document/). Untuk mengekstrak semua gambar atau gambar dengan tipe tertentu dari dokumen, ikuti langkah-langkah berikut:

- Gunakan metode [GetChildNodes](https://reference.aspose.com/words/net/aspose.words/compositenode/getchildnodes/) untuk memilih semua node **Shape**.
- Iterasi melalui koleksi node yang dihasilkan.
- Periksa properti boolean [HasImage](https://reference.aspose.com/words/net/aspose.words.drawing/shape/hasimage/).
- Ekstrak data gambar menggunakan properti [ImageData](https://reference.aspose.com/words/net/aspose.words.drawing/shape/imagedata/).
- Simpan data gambar ke file.

Contoh kode berikut menunjukkan cara mengekstrak gambar dari dokumen dan menyimpannya sebagai file:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-ExtractImagesToFiles-ExtractImagesToFiles.cs" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file contoh contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Images.docx).

{{% /alert %}}

## Cara Menyisipkan Barcode pada setiap Halaman Dokumen {#how-to-insert-barcode-on-each-documen-page}

Contoh ini menunjukkan Anda untuk menambahkan kode batang yang sama atau berbeda pada semua atau halaman tertentu pada dokumen Word. Tidak ada cara langsung untuk menambahkan barcode pada semua halaman dokumen tetapi Anda dapat menggunakan metode **MoveToSection**, **MoveToHeaderFooter** dan **InsertImage** untuk berpindah ke bagian atau header/footer mana pun dan menyisipkan gambar barcode seperti yang Anda lihat pada kode berikut.

Contoh kode berikut menunjukkan cara menyisipkan gambar barcode pada setiap halaman dokumen:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-InsertBarcodeImage-InsertBarcodeImage.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-InsertBarcodeImage-InsertBarcodeIntoFooter.cs" >}}

## Kunci Rasio Aspek Gambar {#lock-aspect-ratio-of-image}

Rasio aspek suatu bentuk geometris adalah rasio ukurannya dalam dimensi yang berbeda. Anda dapat mengunci rasio aspek gambar menggunakan [AspectRatioLocked](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/aspectratiolocked/). Nilai default rasio aspek bentuk bergantung pada [ShapeType](https://reference.aspose.com/words/net/aspose.words.drawing/shapetype/). Ini adalah *true* untuk `ShapeType.Image` dan *false* untuk tipe bentuk lainnya.

Contoh kode berikut menunjukkan cara bekerja dengan rasio aspek:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.cs" >}}

## Cara Mendapatkan Batas Bentuk Aktual di Poin {#how-to-get-actual-bounds-of-shape-in-points}

Jika Anda menginginkan kotak pembatas sebenarnya dari bentuk seperti yang dirender pada halaman, Anda dapat mencapainya dengan menggunakan properti [BoundsInPoints](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/boundsinpoints/).

Contoh kode berikut menunjukkan cara menggunakan properti ini:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.cs" >}}

## Pangkas Gambar {#crop-images}

Pemotongan gambar biasanya mengacu pada penghapusan bagian luar gambar yang tidak diinginkan untuk membantu menyempurnakan pembingkaian. Ini juga digunakan untuk menghilangkan beberapa bagian gambar guna meningkatkan fokus pada area tertentu.

Contoh kode berikut menunjukkan cara mencapai hal ini menggunakan Aspose.Words API:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-CropImages-CropImageCall.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-CropImages-CropImage.cs" >}}

## Simpan Gambar sebagai WMF {#save-images-as-wmf}

Aspose.Words menyediakan fungsionalitas untuk menyimpan semua gambar yang tersedia dalam dokumen ke format [WMF](https://docs.fileformat.com/image/wmf/) sambil mengonversi DOCX ke RTF.

Contoh kode berikut menunjukkan cara menyimpan gambar sebagai WMF dengan opsi penyimpanan RTF:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.cs" >}}
