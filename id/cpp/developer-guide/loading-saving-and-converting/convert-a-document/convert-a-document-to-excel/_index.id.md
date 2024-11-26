---
title: Konversi Word ke Excel dalam C++
second_title: Aspose.Words untuk C++
articleTitle: Konversi Dokumen ke Excel
linktitle: Konversi Dokumen ke Excel
description: "Konversikan PDF ke Excel, XML ke Excel, DOCX ke Excel C++. Simpan dokumen dalam berbagai format ke XLSX menggunakan C++."
type: docs
weight: 15
url: /id/cpp/convert-a-document-to-excel/
timestamp: 2024-01-31-14-23-37
---

Mengonversi dokumen dari satu format ke format lainnya adalah fitur unggulan Aspose.Words. Anda dapat mengonversi dokumen dalam format [load format](https://reference.aspose.com/words/cpp/aspose.words/loadformat/) apa pun yang tersedia juga ke format XLSX.

## Konversikan Dokumen menjadi XLSX

Mengonversi dokumen menjadi XLSX adalah proses yang agak rumit. Untuk menyimpan dokumen Anda ke format XLSX menggunakan Aspose.Words, gunakan kelas **XlsxSaveOptions** dan elemen `Xlsx` baru dalam enumerasi [SaveFormat](https://reference.aspose.com/words/cpp/aspose.words/saveformat/). Seperti disebutkan di atas, Anda dapat menyimpan dokumen dalam format pemuatan apa pun yang didukung oleh Aspose.Words hingga XLSX.

Contoh kode berikut menunjukkan cara menyimpan PDF ke XLSX:

{{< highlight cpp >}}
auto doc = MakeObject<Document>(MyDir + u"Pdf Document.pdf");
doc->Save(ArtifactsDir + u"BaseConversions.PdfToXlsx.xlsx");
{{< /highlight >}}

## Temukan dan Ganti Saat Menyimpan ke XLSX

Juga menggunakan Aspose.Words, Anda dapat menemukan string atau ekspresi reguler tertentu di dokumen Anda dan menggantinya dengan yang cocok dengan yang Anda butuhkan. Kemudian Anda juga dapat menyimpan hasilnya ke format XLSX.

Contoh kode berikut menunjukkan cara melakukan operasi temukan dan ganti dan menyimpan hasilnya ke XLSX:

{{< highlight cpp >}}
auto doc = MakeObject<Document>();
auto builder = MakeObject<DocumentBuilder>(doc);

builder->Writeln(u"Ruby bought a ruby necklace.");

// We can use a "FindReplaceOptions" object to modify the find-and-replace process.
auto options = MakeObject<FindReplaceOptions>();
// Set the "MatchCase" flag to "true" to apply case sensitivity while finding strings to replace.
// Set the "MatchCase" flag to "false" to ignore character case while searching for text to replace.
options->set_MatchCase(true);

doc->get_Range()->Replace(u"Ruby", u"Jade", options);
doc->Save(ArtifactsDir + u"BaseConversions.FindReplaceXlsx.xlsx");
{{< /highlight >}}

## Tentukan Tingkat Kompresi Saat Menyimpan ke XLSX

Anda juga dapat menentukan tingkat kompresi saat menyimpan menggunakan properti **CompressionLevel**.

Contoh kode berikut menunjukkan cara menentukan tingkat kompresi saat menyimpan ke format XLSX:

{{< highlight cpp >}}
auto doc = MakeObject<Document>(MyDir + u"Document.docx");
auto saveOptions = MakeObject<XlsxSaveOptions>();
saveOptions->set_CompressionLevel(CompressionLevel::Maximum);

doc->Save(ArtifactsDir + u"BaseConversions.CompressXlsx.xlsx", saveOptions);
{{< /highlight >}}

## Lihat Juga

- Bagian dokumentasi [Melindungi atau Mengenkripsi Dokumen](/words/cpp/protect-or-encrypt-a-document/) untuk informasi selengkapnya tentang melindungi dan mengenkripsi dokumen
- Artikel tersebut [Temukan dan Ganti](/words/cpp/find-and-replace/) untuk informasi selengkapnya selengkapnya tentang menemukan dan mengganti konten yang Anda inginkan
