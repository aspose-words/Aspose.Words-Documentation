---
title: Bekerja dengan Bentuk di C#
second_title: Aspose.Words untuk .NET
articleTitle: Bekerja dengan Bentuk
linktitle: Bekerja dengan Bentuk
description: "Pengenalan bahasa markup bentuk, membuat berbagai jenis bentuk menggunakan C#."
type: docs
weight: 280
url: /id/net/working-with-shapes/
---

Topik ini membahas cara bekerja secara terprogram dengan bentuk menggunakan Aspose.Words.

Bentuk di Aspose.Words mewakili objek di lapisan gambar, seperti BentukOtomatis, kotak teks, bentuk bebas, objek OLE, kontrol ActiveX, atau gambar. Dokumen Word bisa berisi satu atau lebih bentuk berbeda. Bentuk di Aspose.Words diwakili oleh kelas [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/).

## Memasukkan Bentuk Menggunakan Pembuat Dokumen

Anda dapat menyisipkan bentuk sebaris dengan tipe dan ukuran tertentu serta bentuk mengambang bebas dengan posisi, ukuran, dan jenis bungkus teks tertentu ke dalam dokumen menggunakan metode [InsertShape](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertshape/). Metode **InsertShape** memungkinkan memasukkan bentuk DML ke dalam model dokumen. Dokumen harus disimpan dalam format yang mendukung bentuk DML, jika tidak, node tersebut akan dikonversi ke bentuk VML, saat menyimpan dokumen.

Contoh kode berikut menunjukkan cara menyisipkan tipe bentuk ini ke dalam dokumen:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.cs" >}}

## Setel Rasio Aspek Terkunci

Dengan menggunakan Aspose.Words, Anda dapat menentukan apakah rasio aspek bentuk dikunci melalui properti [AspectRatioLocked](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/aspectratiolocked/).

Contoh kode berikut menunjukkan cara bekerja dengan properti **AspectRatioLocked**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.cs" >}}

## Atur Tata Letak Bentuk Di Sel

Anda juga dapat menentukan apakah bentuk ditampilkan di dalam tabel atau di luar tabel menggunakan properti [IsLayoutInCell](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/islayoutincell/).

Contoh kode berikut menunjukkan cara bekerja dengan properti **IsLayoutInCell**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cs" >}}

## Buat Snip Sudut Persegi Panjang

Anda dapat membuat persegi panjang sudut snip menggunakan Aspose.Words. Jenis bentuknya adalah *SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded,* dan *DiagonalCornersRounded.*

Bentuk DML dibuat menggunakan metode **InsertShape** dengan tipe bentuk berikut. Tipe ini tidak dapat digunakan untuk membuat bentuk VML. Upaya membuat bentuk dengan menggunakan konstruktor publik kelas "Bentuk" memunculkan pengecualian "NotSupportedException".

Contoh kode berikut menunjukkan cara menyisipkan tipe bentuk ini ke dalam dokumen:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-AddCornersSnipped.cs" >}}

## Dapatkan Poin Batas Bentuk Aktual

Dengan menggunakan Aspose.Words API, Anda bisa mendapatkan lokasi dan ukuran bentuk yang berisi blok dalam titik, relatif terhadap jangkar bentuk paling atas. Untuk melakukan ini, gunakan properti [BoundsInPoints](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/boundsinpoints/).

Contoh kode berikut menunjukkan cara bekerja dengan properti **BoundsInPoints**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.cs" >}}

## Tentukan Jangkar Vertikal

Anda dapat menentukan perataan vertikal teks dalam bentuk menggunakan properti [VerticalAnchor](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/verticalanchor/).

Contoh kode berikut menunjukkan cara bekerja dengan properti **VerticalAnchor**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SpecifyVerticalAnchor.cs" >}}

## Deteksi Bentuk SmartArt

Aspose.Words juga memungkinkan untuk mendeteksi apakah Bentuk memiliki objek `SmartArt`. Untuk melakukan ini, gunakan properti [HasSmartArt](https://reference.aspose.com/words/net/aspose.words.drawing/shape/hassmartart/).

Contoh kode berikut menunjukkan cara bekerja dengan properti **HasSmartArt**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-DetectSmartArtShape.cs" >}}

## Masukkan Aturan Horizontal ke dalam Dokumen

Anda dapat menyisipkan bentuk aturan horizontal ke dalam dokumen menggunakan metode [InsertHorizontalRule](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserthorizontalrule/).

Contoh kode berikut menunjukkan cara melakukannya:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.cs" >}}

Aspose.Words API menyediakan properti [HorizontalRuleFormat](https://reference.aspose.com/words/net/aspose.words.drawing/shape/horizontalruleformat/) untuk mengakses properti bentuk aturan horizontal. Kelas [HorizontalRuleFormat](https://reference.aspose.com/words/net/aspose.words.drawing/horizontalruleformat/) memperlihatkan properti dasar seperti Tinggi, Warna, Tanpa Bayangan, dll. untuk pemformatan aturan horizontal.

Contoh kode berikut menunjukkan cara mengatur **HorizontalRuleFormat**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderHorizontalRule-DocumentBuilderHorizontalRuleFormat.cs" >}}

## Impor Bentuk dengan Math XML sebagai Bentuk ke DOM

Anda bisa menggunakan properti [ConvertShapeToOfficeMath](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/convertshapetoofficemath/) untuk mengonversi bentuk dengan EquationXML menjadi objek Office Math. Nilai default properti ini sesuai dengan perilaku Microsoft Word, yaitu bentuk dengan persamaan XML tidak dikonversi ke objek matematika Office.

Contoh kode berikut memperlihatkan cara mengonversi bentuk menjadi objek Office Math:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-Load_Options-ConvertShapeToOfficeMath.cs" >}}
