---
title: Bekerja dengan SDT Kontrol Konten
second_title: Aspose.Words untuk .NET
articleTitle: Bekerja dengan SDT Kontrol Konten
linktitle: Bekerja dengan SDT Kontrol Konten
description: "Manajemen konten dokumen tingkat lanjut, cara membuat dan memanipulasi kontrol konten (Tag Dokumen Terstruktur) menggunakan C#."
type: docs
weight: 390
url: /id/net/working-with-content-control-sdt/
---

Di Microsoft Word, Anda bisa membuat formulir dengan memulai dengan templat dan menambahkan kontrol konten, termasuk kotak centang, kotak teks, pemilih tanggal, dan daftar drop-down. Di Aspose.Words, Tag Dokumen Terstruktur atau kontrol konten dari dokumen apa pun yang dimuat ke Aspose.Words diimpor sebagai node StructuredDocumentTag. Tag dokumen terstruktur (SDT atau kontrol konten) memungkinkan penyematan semantik yang ditentukan pelanggan serta perilaku dan tampilannya ke dalam dokumen.

StructuredDocumentTag dapat muncul dalam dokumen di tempat berikut:

- Tingkat blok – Di antara paragraf dan tabel, sebagai turunan dari Badan, HeaderFooter, Komentar, Catatan Kaki, atau simpul Bentuk
- Tingkat baris – Di antara baris dalam tabel, sebagai anak dari simpul Tabel
- Tingkat sel – Di antara sel-sel dalam baris tabel, sebagai anak dari simpul Baris
- Tingkat sebaris – Di antara konten sebaris di dalam, sebagai turunan dari Paragraf
- Bersarang di dalam StructuredDocumentTag lainnya

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

Contoh kode berikut menunjukkan cara membuat kontrol konten tipe kotak centang:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-CheckBoxTypeContentControl-CheckBoxTypeContentControl.cs" >}}

Contoh kode berikut menunjukkan cara membuat kontrol konten kotak teks kaya tipe:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-RichTextBoxContentControl-RichTextBoxContentControl.cs" >}}

Contoh kode berikut menunjukkan cara membuat kontrol konten dari tipe kotak kombo:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-ComboBoxContentControl-ComboBoxContentControl.cs" >}}

## Cara Memperbarui Kontrol Konten

Bagian ini menjelaskan cara memperbarui nilai SDT atau kontrol konten secara terprogram.

Contoh kode berikut menunjukkan cara menyetel status kotak centang saat ini:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-UpdateContentControls-SetCurrentStateOfCheckBox.cs" >}}

Contoh kode berikut menunjukkan cara mengubah kontrol konten tipe kotak teks biasa, daftar drop-down, dan gambar:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-UpdateContentControls-ModifyContentControls.cs" >}}

## Mengikat Kontrol Konten ke Bagian XML Kustom

Anda dapat mengikat kontrol konten dengan data XML (*bagian XML khusus*) di dokumen Word.

Contoh kode berikut menunjukkan cara mengikat kontrol konten ke bagian XML kustom:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-BindSDTtoCustomXmlPart.cs" >}}

## Pemetaan XML Rentang Tag Dokumen Terstruktur

Anda bisa mendapatkan pemetaan rentang tag dokumen terstruktur ini ke data XML di bagian XML khusus dari dokumen saat ini menggunakan **Properti StructuredDocumentTagRangeStart.XmlMapping**. Namun, metode [SetMapping](https://reference.aspose.com/words/net/aspose.words.markup/xmlmapping/setmapping/) dapat digunakan untuk memetakan rentang tag dokumen terstruktur ke data XML.

Contoh kode berikut menunjukkan cara mengatur pemetaan XML:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-StructuredDocumentTagRangeStartXmlMapping.cs" >}}

## Hapus Isi Kontrol Konten

Anda dapat menghapus konten kontrol konten dengan menampilkan placeholder. Metode **StructuredDocumentTag.Clear** menghapus konten tag dokumen terstruktur ini dan menampilkan placeholder jika ditentukan. Namun, tidak mungkin menghapus konten kontrol konten jika ada revisi. Jika kontrol konten tidak memiliki tempat penampung, lima spasi disisipkan seperti di Microsoft Word (kecuali bagian berulang, item bagian berulang, grup, kotak centang, kutipan). Jika kontrol konten dipetakan ke XML kustom, simpul XML yang direferensikan akan dihapus.

Contoh kode berikut menunjukkan cara menghapus konten dari kontrol konten:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-ClearContentsControl.cs" >}}

## Ubah Latar Belakang Kontrol Konten dan Warna Batas

Properti `StructuredDocumentTag.Color` memungkinkan Anda mendapatkan atau mengatur warna kontrol konten. Warna mempengaruhi kontrol konten dalam dua situasi:

1. MS Word menyorot latar belakang kontrol konten ketika mouse bergerak di atas kontrol konten. Ini membantu mengidentifikasi kontrol konten. Warna highlightnya sedikit "lebih lembut" dibandingkan *Color*. Misalnya MS Word menyorot latar belakang dengan warna merah jambu, sedangkan *Color* berwarna Merah.
2. Saat Anda berinteraksi (mengedit, memilih, dll) dengan kontrol konten, batas kontrol konten diwarnai dengan *Color*.

Contoh kode berikut menunjukkan cara mengubah warna kontrol konten:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-SetContentControlColor.cs" >}}

## Cara Mengatur Gaya untuk Memformat Teks yang Diketik ke dalam Kontrol Konten

Jika Anda ingin mengatur gaya kontrol konten, Anda dapat menggunakan properti `StructuredDocumentTag.Style` atau `StructuredDocumentTag.StyleName`. Saat Anda mengetikkan teks ke dalam kontrol konten di dokumen keluaran, teks yang diketik akan memiliki gaya "Kutipan".

{{% alert color="primary" %}}

Perhatikan bahwa hanya gaya Tertaut dan Karakter yang dapat diterapkan ke kontrol konten. InvalidOperationException ("Tidak dapat menerapkan gaya ini ke SDT") muncul ketika gaya yang ada tetapi tidak Tertaut atau gaya Karakter diterapkan.

{{% /alert %}}

Contoh kode berikut menunjukkan cara mengatur gaya kontrol konten:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-SetContentControlStyle.cs" >}}

## Bekerja dengan Kontrol Konten Bagian Berulang

Kontrol konten bagian berulang memungkinkan pengulangan konten yang terkandung di dalamnya. Dengan menggunakan Aspose.Words, node tag dokumen terstruktur dari bagian berulang dan jenis item bagian berulang dapat dibuat dan untuk tujuan ini, [Jenis enumerasi SdtType](https://reference.aspose.com/words/net/aspose.words.markup/sdttype/) menyediakan properti **RepeatingSectionItem**.

Contoh kode berikut menunjukkan cara mengikat kontrol konten bagian berulang ke tabel.

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-CreatingTableRepeatingSectionMappedToCustomXmlPart.cs" >}}
