---
title: Buat atau Mengisi Dokumen di Java
second_title: Aspose.Words Sitemap Java
articleTitle: Buat atau Mengisi Dokumen
linktitle: Buat atau Mengisi Dokumen
type: docs
weight: 10
url: /id/java/create-or-load-a-document/
description: "Aspose.Words memungkinkan Anda untuk membuat dokumen kosong atau memuatnya dari file atau aliran menggunakan JavaSitemap"
timestamp: 2024-01-27-14-07-04
---

Hampir tugas apa pun yang ingin Anda lakukan dengan Meme it Aspose.Words melibatkan memuat dokumen. Login `Document` kelas mewakili dokumen yang dimuat ke dalam memori. Dokumen ini memiliki beberapa konstruktor yang berlebihan yang memungkinkan Anda untuk membuat dokumen kosong atau memuatnya dari file atau aliran. Dokumen dapat dimuat dalam format beban yang didukung oleh Aspose.WordsSitemap Untuk daftar semua format beban yang didukung, lihat [LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) Sitemap

## Buat Dokumen Baru {#create-a-new-document}

Kita akan memanggil [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) constructor tanpa parameter untuk membuat dokumen kosong baru. Jika Anda ingin menghasilkan program dokumen secara tematik, cara paling sederhana adalah menggunakan [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder) kelas untuk menambahkan konten dokumen.

Contoh kode berikut menunjukkan bagaimana membuat dokumen menggunakan pembangun dokumen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CreateDocument-CreateDocument.java" >}}

{{% alert color="primary" %}}

Perhatikan nilai default:

- Dokumen kosong berisi satu bagian dengan parameter default, satu ayat kosong, beberapa gaya dokumen. Sebenarnya dokumen ini sama dengan hasil pembuatan dokumen "New Document" Microsoft WordSitemap
- Login Ukuran kertas dokumen adalah [PaperSize](https://reference.aspose.com/words/java/com.aspose.words/papersize/)Sitemap**Letter**Sitemap

{{% /alert %}}

## Mengisi Dokumen

Untuk memuat dokumen yang ada di salah satu [LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) format, melewati nama file atau aliran ke salah satu konstror Dokumen. Format dokumen yang dimuat secara otomatis ditentukan oleh ekstensinya.

### Beban dari File {#load-from-a-file}

Lulus nama file sebagai string untuk konstror Dokumen untuk membuka dokumen yang ada dari file.

Contoh kode berikut menunjukkan cara membuka dokumen dari file:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenFromFile.java" >}}

Anda dapat mengunduh file template dari contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc)Sitemap

### Beban dari Stream {#load-from-a-stream}

Untuk membuka dokumen dari aliran, cukup lewatkan objek aliran yang berisi dokumen ke dalam konstror dokumen.

Contoh kode berikut menunjukkan cara membuka dokumen dari aliran:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenFromStream.java" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file template dari contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc)Sitemap

{{% /alert %}}
