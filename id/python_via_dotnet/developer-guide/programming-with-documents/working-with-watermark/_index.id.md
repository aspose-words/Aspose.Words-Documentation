---
title: Bekerja dengan Tanda Air di Python
second_title: Aspose.Words untuk Python via .NET
articleTitle: Bekerja dengan Tanda Air
linktitle: Bekerja dengan Tanda Air
description: "Buat dan kelola tanda air dalam dokumen menggunakan Python."
type: docs
weight: 340
url: /id/python-net/working-with-watermark/
timestamp: 2024-01-27-14-07-04
---

Topik ini membahas cara bekerja secara terprogram dengan watermark menggunakan Aspose.Words. Tanda air adalah gambar latar belakang yang ditampilkan di belakang teks dalam dokumen. Tanda air dapat berisi teks atau gambar yang diwakili oleh kelas [Watermark](https://reference.aspose.com/words/python-net/aspose.words/watermark/).

{{% alert color="primary" %}}

**Coba daring**

Anda dapat mencoba fungsi ini dengan [Tanda air dokumen online gratis](https://products.aspose.app/words/watermark) kami.

{{% /alert %}}

## Cara Menambahkan Tanda Air ke Dokumen

Di Microsoft Word, tanda air dapat dengan mudah disisipkan ke dalam dokumen menggunakan perintah Sisipkan Tanda Air. Aspose.Words menyediakan kelas [Watermark](https://reference.aspose.com/words/python-net/aspose.words/watermark/) untuk menambah atau menghapus tanda air di dokumen. Aspose.Words menyediakan enumerasi [WatermarkType](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/) yang mendefinisikan tiga kemungkinan jenis tanda air ([TEXT](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/#text), [IMAGE](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/#image), dan [NONE](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/#none)) untuk digunakan

### Tambahkan Tanda Air Teks

Contoh kode berikut menunjukkan cara menyisipkan tanda air teks ke dalam dokumen dengan mendefinisikan [TextWatermarkOptions](https://reference.aspose.com/words/python-net/aspose.words/textwatermarkoptions/) menggunakan metode [set_text](https://reference.aspose.com/words/python-net/aspose.words/watermark/set_text/).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-AddTextWatermarkWithSpecificOptions.py" >}}

### Tambahkan Tanda Air Gambar

Contoh kode berikut menunjukkan cara menyisipkan tanda air gambar ke dalam dokumen dengan mendefinisikan [ImageWatermarkOptions](https://reference.aspose.com/words/python-net/aspose.words/imagewatermarkoptions/) menggunakan metode [set_image](https://reference.aspose.com/words/python-net/aspose.words/watermark/set_image/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-AddImageWatermarkWithSpecificOptions.py" >}}

Watermark juga dapat disisipkan menggunakan kelas bentuk juga. Sangat mudah untuk menyisipkan bentuk atau gambar apa pun ke dalam header atau footer dan dengan demikian membuat tanda air jenis apa pun yang bisa dibayangkan.

Contoh kode berikut menyisipkan tanda air ke dalam dokumen Word:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-AddWatermark.py" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file template contoh ini dari [Di Sini](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx)

{{% /alert %}}


## Hapus Tanda Air dari Dokumen

Kelas [Watermark](https://reference.aspose.com/words/python-net/aspose.words/watermark/) menyediakan metode hapus untuk menghapus tanda air dari dokumen.

Contoh kode berikut menunjukkan cara menghapus tanda air dari dokumen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-RemoveWatermarkFromDocument.py" >}}

Jika tanda air ditambahkan menggunakan objek kelas [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) maka untuk menghapus tanda air dari dokumen Anda harus mengatur hanya nama bentuk tanda air saat menyisipkan dan kemudian menghapus bentuk tanda air dengan nama yang ditetapkan.

Contoh kode berikut menunjukkan cara mengatur nama bentuk tanda air dan menghapusnya dari dokumen:

{{< highlight python >}}
# Set name to be able to remove it afterwards
watermark.name = "WaterMark"
{{< /highlight >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-RemoveWatermark.py" >}}

## Tambahkan Tanda Air di Sel Tabel

Terkadang Anda perlu memasukkan tanda air/gambar ke dalam sel tabel dan menampilkannya di luar tabel, Anda dapat menggunakan properti [is_layout_in_cell](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/is_layout_in_cell/). Properti ini mendapatkan atau menyetel tanda yang menunjukkan apakah bentuk ditampilkan di dalam atau di luar tabel. Perhatikan bahwa properti ini hanya berfungsi ketika Anda mengoptimalkan dokumen untuk Microsoft Word 2010 menggunakan metode [optimize_for](https://reference.aspose.com/words/python-net/aspose.words.settings/compatibilityoptions/optimize_for/).

Contoh kode berikut menunjukkan cara menggunakan properti ini:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-LayoutInCell.py" >}}
