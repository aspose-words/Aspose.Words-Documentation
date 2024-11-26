---
title: Buat atau Muat Dokumen di C#
second_title: Aspose.Words untuk .NET
articleTitle: Buat atau Muat Dokumen
linktitle: Buat atau Muat Dokumen
type: docs
url: /id/net/create-or-load-a-document/
description: "Buat dokumen kosong atau memuatnya dari file atau aliran menggunakan C#."
keywords: "create a document c#, load a document c#, create a blank document c#, load a document from file c#, load a document from stream c#, create a document Aspose .NET, load a document Aspose .NET, load formats supported by Aspose.Words .NET"
weight: 10
timestamp: 2024-07-09-19-00-42
---

Hampir semua tugas yang ingin Anda lakukan dengan Aspose.Words melibatkan pemuatan dokumen. Kelas `Document` mewakili dokumen yang dimuat ke dalam memori. Dokumen tersebut memiliki beberapa konstruktor kelebihan beban yang memungkinkan Anda membuat dokumen kosong atau memuatnya dari file atau aliran. Dokumen dapat dimuat dalam format pemuatan apa pun yang didukung oleh Aspose.Words. Untuk daftar semua format pemuatan yang didukung, lihat enumerasi [LoadFormat](https://reference.aspose.com/words/net/aspose.words/loadformat/).

## Buat Dokumen Baru {#create-a-new-document}

Kami akan memanggil konstruktor [Document](https://reference.aspose.com/words/net/aspose.words/document/document/) tanpa parameter untuk membuat dokumen kosong baru. Jika Anda ingin membuat dokumen secara terprogram, cara paling sederhana adalah menggunakan kelas [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) untuk menambahkan konten dokumen.

Contoh kode berikut menunjukkan cara membuat dokumen menggunakan pembuat dokumen:

{{< gist "aspose-words-gists" "16b9cfe5420b6e033f90a45263eef020" "create-docx.cs" >}}

{{% alert color="primary" %}}

Perhatikan nilai default:

- Dokumen kosong berisi satu bagian dengan parameter default, satu paragraf kosong, beberapa gaya dokumen. Sebenarnya dokumen ini sama dengan hasil pembuatan "Dokumen baru" di Microsoft Word.
- Ukuran kertas dokumen adalah [PaperSize](https://reference.aspose.com/words/net/aspose.words/papersize/).**Letter**.

{{% /alert %}}

## Muat Dokumen {#load-a-document}

Untuk memuat dokumen yang ada dalam salah satu format [LoadFormat](https://reference.aspose.com/words/net/aspose.words/loadformat/), teruskan nama file atau aliran ke salah satu konstruktor Dokumen. Format dokumen yang dimuat secara otomatis ditentukan oleh ekstensinya.

### Muat dari File {#load-from-a-file}

Berikan nama file sebagai string ke konstruktor Dokumen untuk membuka dokumen yang sudah ada dari file.

Contoh kode berikut menunjukkan cara membuka dokumen dari file:

{{< gist "aspose-words-gists" "5bd617e9ea10953cbdd084bcf3810c02" "load-docx.cs" >}}

Anda dapat mengunduh file template contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

### Muat dari Stream {#load-from-a-stream}

Untuk membuka dokumen dari aliran, cukup masukkan objek aliran yang berisi dokumen ke dalam konstruktor Dokumen.

Contoh kode berikut menunjukkan cara membuka dokumen dari aliran:

{{< gist "aspose-words-gists" "5bd617e9ea10953cbdd084bcf3810c02" "load-docx-stream.cs" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file template contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}
