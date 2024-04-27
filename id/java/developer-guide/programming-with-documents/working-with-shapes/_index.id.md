---
title: Bekerja dengan Bentuk dalam Java
second_title: Aspose.Words Sitemap Java
articleTitle: Bekerja dengan Bentuk
linktitle: Bekerja dengan Bentuk
type: docs
description: "Pengantar untuk membentuk bahasa markup, menciptakan bentuk berbagai jenis menggunakan JavaSitemap"
weight: 280
url: /id/java/working-with-shapes/
---

Topik ini membahas cara bekerja secara tematik dengan bentuk menggunakan Aspose.WordsSitemap

Bentuk dalam Aspose.Words mewakili objek di layer gambar, seperti AutoShape, kotak teks, bentuk bebas, objek OLE, kontrol ActiveX, atau gambar. Dokumen Word dapat mengandung satu atau lebih bentuk yang berbeda. Bentuk dokumen diwakili oleh [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) Sitemap

## Masukkan Bentuk Menggunakan Builder Dokumen

Anda dapat memasukkan bentuk inline dengan jenis dan ukuran tertentu dan bentuk mengambang bebas dengan posisi yang ditentukan, ukuran dan jenis pembungkus teks ke dalam dokumen menggunakan [InsertShape](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertShape-int-double-double) Login Login **InsertShape** metode memungkinkan memasukkan bentuk DML ke dalam model dokumen. Dokumen harus disimpan dalam format, yang mendukung bentuk DML, jika tidak, node tersebut akan dikonversi ke bentuk VML, sementara penghematan dokumen.

Contoh kode berikut menunjukkan cara memasukkan jenis bentuk ini ke dalam dokumen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.java" >}}

## Aspect Rasio Dikunci

Sitemap Aspose.Words, Anda dapat menentukan apakah rasio aspek bentuk terkunci melalui [AspectRatioLocked](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getAspectRatioLocked) Login

Contoh kode berikut menunjukkan cara bekerja dengan Meme it **AspectRatioLocked** properti:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.java" >}}

## Set Bentuk Tata Letak Dalam Sel

Anda juga dapat menentukan apakah bentuk ditampilkan di dalam tabel atau di luarnya [IsLayoutInCell](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#isLayoutInCell) Login

Contoh kode berikut menunjukkan cara bekerja dengan Meme it **IsLayoutInCell** properti:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.java" >}}

## Tambahkan Sudut Snipped

Anda dapat membuat sudut snip persegi panjang menggunakan Aspose.WordsSitemap Jenis bentuk * SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded,* dan *DiagonalCornersRounded.*

Bentuk DML dibuat menggunakan **InsertShape** metode dengan jenis bentuk ini. Jenis-jenis ini tidak dapat digunakan untuk membuat bentuk VML. Tempt untuk membuat bentuk dengan menggunakan konstruktor publik dari kelas "Shape" meningkatkan pengecualian "NotSupportedException".

Contoh kode berikut menunjukkan cara memasukkan jenis bentuk ini ke dalam dokumen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-AddCornersSnipped.java" >}}

## Dapatkan Poin Luka Bentuk Sebenarnya

Sitemap Aspose.Words API, Anda bisa mendapatkan lokasi dan ukuran bentuk yang mengandung blok pada poin, relatif terhadap jangkar bentuk paling atas. Untuk melakukan ini, gunakan [BoundsInPoints](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getBoundsInPoints) Login

Contoh kode berikut menunjukkan cara bekerja dengan Meme it **BoundsInPoints** properti:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.java" >}}

## Spesifikasi Jangkar Vertikal

Anda dapat menentukan keselarasan vertikal teks dalam bentuk menggunakan [VerticalAnchor](https://reference.aspose.com/words/java/com.aspose.words/textbox/#getVerticalAnchor) Login

Contoh kode berikut menunjukkan cara bekerja dengan Meme it **VerticalAnchor** properti:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SpecifyVerticalAnchor.java" >}}

## Mendeteksi Smart Bentuk seni

Aspose.Words juga memungkinkan untuk mendeteksi jika Bentuk memiliki `SmartArt` Sitemap Untuk melakukan ini, gunakan [HasSmartArt](https://reference.aspose.com/words/java/com.aspose.words/shape/#hasSmartArt) Login

Contoh kode berikut menunjukkan cara bekerja dengan Meme it **HasSmartArt** properti:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-DetectSmartArtShape.java" >}}

## Format Rule Horizontal

Anda dapat memasukkan bentuk aturan horisontal ke dalam dokumen menggunakan [InsertHorizontalRule](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHorizontalRule) Login

Aspose.Words API Sitemap [HorizontalRuleFormat](https://reference.aspose.com/words/java/com.aspose.words/shape/#getHorizontalRuleFormat) properti untuk mengakses sifat bentuk aturan horisontal. Login [HorizontalRuleFormat](https://reference.aspose.com/words/java/com.aspose.words/horizontalruleformat/) mengekspos sifat dasar seperti Tinggi, Warna, NoShade dll untuk format aturan horisontal.

Contoh kode berikut menunjukkan cara mengatur **HorizontalRuleFormat**Sitemap

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-ShapeHorizontalRuleFormat.java" >}}
