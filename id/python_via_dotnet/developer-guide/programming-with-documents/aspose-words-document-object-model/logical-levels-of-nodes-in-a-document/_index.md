---
title: Tingkat Logis Node dalam Dokumen
second_title: Aspose.Words untuk Python via .NET
articleTitle: Tingkat Logis Node dalam Dokumen
linktitle: Tingkat Logis Node dalam Dokumen
type: docs
description: "Dalam dokumentasi Aspose.Words untuk Python via .NET disebutkan level logis dari node – level blok, level inline, atau level baris. Tingkat simpul digunakan untuk menggambarkan lokasi di pohon dokumen di mana simpul tersebut biasanya muncul."
weight: 10
url: /id/python-net/logical-levels-of-nodes-in-a-document/
---

Dokumentasi ini terkadang mengacu pada sekelompok kelas node sebagai bagian dari "level" dalam dokumen, seperti node "level blok", "level inline" (juga dikenal sebagai "inline"), atau node "level baris". Level-level dalam dokumen ini dibedakan secara logis dan tidak dinyatakan secara eksplisit melalui pewarisan atau cara Aspose.Words DOM lainnya. Tingkat simpul digunakan untuk mendeskripsikan tempat di pohon dokumen di mana simpul biasanya muncul.

Pada artikel sebelumnya, kita telah membahas tentang hubungan antar node dan fakta bahwa tidak semua node diperbolehkan menjadi anak dari node mana pun. Misalnya, [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) hanya bisa menjadi turunan [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/), dan [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) hanya bisa menjadi turunan [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), dan seterusnya. Hubungan ini juga berlaku untuk pembagian logis node ke dalam level dalam dokumen.

Bagian berikut menjelaskan level logis dari node di Aspose.Words dan kelas yang dimiliki setiap level.

## Tingkat Logis Dokumen dan Bagian

Dokumen Word terdiri dari satu atau lebih bagian, diwakili oleh kelas [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) dan dipisahkan oleh hentian bagian. Suatu bagian dapat menentukan ukuran halamannya sendiri, margin, orientasi, jumlah kolom teks, serta header dan footer.

Node level [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) dan [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) memiliki struktur seperti yang ditunjukkan pada diagram berikut.

<img src="/words/python-net/logical-levels-of-nodes-in-a-document/document-and-section-level.png" alt="kata-kata-aspose-tingkat-bagian-dan-dokumen" style="width:700px"/>

Bagian berisi teks utama, serta header dan footer untuk halaman pertama, genap, dan ganjil. "Aliran" teks yang berbeda ini disebut *stories*.

Di Aspose.Words, node [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) berisi node cerita [Body](https://reference.aspose.com/words/python-net/aspose.words/body/) dan [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/). Objek [Body](https://reference.aspose.com/words/python-net/aspose.words/body/) menyimpan teks utama. Objek [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/) menyimpan teks untuk setiap header dan footer. Teks cerita apa pun terdiri dari paragraf dan tabel, masing-masing diwakili oleh objek [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) dan [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) tingkat Blok.

Selain itu, setiap dokumen Word bisa berisi glosarium, yang diwakili oleh node [GlossaryDocument](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/glossarydocument/) di Aspose.Words. Dokumen glosarium berisi entri [building_blocks](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/glossarydocument/building_blocks/) [BuildingBlockType.AUTO_TEXT](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblocktype/#auto_text) dan [BuildingBlockType.AUTO_CORRECT](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblocktype/#auto_correct).

[GlossaryDocument](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/glossarydocument/) menyertakan node [BuildingBlock](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblock/) yang mewakili berbagai jenis entri dokumen glosarium. Setiap [BuildingBlock](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblock/) berisi bagian yang dapat disisipkan, dihapus, dan disalin ke dalam dokumen.

## Blokir Tingkat Logis

Node tingkat blok mewakili kontainer untuk konten dan kontrol konten, dan dapat terjadi di node anak pohon dokumen di node berikut:

- [Body](https://reference.aspose.com/words/python-net/aspose.words/body/)
- [Header](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/)
- [Footer](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/)
- [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/)
- [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/)
- [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)
- [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/)
- [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/)
- [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/)

Node tingkat blok diwakili oleh kelas-kelas berikut:

- [Tables](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) dan [Paragraphs](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), yang merupakan node tingkat blok terpenting
- [Bookmarks](https://reference.aspose.com/words/python-net/aspose.words/bookmark/), yang terjadi pada level blok dan level inline
- [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/), yang mewakili markup khusus dan dapat berisi konten dan kontrol konten

Diagram berikut menunjukkan elemen tingkat blok.

<img src="/words/python-net/logical-levels-of-nodes-in-a-document/block-level.png" alt="kata-kata-aspose-tingkat-blok" style="width:550px"/>

## Tingkat Logika Sebaris

Node tingkat sebaris mewakili konten sebenarnya dari dokumen dan dapat dimuat dalam wadah berikut:

- [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) – wadah paling umum
- [SmartTag](https://reference.aspose.com/words/python-net/aspose.words.markup/smarttag/)
- [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/)

Elemen tingkat sebaris diwakili oleh kelas-kelas berikut:

- [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) – rangkaian teks dengan format berbeda
- [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) dan [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/) mewakili bookmark
- [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/), [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/), [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) dan [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/) mewakili anotasi
- [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/), [FieldChar](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/), [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) dan [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) yang mewakili karakter bidang, dan [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) mewakili bidang Word
- [SpecialChar](https://reference.aspose.com/words/python-net/aspose.words/specialchar/) mewakili karakter khusus dalam dokumen
- [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) dan [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) mewakili bentuk, gambar, gambar, dll.
- [SmartTag](https://reference.aspose.com/words/python-net/aspose.words.markup/smarttag/) dan [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) mewakili markup khusus

Diagram berikut menunjukkan struktur node tingkat sebaris.

<img src="/words/python-net/logical-levels-of-nodes-in-a-document/inline-level.png" alt="kata-kata-aspose-tingkat-sebaris" style="width:785px"/>

{{% alert color="primary" %}}

Bentuk di Microsoft Word mencakup Office Art AutoShapes, kotak teks, gambar, objek OLE, dan kontrol ActiveX, yang semuanya direpresentasikan menggunakan kelas `Shape`. Beberapa bentuk juga bisa berisi teks, sehingga simpul Bentuk dalam Aspose.Words bisa berisi simpul tingkat blok.

Bentuk dapat dikelompokkan satu sama lain menggunakan node [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/).

{{% /alert %}}

{{% alert color="primary" %}}

Catatan kaki dan komentar dapat berisi teks, oleh karena itu node [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/) dan [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) dalam Aspose.Words dapat berisi node tingkat blok.

{{% /alert %}}

## Tabel, Baris, dan Tingkat Node Sel

Tabel terdiri dari simpul baris dan sel. Elemen [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) diwakili oleh kelas-kelas berikut:

- [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) mewakili baris tabel
- [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) mewakili sel tabel
- [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) mewakili markup khusus

Diagram berikut menunjukkan struktur node level [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/), dan [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/).

<img src="/words/python-net/logical-levels-of-nodes-in-a-document/table-row-cell.png" alt="kata-kata-sel-baris-tabel-aspose" style="width:910px"/>