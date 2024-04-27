---
title: Konversi Word ke Excel di Java
second_title: Aspose.Words Sitemap Java
articleTitle: Mengkonversi Dokumen ke Excel
linktitle: Mengkonversi Dokumen ke Excel
description: "Konversi PDF ke Excel, XML ke Excel, DOCX ke Excel JavaSitemap Simpan dokumen dalam berbagai format ke XLSX menggunakan JavaSitemap"
type: docs
weight: 15
url: /id/java/convert-a-document-to-excel/
---

Mengkonversi dokumen dari satu format ke format lain adalah fitur unggulan Aspose.WordsSitemap Anda dapat mengonversi dokumen apa pun yang tersedia [Login](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) juga ke format XLSX.

## Konversi Dokumen ke XLSX

Mengkonversi dokumen ke XLSX adalah proses yang agak rumit. Untuk menyimpan dokumen Anda ke format XLSX menggunakan <span notrans="<span notrans=" Aspose.Words"=""></span>Sitemap Sitemap [XlsxSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/) kelas dan baru `Xlsx` elemen dalam [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) Sitemap Seperti disebutkan di atas, Anda dapat menyimpan dokumen dalam format beban yang didukung oleh Aspose.Words ke XLSX.

Contoh kode berikut menunjukkan cara menyimpan PDF ke XLSX:

{{< highlight java >}}
Document doc = new Document(getMyDir() + "Pdf Document.pdf");
doc.save(getArtifactsDir() + "BaseConversions.PdfToXlsx.xlsx");
{{< /highlight >}}

{{% alert color="primary" %}}

Terkadang perlu menentukan opsi tambahan, yang dapat mempengaruhi hasil menyimpan dokumen sebagai XLSX. Pilihan ini dapat ditentukan oleh penggunaan [XlsxSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/) kelas, mengandung sifat yang menentukan bagaimana output XLSX akan ditampilkan.

{{% /alert %}}

## Cari dan Ganti Saat Tabungan ke XLSX

Juga menggunakan Aspose.Words, Anda dapat menemukan string khusus atau ekspresi biasa dalam dokumen Anda dan menggantinya dengan pencocokan yang Anda butuhkan. Kemudian Anda juga dapat menyimpan hasilnya ke format XLSX.

Contoh kode berikut menunjukkan cara melakukan menemukan dan mengganti operasi dan menghemat hasilnya ke XLSX:

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

## Tentukan Tingkat Kompresi Saat Tabungan ke XLSX

Anda juga dapat menentukan tingkat kompresi saat menyimpan menggunakan [CompressionLevel](https://reference.aspose.com/words/java/com.aspose.words/compressionlevel/) Login

Contoh kode berikut menunjukkan cara menentukan tingkat kompresi saat menyimpan ke format XLSX:

{{< highlight java >}}
Document doc = new Document(getMyDir() + "Document.docx");
XlsxSaveOptions saveOptions = new XlsxSaveOptions();
saveOptions.setCompressionLevel(CompressionLevel.MAXIMUM);

doc.save(getArtifactsDir() + "BaseConversions.CompressXlsx.xlsx", saveOptions);
{{< /highlight >}}

## Lihat Juga

- Bagian dokumentasi [Sitemap](/words/id/java/protect-or-encrypt-a-document/) untuk informasi lebih lanjut tentang melindungi dan mengenkripsi dokumen
- Artikel [Login](/words/id/java/find-and-replace/) untuk informasi lebih lanjut tentang menemukan dan mengganti konten yang Anda inginkan
