---
title: Bekerja dengan Kontrol Konten SDT di Java
second_title: Aspose.Words Sitemap Java
articleTitle: Bekerja dengan Kontrol Konten SDT
linktitle: Bekerja dengan Kontrol Konten SDT
type: docs
description: "Manajemen konten dokumen canggih, cara membuat dan memanipulasi kontrol konten (Structured Document Tag) menggunakan JavaSitemap"
weight: 390
url: /id/java/working-with-content-control-sdt/
timestamp: 2024-01-31-14-23-37
---

Sitemap Microsoft Word, Anda dapat membuat formulir dengan memulai dengan template dan menambahkan kontrol konten, termasuk kotak centang, kotak teks, pemilih tanggal, dan daftar drop-down. Sitemap Aspose.WordsSitemap Tag Dokumen Terstruktur atau kontrol konten dari dokumen apa pun yang dimuat ke Aspose.Words diimpor sebagai node Documents. Tag dokumen terstruktur (SDT atau kontrol konten) memungkinkan timbul semantik yang ditentukan pelanggan serta perilaku dan penampilannya menjadi dokumen.

Sitemap Tag dapat terjadi dalam dokumen di tempat-tempat berikut:

- Tingkat blok - Di antara paragraf dan tabel, sebagai anak tubuh, Header Footer, Komentar, Footnote atau node Bentuk.
- Baris-level - Di antara baris dalam tabel, sebagai anak dari node tabel.
- Tingkat sel - Di antara sel di baris meja, sebagai anak dari node Row.
- Tingkat inline - Di antara konten inline di dalam, sebagai anak Paragraf.
- Bersarang di dalam Tag Pemeriksaan Struktur lainnya.

## Masukkan Kontrol Konten ke dalam Dokumen

Dalam versi ini Aspose.Words, jenis SDT atau kontrol konten berikut dapat dibuat:

- Checkbox
- DropDownList
- ComboBox
- Date
- BuildingBlockGallery
- Group
- `Picture`
- RichText
- PlainText

Contoh kode berikut menunjukkan cara membuat kontrol konten kotak centang tipe:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CheckBoxTypeContentControl-CheckBoxTypeContentControl.java" >}}

Contoh kode berikut menunjukkan cara membuat kontrol konten dari kotak teks kaya tipe:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-RichTextBoxContentControl-RichTextBoxContentControl.java" >}}

Contoh kode berikut menunjukkan cara membuat kontrol konten dari kotak combo tipe:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ComboBoxContentControl-ComboBoxContentControl.java" >}}

## Cara Memperbarui Kontrol Konten

Bagian ini menjelaskan cara memperbarui nilai SDT atau kontrol konten secara programmatik.

Contoh kode berikut menunjukkan cara mengatur keadaan kotak centang saat ini:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SetCurrentStateOfCheckBox-SetCurrentStateOfCheckBox.java" >}}

Contoh kode berikut menunjukkan cara memodifikasi kontrol konten dari jenis kotak teks polos, daftar drop-down dan gambar:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ModifyContentControls-ModifyContentControls.java" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file sampel dari contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Structured%20document%20tags.docx)Sitemap

{{% /alert %}}

## Mengikat Kontrol Konten ke Bagian XML Khusus

Anda dapat mengikat kontrol konten dengan data XML (* bagian XML kustom *) dalam dokumen Word

Contoh kode berikut menunjukkan cara mengikat kontrol konten ke bagian XML kustom:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-BindingContentControlwithXML-BindingContentControlwithXML.java" >}}

## Konten yang jelas dari Kontrol Konten

Anda dapat menghapus isi kontrol konten dengan menampilkan placeholder. **Sitemap** metode membersihkan konten dari tag dokumen terstruktur ini dan menampilkan placeholder jika didefinisikan. Login Tidak mungkin untuk membersihkan isi dari kontrol konten jika memiliki revisi. Jika kontrol konten tidak memiliki placeholder, lima ruang dimasukkan seperti dalam MS Word (kecuali bagian berulang, item bagian berulang, kelompok, kotak centang, kutipan). Jika kontrol konten dipetakan ke XML kustom, node XML yang direferensikan dibersihkan.

Contoh kode berikut menunjukkan bagaimana menghapus konten kontrol konten:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ClearContentsControl-ClearContentsControl.java" >}}

## Mengubah Latar Belakang Kontrol Konten dan Warna Perbatasan

Login `StructuredDocumentTag.Color` properti memungkinkan Anda untuk mendapatkan atau mengatur warna kontrol konten. Warna mempengaruhi kontrol konten dalam dua situasi:

Sitemap MS Word menyoroti latar belakang kendali konten ketika mouse bergerak di atas kendali konten. Ini membantu untuk mengidentifikasi kontrol konten. Warna sorotan adalah sedikit "softer" dari *Color*Sitemap Misalnya, MS Word menyoroti latar belakang dengan warna pink, ketika *Color* merah.
2. di Ketika Anda berinteraksi (editing, memilih dll) dengan kontrol konten, perbatasan kontrol konten berwarna dengan *Color*Sitemap

Contoh kode berikut menunjukkan cara mengubah warna kontrol konten:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-SetContentControlColor.java" >}}

## Cara Mengatur Gaya ke Format Teks Diketikkan ke Kontrol Konten

Jika Anda ingin mengatur gaya kontrol konten, Anda dapat menggunakan `StructuredDocumentTag.Style` Sitemap `StructuredDocumentTag.StyleName` Sitemap Ketika Anda mengetik teks ke dalam kontrol konten dalam dokumen output, teks yang diketik akan memiliki gaya "Quote".

{{% alert color="primary" %}}

Perhatikan bahwa hanya gaya Tautan dan Karakter dapat diterapkan pada kontrol konten. InvalidOperationException ("Tidak berlaku gaya ini ke SDT") dibuang ketika gaya yang ada tetapi tidak ditaut atau gaya karakter diterapkan.

{{% /alert %}}

Contoh kode berikut menunjukkan cara mengatur gaya kontrol konten:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-setContentControlStyle.java" >}}

## Bekerja dengan Mengulangi Kontrol Konten Bagian

Kontrol konten bagian berulang memungkinkan mengulang konten yang terkandung di dalamnya. Sitemap Aspose.Words, node tag dokumen terstruktur dari bagian pengulangan dan jenis item bagian berulang dapat dibuat dan untuk tujuan ini, [Login](https://reference.aspose.com/words/java/com.aspose.words/sdttype/) menyediakan anggota REPEATING_SECTION_ITEM.

Contoh kode berikut menunjukkan cara mengikat kontrol konten bagian berulang ke meja:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-CreatingTableRepeatingSectionMappedToCustomXmlPart.java" >}}

