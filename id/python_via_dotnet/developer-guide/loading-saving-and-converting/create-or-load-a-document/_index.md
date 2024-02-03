---
title: Buat atau Muat Dokumen di Python
second_title: Aspose.Words untuk Python via .NET
articleTitle: Buat atau Muat Dokumen
linktitle: Buat atau Muat Dokumen
type: docs
url: /id/python-net/create-or-load-a-document/
description: "Buat dokumen kosong atau memuatnya dari file atau aliran menggunakan Python."
keywords: "create a document python, load a document python, create a blank document python, load a document from file python, load a document from stream python, create a document Aspose python, load a document Aspose python, load formats supported by Aspose.Words python"
weight: 10
---

Hampir semua tugas yang ingin Anda lakukan dengan Aspose.Words melibatkan pemuatan dokumen. Kelas [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) mewakili dokumen yang dimuat ke dalam memori. Dokumen tersebut memiliki beberapa konstruktor kelebihan beban yang memungkinkan Anda membuat dokumen kosong atau memuatnya dari file atau aliran. Dokumen dapat dimuat dalam format pemuatan apa pun yang didukung oleh Aspose.Words. Untuk daftar semua format pemuatan yang didukung, lihat enumerasi [LoadFormat](https://reference.aspose.com/words/python-net/aspose.words/loadformat/).

## Buat Dokumen Baru

Kami akan memanggil konstruktor [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) tanpa parameter untuk membuat dokumen kosong baru. Jika Anda ingin membuat dokumen secara terprogram, cara paling sederhana adalah menggunakan kelas [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) untuk menambahkan konten dokumen.

Contoh kode berikut menunjukkan cara membuat dokumen menggunakan pembuat dokumen:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
            
builder.write("Hello world!")

doc.save(docs_base.artifacts_dir + "out.docx")
{{< /highlight >}}

{{% alert color="primary" %}}

Perhatikan nilai default:

- Dokumen kosong berisi satu bagian dengan parameter default, satu paragraf kosong, beberapa gaya dokumen. Sebenarnya dokumen ini sama dengan hasil pembuatan "Dokumen baru" di Microsoft Word.
- Ukuran kertas dokumen adalah [PaperSize.LETTER](https://reference.aspose.com/words/python-net/aspose.words/papersize/#letter).

{{% /alert %}}

## Muat Dokumen

Untuk memuat dokumen yang ada dalam format [LoadFormat](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) mana pun, teruskan nama file atau aliran ke salah satu konstruktor [Document](https://reference.aspose.com/words/python-net/aspose.words/document/). Format dokumen yang dimuat secara otomatis ditentukan oleh ekstensinya.

### Memuat dari File

Berikan nama file sebagai string ke konstruktor [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) untuk membuka dokumen yang ada dari file.

Contoh kode berikut menunjukkan cara membuka dokumen dari file:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-OpenDocument.py" >}}

Anda dapat mengunduh file template contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

### Muat dari Aliran

Untuk membuka dokumen dari aliran, cukup masukkan objek aliran yang berisi dokumen ke dalam konstruktor [Document](https://reference.aspose.com/words/python-net/aspose.words/document/).

Contoh kode berikut menunjukkan cara membuka dokumen dari aliran:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-OpeningFromStream.py" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file template contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}
