---
title: Bekerja dengan Bentuk dalam Java
second_title: Aspose.Words untuk Java
articleTitle: Bekerja dengan Bentuk
linktitle: Bekerja dengan Bentuk
type: docs
description: "Pengantar bahasa markup bentuk, membuat bentuk dari berbagai jenis menggunakan Java."
weight: 280
url: /id/java/working-with-shapes/
timestamp: 2024-01-27-14-07-04
---

Topik ini membahas cara bekerja secara terprogram dengan bentuk menggunakan Aspose.Words.

Bentuk dalam Aspose.Words mewakili objek di lapisan gambar, seperti objek AutoShape, kotak teks, bentuk bebas, OLE, kontrol ActiveX, atau gambar. Dokumen Word dapat berisi satu atau lebih bentuk yang berbeda. Bentuk dokumen diwakili oleh kelas [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/).

## Sisipkan Bentuk Menggunakan Pembuat Dokumen

Anda dapat menyisipkan bentuk sebaris dengan jenis dan ukuran tertentu dan bentuk mengambang bebas dengan posisi, ukuran, dan jenis pembungkus teks yang ditentukan ke dalam dokumen menggunakan metode [InsertShape](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertShape-int-double-double). Metode **InsertShape** memungkinkan penyisipan bentuk DML ke dalam model dokumen. Dokumen harus disimpan dalam format, yang mendukung bentuk DML, jika tidak, simpul tersebut akan dikonversi menjadi bentuk VML, saat menyimpan dokumen.

Contoh kode berikut menunjukkan cara menyisipkan jenis bentuk ini ke dalam dokumen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.java" >}}

## Setel Rasio Aspek Terkunci

Dengan menggunakan Aspose.Words, Anda dapat menentukan apakah rasio aspek bentuk dikunci melalui properti [AspectRatioLocked](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getAspectRatioLocked).

Contoh kode berikut menunjukkan cara bekerja dengan properti **AspectRatioLocked**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.java" >}}

## Mengatur Tata Letak Bentuk dalam sel

Anda juga dapat menentukan apakah bentuk ditampilkan di dalam tabel atau di luarnya menggunakan properti [IsLayoutInCell](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#isLayoutInCell).

Contoh kode berikut menunjukkan cara bekerja dengan properti **IsLayoutInCell**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.java" >}}

## Tambahkan Sudut Terpotong

Anda dapat membuat persegi panjang sudut snip menggunakan Aspose.Words. Jenis bentuknya adalah *SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded,*dan *DiagonalCornersRounded.*

Bentuk DML dibuat menggunakan metode **InsertShape** dengan tipe bentuk ini. Tipe ini tidak dapat digunakan untuk membuat bentuk VML. Mencoba membuat bentuk dengan menggunakan konstruktor publik dari kelas "Bentuk" memunculkan pengecualian " NotSupportedException".

Contoh kode berikut menunjukkan cara menyisipkan jenis bentuk ini ke dalam dokumen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-AddCornersSnipped.java" >}}

## Dapatkan Titik Batas Bentuk Aktual

Dengan menggunakan Aspose.Words API, Anda bisa mendapatkan lokasi dan ukuran bentuk yang berisi blok dalam poin, relatif terhadap jangkar bentuk paling atas. Untuk melakukannya, gunakan properti [BoundsInPoints](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getBoundsInPoints).

Contoh kode berikut menunjukkan cara bekerja dengan properti **BoundsInPoints**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.java" >}}

## Tentukan Jangkar Vertikal

Anda dapat menentukan perataan vertikal teks dalam bentuk menggunakan properti [VerticalAnchor](https://reference.aspose.com/words/java/com.aspose.words/textbox/#getVerticalAnchor).

Contoh kode berikut menunjukkan cara bekerja dengan properti **VerticalAnchor**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SpecifyVerticalAnchor.java" >}}

## Deteksi Bentuk SmartArt

Aspose.Words juga memungkinkan untuk mendeteksi apakah Bentuk tersebut memiliki objek `SmartArt`. Untuk melakukannya, gunakan properti [HasSmartArt](https://reference.aspose.com/words/java/com.aspose.words/shape/#hasSmartArt).

Contoh kode berikut menunjukkan cara bekerja dengan properti **HasSmartArt**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-DetectSmartArtShape.java" >}}

## Format Aturan Horizontal

Anda dapat menyisipkan bentuk aturan horizontal ke dalam dokumen menggunakan metode [InsertHorizontalRule](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHorizontalRule).

Aspose.Words API menyediakan properti [HorizontalRuleFormat](https://reference.aspose.com/words/java/com.aspose.words/shape/#getHorizontalRuleFormat) untuk mengakses properti bentuk aturan horizontal. Kelas [HorizontalRuleFormat](https://reference.aspose.com/words/java/com.aspose.words/horizontalruleformat/) memperlihatkan properti dasar seperti Tinggi, Warna, NoShade, dll. untuk pemformatan aturan horizontal.

Contoh kode berikut menunjukkan cara menyetel **HorizontalRuleFormat**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-ShapeHorizontalRuleFormat.java" >}}
