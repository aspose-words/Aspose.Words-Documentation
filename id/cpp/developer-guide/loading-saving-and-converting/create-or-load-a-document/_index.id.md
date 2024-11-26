---
title: Membuat atau Memuat Dokumen dalam C++
second_title: Aspose.Words untuk C++
articleTitle: Membuat atau Memuat Dokumen
linktitle: Membuat atau Memuat Dokumen
type: docs
description: "Buat dokumen kosong atau untuk memuatnya dari file atau streaming menggunakan C++."
keywords: "create a document c++, load a document c++, create a blank document c++, load a document from file c++, load a document from stream c++, create a document Aspose C++, load a document Aspose C++, load formats supported by Aspose.Words C++"
weight: 10
url: /id/cpp/create-or-load-a-document/
timestamp: 2024-01-27-14-07-04
---

Hampir semua tugas yang ingin Anda lakukan dengan Aspose.Words melibatkan pemuatan dokumen. Kelas `Document` mewakili dokumen yang dimuat ke dalam memori. Dokumen memiliki beberapa konstruktor kelebihan beban yang memungkinkan Anda membuat dokumen kosong atau memuatnya dari file atau aliran. Dokumen dapat dimuat dalam format pemuatan apa pun yang didukung oleh Aspose.Words. Untuk daftar semua format pemuatan yang didukung, lihat pencacahan [LoadFormat](https://reference.aspose.com/words/cpp/aspose.words/loadformat/).

## Buat Dokumen Baru {#create-a-new-document}

Kita akan memanggil konstruktor [Document](https://reference.aspose.com/words/cpp/class/aspose.words.document) tanpa parameter untuk membuat dokumen kosong baru. Jika Anda ingin membuat dokumen secara terprogram, cara termudah adalah dengan menggunakan kelas [DocumentBuilder](https://reference.aspose.com/words/cpp/class/aspose.words.document_builder) untuk menambahkan konten dokumen.

Contoh kode berikut menunjukkan cara membuat dokumen menggunakan pembuat dokumen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-CreateDocument-CreateDocument.cpp" >}}

{{% alert color="primary" %}}

Perhatikan nilai default:

- Dokumen kosong berisi satu bagian dengan parameter default, satu paragraf kosong, beberapa gaya dokumen. Sebenarnya dokumen ini sama dengan hasil pembuatan "Dokumen baru" di Microsoft Word.
- Ukuran kertas dokumen adalah [PaperSize](https://reference.aspose.com/words/cpp/aspose.words/papersize/).**Letter**.

{{% /alert %}}

## Muat Dokumen

Untuk memuat dokumen yang ada dalam salah satu format `LoadFormat`, masukkan nama file atau aliran ke salah satu konstruktor Dokumen. Format dokumen yang dimuat secara otomatis ditentukan oleh ekstensinya.

### Muat dari Berkas {#load-from-a-file}

Berikan nama file sebagai string ke konstruktor Dokumen untuk membuka dokumen yang ada dari file.

Contoh kode berikut menunjukkan cara membuka dokumen dari file:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToDisk-OpenDocument.cpp" >}}

Anda dapat mengunduh file templat contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

### Muat dari Aliran {#load-from-a-stream}

Untuk membuka dokumen dari aliran, cukup berikan objek aliran yang berisi dokumen ke dalam konstruktor Dokumen.

Contoh kode berikut menunjukkan cara membuka dokumen dari aliran:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToStream-OpeningFromStream.cpp" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file templat contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}
