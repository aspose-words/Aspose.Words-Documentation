---
title: Konversi Word ke PDF di C#
second_title: Aspose.Words untuk .NET
articleTitle: Konversikan Dokumen ke PDF
linktitle: Konversikan Dokumen ke PDF
description: "Konversikan dokumen ke PDF menggunakan C#. Konversi DOCX ke PDF C#. Berbagai format input didukung, termasuk format Word, OpenOffice, Image, dan eBook."
type: docs
weight: 10
url: /id/net/convert-a-document-to-pdf/
---

Kemampuan untuk mengkonversi dokumen dengan mudah dan andal dari satu format ke format lainnya adalah fitur utama Aspose.Words. Salah satu format konversi yang paling populer adalah PDF – format tata letak tetap, yang mempertahankan tampilan asli dokumen selama rendering di berbagai platform. Istilah "render" digunakan di Aspose.Words untuk menggambarkan proses mengubah dokumen menjadi format file yang diberi halaman atau memiliki konsep halaman.

## Konversikan Dokumen Word ke PDF

Konversi dari Word ke PDF merupakan proses yang agak rumit yang memerlukan beberapa tahapan perhitungan. Mesin tata letak Aspose.Words meniru cara kerja mesin tata letak halaman Microsoft Word, membuat dokumen keluaran PDF terlihat sedekat mungkin dengan apa yang Anda lihat di Microsoft Word.

Dengan Aspose.Words Anda dapat mengonversi dokumen secara terprogram dari format Word, seperti DOC atau DOCX, ke PDF tanpa menggunakan Microsoft Office. Artikel ini menjelaskan cara melakukan konversi ini.

{{% alert color="primary" %}}

Perhatikan bahwa jumlah halaman dalam dokumen mempengaruhi waktu konversi.

{{% /alert %}}

### Konversi DOCX atau DOC ke PDF

Mengonversi format dokumen DOC atau DOCX ke format PDF di Aspose.Words sangat mudah dan dapat dilakukan hanya dengan dua baris kode yaitu:

1. Muat dokumen Anda ke dalam objek [Document](https://reference.aspose.com/words/net/aspose.words/document/) menggunakan salah satu konstruktornya dengan menentukan nama dokumen dengan ekstensi formatnya.
1. Aktifkan salah satu metode [Document.Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save/) pada objek **Document** dan tentukan format output yang diinginkan sebagai PDF dengan memasukkan nama file berekstensi ".PDF".

Contoh kode berikut menunjukkan cara mengkonversi dokumen dari DOCX ke PDF menggunakan metode [Save](https://reference.aspose.com/words/net/aspose.words/document/save/):

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "docx-to-pdf.cs" >}}

Anda dapat mengunduh file template contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% alert color="primary" %}}

Terkadang perlu menentukan opsi tambahan, yang dapat memengaruhi hasil penyimpanan dokumen sebagai PDF. Pilihan ini dapat ditentukan dengan menggunakan kelas [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/), yang berisi properti yang menentukan bagaimana keluaran PDF akan ditampilkan.

Perhatikan bahwa dengan teknik yang sama, Anda dapat mengonversi dokumen format tata letak aliran apa pun ke format PDF.

{{% /alert %}}

### Konversikan ke Standar PDF yang Berbeda

Aspose.Words menyediakan [Kepatuhan Pdf](https://reference.aspose.com/words/net/aspose.words.saving/pdfcompliance/)enumeration untuk mendukung konversi DOC atau DOCX ke berbagai standar format PDF (seperti PDF 1.7, PDF 1.5, dll.).

Contoh kode berikut menunjukkan cara mengonversi dokumen ke PDF 1.7 menggunakan [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) sesuai dengan PDF17:

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "conversion-to-pdf17.cs" >}}

## Konversi Gambar ke PDF

Mengonversi ke PDF tidak dibatasi oleh format dokumen Microsoft Word. Format apa pun yang didukung oleh Aspose.Words, termasuk yang dibuat secara terprogram, juga dapat dikonversi ke PDF. Misalnya, kita dapat mengonversi gambar satu halaman, seperti JPEG, PNG, BMP, EMF, atau WMF, serta gambar multi halaman, seperti TIFF dan GIF, ke PDF.

Contoh kode berikut menunjukkan cara mengonversi gambar JPEG dan TIFF ke PDF:

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "image-to-pdf.cs" >}}

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "convert-image-to-pdf.cs" >}}

Agar kode ini berfungsi, Anda perlu menambahkan referensi ke Aspose.Words dan `System.Drawing` ke proyek Anda.

## Kurangi Ukuran Keluaran PDF

Saat menyimpan ke PDF, Anda dapat menentukan apakah Anda ingin mengoptimalkan hasilnya. Untuk melakukan ini, Anda perlu menyetel tanda [OptimizeOutput](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/optimizeoutput/) ke true, lalu kanvas bertumpuk dan kanvas kosong yang berlebihan akan dihapus, glyph tetangga dengan format yang sama akan digabungkan.

Contoh kode berikut menunjukkan cara mengoptimalkan output:

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "optimize-output.cs" >}}

{{% alert color="primary" %}}

Penggunaan properti **OptimizeOutput** dapat mempengaruhi keakuratan tampilan konten.

{{% /alert %}}

## Lihat juga

- Artikel [Render](/words/id/net/rendering/) untuk informasi lebih lanjut tentang format halaman tetap dan tata letak alur
- Artikel [Mengonversi ke Format Halaman Tetap](/words/net/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) untuk informasi lebih lanjut tentang tata letak halaman
- Artikel [Tentukan Opsi Rendering Saat Mengonversi ke PDF](/words/id/net/specify-rendering-options-when-converting-to-pdf/) untuk informasi lebih lanjut tentang penggunaan kelas `PdfSaveOptions`
- Artikel [Pelajari Fitur Konversi ke PDF/A dan PDF/UA](/words/id/net/learn-features-of-conversion-to-pdf-a-pdf-ua/) yang menjelaskan standar PDF mana dan ISO yang relevan untuk standar PDF yang mendukung Aspose.Words
- Artikel [Standar PDF Mana yang Lebih Baik untuk Dipilih](/words/id/net/which-pdf-standard-is-better-to-choose/) untuk menentukan standar PDF mana yang masuk akal untuk kasus tertentu

- Artikel [Bekerja dengan PDF/A atau PDF/UA](/words/id/net/working-with-pdfa-or-pdfua/) menjelaskan persyaratan konten dokumen dalam format PDF/A dan PDF/UA – terutama persyaratan untuk struktur dan font

- Artikel [Peringatan Masalah Aksesibilitas Saat Menyimpan ke PDF/A dan PDF/UA](/words/id/net/warnings-when-saving-to-pdfa-and-pdfua/) menjelaskan persyaratan aksesibilitas konten yang diberlakukan PDF/A dan PDF/UA
