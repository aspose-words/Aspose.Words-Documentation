---
title: Tingkat Logis dari Node dalam Dokumen di C++
second_title: Aspose.Words untuk C++
articleTitle: Tingkat Logis dari Node dalam Dokumen
linktitle: Tingkat Logis dari Node dalam Dokumen
type: docs
description: "Dalam Aspose.Words untuk C++ dokumentasi menyebutkan level logis dari node-level blok, level sebaris, atau level baris. Tingkat simpul digunakan untuk menggambarkan lokasi di pohon dokumen tempat simpul biasanya muncul."
weight: 10
url: /id/cpp/logical-levels-of-nodes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

Dokumentasi ini terkadang merujuk ke sekelompok kelas simpul yang termasuk dalam "level "dalam dokumen, seperti" block-level"," inline-level "(juga dikenal sebagai" inline"), atau" row-level " node. Level-level ini dalam sebuah dokumen dibedakan secara logis dan tidak secara eksplisit dinyatakan dengan pewarisan atau cara Aspose.Words DOM lainnya. Tingkat simpul digunakan untuk menggambarkan tempat di pohon dokumen di mana simpul biasanya akan muncul.

Pada artikel sebelumnya, kita telah membahas tentang hubungan antara node dan fakta bahwa tidak semua node diperbolehkan menjadi turunan dari node mana pun. Misalnya, Sel hanya dapat berupa turunan Baris, dan Baris hanya dapat berupa turunan Tabel, dan seterusnya. Hubungan ini juga berlaku untuk pembagian logis node ke dalam level dalam dokumen.

Bagian berikut menjelaskan level logis dari node dalam Aspose.Words dan kelas yang dimiliki oleh setiap level.

## Tingkat Logis Dokumen dan Bagian

Dokumen Word terdiri dari satu atau beberapa bagian, diwakili oleh kelas [Section](https://reference.aspose.com/words/cpp/aspose.words/section) dan dipisahkan oleh pemisah bagian. Sebuah bagian dapat menentukan ukuran halamannya sendiri, margin, orientasi, jumlah kolom teks, serta header dan footer.

[Document](https://reference.aspose.com/words/cpp/aspose.words/document/) dan [Bagian](https://www.aspose.com/api/words/cpp/aspose.words/section/) node level memiliki struktur seperti yang ditunjukkan pada diagram berikut.

<img src="document-and-section-level.png" alt="document-and-section-level-aspose-words-cpp" style="width:700px"/>

Bagian berisi teks utama, serta header dan footer untuk halaman pertama, genap, dan ganjil. "Aliran" teks yang berbeda ini disebut *stories*.

Dalam Aspose.Words, simpul **Section** berisi simpul cerita [Body](https://reference.aspose.com/words/cpp/aspose.words/body/) dan [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/). Objek **Body** menyimpan teks utama. Objek **HeaderFooter** menyimpan teks untuk setiap header dan footer. Teks cerita apa pun terdiri dari paragraf dan tabel, masing-masing diwakili oleh objek **Paragraph** dan **Table** dari level Blok.

Selain itu, setiap dokumen Word dapat berisi glosarium, yang diwakili oleh simpul [GlossaryDocument](https://reference.aspose.com/words/cpp/aspose.words.buildingblocks/glossarydocument/) dalam Aspose.Words. Dokumen glosarium berisi entri [BuildingBlocks](https://reference.aspose.com/words/cpp/aspose.words.buildingblocks/glossarydocument/get_buildingblocks/), [AutoText](https://reference.aspose.com/words/cpp/aspose.words.buildingblocks/buildingblocktype/), dan [AutoCorrect](https://reference.aspose.com/words/cpp/aspose.words.buildingblocks/buildingblocktype/).

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

- [Tables](https://reference.aspose.com/words/cpp/aspose.words.tables/table/) dan [Paragraphs](https://reference.aspose.com/words/cpp/aspose.words/paragraph/), yang merupakan simpul tingkat blok terpenting
- Bookmark, yang terjadi baik pada level blok maupun pada level sebaris
- [StructuredDocumentTag](https://reference.aspose.com/words/cpp/aspose.words.markup/structureddocumenttag/), yang mewakili markup khusus dan dapat berisi konten dan kontrol konten

Diagram berikut menunjukkan elemen tingkat blok.

<img src="block-level.png" alt="block-level-aspose-words-cpp" style="width:550px"/>

## Tingkat Logika Sebaris

Node tingkat sebaris mewakili konten dokumen yang sebenarnya dan dapat dimuat dalam wadah berikut:

- Paragraf-wadah paling umum
- [SmartTag](https://reference.aspose.com/words/cpp/aspose.words.markup/smarttag/)
- StructuredDocumentTag

Elemen tingkat sebaris diwakili oleh kelas berikut:

- [Run](https://reference.aspose.com/words/cpp/aspose.words/run/) - menjalankan teks dengan format berbeda
- [BookmarkStart](https://reference.aspose.com/words/cpp/aspose.words/bookmarkstart/) dan [BookmarkEnd](https://reference.aspose.com/words/cpp/aspose.words/bookmarkend) mewakili penanda
- [CommentRangeStart](https://reference.aspose.com/words/cpp/aspose.words/commentrangestart/), [CommentRangeEnd](https://reference.aspose.com/words/cpp/aspose.words/commentrangeend/), [Comment](https://reference.aspose.com/words/cpp/aspose.words/comment/) dan [Footnote](https://reference.aspose.com/words/cpp/aspose.words.notes/footnote/) mewakili anotasi
- [FieldStart](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldstart/), [FieldChar](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldchar/), [FieldSeparator](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldseparator/) dan [FieldEnd](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldend/) yang mewakili karakter bidang, dan [FormField](https://reference.aspose.com/words/cpp/aspose.words.fields/formfield/) mewakili bidang kata
- [SpecialChar](https://reference.aspose.com/words/cpp/aspose.words/specialchar/) mewakili karakter khusus dalam dokumen
- [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) dan [GroupShape](https://reference.aspose.com/words/cpp/aspose.words.drawing/groupshape/) mewakili bentuk, gambar, gambar, dll.
- SmartTag dan StructuredDocumentTag mewakili markup khusus

Diagram berikut menunjukkan struktur simpul tingkat sebaris.

<img src="inline-level.png" alt="inline-level-aspose-words-cpp" style="width:785px"/>

{{% alert color="primary" %}}

Bentuk dalam Microsoft Word mencakup Seni Kantor AutoShapes, kotak teks, gambar, objek OLE, dan kontrol ActiveX, yang semuanya direpresentasikan menggunakan kelas `Shape`. Beberapa bentuk juga dapat berisi teks, jadi Simpul bentuk di Aspose.Words dapat berisi simpul tingkat blok.

Bentuk dapat dikelompokkan di dalam satu sama lain menggunakan simpul GroupShape.

{{% /alert %}}

{{% alert color="primary" %}}

Catatan kaki dan komentar dapat berisi teks, oleh karena itu Catatan Kaki dan simpul Komentar di Aspose.Words dapat berisi simpul tingkat blok.

{{% /alert %}}

## Tingkat Simpul Tabel, Baris, dan Sel

Tabel terdiri dari simpul baris dan sel. Elemen tabel diwakili oleh kelas-kelas berikut:

- [Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/) mewakili baris tabel
- [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/) mewakili sel tabel
- StructuredDocumentTag mewakili markup khusus

Diagram berikut menunjukkan struktur simpul dari Tabel, Baris, dan level Sel.

<img src="table-row-cell.png" alt="table-row-cell-aspose-words-cpp" style="width:910px"/>
