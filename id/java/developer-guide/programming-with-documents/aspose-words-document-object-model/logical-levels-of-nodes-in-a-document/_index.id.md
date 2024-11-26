---
title: Tingkat Logis dari Simpul dalam Dokumen dalam Java
second_title: Aspose.Words untuk Java
articleTitle: Tingkat Logis dari Node dalam Dokumen
linktitle: Tingkat Logis dari Node dalam Dokumen
type: docs
description: "Dalam dokumentasi Aspose.Words for Java disebutkan level logis dari node-level blok, level sebaris, atau level baris. Tingkat simpul digunakan untuk menggambarkan lokasi di pohon dokumen tempat simpul biasanya muncul."
weight: 10
url: /id/java/logical-levels-of-nodes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

Dokumentasi ini terkadang merujuk ke sekelompok kelas simpul yang termasuk dalam "level "dalam dokumen, seperti" block-level"," inline-level "(juga dikenal sebagai" inline"), atau" row-level " node. Level-level ini dalam sebuah dokumen dibedakan secara logis dan tidak secara eksplisit dinyatakan dengan pewarisan atau cara Aspose.Words DOM lainnya. Tingkat simpul digunakan untuk menggambarkan tempat di pohon dokumen di mana simpul biasanya akan muncul.

Pada artikel sebelumnya, kita telah membahas tentang hubungan antara node dan fakta bahwa tidak semua node diperbolehkan menjadi turunan dari node mana pun. Misalnya, Sel hanya dapat berupa turunan Baris, dan Baris hanya dapat berupa turunan Tabel, dan seterusnya. Hubungan ini juga berlaku untuk pembagian logis node ke dalam level dalam dokumen.

Bagian berikut menjelaskan level logis dari node dalam Aspose.Words dan kelas yang dimiliki oleh setiap level.

## Tingkat Logis Dokumen dan Bagian

Dokumen Word terdiri dari satu atau lebih bagian, diwakili oleh kelas [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) dan dipisahkan oleh pemisah bagian. Sebuah bagian dapat menentukan ukuran halamannya sendiri, margin, orientasi, jumlah kolom teks, serta header dan footer.

