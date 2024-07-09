---
title: Tentukan Simpan Pilihan di Java
second_title: Aspose.Words Sitemap Java
articleTitle: Tentukan Simpan Pilihan
linktitle: Tentukan Simpan Pilihan
description: "Mengatur sifat canggih ketika menyimpan dokumen menggunakan Java untuk memberikan kontrol yang lebih tepat atas proses."
type: docs
weight: 20
url: /id/java/specify-save-options/
---

Saat menyimpan dokumen, Anda dapat mengatur beberapa properti canggih. Aspose.Words memberikan Anda [SaveOptions](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/) kelas, yang memungkinkan kontrol proses yang lebih tepat. Ada kelebihan beban **Save** metode yang menerima **SaveOptions** objek - itu harus menjadi objek dari kelas yang berasal dari **SaveOptions** Sitemap Setiap format menyimpan memiliki kelas yang sesuai yang menyimpan opsi untuk format menyimpan ini, misalnya, ada [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) untuk menyimpan format PDF, [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) untuk menghemat Markdown format, atau [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) untuk menyimpan gambar. Artikel ini memberikan contoh kerja dengan beberapa kelas pilihan yang berasal dari **SaveOptions**Sitemap

Contoh kode berikut menunjukkan cara mengatur opsi simpan sebelum menyimpan dokumen ke HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifySaveOption-SpecifySaveOption.java" >}}


{{% alert color="primary" %}}

Anda dapat mengunduh file template dari contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx)Sitemap

{{% /alert %}}

Artikel ini menjelaskan beberapa sifat yang dapat Anda kontrol ketika menyimpan dokumen.

## Mengenkripsi Dokumen Dengan Password

Gunakan **Password** properti untuk mendapatkan atau mengatur kata sandi untuk dokumen terenkripsi. Gunakan **Password** properti kelas yang sesuai untuk bekerja dengan format dokumen yang dipilih.

Misalnya, ketika menyimpan dokumen ke DOC atau DOT format, gunakan [Password](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/#Password) properti [DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/) Sitemap

Contoh kode berikut menunjukkan cara mengatur kata sandi untuk mengenkripsi dokumen menggunakan metode enkripsi RC4:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithDocSaveOptions-EncryptDocumentWithPassword.java" >}}

Saat menyimpan dokumen ke format ODT, gunakan [Password](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/#Password) properti [OdtSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/) Sitemap

Contoh kode berikut menunjukkan cara memuat dan menyimpan OpenDocument dienkripsi dengan kata sandi:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-LoadAndSaveEncryptedODT.java" >}}

Tidak semua enkripsi dukungan format dan penggunaan **Password** Login

## Tampilkan Dokumen Menyimpan Pemberitahuan Perkembangan

Aspose.Words memberikan kemampuan untuk menggunakan [ProgressCallback](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getProgressCallback) properti untuk mendapatkan pemberitahuan tentang kemajuan tabungan dokumen.

Sekarang tersedia ketika menyimpan ke DOCX, FlatOpc, DOCM, DOTLogin DOTX, HTML, MHTML, EPUB, XamlFlow, XamlFlowPack, atau format TXT.

## Memperbarui Waktu Penciptaan Dokumen

Aspose.Words memberikan kemampuan untuk menggunakan [CreatedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getCreatedTime) properti untuk mendapatkan atau mengatur tanggal pembuatan dokumen di UTC. Anda juga dapat memperbarui nilai ini sebelum menyimpan menggunakan [UpdateCreatedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateCreatedTimeProperty) Login

Contoh kode berikut menunjukkan cara memperbarui waktu pembuatan dokumen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-UpdateIfLastPrinted.java" >}}

## Memperbarui Kekayaan Terakhir

Aspose.Words memberikan kemampuan untuk menggunakan [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateLastSavedTimeProperty) properti untuk mendapatkan atau mengatur penentuan nilai apakah Meme it [LastSavedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getLastSavedTime) properti diperbarui sebelum menabung.

Contoh kode berikut menunjukkan cara mengatur properti ini dan menyimpan dokumen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithOoXML-updateLastSavedTimeProperty.java" >}}

## Simpan Gambar Hitam dan Putih dengan Satu Bit Per Format Piksel

Untuk mengontrol opsi tabungan gambar, **ImageSaveOptions** kelas digunakan. Misalnya, Anda dapat menggunakan [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat) properti untuk mengatur format pixel untuk gambar yang dihasilkan. Harap dicatat bahwa format pixel dari gambar output mungkin berbeda dari nilai set karena pekerjaan GDI+.

Contoh kode berikut menunjukkan cara menyimpan gambar hitam dan putih dengan satu bit per format piksel:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-ImageColorFilters-SaveImageToOnebitPerPixel.java" >}}
