---
title: Bekerja dengan Bentuk di Python
second_title: Aspose.Words untuk Python via .NET
articleTitle: Bekerja dengan Bentuk
linktitle: Bekerja dengan Bentuk
description: "Membuat dan mengelola bentuk, objek dalam dokumen menggunakan Python."
type: docs
weight: 280
url: /id/python-net/working-with-shapes/
---

Topik ini membahas cara bekerja secara terprogram dengan bentuk menggunakan Aspose.Words.

Bentuk di Aspose.Words mewakili objek di lapisan gambar, seperti BentukOtomatis, kotak teks, bentuk bebas, objek OLE, kontrol ActiveX, atau gambar. Dokumen Word bisa berisi satu atau lebih bentuk berbeda. Bentuk dokumen diwakili oleh kelas [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/).

## Memasukkan Bentuk Menggunakan Pembuat Dokumen

Anda dapat menyisipkan bentuk sebaris dengan tipe dan ukuran tertentu serta bentuk mengambang bebas dengan posisi, ukuran, dan jenis bungkus teks tertentu ke dalam dokumen menggunakan metode [insert_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_shape/). Metode [insert_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_shape/) memungkinkan penyisipan bentuk DML ke dalam model dokumen. Dokumen harus disimpan dalam format yang mendukung bentuk DML, jika tidak, node tersebut akan dikonversi ke bentuk VML, saat menyimpan dokumen.

Contoh kode berikut menunjukkan cara menyisipkan tipe bentuk ini ke dalam dokumen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-InsertShape.py" >}}

## Setel Rasio Aspek Terkunci

Dengan menggunakan Aspose.Words, Anda dapat menentukan apakah rasio aspek bentuk dikunci melalui properti [aspect_ratio_locked](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/aspect_ratio_locked/).

Contoh kode berikut menunjukkan cara bekerja dengan properti **AspectRatioLocked**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-AspectRatioLocked.py" >}}

## Atur Tata Letak Bentuk Di Sel

Anda juga dapat menentukan apakah bentuk ditampilkan di dalam tabel atau di luar tabel menggunakan properti [is_layout_in_cell](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/is_layout_in_cell/).

Contoh kode berikut menunjukkan cara bekerja dengan properti **IsLayoutInCell**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-LayoutInCell.py" >}}

## Buat Snip Sudut Persegi Panjang

Anda dapat membuat persegi panjang sudut snip menggunakan Aspose.Words. Tipe bentuknya adalah [SINGLE_CORNER_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#single_corner_snipped), [TOP_CORNERS_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#top_corners_snipped), [DIAGONAL_CORNERS_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#diagonal_corners_snipped), [TOP_CORNERS_ONE_ROUNDED_ONE_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#top_corners_one_rounded_one_snipped), [SINGLE_CORNER_ROUNDED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#single_corner_rounded), [TOP_CORNERS_ROUNDED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#top_corners_rounded), dan [DIAGONAL_CORNERS_ROUNDED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#diagonal_corners_rounded).

Bentuk DML dibuat menggunakan metode [insert_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_shape/) dengan tipe bentuk berikut. Tipe ini tidak dapat digunakan untuk membuat bentuk VML. Upaya membuat bentuk dengan menggunakan konstruktor publik kelas [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) memunculkan pengecualian "NotSupportedException".

Contoh kode berikut menunjukkan cara menyisipkan tipe bentuk ini ke dalam dokumen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-AddCornersSnipped.py" >}}

## Dapatkan Poin Batas Bentuk Aktual

Dengan menggunakan Aspose.Words API, Anda bisa mendapatkan lokasi dan ukuran bentuk yang berisi blok dalam titik, relatif terhadap jangkar bentuk paling atas. Untuk melakukan ini, gunakan properti [bounds_in_points](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/bounds_in_points/).

Contoh kode berikut menunjukkan cara bekerja dengan properti **BoundsInPoints**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-GetActualShapeBoundsPoints.py" >}}

## Tentukan Jangkar Vertikal

Anda dapat menentukan perataan vertikal teks dalam bentuk menggunakan properti [vertical_anchor](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/vertical_anchor/).

Contoh kode berikut menunjukkan cara bekerja dengan properti **VerticalAnchor**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-VerticalAnchor.py" >}}

## Deteksi Bentuk SmartArt

Aspose.Words juga memungkinkan untuk mendeteksi apakah Bentuk memiliki objek `SmartArt`. Untuk melakukan ini, gunakan properti [properti has_smart_art](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/has_smart_art/).

Contoh kode berikut menunjukkan cara bekerja dengan properti **HasSmartArt**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-DetectSmartArtShape.py" >}}

## Masukkan Aturan Horizontal ke dalam Dokumen

Anda dapat menyisipkan bentuk aturan horizontal ke dalam dokumen menggunakan metode [insert_horizontal_rule](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_horizontal_rule/).

Contoh kode berikut menunjukkan cara melakukannya:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertHorizontalRule.py" >}}

Aspose.Words API menyediakan properti [horizontal_rule_format](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/horizontal_rule_format/) untuk mengakses properti bentuk aturan horizontal. Kelas [HorizontalRuleFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/) memperlihatkan properti dasar seperti [height](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/height/), [color](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/color/), [no_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/no_shade/), dll. untuk pemformatan aturan horizontal.

Contoh kode berikut menunjukkan cara mengatur [HorizontalRuleFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-HorizontalRuleFormat.py" >}}

## Sisipkan Objek OLE sebagai Ikon

Aspose.Words API menyediakan fungsi **Bentuk.masukkan_ole_object_as_icon** untuk menyisipkan objek OLE yang tertanam atau tertaut sebagai ikon ke dalam dokumen. Fungsi ini memungkinkan menentukan file ikon dan keterangannya. Jenis objek `OLE` harus dideteksi menggunakan ekstensi file.

Contoh kode berikut menunjukkan cara mengatur penyisipan objek OLE sebagai Ikon ke dalam dokumen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOLEObjectAsIcon.py" >}}

{{% alert color="primary" %}}

Ukuran maksimum ikon harus 32x32 agar tampilannya benar.

{{% /alert %}}

## Impor Bentuk dengan Math XML sebagai Bentuk ke DOM

Anda dapat menggunakan properti [convert_shape_to_office_math](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/convert_shape_to_office_math/) untuk mengonversi bentuk dengan EquationXML ke objek Office Math. Nilai default properti ini sesuai dengan perilaku MS Word yaitu bentuk dengan persamaan XML tidak dikonversi ke objek matematika Office.

Contoh kode berikut memperlihatkan cara mengonversi bentuk menjadi objek Office Math:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-ConvertShapeToOfficeMath.py" >}}
