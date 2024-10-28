---
title: Bekerja dengan Bentuk di C++
second_title: Aspose.Words untuk C++
articleTitle: Bekerja dengan Bentuk
linktitle: Bekerja dengan Bentuk
type: docs
description: "Pengantar bahasa markup bentuk, membuat bentuk dari berbagai jenis menggunakan C++."
weight: 280
url: /id/cpp/working-with-shapes/
---

Topik ini membahas cara bekerja secara terprogram dengan bentuk menggunakan Aspose.Words.

Bentuk dalam Aspose.Words mewakili objek di lapisan gambar, seperti objek AutoShape, kotak teks, bentuk bebas, OLE, kontrol ActiveX, atau gambar. Dokumen Word dapat berisi satu atau lebih bentuk yang berbeda. Bentuk dokumen diwakili oleh kelas [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/).

## Sisipkan Bentuk Menggunakan Pembuat Dokumen

Anda dapat menyisipkan bentuk sebaris dengan jenis dan ukuran tertentu dan bentuk mengambang bebas dengan posisi, ukuran, dan jenis pembungkus teks yang ditentukan ke dalam dokumen menggunakan metode [InsertShape](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertshape/). Metode **InsertShape** memungkinkan penyisipan bentuk DML ke dalam model dokumen. Dokumen harus disimpan dalam format, yang mendukung bentuk DML, jika tidak, simpul tersebut akan dikonversi menjadi bentuk VML, saat menyimpan dokumen.

Contoh kode berikut menunjukkan cara menyisipkan jenis bentuk ini ke dalam dokumen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.cpp" >}}

## Setel Rasio Aspek Terkunci

Dengan menggunakan Aspose.Words, Anda dapat menentukan apakah rasio aspek bentuk dikunci melalui properti [AspectRatioLocked](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_aspectratiolocked/).

Contoh kode berikut menunjukkan cara bekerja dengan properti **AspectRatioLocked**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.cpp" >}}

## Mengatur Tata Letak Bentuk dalam sel

Anda juga dapat menentukan apakah bentuk ditampilkan di dalam tabel atau di luarnya menggunakan properti [IsLayoutInCell](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_islayoutincell/).

Contoh kode berikut menunjukkan cara bekerja dengan properti **IsLayoutInCell**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cpp" >}}

## Buat Persegi Panjang Sudut Snip

Anda dapat membuat persegi panjang sudut snip menggunakan Aspose.Words. Jenis bentuknya adalah *SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded,*dan *DiagonalCornersRounded.*

Bentuk DML dibuat menggunakan metode **InsertShape** dengan tipe bentuk ini. Tipe ini tidak dapat digunakan untuk membuat bentuk VML. Mencoba membuat bentuk dengan menggunakan konstruktor publik dari kelas "Bentuk" memunculkan pengecualian " NotSupportedException".

Contoh kode berikut menunjukkan cara menyisipkan jenis bentuk ini ke dalam dokumen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-AddCornersSnipped.cpp" >}}

## Dapatkan Titik Batas Bentuk Aktual

Dengan menggunakan Aspose.Words API, Anda bisa mendapatkan lokasi dan ukuran bentuk yang berisi blok dalam poin, relatif terhadap jangkar bentuk paling atas. Untuk melakukannya, gunakan properti [BoundsInPoints](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_boundsinpoints/).

Contoh kode berikut menunjukkan cara bekerja dengan properti **BoundsInPoints**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.cpp" >}}

## Format Aturan Horizontal

Aspose.Words API menyediakan properti [HorizontalRuleFormat](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_horizontalruleformat/) untuk mengakses properti bentuk aturan horizontal. Kelas **HorizontalRuleFormat** memperlihatkan properti dasar seperti Tinggi, Warna, Bayangan, dll. untuk pemformatan aturan horizontal.

Contoh kode berikut menunjukkan cara menyetel **HorizontalRuleFormat**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Add content using DocumentBuilder-InsertHorizontalRule.h" >}}

## Sisipkan Objek OLE sebagai Ikon

Aspose.Words API menyediakan fungsi **Shape** → **InsertOleObjectAsIcon** untuk menyisipkan objek OLE yang disematkan atau ditautkan sebagai ikon ke dalam dokumen. Fungsi ini memungkinkan menentukan file ikon dan keterangan. Jenis objek `OLE` harus dideteksi menggunakan ekstensi file.

Contoh kode berikut menunjukkan cara mengatur objek insert OLE sebagai Ikon ke dalam dokumen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.cpp" >}}

{{% alert color="primary" %}}

Ukuran maksimum ikon harus 32x32 untuk tampilan yang benar.

{{% /alert %}}
