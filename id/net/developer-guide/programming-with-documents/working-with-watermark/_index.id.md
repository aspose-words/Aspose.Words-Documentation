---
title: Bekerja dengan Tanda Air di C#
second_title: Aspose.Words untuk .NET
articleTitle: Bekerja dengan Tanda Air
linktitle: Bekerja dengan Tanda Air
description: "Manipulasi watermark dokumen menggunakan C#."
type: docs
weight: 340
url: /id/net/working-with-watermark/
timestamp: 2024-05-02-11-51-44
---

Topik ini membahas cara bekerja secara terprogram dengan watermark menggunakan Aspose.Words. Tanda air adalah gambar latar belakang yang ditampilkan di belakang teks dalam dokumen. Tanda air dapat berisi teks atau gambar yang diwakili oleh kelas [Watermark](https://reference.aspose.com/words/net/aspose.words/watermark/).

{{% alert color="primary" %}}

**Coba daring**

Anda dapat mencoba fungsi ini dengan [Tanda air dokumen online gratis](https://products.aspose.app/words/watermark) kami.

{{% /alert %}}

## Tambahkan Tanda Air ke Dokumen

Di Microsoft Word, tanda air dapat dengan mudah disisipkan ke dalam dokumen menggunakan perintah Sisipkan Tanda Air. Aspose.Words menyediakan kelas [watermark](https://reference.aspose.com/words/net/aspose.words/watermark/) untuk menambah atau menghapus tanda air di dokumen. Aspose.Words menyediakan [Jenis Tanda Air](https://reference.aspose.com/words/net/aspose.words/watermark/type/)enumerasi yang mendefinisikan tiga kemungkinan jenis tanda air (Teks, Gambar, dan Tidak Ada) untuk digunakan

### Tambahkan Tanda Air Teks

Contoh kode berikut menunjukkan cara menyisipkan tanda air teks ke dalam dokumen dengan mendefinisikan [TextWatermarkOptions](https://reference.aspose.com/words/net/aspose.words/textwatermarkoptions/) menggunakan metode [SetText](https://reference.aspose.com/words/net/aspose.words/watermark/settext/#settext):

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.cs" >}}

### Tambahkan Tanda Air Gambar

Contoh kode berikut menunjukkan cara menyisipkan tanda air gambar ke dalam dokumen dengan mendefinisikan [ImageWatermarkOptions](https://reference.aspose.com/words/net/aspose.words/imagewatermarkoptions/) menggunakan metode [SetImage](https://reference.aspose.com/words/net/aspose.words/watermark/setimage/#setimage):

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.cs" >}}

Watermark juga dapat disisipkan menggunakan kelas bentuk juga. Sangat mudah untuk menyisipkan bentuk atau gambar apa pun ke dalam header atau footer dan dengan demikian membuat tanda air jenis apa pun yang bisa dibayangkan.

Contoh kode berikut menyisipkan tanda air ke dalam dokumen Word:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Images-AddWatermark-AddWatermark.cs" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file contoh contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}


## Hapus Tanda Air dari Dokumen

Kelas [Watermark](https://reference.aspose.com/words/net/aspose.words/watermark/) menyediakan metode hapus untuk menghapus tanda air dari dokumen.

Contoh kode berikut menunjukkan cara menghapus tanda air dari dokumen:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkWithWatermark-RemoveWatermarkFromDocument.cs" >}}

Jika tanda air ditambahkan menggunakan objek kelas [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) maka untuk menghapus tanda air dari dokumen Anda harus mengatur hanya nama bentuk tanda air saat menyisipkan dan kemudian menghapus bentuk tanda air dengan nama yang ditetapkan.

Contoh kode berikut menunjukkan cara mengatur nama bentuk tanda air dan menghapusnya dari dokumen:

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark.Name("WaterMark");
{{< /highlight >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-RemoveWatermark-RemoveWatermark.cs" >}}

## Tambahkan Tanda Air ke dalam Sel Tabel

Terkadang Anda perlu memasukkan tanda air/gambar ke dalam sel tabel dan menampilkannya di luar tabel, Anda dapat menggunakan properti [IsLayoutInCell](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/islayoutincell/). Properti ini mendapatkan atau menyetel tanda yang menunjukkan apakah bentuk ditampilkan di dalam atau di luar tabel. Perhatikan bahwa properti ini hanya berfungsi ketika Anda mengoptimalkan dokumen untuk Microsoft Word 2010 menggunakan metode [OptimizeFor](https://reference.aspose.com/words/net/aspose.words.settings/compatibilityoptions/optimizefor/).

Contoh kode berikut menunjukkan cara menggunakan properti ini:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cs" >}}
