---
title: Konversikan Dokumen ke PDF di Python
second_title: Aspose.Words untuk Python via .NET
articleTitle: Konversikan Dokumen ke PDF
linktitle: Konversikan Dokumen ke PDF
description: "Konversikan dokumen ke PDF menggunakan Python. Berbagai format input didukung, termasuk format Word, OpenOffice, Image, dan eBook."
type: docs
weight: 10
url: /id/python-net/convert-a-document-to-pdf/
timestamp: 2024-01-31-14-23-37
---

Kemampuan untuk mengkonversi dokumen dengan mudah dan andal dari satu format ke format lainnya adalah fitur utama Aspose.Words. Salah satu format konversi yang paling populer adalah PDF – format tata letak tetap, yang mempertahankan tampilan asli dokumen selama rendering di berbagai platform. Istilah "render" digunakan di Aspose.Words untuk menggambarkan proses mengubah dokumen menjadi format file yang diberi halaman atau memiliki konsep halaman.

## Konversikan Dokumen Word ke PDF {#convert-a-word-document-to-pdf}

Konversi dari Word ke PDF merupakan proses yang agak rumit yang memerlukan beberapa tahapan perhitungan. Mesin tata letak Aspose.Words meniru cara kerja mesin tata letak halaman Microsoft Word, membuat dokumen keluaran PDF terlihat sedekat mungkin dengan apa yang Anda lihat di Microsoft Word.

Dengan Aspose.Words Anda dapat mengonversi dokumen secara terprogram dari format Word, seperti DOC atau DOCX, ke PDF tanpa menggunakan Microsoft Office. Artikel ini menjelaskan cara melakukan konversi ini.

{{% alert color="primary" %}}

Perhatikan bahwa jumlah halaman dalam dokumen mempengaruhi waktu konversi.

{{% /alert %}}

### Konversi DOC atau DOCX ke PDF {#convert-doc-or-docx-to-pdf}

Mengonversi format dokumen DOC atau DOCX ke format PDF di Aspose.Words sangat mudah dan dapat dilakukan hanya dengan dua baris kode yaitu:

1. Muat dokumen Anda ke dalam objek [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) menggunakan salah satu konstruktornya dengan menentukan nama dokumen dengan ekstensi formatnya.
1. Aktifkan salah satu metode [Document.save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) pada objek [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) dan tentukan format output yang diinginkan sebagai PDF dengan memasukkan nama file berekstensi ".PDF".

Contoh kode berikut menunjukkan cara mengkonversi dokumen dari DOCX ke PDF menggunakan metode [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/#str):

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "docx-to-pdf.py" >}}

Anda dapat mengunduh file template contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% alert color="primary" %}}

Terkadang perlu menentukan opsi tambahan, yang dapat memengaruhi hasil penyimpanan dokumen sebagai PDF. Pilihan ini dapat ditentukan dengan menggunakan kelas [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/), yang berisi properti yang menentukan bagaimana keluaran PDF akan ditampilkan.

Perhatikan bahwa dengan teknik yang sama, Anda dapat mengonversi dokumen format tata letak aliran apa pun ke format PDF.

{{% /alert %}}

### Konversikan ke Berbagai Standar PDF {#convert-to-various-pdf-standards}

Aspose.Words menyediakan enumerasi [PdfCompliace](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/) untuk mendukung konversi DOC atau DOCX ke berbagai standar format PDF (seperti PDF 1.7, PDF 1.5, dll.).

Contoh kode berikut menunjukkan cara mengonversi dokumen ke PDF 1.7 menggunakan [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) dengan kepatuhan terhadap [PDF17](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/#pdf17):

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "conversion-to-pdf17.py" >}}

## Konversi Gambar ke PDF

Mengonversi ke PDF tidak dibatasi oleh format dokumen Microsoft Word. Format apa pun yang didukung oleh Aspose.Words, termasuk yang dibuat secara terprogram, juga dapat dikonversi ke PDF. Misalnya, kita dapat mengonversi gambar satu halaman, seperti JPEG, PNG, BMP, EMF, atau WMF, serta gambar multi halaman, seperti TIFF dan GIF, ke PDF.

Contoh kode berikut menunjukkan cara mengonversi gambar JPEG dan TIFF ke PDF:

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "image-to-pdf.py" >}}

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "convert-image-to-pdf.py" >}}

Agar kode ini berfungsi, Anda perlu menambahkan referensi ke Aspose.Words dan `aspose.pydrawing` ke proyek Anda.

## Kurangi Ukuran Keluaran PDF

Saat menyimpan ke PDF, Anda dapat menentukan apakah Anda ingin mengoptimalkan hasilnya. Untuk melakukan ini, Anda perlu menyetel tanda [optimize_output](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/optimize_output/) ke true, lalu kanvas bertumpuk dan kanvas kosong yang berlebihan akan dihapus, glyph tetangga dengan format yang sama akan digabungkan.

{{% alert color="primary" %}}

Penggunaan properti **OptimizeOutput** dapat mempengaruhi keakuratan tampilan konten.

{{% /alert %}}

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "optimize-output.py" >}}

## Kurangi Ukuran Keluaran PDF

Saat menyimpan ke PDF, Anda dapat menentukan apakah Anda ingin mengoptimalkan hasilnya. Untuk melakukan ini, Anda perlu menyetel tanda [optimize_output](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/optimize_output/) ke true, lalu kanvas bertumpuk dan kanvas kosong yang berlebihan akan dihapus, glyph tetangga dengan format yang sama akan digabungkan.

{{% alert color="primary" %}}

Penggunaan properti **OptimizeOutput** dapat mempengaruhi keakuratan tampilan konten.

{{% /alert %}}

## Lihat juga

- Artikel [Render](/words/id/python-net/rendering/) untuk informasi lebih lanjut tentang format halaman tetap dan tata letak alur
- Artikel [Mengonversi ke Format Halaman Tetap](/words/python-net/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) untuk informasi lebih lanjut tentang tata letak halaman
- Artikel [Tentukan Opsi Rendering Saat Mengonversi ke PDF](/words/id/python-net/specify-rendering-options-when-converting-to-pdf/) untuk informasi lebih lanjut tentang penggunaan kelas [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/)
