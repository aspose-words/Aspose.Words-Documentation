---
title: Tentukan Opsi Penyimpanan di Java
second_title: Aspose.Words untuk Java
articleTitle: Tentukan Opsi Penyimpanan
linktitle: Tentukan Opsi Penyimpanan
description: "Setel properti lanjutan saat menyimpan dokumen menggunakan Java untuk memberikan kontrol yang lebih tepat atas proses tersebut."
type: docs
weight: 20
url: /id/java/specify-save-options/
timestamp: 2024-01-27-14-07-04
---

Saat menyimpan dokumen, Anda dapat mengatur beberapa properti lanjutan. Aspose.Words memberi Anda kelas [SaveOptions](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/), yang memungkinkan kontrol proses penyimpanan yang lebih tepat. Ada kelebihan metode **Save** yang menerima objek **SaveOptions** - itu harus menjadi objek kelas yang diturunkan dari kelas **SaveOptions**. Setiap format penyimpanan memiliki kelas terkait yang menyimpan opsi penyimpanan untuk format penyimpanan ini, misalnya, ada [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) untuk menyimpan ke format PDF, [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) untuk menyimpan ke format Markdown, atau [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) untuk menyimpan ke gambar. Artikel ini memberikan contoh bekerja dengan beberapa kelas opsi yang diturunkan dari **SaveOptions**.

Contoh kode berikut menunjukkan cara mengatur opsi penyimpanan sebelum menyimpan dokumen menjadi HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifySaveOption-SpecifySaveOption.java" >}}


{{% alert color="primary" %}}

Anda dapat mengunduh file templat contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Artikel ini menjelaskan beberapa properti yang dapat Anda kontrol saat menyimpan dokumen.

## Enkripsi Dokumen Dengan Kata Sandi

Gunakan properti **Password** untuk mendapatkan atau menyetel kata sandi untuk dokumen terenkripsi. Gunakan properti **Password** dari kelas terkait untuk bekerja dengan format dokumen yang dipilih.

Misalnya, saat menyimpan dokumen ke format DOC atau DOT, gunakan properti [Password](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/#Password) dari kelas [DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/).

Contoh kode berikut menunjukkan cara mengatur kata sandi untuk mengenkripsi dokumen menggunakan metode enkripsi RC4:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithDocSaveOptions-EncryptDocumentWithPassword.java" >}}

Saat menyimpan dokumen ke format ODT, gunakan properti [Password](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/#Password) dari kelas [OdtSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/).

Contoh kode berikut menunjukkan cara memuat dan menyimpan OpenDocument yang dienkripsi dengan kata sandi:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-LoadAndSaveEncryptedODT.java" >}}

Tidak semua format mendukung enkripsi dan penggunaan properti **Password**.

## Tampilkan Pemberitahuan Kemajuan Penyimpanan Dokumen

Aspose.Words menyediakan kemampuan untuk menggunakan properti [ProgressCallback](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getProgressCallback) untuk mendapatkan pemberitahuan tentang kemajuan penyimpanan dokumen.

Sekarang tersedia saat menyimpan ke DOCX, FlatOpc, DOCM, DOTM, DOTX, HTML, MHTML, EPUB, XamlFlow, XamlFlowPack, atau format TXT.

## Perbarui Waktu Pembuatan Dokumen

Aspose.Words menyediakan kemampuan untuk menggunakan properti [CreatedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getCreatedTime) untuk mendapatkan atau menyetel tanggal pembuatan dokumen di UTC. Anda juga dapat memperbarui nilai ini sebelum menyimpan menggunakan opsi [UpdateCreatedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateCreatedTimeProperty).

Contoh kode berikut menunjukkan cara memperbarui waktu pembuatan dokumen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-UpdateIfLastPrinted.java" >}}

## Perbarui Properti yang Terakhir Disimpan

Aspose.Words menyediakan kemampuan untuk menggunakan properti [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateLastSavedTimeProperty) untuk mendapatkan atau menetapkan nilai yang menentukan apakah properti [LastSavedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getLastSavedTime) diperbarui sebelum disimpan.

Contoh kode berikut menunjukkan cara mengatur properti ini dan menyimpan dokumen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithOoXML-updateLastSavedTimeProperty.java" >}}

## Simpan Gambar Hitam Putih dengan Format Satu Bit Per Piksel

Untuk mengontrol opsi penyimpanan gambar, kelas **ImageSaveOptions** digunakan. Misalnya, Anda dapat menggunakan properti [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat) untuk mengatur format piksel untuk gambar yang dihasilkan. Harap perhatikan bahwa format piksel gambar keluaran mungkin berbeda dari nilai yang ditetapkan karena karya GDI+.

Contoh kode berikut menunjukkan cara menyimpan gambar hitam putih dengan format satu bit per piksel:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-ImageColorFilters-SaveImageToOnebitPerPixel.java" >}}
