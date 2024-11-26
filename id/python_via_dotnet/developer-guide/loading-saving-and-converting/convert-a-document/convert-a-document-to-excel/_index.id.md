---
title: Konversi Word ke Excel di Python
second_title: Aspose.Words untuk Python via .NET
articleTitle: Konversikan Dokumen ke Excel
linktitle: Konversikan Dokumen ke Excel
description: "Konversi PDF ke Excel, XML ke Excel, DOCX ke Excel Python. Simpan dokumen dalam berbagai format ke XLSX menggunakan Python."
type: docs
weight: 15
url: /id/python-net/convert-a-document-to-excel/
timestamp: 2024-01-31-14-23-37
---

Mengonversi dokumen dari satu format ke format lainnya merupakan fitur andalan Aspose.Words. Anda dapat mengonversi dokumen dalam format [memuat format](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) apa pun yang tersedia juga ke format XLSX.

## Konversikan Dokumen ke XLSX

Mengonversi dokumen ke XLSX adalah proses yang agak rumit. Untuk menyimpan dokumen Anda ke format XLSX menggunakan Aspose.Words, gunakan kelas [XlsxSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/) dan elemen `Xlsx` baru dalam enumerasi [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/). Seperti disebutkan di atas, Anda dapat menyimpan dokumen dalam format pemuatan apa pun yang didukung oleh Aspose.Words hingga XLSX.

Contoh kode berikut menunjukkan cara menyimpan PDF ke XLSX:

{{< highlight python >}}
doc = aw.Document(docs_base.my_dir + "Pdf Document.pdf")

doc.save(docs_base.artifacts_dir + "BaseConversions.PdfToXlsx.xlsx")
{{< /highlight >}}

{{% alert color="primary" %}}

Terkadang perlu menentukan opsi tambahan, yang dapat memengaruhi hasil penyimpanan dokumen sebagai XLSX. Opsi ini dapat ditentukan dengan menggunakan kelas [XlsxSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/), yang berisi properti yang menentukan bagaimana keluaran XLSX akan ditampilkan.

{{% /alert %}}

## Temukan dan Ganti Saat Menyimpan ke XLSX

Juga menggunakan Aspose.Words, Anda dapat menemukan string atau ekspresi reguler tertentu di dokumen Anda dan menggantinya dengan yang cocok yang Anda perlukan. Kemudian Anda juga bisa menyimpan hasilnya ke format XLSX.

Contoh kode berikut menunjukkan cara melakukan operasi pencarian dan penggantian dan menyimpan hasilnya ke XLSX:

{{< highlight python >}}
from aspose.words import Document, DocumentBuilder
from aspose.words.replacing import FindReplaceOptions

doc =  Document()

builder = DocumentBuilder(doc)
builder.writeln("Ruby bought a ruby necklace.")

# We can use a "FindReplaceOptions" object to modify the find - and -replace process.
options = FindReplaceOptions()

# Set the "match_case" flag to "True" to apply case sensitivity while finding strings to replace.
# Set the "match_case" flag to "False" to ignore character case while searching for text to replace.
options.match_case = True

doc.range.replace("Ruby", "Jade", options)
doc.save(ARTIFACTS_DIR + "BaseConversions.FindReplaceXlsx.xlsx")
{{< /highlight >}}

## Tentukan Tingkat Kompresi Saat Menyimpan ke XLSX

Anda juga dapat menentukan tingkat kompresi saat menyimpan menggunakan properti [CompressionLevel](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/compression_level/).

Contoh kode berikut menunjukkan cara menentukan tingkat kompresi saat menyimpan ke format XLSX:

{{< highlight python >}}
from aspose.words import Document
from aspose.words.saving import XlsxSaveOptions, CompressionLevel

doc = Document(MY_DIR + "Document.docx")

saveOptions = XlsxSaveOptions()
saveOptions.compression_level = CompressionLevel.MAXIMUM

doc.save(ARTIFACTS_DIR + "BaseConversions.CompressXlsx.xlsx", saveOptions)
{{< /highlight >}}

## Lihat juga

- Bagian dokumentasi [Melindungi atau Mengenkripsi Dokumen](/words/id/python-net/protect-or-encrypt-a-document/) untuk informasi lebih lanjut tentang melindungi dan mengenkripsi dokumen
- Artikel [Temukan dan ganti](/words/id/python-net/find-and-replace/) untuk informasi lebih lanjut tentang menemukan dan mengganti konten yang Anda inginkan
