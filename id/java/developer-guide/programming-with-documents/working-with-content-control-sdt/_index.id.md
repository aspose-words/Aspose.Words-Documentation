---
title: Bekerja dengan Kontrol Konten SDT dalam Java
second_title: Aspose.Words untuk Java
articleTitle: Bekerja dengan Kontrol Konten SDT
linktitle: Bekerja dengan Kontrol Konten SDT
type: docs
description: "Manajemen konten dokumen tingkat lanjut, cara membuat dan memanipulasi kontrol konten (Tag Dokumen Terstruktur) menggunakan Java."
weight: 390
url: /id/java/working-with-content-control-sdt/
timestamp: 2024-01-31-14-23-37
---

Di Microsoft Word, Anda dapat membuat formulir dengan memulai dengan templat dan menambahkan kontrol konten, termasuk checkboxes, kotak teks, pemilih tanggal, dan daftar tarik-turun. Di Aspose.Words, Tag Dokumen Terstruktur atau kontrol konten dari dokumen apa pun yang dimuat ke Aspose.Words diimpor sebagai simpul StructuredDocumentTag. Tag dokumen terstruktur (SDT atau kontrol konten) memungkinkan penyematan semantik yang ditentukan pelanggan serta perilaku dan tampilannya ke dalam dokumen.

StructuredDocumentTag dapat muncul dalam dokumen di tempat-tempat berikut:

- Level blok-Di antara paragraf dan tabel, sebagai turunan dari Isi, HeaderFooter, Komentar, Catatan Kaki, atau simpul Bentuk.
- Tingkat baris-Di antara baris dalam tabel, sebagai turunan dari simpul Tabel.
- Tingkat sel-Di antara sel-sel dalam baris tabel, sebagai turunan dari simpul Baris.
- Inline-level-Di antara konten sebaris di dalamnya, sebagai turunan dari sebuah Paragraf.
- Bersarang di dalam StructuredDocumentTag lainnya.

## Menyisipkan Kontrol Konten ke dalam Dokumen

Dalam versi Aspose.Words ini, jenis SDT atau kontrol konten berikut dapat dibuat:

- Checkbox
- DropDownList
- ComboBox
- Tanggal
- BuildingBlockGallery
- Grup
- `Picture`
- RichText
- PlainText

Contoh kode berikut menunjukkan cara membuat kontrol konten bertipe checkbox:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CheckBoxTypeContentControl-CheckBoxTypeContentControl.java" >}}

Contoh kode berikut menunjukkan cara membuat kontrol konten dari kotak teks kaya tipe:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-RichTextBoxContentControl-RichTextBoxContentControl.java" >}}

Contoh kode berikut menunjukkan cara membuat kontrol konten kotak kombo tipe:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ComboBoxContentControl-ComboBoxContentControl.java" >}}

## Cara Memperbarui Kontrol Konten

Bagian ini menjelaskan cara memperbarui nilai SDT atau kontrol konten secara terprogram.

Contoh kode berikut menunjukkan cara mengatur status checkboxsaat ini:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SetCurrentStateOfCheckBox-SetCurrentStateOfCheckBox.java" >}}

Contoh kode berikut menunjukkan cara mengubah kontrol konten jenis kotak teks biasa, daftar tarik-turun, dan gambar:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ModifyContentControls-ModifyContentControls.java" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file sampel dari contoh-contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Structured%20document%20tags.docx).

{{% /alert %}}

## Mengikat Kontrol Konten ke Bagian XML Khusus

Anda dapat mengikat kontrol konten dengan XML data (*custom XML part*) dalam dokumen Word.

Contoh kode berikut menunjukkan cara mengikat kontrol konten ke bagian XML khusus:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-BindingContentControlwithXML-BindingContentControlwithXML.java" >}}

## Menghapus Konten dari Kontrol Konten

Anda dapat menghapus konten kontrol konten dengan menampilkan placeholder. metode **StructuredDocumentTag.clear()** menghapus konten tag dokumen terstruktur ini dan menampilkan placeholder jika ditentukan. Namun, Tidak mungkin untuk menghapus konten kontrol konten jika memiliki revisi. Jika kontrol konten tidak memiliki placeholder, lima spasi disisipkan seperti di MS Word (kecuali bagian berulang, item bagian berulang, grup, kotak centang, kutipan). Jika kontrol konten dipetakan ke XML khusus, simpul XML yang direferensikan akan dihapus.

Contoh kode berikut menunjukkan cara menghapus konten kontrol konten:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ClearContentsControl-ClearContentsControl.java" >}}

## Ubah Kontrol Konten Latar Belakang dan Warna Batas

Properti `StructuredDocumentTag.Color` memungkinkan Anda mendapatkan atau mengatur warna kontrol konten. Warna memengaruhi kontrol konten dalam dua situasi:

1. MS Word menyoroti latar belakang kontrol konten saat mouse bergerak di atas kontrol konten. Ini membantu mengidentifikasi kontrol konten. Warna sorotan sedikit "lebih lembut" daripada *Color*. Misalnya, MS Word menyorot latar belakang dengan warna merah muda, saat *Color* berwarna Merah.
2. Saat Anda berinteraksi (mengedit, memilih, dll) dengan kontrol konten, batas kontrol konten diwarnai dengan *Color*.

Contoh kode berikut menunjukkan cara mengubah warna kontrol konten:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-SetContentControlColor.java" >}}

## Cara Mengatur Gaya untuk Memformat Teks yang Diketik ke dalam Kontrol Konten

Jika Anda ingin mengatur gaya kontrol konten, Anda dapat menggunakan properti `StructuredDocumentTag.Style` atau `StructuredDocumentTag.StyleName`. Saat Anda mengetik teks ke dalam kontrol konten di dokumen keluaran, teks yang diketik akan memiliki gaya "Kutipan".

{{% alert color="primary" %}}

Perhatikan bahwa hanya gaya Tertaut dan Karakter yang dapat diterapkan ke kontrol konten. Sebuah InvalidOperationException ("Tidak dapat menerapkan gaya ini ke SDT") dilemparkan saat gaya yang ada tetapi tidak Ditautkan atau Gaya Karakter sedang diterapkan.

{{% /alert %}}

Contoh kode berikut menunjukkan cara mengatur gaya kontrol konten:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-setContentControlStyle.java" >}}

## Bekerja dengan Kontrol Konten Bagian Berulang

Kontrol konten bagian berulang memungkinkan pengulangan konten yang terkandung di dalamnya. Dengan menggunakan Aspose.Words, simpul tag dokumen terstruktur dari bagian berulang dan jenis item bagian berulang dapat dibuat dan untuk tujuan ini, [SdtType tipe pencacahan](https://reference.aspose.com/words/java/com.aspose.words/sdttype/) menyediakan anggota REPEATING_SECTION_ITEM.

Contoh kode berikut menunjukkan cara mengikat kontrol konten bagian berulang ke tabel:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-CreatingTableRepeatingSectionMappedToCustomXmlPart.java" >}}

