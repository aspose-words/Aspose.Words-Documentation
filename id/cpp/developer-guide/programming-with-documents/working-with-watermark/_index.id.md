---
title: Bekerja dengan Tanda Air di C++
second_title: Aspose.Words untuk C++
articleTitle: Bekerja dengan Tanda Air
linktitle: Bekerja dengan Tanda Air
type: docs
description: "Manipulasi tanda air dokumen menggunakan C++."
weight: 340
url: /id/cpp/working-with-watermark/
---

Topik ini membahas cara bekerja secara terprogram dengan tanda air menggunakan Aspose.Words. Tanda air adalah gambar latar belakang yang ditampilkan di belakang teks dalam dokumen. Tanda air dapat berisi teks atau gambar yang diwakili oleh kelas [Watermark](https://reference.aspose.com/words/cpp/aspose.words/watermark/).

## Menambahkan Tanda Air ke Dokumen

Di Microsoft Word, tanda air dapat dengan mudah disisipkan ke dalam dokumen menggunakan perintah Sisipkan Tanda Air. Aspose.Words menyediakan kelas [watermark](https://reference.aspose.com/words/cpp/aspose.words/watermark/) untuk menambah atau menghapus tanda air dalam dokumen. Aspose.Words menyediakan pencacahan [WatermarkType ](https://reference.aspose.com/words/cpp/aspose.words/)yang mendefinisikan tiga kemungkinan jenis tanda air (Teks, Gambar, dan Tidak Ada) untuk digunakan.

### Tambahkan Tanda Air Teks

Contoh kode berikut mendemonstrasikan cara menyisipkan tanda air teks dalam dokumen dengan mendefinisikan [TextWatermarkOptions](https://reference.aspose.com/words/cpp/aspose.words/textwatermarkoptions/) menggunakan metode [SetText](https://reference.aspose.com/words/cpp/aspose.words/watermark/settext/).

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.cpp" >}}

### Tambahkan Tanda Air Gambar

Contoh kode berikut mendemonstrasikan cara menyisipkan tanda air gambar dalam dokumen dengan mendefinisikan [ImageWatermarkOptions](https://reference.aspose.com/words/cpp/aspose.words/imagewatermarkoptions/) menggunakan metode [SetImage](https://reference.aspose.com/words/cpp/aspose.words/watermark/setimage/).

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.cpp" >}}

Tanda air juga dapat disisipkan menggunakan kelas bentuk juga. Sangat mudah untuk menyisipkan bentuk atau gambar apa pun ke dalam header atau footer dan dengan demikian membuat tanda air dari jenis apa pun yang dapat dibayangkan. Contoh kode berikut menyisipkan tanda air ke dalam dokumen Word.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Images-AddWatermark-AddWatermark.cpp" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file templat contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}


## Hapus Tanda Air dari Dokumen

Kelas [Watermark](https://reference.aspose.com/words/cpp/aspose.words/watermark/) menyediakan metode hapus untuk menghapus tanda air dari dokumen.

Contoh kode berikut menunjukkan cara menghapus tanda air dari dokumen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkWithWatermark-RemoveWatermarkFromDocument.cpp" >}}

Jika tanda air ditambahkan menggunakan objek kelas [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/), maka untuk menghapus tanda air dari dokumen, Anda hanya perlu menyetel nama bentuk tanda air selama penyisipan, lalu menghapus bentuk tanda air dengan nama yang ditetapkan.

Contoh kode berikut menunjukkan cara mengatur nama bentuk tanda air dan menghapusnya dari dokumen:

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark->set_Name(u"WaterMark");
{{< /highlight >}}


{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Images-RemoveWatermark-RemoveWatermark.cpp" >}}

## Tambahkan Tanda Air di Sel Tabel

Terkadang Anda perlu menyisipkan tanda air / gambar ke dalam sel tabel dan menampilkannya di luar tabel, Anda dapat menggunakan properti [IsLayoutInCell](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_islayoutincell/). Properti ini mendapatkan atau menetapkan tanda yang menunjukkan apakah bentuk ditampilkan di dalam tabel atau di luarnya. Perhatikan bahwa properti ini hanya berfungsi saat Anda mengoptimalkan dokumen untuk Microsoft Word 2010 menggunakan metode [OptimizeFor](https://reference.aspose.com/words/cpp/aspose.words.settings/compatibilityoptions/optimizefor/).

Contoh kode berikut menunjukkan cara menggunakan properti ini:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cpp" >}}
