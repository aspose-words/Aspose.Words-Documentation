---
title: Bekerja dengan Tanda Air dalam Java
second_title: Aspose.Words untuk Java
articleTitle: Bekerja dengan Tanda Air
linktitle: Bekerja dengan Tanda Air
type: docs
description: "Manipulasi tanda air dokumen menggunakan Java."
weight: 70
url: /id/java/working-with-watermark/
timestamp: 2024-01-27-14-07-04
---

Topik ini membahas cara bekerja secara terprogram dengan tanda air menggunakan Aspose.Words. Tanda air adalah gambar latar belakang yang ditampilkan di belakang teks dalam dokumen. Tanda air dapat berisi teks atau gambar yang diwakili oleh kelas [Watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/).

{{% alert color="primary" %}}

**Coba online**

Anda dapat mencoba fungsi ini dengan kami [Tanda air dokumen online gratis](https://products.aspose.app/words/watermark).

{{% /alert %}}

## Menambahkan Tanda Air ke Dokumen

Di Microsoft Word, tanda air dapat dengan mudah disisipkan ke dalam dokumen menggunakan perintah Sisipkan Tanda Air. Aspose.Words menyediakan kelas [watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) untuk menambah atau menghapus tanda air dalam dokumen. Aspose.Words menyediakan pencacahan [WatermarkType](https://reference.aspose.com/words/java/com.aspose.words/watermarktype/)yang mendefinisikan tiga kemungkinan jenis tanda air (Teks, Gambar, dan Tidak Ada) untuk digunakan.

### Tambahkan Tanda Air Teks

Contoh kode berikut mendemonstrasikan cara menyisipkan tanda air teks dalam dokumen dengan mendefinisikan [TextWatermarkOptions](https://reference.aspose.com/words/java/com.aspose.words/textwatermarkoptions/) menggunakan metode [SetText](https://reference.aspose.com/words/java/com.aspose.words/watermark/#setText-java.lang.String):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.java" >}}

### Tambahkan Tanda Air Gambar

Contoh kode berikut mendemonstrasikan cara menyisipkan tanda air gambar dalam dokumen dengan mendefinisikan [ImageWatermarkOptions](https://reference.aspose.com/words/java/com.aspose.words/imagewatermarkoptions/) menggunakan metode [SetImage](https://reference.aspose.com/words/java/com.aspose.words/watermark/#setImage-java.awt.image.BufferedImage):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.java" >}}

Tanda air juga dapat disisipkan menggunakan kelas bentuk juga. Sangat mudah untuk menyisipkan bentuk atau gambar apa pun ke dalam header atau footer dan dengan demikian membuat tanda air dari jenis apa pun yang dapat dibayangkan.

Contoh kode berikut menyisipkan tanda air ke dalam dokumen Word:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-AddWatermarkToADocument-AddWatermarkToADocument.java" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file contoh contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}


## Hapus Tanda Air dari Dokumen

Kelas [Watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) menyediakan metode `Remove` untuk menghapus tanda air dari dokumen.

Contoh kode berikut menunjukkan cara menghapus tanda air dari dokumen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-RemoveWatermarkFromDocument.java" >}}

Untuk menghapus tanda air dari dokumen, Anda hanya perlu menetapkan nama bentuk tanda air selama penyisipan, lalu menghapus bentuk tanda air dengan nama yang ditetapkan.

Contoh kode berikut menunjukkan cara mengatur nama bentuk tanda air dan menghapusnya dari dokumen:

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark.Name("WaterMark");
{{< /highlight >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-RemoveWatermark-RemoveWatermark.java" >}}

## Tambahkan Tanda Air ke dalam Sel Tabel

Terkadang Anda perlu menyisipkan tanda air / gambar ke dalam sel tabel dan menampilkannya di luar tabel, Anda dapat menggunakan properti [IsLayoutInCell](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#isLayoutInCell-boolean). Properti ini mendapatkan atau menetapkan tanda yang menunjukkan apakah bentuk ditampilkan di dalam tabel atau di luarnya. Perhatikan bahwa properti ini hanya berfungsi saat Anda mengoptimalkan dokumen untuk Microsoft Word 2010 menggunakan metode [OptimizeFor](https://reference.aspose.com/words/java/com.aspose.words/compatibilityoptions/#optimizeFor-int).

Contoh kode berikut menunjukkan cara menggunakan properti ini:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.java" >}}
