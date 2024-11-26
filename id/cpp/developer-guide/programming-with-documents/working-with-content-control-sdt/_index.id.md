---
title: Bekerja dengan Kontrol Konten SDT
second_title: Aspose.Words untuk C++
articleTitle: Bekerja dengan Kontrol Konten SDT
linktitle: Bekerja dengan Kontrol Konten SDT
type: docs
description: "Manajemen konten dokumen tingkat lanjut, cara membuat dan memanipulasi kontrol konten (Tag Dokumen Terstruktur) menggunakan C++."
weight: 390
url: /id/cpp/structured-document-tags-or-content-control/
timestamp: 2024-01-27-14-07-04
---

Di Microsoft Word, Anda dapat membuat formulir dengan memulai dengan templat dan menambahkan kontrol konten, termasuk kotak centang, kotak teks, pemilih tanggal, dan daftar tarik-turun. Di Aspose.Words, Tag Dokumen Terstruktur atau kontrol konten dari dokumen apa pun yang dimuat ke Aspose.Words diimpor sebagai simpul StructuredDocumentTag. Tag dokumen terstruktur (SDT atau kontrol konten) memungkinkan untuk menyematkan semantik yang ditentukan pelanggan serta perilaku dan tampilannya ke dalam dokumen. StructuredDocumentTag dapat muncul dalam dokumen di tempat-tempat berikut:

- Level blok-Di antara paragraf dan tabel, sebagai turunan dari Isi, HeaderFooter, Komentar, Catatan Kaki, atau simpul Bentuk
- Tingkat baris-Di antara baris dalam tabel, sebagai turunan dari simpul Tabel
- Tingkat sel-Di antara sel-sel dalam baris tabel, sebagai turunan dari simpul Baris
- Tingkat sebaris-Di antara konten sebaris di dalamnya, sebagai turunan dari Paragraf
- Bersarang di dalam StructuredDocumentTaglainnya

## Cara Mengatur Gaya untuk Memformat Teks yang Diketik ke dalam Kontrol Konten

Jika Anda ingin mengatur gaya kontrol konten, Anda dapat menggunakan properti `StructuredDocumentTag.Style` atau `StructuredDocumentTag.StyleName`. Saat Anda mengetik teks ke dalam kontrol konten di dokumen keluaran, teks yang diketik akan memiliki gaya "Kutipan".

{{% alert color="primary" %}}

Perhatikan bahwa hanya gaya Tertaut dan Karakter yang dapat diterapkan ke kontrol konten. Sebuah InvalidOperationException ("Tidak dapat menerapkan gaya ini ke SDT") dilemparkan saat gaya yang ada tetapi tidak Ditautkan atau Gaya Karakter sedang diterapkan.

{{% /alert %}}

Contoh kode berikut menunjukkan cara mengatur gaya kontrol konten:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-SetContentControlStyle.cpp" >}}

## Bekerja dengan Kontrol Konten Bagian Berulang

Kontrol konten bagian berulang memungkinkan pengulangan konten yang terkandung di dalamnya. Dengan menggunakan Aspose.Words, simpul tag dokumen terstruktur dari bagian berulang dan jenis item bagian berulang dapat dibuat dan untuk tujuan ini, jenis pencacahan SdtType menyediakan properti **RepeatingSectionItem**.

Contoh kode berikut menunjukkan cara mengikat kontrol konten bagian berulang ke tabel:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-CreatingTableRepeatingSectionMappedToCustomXmlPart.cpp" >}}
