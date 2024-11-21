---
title: Tingkat Logika Node dalam Dokumen dalam Java
second_title: Aspose.Words Sitemap Java
articleTitle: Tingkat Logika Node dalam Dokumen
linktitle: Tingkat Logika Node dalam Dokumen
type: docs
description: "Sitemap Aspose.Words Sitemap Java dokumentasi yang disebutkan tingkat logis node - tingkat blok, tingkat inline, atau tingkat baris. Tingkat node digunakan untuk menggambarkan lokasi di pohon dokumen di mana node biasanya terjadi."
weight: 10
url: /id/java/logical-levels-of-nodes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

Dokumentasi ini kadang-kadang mengacu pada sekelompok kelas node seperti milik "level" dalam dokumen, seperti "block-level", "inline-level" (juga dikenal sebagai "inline"), atau "row-level". Tingkat ini dalam dokumen berbeda secara logis murni dan tidak secara eksplisit diungkapkan oleh warisan atau lainnya Aspose.Words DOM Sitemap Tingkat node digunakan untuk menggambarkan tempat di pohon dokumen di mana node biasanya terjadi.

Dalam artikel sebelumnya, kami telah berbicara tentang hubungan antara node dan fakta bahwa tidak semua node diperbolehkan untuk menjadi anak dari setiap node. Misalnya, Sel hanya bisa menjadi anak Row, dan Row hanya bisa menjadi anak Meja, dan sebagainya. Hubungan ini juga berlaku untuk divisi logis node ke tingkat dalam dokumen.

Bagian berikut menggambarkan tingkat logis node dalam Aspose.Words dan kelas yang milik setiap tingkat.

## Dokumen dan Bagian Tingkat Logika

Login Dokumen Word terdiri dari satu atau lebih bagian, diwakili oleh [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) kelas dan dipisahkan oleh bagian istirahat. Bagian dapat mendefinisikan ukuran halaman sendiri, margin, orientasi, jumlah kolom teks, dan header dan footer.

