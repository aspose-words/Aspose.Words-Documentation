---
title: Konversi dokumen ke PDF Java
second_title: Aspose.Words Sitemap Java
articleTitle: Konversi dokumen ke PDF
linktitle: Konversi dokumen ke PDF
description: "Mengkonversi dokumen di Word atau format yang didukung lainnya ke PDF, yang mempertahankan tampilan dokumen asli selama renderingnya pada berbagai platform yang menggunakan JavaSitemap"
type: docs
weight: 10
url: /id/java/convert-a-document-to-pdf/
timestamp: 2024-01-31-14-23-37
---

Kemampuan untuk mengubah dokumen dengan mudah dan andal dari satu format ke format lain adalah fitur utama dari Aspose.WordsSitemap Salah satu format paling populer untuk mengkonversi adalah PDF - format tetap-layout, yang mempertahankan tampilan asli dokumen selama rendering di berbagai platform. Istilah "rendering" digunakan dalam Aspose.Words untuk menggambarkan proses mengkonversi dokumen ke format file yang dipesan atau memiliki konsep halaman.

## Mengkonversi Dokumen Word ke PDF {#convert-a-word-document-to-pdf}

Konversi dari Word ke PDF adalah proses yang agak kompleks yang memerlukan beberapa tahap perhitungan. Aspose.Words mesin layout meniru cara Meme it Microsoft WordMesin tata letak halaman ’s bekerja, membuat dokumen output PDF terlihat sedekat mungkin dengan apa yang dapat Anda lihat Microsoft WordSitemap

Sitemap Aspose.Words Anda dapat mengubah dokumen dari format DOC atau DOCX ke PDF tanpa menggunakan Microsoft Login Artikel ini menjelaskan cara melakukan konversi ini.

{{% alert color="primary" %}}

Perhatikan bahwa jumlah halaman dalam dokumen mempengaruhi waktu konversi.

{{% /alert %}}

### Mengkonversi DOCX atau DOC ke PDF {#converting-doc-or-docx-to-pdf}

Konversi dari format dokumen DOC atau DOCX ke format PDF Aspose.Words sangat mudah dan dapat dicapai hanya dengan dua baris kode yang:

Sitemap Muat dokumen Anda ke dalam [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) objek menggunakan salah satu konstror dengan menentukan nama dokumen dengan ekstensi formatnya.
Sitemap Sitemap [Document.Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-int) metode pada **Document** objek dan tentukan format output yang diinginkan sebagai PDF dengan memasukkan nama file dengan ekstensi ".PDF".

Contoh kode berikut menunjukkan bagaimana mengkonversi dokumen dari DOCX ke PDF menggunakan `Save` metode:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "docx-to-pdf.java" >}}

Anda dapat mengunduh file template dari contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/com/aspose/words/examples/loading_saving/ConvertImageToPdf/Template.doc)Sitemap

{{% alert color="primary" %}}

Terkadang perlu menentukan opsi tambahan, yang dapat mempengaruhi hasil menyimpan dokumen sebagai PDF. Pilihan ini dapat ditentukan oleh penggunaan [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) kelas, mengandung sifat yang menentukan bagaimana output PDF akan ditampilkan.

Perhatikan bahwa dengan teknik yang sama, Anda dapat mengonversi dokumen format aliran-layout ke format PDF.

{{% /alert %}}

### Konversi ke PDF yang berbeda Login {#converting-to-various-pdf-standards}

Aspose.Words Sitemap [Login](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/)enumerasi untuk mendukung konversi DOC atau DOCX ke berbagai standar format PDF (seperti PDF 1.7, PDF 1.5, dll).

Contoh kode berikut menunjukkan bagaimana mengkonversi dokumen ke PDF 1.7 menggunakan [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) dengan kepatuhan terhadap PDF17:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "conversion-to-pdf17.java" >}}

## Konversi Gambar ke PDF

Konversi ke PDF tidak dibatasi oleh Microsoft Word format dokumen. Setiap format yang didukung oleh Aspose.Words, termasuk programmatically diciptakan, juga dapat dikonversi ke PDF. Misalnya, kita dapat mengonversi gambar halaman tunggal, seperti JPEG, PNG, BMP, EMF, atau WMF, serta gambar multi-halaman, seperti TIFF dan GIF, ke PDF.

Contoh kode berikut menunjukkan bagaimana mengkonversi gambar JPEG dan TIFF ke PDF:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "image-to-pdf.java" >}}

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "convert-image-to-pdf.java" >}}

Untuk membuat pekerjaan kode ini, Anda perlu menambahkan referensi ke Aspose.Words, Java.awt.image, dan javax. paket kelas gambario untuk proyek Anda.

## Login Ukuran output

Saat menyimpan ke PDF, Anda dapat menentukan apakah Anda ingin mengoptimalkan output. Untuk melakukan ini, Anda perlu mengatur Meme it [OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getOptimizeOutput) Login true, dan kemudian kanvas bersarang redundan dan kanvas kosong akan dihapus, tetangga glyphs dengan format yang sama akan dipisahkan.

Contoh kode berikut menunjukkan cara mengoptimalkan output:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "optimize-output.java" >}}

{{% alert color="primary" %}}

Menggunakan **OptimizeOutput** properti dapat mempengaruhi akurasi tampilan konten.

{{% /alert %}}

## Lihat Juga

- Artikel [Login](/words/id/java/rendering/) untuk informasi lebih lanjut tentang format tetap-halaman dan aliran-layout
- Artikel [Login](/words/java/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) untuk informasi lebih lanjut tentang tata letak halaman
- Artikel [Email: info@ids-imaging.com](/words/id/java/specify-rendering-options-when-converting-to-pdf/) untuk informasi lebih lanjut mengenai penggunaan `PdfSaveOptions` Login
