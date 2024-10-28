---
title: Simpan Dokumen dalam C++
second_title: Aspose.Words untuk C++
articleTitle: Simpan Dokumen
linktitle: Simpan Dokumen
type: docs
description: "Simpan dokumen dalam format apa pun yang didukung menggunakan C++."
keywords: "save a document c++, save a document to file c++, save a document to stream c++, save a document Aspose C++, save formats supported by Aspose.Words C++"
weight: 20
url: /id/cpp/save-a-document/
---

Sebagian besar tugas yang perlu Anda lakukan dengan Aspose.Words melibatkan penyimpanan dokumen. Untuk menyimpan dokumen, Aspose.Words menyediakan metode [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) dari kelas [Document](https://reference.aspose.com/words/cpp/aspose.words/document/). Dokumen dapat disimpan dalam format penyimpanan apa pun yang didukung oleh Aspose.Words. Untuk daftar semua format penyimpanan yang didukung, lihat pencacahan [SaveFormat](https://reference.aspose.com/words/cpp/aspose.words/saveformat/).

## Simpan ke Berkas {#save-a-document-to-a-file}

Cukup gunakan metode [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) dengan nama file. Aspose.Words akan menentukan format penyimpanan dari ekstensi file yang Anda tentukan.

Contoh kode berikut menunjukkan cara memuat dan menyimpan dokumen ke file:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToDisk-LoadAndSave.cpp" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file templat contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Simpan ke Aliran {#save-a-document-to-a-stream}

Berikan objek aliran ke metode [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/). Anda perlu menentukan format penyimpanan secara eksplisit saat menyimpan ke aliran.

Contoh kode berikut menunjukkan cara memuat dan menyimpan dokumen ke aliran:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToStream-LoadAndSaveToStream.cpp" >}}

Anda dapat mengunduh file templat contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).


## Simpan ke PCL {#save-a-document-to-pcl}

Aspose.Words mendukung penyimpanan dokumen ke dalam PCL (Bahasa Perintah Printer). Aspose.Words dapat menyimpan dokumen ke dalam PCL 6 (PCL 6 Format yang disempurnakan atau PCL XL). Kelas `PclSaveOptions` dapat digunakan untuk menentukan opsi tambahan saat menyimpan dokumen ke dalam format PCL.

Contoh kode berikut menunjukkan cara menyimpan dokumen ke PCL menggunakan opsi simpan:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToPCL-ConvertDocumentToPCL.cpp" >}}