[Document](https://reference.aspose.com/words/java/com.aspose.words/document/) Login [Login](https://www.aspose.com/api/words/java/com.aspose.words/section) node tingkat memiliki struktur seperti yang ditunjukkan dalam diagram berikut.

<img src="/words/java/logical-levels-of-nodes-in-a-document/document-and-section-level.png" alt="document-and-section-level-aspose-words-java" style="width:700px"/>

Bagian berisi teks utama, serta header dan footer untuk halaman pertama, bahkan, dan aneh. "aliran" teks yang berbeda ini disebut *stories*Sitemap

Sitemap Aspose.Words, Login **Section** Login [Body](https://reference.aspose.com/words/java/com.aspose.words/body/) Login [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) Login Login **Body** objek menyimpan teks utama. Login **HeaderFooter** objek menyimpan teks untuk setiap header dan footer. Teks cerita apa pun terdiri dari paragraf dan tabel, masing-masing diwakili oleh **Paragraph** Login **Table** objek dari level Block.

Sitemap Dokumen Word dapat mengandung glossary, yang diwakili oleh [GlossaryDocument](https://reference.aspose.com/words/java/com.aspose.words/glossarydocument/) Login Aspose.WordsSitemap Dokumen glossary mengandung [BuildingBlocks](https://reference.aspose.com/words/java/com.aspose.words/buildingblock/), [AutoText](https://reference.aspose.com/words/java/com.aspose.words/buildingblocktype/#AUTO-TEXT), Login [AutoCorrect](https://reference.aspose.com/words/java/com.aspose.words/buildingblocktype/#AUTO-CORRECT) Login

**GlossaryDocument** Sitemap [BuildingBlock](https://reference.aspose.com/words/java/com.aspose.words/buildingblock/) node mewakili berbagai jenis entri dokumen glossary. Sitemap **BuildingBlock** mengandung bagian yang dapat dimasukkan, dihapus, dan disalin ke dalam dokumen.

## Blok Tingkat Logika

Node tingkat blok mewakili wadah untuk kontrol konten dan konten, dan dapat terjadi pada node anak pohon dokumen dalam node berikut:

- Tubuh
- Login
- Login
- Login
- Sitemap
- Bentuk
- Login GroupLogin
- Sel
- Sitemap

Node tingkat blok diwakili oleh kelas berikut:

- Login [Tables](https://reference.aspose.com/words/java/com.aspose.words/table/) Login [Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), yang merupakan node tingkat blok yang paling penting
- Bookmarks, yang terjadi baik di tingkat blok dan pada tingkat inline
- Login [StructuredDocumentTag](https://reference.aspose.com/words/java/com.aspose.words/structureddocumenttag/), yang mewakili markup kustom dan dapat mengandung kontrol konten dan konten

Diagram berikut menunjukkan elemen level blok.

<img src="/words/java/logical-levels-of-nodes-in-a-document/block-level.png" alt="block-level-aspose-words-java" style="width:550px"/>

## Tingkat Logika Inline

Inline-level node mewakili konten aktual dokumen dan dapat terkandung dalam wadah berikut:

- Paragraf - wadah yang paling umum
- [SmartTag](https://reference.aspose.com/words/java/com.aspose.words/smarttag/)
- Sitemap

Elemen tingkat inline diwakili oleh kelas berikut:

- Login [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) - menjalankan format teks berbeda
- Login [BookmarkStart](https://reference.aspose.com/words/java/com.aspose.words/bookmarkstart/) Login [BookmarkEnd](https://reference.aspose.com/words/java/com.aspose.words/bookmarkend/) mewakili bookmark
- Login [Email: info@aspose.com](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/), [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) Login [Footnote](https://reference.aspose.com/words/java/com.aspose.words/footnote/) mewakili anotasi
- Login [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/), [FieldChar](https://reference.aspose.com/words/java/com.aspose.words/fieldchar/), [FieldSeparator](https://reference.aspose.com/words/java/com.aspose.words/fieldseparator/) Login [FieldEnd](https://reference.aspose.com/words/java/com.aspose.words/fieldend/) yang mewakili karakter lapangan, dan [FormField](https://reference.aspose.com/words/java/com.aspose.words/formfield/) Login Sitemap
- Login [SpecialChar](https://reference.aspose.com/words/java/com.aspose.words/specialchar/) mewakili karakter khusus dalam dokumen
- Login [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) Login [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) mewakili bentuk, gambar, gambar, dll.
- SmartTag dan Struktur Tag mewakili markup kustom

Diagram berikut menunjukkan struktur node level inline.

<img src="/words/java/logical-levels-of-nodes-in-a-document/inline-level.png" alt="inline-level-aspose-words-java" style="width:785px"/>

{{% alert color="primary" %}}

Bentuk dalam Microsoft Word termasuk Office Art AutoShapes, kotak teks, gambar, OLE objek, dan kontrol ActiveX, semua yang diwakili menggunakan `Shape` Sitemap Beberapa bentuk juga dapat mengandung teks, sehingga Bentuk node dalam Aspose.Words dapat mengandung node level block.

Bentuk dapat dikelompokkan di dalam satu sama lain menggunakan GroupBentuk node.

{{% /alert %}}

{{% alert color="primary" %}}

Footnotes dan komentar dapat berisi teks, oleh karena itu Footnote dan Comment node di Aspose.Words dapat mengandung node level block.

{{% /alert %}}

## Meja, Baris, dan Tingkat Node Sel

Tabel terdiri dari node baris dan sel. Elemen tabel diwakili oleh kelas berikut:

- Login [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) mewakili baris tabel
- Login [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) mewakili sel meja
- Login Tag mewakili markup kustom

Diagram berikut menunjukkan struktur node tabel, baris, dan tingkat sel.

<img src="/words/java/logical-levels-of-nodes-in-a-document/table-row-cell.png" alt="table-row-cell-aspose-words-java" style="width:910px"/>
