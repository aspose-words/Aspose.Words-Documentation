---
title: Bekerja dengan Gambar dalam C++
second_title: Aspose.Words untuk C++
articleTitle: Bekerja dengan Gambar
linktitle: Bekerja dengan Gambar
type: docs
description: "Pengantar fitur Gambar, cara membuat dan memanipulasi gambar menggunakan C++."
weight: 300
url: /id/cpp/working-with-images/
---

Aspose.Words memungkinkan pengguna untuk bekerja dengan gambar dengan cara yang sangat fleksibel. Dalam artikel ini, Anda hanya dapat menjelajahi beberapa kemungkinan bekerja dengan gambar.

## Cara Mengekstrak Gambar dari Dokumen

Semua gambar disimpan di dalam simpul **Shape** dalam [Document](https://reference.aspose.com/words/cpp/aspose.words/document/). Untuk mengekstrak semua gambar atau gambar yang memiliki tipe tertentu dari dokumen, ikuti langkah-langkah berikut:

- Gunakan metode [GetChildNodes](https://reference.aspose.com/words/cpp/aspose.words/compositenode/getchildnodes/) untuk memilih semua simpul **Shape**.
- Iterate melalui koleksi node yang dihasilkan.
- Periksa properti boolean [HasImage](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_hasimage/).
- Ekstrak data gambar menggunakan properti [ImageData](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_imagedata/).
- Simpan data gambar ke file.

Contoh kode berikut menunjukkan cara mengekstrak gambar dari dokumen dan menyimpannya sebagai file:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Images-ExtractImagesToFiles-ExtractImagesToFiles.cpp" >}}

## Menyimpan Gambar sebagai WMF

Aspose.Words menyediakan fungsionalitas untuk menyimpan semua gambar yang tersedia dalam dokumen ke [WMF ](https://docs.fileformat.com/image/wmf/)format saat mengonversi DOCX menjadi RTF.

Contoh kode berikut menunjukkan cara menyimpan gambar sebagai WMF dengan opsi penyimpanan RTF:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.cpp" >}}
