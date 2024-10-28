---
title: Tentukan Opsi Penyimpanan di C++
second_title: Aspose.Words untuk C++
articleTitle: Tentukan Opsi Penyimpanan
linktitle: Tentukan Opsi Penyimpanan
description: "Lebih akurat mengontrol proses penyimpanan."
type: docs
weight: 10
url: /id/cpp/specify-save-options/
---

Saat menyimpan dokumen, Anda dapat mengatur beberapa properti lanjutan. Aspose.Words memberi Anda kelas [SaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/), yang memungkinkan kontrol proses penyimpanan yang lebih tepat. Ada kelebihan metode **Save** yang menerima objek **SaveOptions** - itu harus menjadi objek kelas yang diturunkan dari kelas **SaveOptions**. Setiap format penyimpanan memiliki kelas terkait yang menyimpan opsi penyimpanan untuk format penyimpanan ini, misalnya, ada [PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/) untuk menyimpan ke format PDF, [MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions) untuk menyimpan ke format Markdown, atau [ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/) untuk menyimpan ke gambar. Artikel ini memberikan contoh bekerja dengan beberapa kelas opsi yang diturunkan dari **SaveOptions**.

Contoh kode berikut menunjukkan cara mengatur opsi penyimpanan sebelum menyimpan dokumen menjadi HTML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-SpecifySaveOption-SpecifySaveOption.cpp" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file templat contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

Artikel ini menjelaskan beberapa properti yang dapat Anda kontrol saat menyimpan dokumen.

## Enkripsi Dokumen Dengan Kata Sandi

Gunakan properti **Password** untuk mendapatkan atau menyetel kata sandi untuk dokumen terenkripsi. Gunakan properti **Password** dari kelas terkait untuk bekerja dengan format dokumen yang dipilih.

Misalnya, saat menyimpan dokumen ke format DOC atau DOT, gunakan properti [Password](https://reference.aspose.com/words/cpp/aspose.words.saving/docsaveoptions/get_password/) dari kelas [DocSaveOptions](https://reference.aspose.com/words/cpp/class/aspose.words.saving.doc_save_options).

Contoh kode berikut menunjukkan cara mengatur kata sandi untuk mengenkripsi dokumen menggunakan metode enkripsi RC4:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithDoc-EncryptDocumentWithPassword.cpp" >}}

Saat menyimpan dokumen ke format ODT, gunakan properti [Password](https://reference.aspose.com/words/cpp/aspose.words.saving/odtsaveoptions/get_password/) dari kelas [OdtSaveOptions](https://reference.aspose.com/words/cpp/class/aspose.words.saving.odt_save_options).

Contoh kode berikut menunjukkan cara memuat dan menyimpan OpenDocument yang dienkripsi dengan kata sandi:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-LoadAndSaveEncryptedODT.cpp" >}}

Tidak semua format mendukung enkripsi dan penggunaan properti **Password**.

## Tampilkan Pemberitahuan Kemajuan Penyimpanan Dokumen

Aspose.Words menyediakan kemampuan untuk menggunakan properti [ProgressCallback](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_progresscallback/) untuk mendapatkan pemberitahuan tentang kemajuan penyimpanan dokumen.

Sekarang tersedia saat menyimpan ke DOCX, FlatOpc, DOCM, DOTM, DOTX, HTML, MHTML, EPUB, XamlFlow, XamlFlowPack, atau format TXT.

## Perbarui Waktu Pembuatan Dokumen

Aspose.Words menyediakan kemampuan untuk menggunakan properti [CreatedTime](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_createdtime/) untuk mendapatkan atau menyetel tanggal pembuatan dokumen di UTC. Anda juga dapat memperbarui nilai ini sebelum menyimpan menggunakan opsi [UpdateCreatedTimeProperty](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_updatecreatedtimeproperty/).

Contoh kode berikut menunjukkan cara memperbarui waktu pembuatan dokumen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-UpdateIfLastPrinted.cpp" >}}

## Perbarui Properti yang Terakhir Disimpan

Aspose.Words menyediakan kemampuan untuk menggunakan properti [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/set_updatelastsavedtimeproperty/) untuk mendapatkan atau menetapkan nilai yang menentukan apakah properti [LastSavedTime](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_lastsavedtime/) diperbarui sebelum disimpan.

Contoh kode berikut menunjukkan cara mengatur properti ini dan menyimpan dokumen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithOoxml-UpdateLastSavedTimeProperty.cpp" >}}

## Simpan Gambar Hitam Putih dengan Format Satu Bit Per Piksel

Untuk mengontrol opsi penyimpanan gambar, kelas **ImageSaveOptions** digunakan. Misalnya, Anda dapat menggunakan properti [PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_pixelformat/) untuk mengatur format piksel untuk gambar yang dihasilkan. Harap perhatikan bahwa format piksel gambar keluaran mungkin berbeda dari nilai yang ditetapkan karena karya GDI+.

Contoh kode berikut menunjukkan cara menyimpan gambar hitam putih dengan format satu bit per piksel:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-ImageColorFilters-SaveImageToOnebitPerPixel.cpp" >}}
