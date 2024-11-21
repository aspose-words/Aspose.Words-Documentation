---
title: Bekerja dengan SDT Kontrol Konten
second_title: Aspose.Words untuk Python via .NET
articleTitle: Bekerja dengan SDT Kontrol Konten
linktitle: Bekerja dengan SDT Kontrol Konten
description: "Dengan menggunakan python Anda dapat menyematkan semantik yang ditentukan pelanggan serta perilaku dan tampilannya ke dalam dokumen."
type: docs
weight: 390
url: /id/python-net/working-with-content-control-sdt/
timestamp: 2024-01-31-14-23-37
---

Di Microsoft Word, Anda bisa membuat formulir dengan memulai dengan templat dan menambahkan kontrol konten, termasuk kotak centang, kotak teks, pemilih tanggal, dan daftar drop-down. Di Aspose.Words, Tag Dokumen Terstruktur atau kontrol konten dari dokumen apa pun yang dimuat ke Aspose.Words diimpor sebagai node [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/). Tag dokumen terstruktur (SDT atau kontrol konten) memungkinkan penyematan semantik yang ditentukan pelanggan serta perilaku dan tampilannya ke dalam dokumen. [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) dapat muncul dalam dokumen di tempat-tempat berikut:

- Tingkat blok - Di antara paragraf dan tabel, sebagai anak dari simpul [Body](https://reference.aspose.com/words/python-net/aspose.words/body/), [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/), [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/), [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/), atau [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)
- Tingkat baris - Di antara baris dalam tabel, sebagai anak dari node [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/)
- Tingkat sel - Di antara sel dalam baris tabel, sebagai anak dari node [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/)
- Tingkat sebaris - Di antara konten sebaris di dalam, sebagai anak [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/)
- Bersarang di dalam [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) lain

## Memasukkan Kontrol Konten ke dalam Dokumen

Dalam versi Aspose.Words ini, jenis SDT atau kontrol konten berikut dapat dibuat:

- Checkbox
- DropDownList
- ComboBox
- Date
- BuildingBlockGallery
- Group
- `Picture`
- RichText
- PlainText

Contoh kode berikut menunjukkan cara membuat kontrol konten tipe kotak centang.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-CheckBoxTypeContentControl.py" >}}

Contoh kode berikut menunjukkan cara membuat kontrol konten kotak teks kaya tipe.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-RichTextBoxContentControl.py" >}}

Contoh kode berikut menunjukkan cara membuat kontrol konten dari tipe kotak kombo.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-ComboBoxContentControl.py" >}}

## Cara memperbarui Kontrol Konten

Bagian ini menjelaskan cara memperbarui nilai SDT atau kontrol konten secara terprogram

Contoh kode berikut menunjukkan cara menyetel status kotak centang saat ini:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-SetCurrentStateOfCheckBox.py" >}}

Contoh kode berikut menunjukkan cara mengubah kontrol konten tipe kotak teks biasa, daftar drop-down, dan gambar:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-ModifyContentControls.py" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file contoh contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Structured%20document%20tags.docx).

{{% /alert %}}

## Mengikat Kontrol Konten ke Bagian XML Kustom

Anda dapat mengikat kontrol konten dengan data XML (*bagian XML khusus*) di dokumen Word.

Contoh kode berikut menunjukkan cara mengikat kontrol konten ke bagian XML kustom:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-BindSDTtoCustomXmlPart.py" >}}

## Pemetaan XML Rentang Tag Dokumen Terstruktur

Anda bisa mendapatkan pemetaan rentang tag dokumen terstruktur ini ke data XML di bagian XML khusus dari dokumen saat ini menggunakan properti [StructuredDocumentTagRangeStart.xml_mapping](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttagrangestart/xml_mapping/). Namun, metode [set_mapping](https://reference.aspose.com/words/python-net/aspose.words.markup/xmlmapping/set_mapping/) dapat digunakan untuk memetakan rentang tag dokumen terstruktur ke data XML.

Contoh kode berikut menunjukkan cara mengatur pemetaan XML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-StructuredDocumentTagRangeStartXmlMapping.py" >}}

## Hapus Isi Kontrol Konten

Anda dapat menghapus konten kontrol konten dengan menampilkan placeholder. Metode [StructuredDocumentTag.clear](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/clear/) menghapus konten tag dokumen terstruktur ini dan menampilkan placeholder jika ditentukan. Namun, tidak mungkin menghapus konten kontrol konten jika ada revisi. Jika kontrol konten tidak memiliki placeholder, lima spasi disisipkan seperti di MS Word (kecuali bagian berulang, item bagian berulang, grup, kotak centang, kutipan). Jika kontrol konten dipetakan ke XML kustom, simpul XML yang direferensikan akan dihapus.

Contoh kode berikut menunjukkan cara menghapus konten dari kontrol konten:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-ClearContentsControl.py" >}}

## Ubah Latar Belakang Kontrol Konten dan Warna Batas

Properti [StructuredDocumentTag.color](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/color/) memungkinkan Anda mendapatkan atau mengatur warna kontrol konten. Warna mempengaruhi kontrol konten dalam dua situasi:

1. MS Word menyorot latar belakang kontrol konten ketika mouse bergerak di atas kontrol konten. Ini membantu mengidentifikasi kontrol konten. Warna highlightnya sedikit "lebih lembut" dibandingkan *color*. Misalnya MS Word menyorot latar belakang dengan warna pink, sedangkan *color* berwarna merah.
2. Saat Anda berinteraksi (mengedit, memilih, dll) dengan kontrol konten, batas kontrol konten diwarnai dengan *color*.

Contoh kode berikut menunjukkan cara mengubah warna kontrol konten:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-SetContentControlColor.py" >}}

## Cara Mengatur Gaya untuk Memformat Teks yang Diketik ke dalam Kontrol Konten

Jika Anda ingin mengatur gaya kontrol konten, Anda dapat menggunakan properti [StructuredDocumentTag.style](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/style/) atau [StructuredDocumentTag.style_name](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/style_name/). Saat Anda mengetikkan teks ke dalam kontrol konten di dokumen keluaran, teks yang diketik akan memiliki gaya "Kutipan".

{{% alert color="primary" %}}

Perhatikan bahwa hanya gaya Tertaut dan Karakter yang dapat diterapkan ke kontrol konten. Pengecualian ("Tidak dapat menerapkan gaya ini ke SDT") muncul ketika gaya yang ada tetapi tidak Tertaut atau gaya Karakter diterapkan.

{{% /alert %}}

Contoh kode berikut menunjukkan cara mengatur gaya kontrol konten:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-SetContentControlStyle.py" >}}

## Bekerja dengan Kontrol Konten Bagian Berulang

Kontrol konten bagian berulang memungkinkan pengulangan konten yang terkandung di dalamnya. Dengan menggunakan Aspose.Words, node tag dokumen terstruktur dari bagian berulang dan tipe item bagian berulang dapat dibuat dan untuk tujuan ini, tipe enumerasi [SdtType](https://reference.aspose.com/words/python-net/aspose.words.markup/sdttype/) menyediakan properti [REPEATING_SECTION_ITEM](https://reference.aspose.com/words/python-net/aspose.words.markup/sdttype/#repeating_section_item).

Contoh kode berikut menunjukkan cara mengikat kontrol konten bagian berulang ke tabel:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-CreatingTableRepeatingSectionMappedToCustomXmlPart.py" >}}
