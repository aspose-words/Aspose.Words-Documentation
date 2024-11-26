---
title: Bekerja dengan Watermark di Java
second_title: Aspose.Words Sitemap Java
articleTitle: Bekerja dengan Watermark
linktitle: Bekerja dengan Watermark
type: docs
description: "Dokumen manipulasi watermark menggunakan JavaSitemap"
weight: 70
url: /id/java/working-with-watermark/
timestamp: 2024-01-27-14-07-04
---

Topik ini membahas cara bekerja secara programmatik dengan tanda air menggunakan Aspose.WordsSitemap Tanda air adalah gambar latar belakang yang menampilkan teks dalam dokumen. Tanda air dapat berisi teks atau gambar yang diwakili oleh [Watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) Sitemap

{{% alert color="primary" %}}

**Coba online**

Anda dapat mencoba fungsi ini dengan kami [Online Katalog](https://products.aspose.app/words/watermark)Sitemap

{{% /alert %}}

## Tambahkan Tanda Air ke Dokumen

Sitemap Microsoft Word, tanda air dapat dengan mudah dimasukkan dalam dokumen menggunakan perintah Masukkan Watermark. Aspose.Words Sitemap [watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) kelas untuk menambahkan atau menghapus tanda air dalam dokumen. Aspose.Words Sitemap [Login](https://reference.aspose.com/words/java/com.aspose.words/watermarktype/)mendefinisikan tiga jenis tanda air yang mungkin (Text, Image, dan None) untuk bekerja dengan

### Tambahkan Tanda Air Teks

Contoh kode berikut menunjukkan cara memasukkan tanda air teks dalam dokumen dengan mendefinisikan [TextWatermarkOptions](https://reference.aspose.com/words/java/com.aspose.words/textwatermarkoptions/) menggunakan [SetText](https://reference.aspose.com/words/java/com.aspose.words/watermark/#setText-java.lang.String) metode:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.java" >}}

### Tambahkan Tanda Air Gambar

Contoh kode berikut menunjukkan cara memasukkan tanda air gambar dalam dokumen dengan mendefinisikan [ImageWatermarkOptions](https://reference.aspose.com/words/java/com.aspose.words/imagewatermarkoptions/) menggunakan [SetImage](https://reference.aspose.com/words/java/com.aspose.words/watermark/#setImage-java.awt.image.BufferedImage) metode:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.java" >}}

Tanda air juga dapat dimasukkan menggunakan kelas bentuk serta. Sangat mudah untuk memasukkan bentuk atau gambar ke header atau footer dan dengan demikian membuat tanda air dari jenis imaginable.

Contoh kode berikut memasukkan tanda air ke dalam dokumen Word:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-AddWatermarkToADocument-AddWatermarkToADocument.java" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file sampel dari contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc)Sitemap

{{% /alert %}}


## Hapus Tanda Air dari Dokumen

Login [Watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) kelas menyediakan `Remove` metode untuk menghapus tanda air dari dokumen.

Contoh kode berikut menunjukkan cara menghapus tanda air dari dokumen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-RemoveWatermarkFromDocument.java" >}}

Untuk menghapus tanda air dari dokumen yang harus Anda set hanya nama bentuk tanda air selama memasukkan dan kemudian menghapus bentuk tanda air dengan nama yang ditugaskan.

Contoh kode berikut menunjukkan cara mengatur nama bentuk tanda air dan menghapusnya dari dokumen:

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark.Name("WaterMark");
{{< /highlight >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-RemoveWatermark-RemoveWatermark.java" >}}

## Tambahkan Tanda Air ke dalam Sel Meja

Kadang-kadang Anda perlu memasukkan tanda air / gambar ke sel meja dan menampilkannya di luar meja, Anda dapat menggunakan [IsLayoutInCell](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#isLayoutInCell-boolean) Login Properti ini mendapat atau menetapkan bendera yang menunjukkan apakah bentuk ditampilkan di dalam tabel atau di luarnya. Perhatikan bahwa properti ini hanya berfungsi ketika Anda mengoptimalkan dokumen untuk Microsoft Word 2010 menggunakan [OptimizeFor](https://reference.aspose.com/words/java/com.aspose.words/compatibilityoptions/#optimizeFor-int) Login

Contoh kode berikut menunjukkan cara menggunakan properti ini:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.java" >}}
