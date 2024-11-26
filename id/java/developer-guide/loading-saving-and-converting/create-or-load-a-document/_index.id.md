---
title: Membuat atau Memuat Dokumen dalam Java
second_title: Aspose.Words untuk Java
articleTitle: Membuat atau Memuat Dokumen
linktitle: Membuat atau Memuat Dokumen
type: docs
weight: 10
url: /id/java/create-or-load-a-document/
description: "Aspose.Words memungkinkan Anda membuat dokumen kosong atau memuatnya dari file atau streaming menggunakan Java."
timestamp: 2024-01-27-14-07-04
---

Hampir semua tugas yang ingin Anda lakukan dengan Aspose.Words melibatkan pemuatan dokumen. Kelas `Document` mewakili dokumen yang dimuat ke dalam memori. Dokumen memiliki beberapa konstruktor kelebihan beban yang memungkinkan Anda membuat dokumen kosong atau memuatnya dari file atau aliran. Dokumen dapat dimuat dalam format pemuatan apa pun yang didukung oleh Aspose.Words. Untuk daftar semua format pemuatan yang didukung, lihat pencacahan [LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/).

## Buat Dokumen Baru {#create-a-new-document}

Kita akan memanggil konstruktor [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) tanpa parameter untuk membuat dokumen kosong baru. Jika Anda ingin membuat dokumen secara terprogram, cara termudah adalah dengan menggunakan kelas [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder) untuk menambahkan konten dokumen.

Contoh kode berikut menunjukkan cara membuat dokumen menggunakan pembuat dokumen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CreateDocument-CreateDocument.java" >}}

{{% alert color="primary" %}}

Perhatikan nilai default:

- Dokumen kosong berisi satu bagian dengan parameter default, satu paragraf kosong, beberapa gaya dokumen. Sebenarnya dokumen ini sama dengan hasil pembuatan "Dokumen baru" di Microsoft Word.
- Ukuran kertas dokumen adalah [PaperSize](https://reference.aspose.com/words/java/com.aspose.words/papersize/).**Letter**.

{{% /alert %}}

## Muat Dokumen

Untuk memuat dokumen yang ada dalam salah satu format [LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/), masukkan nama file atau aliran ke salah satu konstruktor Dokumen. Format dokumen yang dimuat secara otomatis ditentukan oleh ekstensinya.

### Muat dari Berkas {#load-from-a-file}

Berikan nama file sebagai string ke konstruktor Dokumen untuk membuka dokumen yang ada dari file.

Contoh kode berikut menunjukkan cara membuka dokumen dari file:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenFromFile.java" >}}

Anda dapat mengunduh file templat contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

### Muat dari Aliran {#load-from-a-stream}

Untuk membuka dokumen dari aliran, cukup berikan objek aliran yang berisi dokumen ke dalam konstruktor Dokumen.

Contoh kode berikut menunjukkan cara membuka dokumen dari aliran:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenFromStream.java" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file templat contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}
