---
title: Konversikan Word ke Excel dalam Java
second_title: Aspose.Words untuk Java
articleTitle: Konversi Dokumen ke Excel
linktitle: Konversi Dokumen ke Excel
description: "Konversikan PDF ke Excel, XML ke Excel, DOCX ke Excel Java. Simpan dokumen dalam berbagai format ke XLSX menggunakan Java."
type: docs
weight: 15
url: /id/java/convert-a-document-to-excel/
timestamp: 2024-01-31-14-23-37
---

Mengonversi dokumen dari satu format ke format lainnya adalah fitur unggulan Aspose.Words. Anda dapat mengonversi dokumen dalam format [muat format](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) apa pun yang tersedia juga ke format XLSX.

## Konversikan Dokumen menjadi XLSX

Mengonversi dokumen menjadi XLSX adalah proses yang agak rumit. Untuk menyimpan dokumen Anda ke format XLSX menggunakan Aspose.Words, gunakan kelas [XlsxSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/) dan elemen `Xlsx` baru dalam pencacahan [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/). Seperti disebutkan di atas, Anda dapat menyimpan dokumen dalam format pemuatan apa pun yang didukung oleh Aspose.Words hingga XLSX.

Contoh kode berikut menunjukkan cara menyimpan PDF ke XLSX:

{{< highlight java >}}
Document doc = new Document(getMyDir() + "Pdf Document.pdf");
doc.save(getArtifactsDir() + "BaseConversions.PdfToXlsx.xlsx");
{{< /highlight >}}

{{% alert color="primary" %}}

Terkadang perlu untuk menentukan opsi tambahan, yang dapat memengaruhi hasil penyimpanan dokumen sebagai XLSX. Opsi ini dapat ditentukan dengan menggunakan kelas [XlsxSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/), yang berisi properti yang menentukan bagaimana output XLSX akan ditampilkan.

{{% /alert %}}

## Temukan dan Ganti Saat Menyimpan ke XLSX

Juga menggunakan Aspose.Words, Anda dapat menemukan string atau ekspresi reguler tertentu di dokumen Anda dan menggantinya dengan yang cocok dengan yang Anda butuhkan. Kemudian Anda juga dapat menyimpan hasilnya ke format XLSX.

Contoh kode berikut menunjukkan cara melakukan operasi temukan dan ganti dan menyimpan hasilnya ke XLSX:

{{< highlight java >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

builder.writeln("Ruby bought a ruby necklace.");

// We can use a "FindReplaceOptions" object to modify the find-and-replace process.
FindReplaceOptions options = new FindReplaceOptions();
// Set the "MatchCase" flag to "true" to apply case sensitivity while finding strings to replace.
// Set the "MatchCase" flag to "false" to ignore character case while searching for text to replace.
options.setMatchCase(true);

doc.getRange().replace("Ruby", "Jade", options);
doc.save(getArtifactsDir() + "BaseConversions.FindReplaceXlsx.xlsx");
{{< /highlight >}}

## Tentukan Tingkat Kompresi Saat Menyimpan ke XLSX

Anda juga dapat menentukan tingkat kompresi saat menyimpan menggunakan properti [CompressionLevel](https://reference.aspose.com/words/java/com.aspose.words/compressionlevel/).

Contoh kode berikut menunjukkan cara menentukan tingkat kompresi saat menyimpan ke format XLSX:

{{< highlight java >}}
Document doc = new Document(getMyDir() + "Document.docx");
XlsxSaveOptions saveOptions = new XlsxSaveOptions();
saveOptions.setCompressionLevel(CompressionLevel.MAXIMUM);

doc.save(getArtifactsDir() + "BaseConversions.CompressXlsx.xlsx", saveOptions);
{{< /highlight >}}

## Lihat Juga

- Bagian dokumentasi [Melindungi atau Mendokumentasikan Dokumen](/words/java/protect-or-encrypt-a-document/) untuk informasi selengkapnya tentang melindungi dan mengenkripsi dokumen
- Artikel tersebut [Temuan dan Ganti](/words/java/find-and-replace/) untuk informasi selengkapnya selengkapnya tentang menemukan dan mengganti konten yang Anda inginkan
