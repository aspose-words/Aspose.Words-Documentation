---
title: Simpan Dokumen dalam Java
second_title: Aspose.Words untuk Java
articleTitle: Simpan Dokumen
linktitle: Simpan Dokumen
type: docs
description: "Simpan dokumen dalam format apa pun yang didukung menggunakan Java."
weight: 20
url: /id/java/save-a-document/
timestamp: 2024-01-27-14-07-04
---

Sebagian besar tugas yang perlu Anda lakukan dengan Aspose.Words melibatkan penyimpanan dokumen. Untuk menyimpan dokumen, Aspose.Words menyediakan metode [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save(java.lang.String)) dari kelas [Document](https://reference.aspose.com/words/java/com.aspose.words/document/). Dokumen dapat disimpan dalam format penyimpanan apa pun yang didukung oleh Aspose.Words. Untuk daftar semua format penyimpanan yang didukung, lihat pencacahan [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/).

## Simpan ke Berkas {#save-a-document-to-a-file}

Cukup gunakan metode [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String) dengan nama file. Aspose.Words akan menentukan format penyimpanan dari ekstensi file yang Anda tentukan.

Contoh kode berikut menunjukkan cara memuat dan menyimpan dokumen ke file:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSave-LoadAndSave.java" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file templat contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## Simpan ke Aliran {#save-a-document-to-a-stream}

Berikan objek aliran ke metode [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions). Anda perlu menentukan format penyimpanan secara eksplisit saat menyimpan ke aliran.

Contoh kode berikut menunjukkan cara memuat dan menyimpan dokumen ke aliran:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveToStream-LoadAndSaveToStream.java" >}}

Anda dapat mengunduh file templat contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

## Simpan ke PCL {#save-a-document-to-pcl}

Aspose.Words mendukung penyimpanan dokumen ke dalam PCL (Bahasa Perintah Printer). Aspose.Words dapat menyimpan dokumen ke dalam format PCL 6 (PCL 6 Enhanced atau PCL XL). Kelas `PclSaveOptions` dapat digunakan untuk menentukan opsi tambahan saat menyimpan dokumen ke dalam format PCL.

Contoh kode berikut menunjukkan cara menyimpan dokumen ke PCL menggunakan opsi simpan:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToPCL-ConvertDocumentToPCL.java" >}}