[Document](https://reference.aspose.com/words/java/com.aspose.words/document/) dan [Bagian](https://www.aspose.com/api/words/java/com.aspose.words/section) node level memiliki struktur seperti yang ditunjukkan pada diagram berikut.

<img src="/words/java/logical-levels-of-nodes-in-a-document/document-and-section-level.png" alt="document-and-section-level-aspose-words-java" style="width:700px"/>

Bagian berisi teks utama, serta header dan footer untuk halaman pertama, genap, dan ganjil. "Aliran" teks yang berbeda ini disebut *stories*.

Dalam Aspose.Words, simpul **Section** berisi simpul cerita [Body](https://reference.aspose.com/words/java/com.aspose.words/body/) dan [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/). Objek **Body** menyimpan teks utama. Objek **HeaderFooter** menyimpan teks untuk setiap header dan footer. Teks cerita apa pun terdiri dari paragraf dan tabel, masing-masing diwakili oleh objek **Paragraph** dan **Table** dari level Blok.

Selain itu, setiap dokumen Word dapat berisi glosarium, yang diwakili oleh simpul [GlossaryDocument](https://reference.aspose.com/words/java/com.aspose.words/glossarydocument/) dalam Aspose.Words. Dokumen glosarium berisi entri [BuildingBlocks](https://reference.aspose.com/words/java/com.aspose.words/buildingblock/), [AutoText](https://reference.aspose.com/words/java/com.aspose.words/buildingblocktype/#AUTO-TEXT), dan [AutoCorrect](https://reference.aspose.com/words/java/com.aspose.words/buildingblocktype/#AUTO-CORRECT).

**GlossaryDocument**

## Blokir Level Logis

Node tingkat blok mewakili wadah untuk kontrol konten dan konten, dan dapat terjadi di node turunan pohon dokumen di node berikut:

- Tubuh
- Tajuk
- Footer sitemap
- Catatan Kaki
- Komentar
- Bentuk
- GroupShape
- Sel
- StructuredDocumentTag

Node tingkat blok diwakili oleh kelas-kelas berikut:

- [Tables](https://reference.aspose.com/words/java/com.aspose.words/table/) dan [Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), yang merupakan simpul tingkat blok terpenting
- Bookmark, yang terjadi baik pada level blok maupun pada level sebaris
- [StructuredDocumentTag](https://reference.aspose.com/words/java/com.aspose.words/structureddocumenttag/), yang mewakili markup khusus dan dapat berisi konten dan kontrol konten

Diagram berikut menunjukkan elemen tingkat blok.

<img src="/words/java/logical-levels-of-nodes-in-a-document/block-level.png" alt="block-level-aspose-words-java" style="width:550px"/>

## Tingkat Logika Sebaris

Node tingkat sebaris mewakili konten dokumen yang sebenarnya dan dapat dimuat dalam wadah berikut:

- Paragraf-wadah paling umum
- [SmartTag](https://reference.aspose.com/words/java/com.aspose.words/smarttag/)
- StructuredDocumentTag

Elemen tingkat sebaris diwakili oleh kelas berikut:

- [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) - menjalankan teks dengan format berbeda
- [BookmarkStart](https://reference.aspose.com/words/java/com.aspose.words/bookmarkstart/) dan [BookmarkEnd](https://reference.aspose.com/words/java/com.aspose.words/bookmarkend/) mewakili penanda
- [CommentRangeStart]https://reference.aspose.com/words/java/com.aspose.words/comment/RangeStart), [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/), [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) dan [Footnote](https://reference.aspose.com/words/java/com.aspose.words/footnote/) mewakili anotasi
- [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/), [FieldChar](https://reference.aspose.com/words/java/com.aspose.words/fieldchar/), [FieldSeparator](https://reference.aspose.com/words/java/com.aspose.words/fieldseparator/) dan [FieldEnd](https://reference.aspose.com/words/java/com.aspose.words/fieldend/) yang mewakili karakter bidang, dan [FormField](https://reference.aspose.com/words/java/com.aspose.words/formfield/) mewakili bidang Word
- [SpecialChar](https://reference.aspose.com/words/java/com.aspose.words/specialchar/) mewakili karakter khusus dalam dokumen
- [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) dan [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) mewakili bentuk, gambar, gambar, dll.
- SmartTag dan StructuredDocumentTag mewakili markup khusus

Diagram berikut menunjukkan struktur simpul tingkat sebaris.

<img src="/words/java/logical-levels-of-nodes-in-a-document/inline-level.png" alt="inline-level-aspose-words-java" style="width:785px"/>

{{% alert color="primary" %}}

Bentuk dalam Microsoft Word mencakup Seni Kantor AutoShapes, kotak teks, gambar, objek OLE, dan kontrol ActiveX, yang semuanya direpresentasikan menggunakan kelas `Shape`. Beberapa bentuk juga dapat berisi teks, jadi Simpul bentuk di Aspose.Words dapat berisi simpul tingkat blok.

Bentuk dapat dikelompokkan di dalam satu sama lain menggunakan simpul GroupShape.

{{% /alert %}}

{{% alert color="primary" %}}

Catatan kaki dan komentar dapat berisi teks, oleh karena itu Catatan Kaki dan simpul Komentar di Aspose.Words dapat berisi simpul tingkat blok.

{{% /alert %}}

## Tingkat Simpul Tabel, Baris, dan Sel

Tabel terdiri dari simpul baris dan sel. Elemen tabel diwakili oleh kelas-kelas berikut:

- [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) mewakili baris tabel
- [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) mewakili sel tabel
- StructuredDocumentTag mewakili markup khusus

Diagram berikut menunjukkan struktur simpul dari Tabel, Baris, dan level Sel.

<img src="/words/java/logical-levels-of-nodes-in-a-document/table-row-cell.png" alt="table-row-cell-aspose-words-java" style="width:910px"/>
