---
title: Konversi Word ke Excel di C#
second_title: Aspose.Words untuk .NET
articleTitle: Konversikan Dokumen ke Excel
linktitle: Konversikan Dokumen ke Excel
description: "Konversi PDF ke Excel, XML ke Excel, DOCX ke Excel C#. Simpan dokumen dalam berbagai format ke XLSX menggunakan C#."
type: docs
weight: 15
url: /id/net/convert-a-document-to-excel/
timestamp: 2024-07-09-19-00-42
---

Mengonversi dokumen dari satu format ke format lainnya merupakan fitur andalan Aspose.Words. Anda dapat mengonversi dokumen dalam format [memuat format](https://reference.aspose.com/words/net/aspose.words/loadformat/) apa pun yang tersedia juga ke format XLSX.

## Konversikan Dokumen ke XLSX

Mengonversi dokumen ke XLSX adalah proses yang agak rumit. Untuk menyimpan dokumen Anda ke format XLSX menggunakan Aspose.Words, gunakan kelas [XlsxSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/) dan elemen `Xlsx` baru dalam enumerasi [SaveFormat](https://reference.aspose.com/words/net/aspose.words/saveformat/). Seperti disebutkan di atas, Anda dapat menyimpan dokumen dalam format pemuatan apa pun yang didukung oleh Aspose.Words hingga XLSX.

Contoh kode berikut menunjukkan cara menyimpan PDF ke XLSX:

{{< highlight csharp >}}
Document doc = new Document(MyDir + "Pdf Document.pdf");
doc.Save(ArtifactsDir + "BaseConversions.PdfToXlsx.xlsx")
{{< /highlight >}}

{{% alert color="primary" %}}

Terkadang perlu menentukan opsi tambahan, yang dapat memengaruhi hasil penyimpanan dokumen sebagai XLSX. Opsi ini dapat ditentukan dengan menggunakan kelas [XlsxSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/), yang berisi properti yang menentukan bagaimana keluaran XLSX akan ditampilkan.

{{% /alert %}}

## Temukan dan Ganti Saat Menyimpan ke XLSX

Juga menggunakan Aspose.Words, Anda dapat menemukan string atau ekspresi reguler tertentu di dokumen Anda dan menggantinya dengan yang cocok yang Anda perlukan. Kemudian Anda juga bisa menyimpan hasilnya ke format XLSX.

Contoh kode berikut menunjukkan cara melakukan operasi pencarian dan penggantian dan menyimpan hasilnya ke XLSX:

{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

builder.Writeln("Ruby bought a ruby necklace.");

// We can use a "FindReplaceOptions" object to modify the find-and-replace process.
FindReplaceOptions options = new FindReplaceOptions();
// Set the "MatchCase" flag to "true" to apply case sensitivity while finding strings to replace.
// Set the "MatchCase" flag to "false" to ignore character case while searching for text to replace.
options.MatchCase = true;

doc.Range.Replace("Ruby", "Jade", options);
doc.Save(ArtifactsDir + "BaseConversions.FindReplaceXlsx.xlsx");
{{< /highlight >}}

## Tentukan Tingkat Kompresi Saat Menyimpan ke XLSX

Anda juga dapat menentukan tingkat kompresi saat menyimpan menggunakan properti [CompressionLevel](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/compressionlevel/).

Contoh kode berikut menunjukkan cara menentukan tingkat kompresi saat menyimpan ke format XLSX:

{{< highlight csharp >}}
Document doc = new Document(MyDir + "Document.docx");

XlsxSaveOptions saveOptions = new XlsxSaveOptions();
saveOptions.CompressionLevel = CompressionLevel.Maximum;

doc.Save(ArtifactsDir + "BaseConversions.CompressXlsx.xlsx", saveOptions);
{{< /highlight >}}

## Lihat juga

- Bagian dokumentasi [Melindungi atau Mengenkripsi Dokumen](/words/id/net/protect-or-encrypt-a-document/) untuk informasi lebih lanjut tentang melindungi dan mengenkripsi dokumen
- Artikel [Temukan dan ganti](/words/id/net/find-and-replace/) untuk informasi lebih lanjut tentang menemukan dan mengganti konten yang Anda inginkan
