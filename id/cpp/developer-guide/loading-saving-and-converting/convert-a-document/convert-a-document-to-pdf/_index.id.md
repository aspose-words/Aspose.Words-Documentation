---
title: Konversikan Dokumen menjadi PDF dalam C++
second_title: Aspose.Words untuk C++
articleTitle: Konversikan Dokumen menjadi PDF
linktitle: Konversikan Dokumen menjadi PDF
description: "Konversikan dokumen menjadi PDF menggunakan C++. Berbagai format input didukung, termasuk format Word, OpenOffice, Gambar, dan eBook."
type: docs
weight: 10
url: /id/cpp/convert-a-document-to-pdf/
timestamp: 2024-10-21-08-52-03
---

Kemampuan untuk mengonversi dokumen dengan mudah dan andal dari satu format ke format lainnya adalah fitur utama Aspose.Words. Salah satu format paling populer untuk mengonversi adalah PDF - format tata letak tetap, yang mempertahankan tampilan asli dokumen selama renderingnya di berbagai platform. Istilah "rendering" digunakan dalam Aspose.Words untuk menggambarkan proses pengubahan dokumen menjadi format file yang diberi paginasi atau memiliki konsep pages.

## Konversikan Dokumen Word menjadi PDF {#convert-a-word-document-to-pdf}

Konversi dari Word ke PDF adalah proses yang agak rumit yang memerlukan beberapa tahap perhitungan. mesin tata letak Aspose.Words meniru cara kerja mesin tata letak halaman Microsoft Word, membuat dokumen keluaran PDF terlihat sedekat mungkin dengan apa yang dapat Anda lihat di Microsoft Word.

Dengan Aspose.Words Anda dapat mengonversi dokumen secara terprogram dari format DOC atau DOCX menjadi PDF tanpa menggunakan Microsoft Office. Artikel ini menjelaskan cara melakukan konversi ini.

{{% alert color="primary" %}}

Perhatikan bahwa jumlah halaman dalam dokumen memengaruhi waktu konversi.

{{% /alert %}}

### Mengubah DOCX atau DOC menjadi PDF {#converting-doc-or-docx-to-pdf}

Mengonversi dari format dokumen DOC atau DOCX ke format PDF dalam Aspose.Words sangat mudah dan dapat dilakukan hanya dengan dua baris kode yang:

1. Muat dokumen Anda ke dalam objek [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) menggunakan salah satu konstruktornya dengan menentukan nama dokumen dengan ekstensi formatnya.
1. Panggil salah satu metode [Document.Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) pada objek **Document** dan tentukan format keluaran yang diinginkan sebagai PDF dengan memasukkan nama file dengan".PDF" ekstensi.

Contoh kode berikut menunjukkan cara mengonversi dokumen dari DOCX menjadi PDF menggunakan metode `Save`:

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "docx-to-pdf.h" >}}

Anda dapat mengunduh file templat contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% alert color="primary" %}}

Terkadang perlu untuk menentukan opsi tambahan, yang dapat memengaruhi hasil penyimpanan dokumen sebagai PDF. Opsi ini dapat ditentukan dengan menggunakan kelas [PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/), yang berisi properti yang menentukan bagaimana output PDF akan ditampilkan.

Perhatikan bahwa dengan teknik yang sama, Anda dapat mengonversi dokumen format tata letak alur apa pun ke format PDF.

{{% /alert %}}

### Konversikan ke Standar PDF yang Berbeda {#converting-to-various-pdf-standards}

Aspose.Words menyediakan pencacahan [PdfCompliace](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_compliance/) untuk mendukung konversi DOC atau DOCX menjadi berbagai standar format PDF (seperti PDF 1.7, PDF 1.5, dll.).

Contoh kode berikut menunjukkan cara mengonversi dokumen menjadi PDF 1.7 menggunakan [PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/) dengan kepatuhan terhadap PDF1 7:

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "conversion-to-pdf17.h" >}}

## Konversikan Gambar menjadi PDF {#convert-an-image-to-pdf}

Mengonversi ke PDF tidak dibatasi oleh format dokumen Microsoft Word. Format apa pun yang didukung oleh Aspose.Words, termasuk yang dibuat secara terprogram, juga dapat dikonversi ke PDF. Misalnya, kita dapat mengonversi gambar satu halaman, seperti JPEG, PNG, BMP, EMF, atau WMF, serta gambar multi-halaman, seperti TIFF dan GIF, hingga PDF.

Contoh kode berikut menunjukkan cara mengonversi gambar JPEG dan TIFF menjadi PDF:

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "image-to-pdf.h" >}}

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "convert-image-to-pdf.h" >}}

Agar kode ini berfungsi, Anda perlu menambahkan referensi ke Aspose.Words dan `System.Drawing` ke proyek Anda.

## Lihat Juga

- Artikel tersebut [Rendering](/words/cpp/rendering/) untuk informasi selengkapnya tentang format halaman tetap dan tata letak alur
- Artikel tersebut [Mengonversi ke Format halaman Tetap](/words/cpp/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) untuk informasi lebih lanjut tentang tata letak halaman
- Artikel tersebut [Tentukan Opsi Rendering Saat Mengonversi ke PDF](/words/cpp/specify-rendering-options-when-converting-to-pdf/) untuk informasi lebih lanjut tentang penggunaan kelas `PdfSaveOptions`
