---
title: Menyimpan ke Format halaman Tetap di C++
second_title: Aspose.Words untuk C++
articleTitle: Menyimpan Dokumen ke Format halaman Tetap
linktitle: Menyimpan Dokumen ke Format halaman Tetap
description: "Cara menyimpan dokumen ke format halaman tetap– PDF, XPS, HTML, XAML, PostScript, dan PCL? Lihat instruksinya."
type: docs
weight: 15
url: /id/cpp/saving-a-document-to-fixed-page-format/
timestamp: 2024-09-24-14-35-44
---

Setelah tata letak halaman dibuat dan geometri objek serta posisinya pada halaman dihitung, dokumen dapat disimpan dalam format halaman tetap yang didukung oleh Aspose.Words.

Saat menyimpan dokumen ke format halaman tetap, opsi rendering yang umum untuk semua format ini dapat digunakan. Mereka memungkinkan untuk mengontrol:

- Jumlah dan rentang halaman yang terdapat dalam dokumen keluaran([PageIndex](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_pageset/), [PageCount](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_pageset/)).
- Kemajuan penyimpanan dokumen halaman demi halaman ([PageSavingCallback](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_pagesavingcallback/)).
- Satu set karakter yang digunakan untuk rendering angka ([NumeralFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_numeralformat/)).
- Pemutar metafile ([MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_metafilerenderingoptions/)). Untuk lebih jelasnya, lihat [Menangani Windows Metafile](/words/cpp/handling-windows-metafiles/) artikel.
- Tingkat kualitas untuk mengompresi ulang gambar JPEG, yang nilainya mungkin sedikit berbeda, bergantung pada format penyimpanan yang dipilih ([JpegQuality](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_jpegquality/)).
- Optimalisasi grafik vektor dalam keluaran Aspose.Words ([OptimizeOutput](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_optimizeoutput/)).
- Opsi grafik saat menyimpan ke format Tiff, Png, Bmp, Jpeg, Emf([UseAntiAliasing](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_useantialiasing/), [UseHighQualityRendering](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_usehighqualityrendering/)).
- Menyimpan dokumen dalam skala abu-abu ([ColorMode](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_colormode/)).
- Beralih antara rendering bentuk DrawingML dan bentuk fallback ([DmlRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_dmlrenderingmode/)).
- Beralih di antara mode rendering efek DML ([DmlEffectsRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_dmleffectsrenderingmode/)).

Contoh di bawah ini menunjukkan cara menyimpan dokumen ke format JPEG menggunakan metode `Save` dan opsi rendering:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SaveDocumentToJPEG-SaveDocumentToJPEG.cpp" >}}
