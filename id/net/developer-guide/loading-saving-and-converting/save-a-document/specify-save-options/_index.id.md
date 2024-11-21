---
title: Tentukan Opsi Simpan di C#
second_title: Aspose.Words untuk .NET
articleTitle: Tentukan Opsi Simpan
linktitle: Tentukan Opsi Simpan
description: "Kontrol proses penyimpanan lebih akurat menggunakan C#."
type: docs
weight: 10
url: /id/net/specify-save-options/
timestamp: 2024-07-09-19-00-42
---

Saat menyimpan dokumen, Anda dapat mengatur beberapa properti lanjutan. Aspose.Words memberi Anda kelas [SaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/), yang memungkinkan kontrol proses penyimpanan yang lebih tepat. Ada kelebihan metode **Save** yang menerima objek **SaveOptions** – objek tersebut harus berupa objek kelas yang diturunkan dari kelas **SaveOptions**. Setiap format penyimpanan memiliki kelas terkait yang berisi opsi penyimpanan untuk format penyimpanan ini, misalnya, ada [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) untuk menyimpan ke format PDF, [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/) untuk menyimpan ke format Markdown, atau [ImageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/) untuk menyimpan ke gambar. Artikel ini memberikan contoh bekerja dengan beberapa kelas opsi yang berasal dari **SaveOptions**.

Contoh kode berikut menunjukkan cara mengatur opsi penyimpanan sebelum menyimpan dokumen ke dalam HTML:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-SpecifySaveOption-SpecifySaveOption.cs" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file template contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Artikel ini menjelaskan beberapa properti yang dapat Anda kontrol saat menyimpan dokumen.

## Enkripsi Dokumen Dengan Kata Sandi

Gunakan properti **Password** untuk mendapatkan atau mengatur kata sandi untuk dokumen terenkripsi. Gunakan properti **Password** dari kelas terkait untuk bekerja dengan format dokumen yang dipilih.

Misalnya, saat menyimpan dokumen ke format DOC atau DOT, gunakan properti [Password](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/password/) dari kelas [DocSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/).

Contoh kode berikut menunjukkan cara mengatur kata sandi untuk mengenkripsi dokumen menggunakan metode enkripsi RC4:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithDoc-EncryptDocumentWithPassword.cs" >}}

Saat menyimpan dokumen ke format Odt, gunakan properti [Password](https://reference.aspose.com/words/net/aspose.words.saving/odtsaveoptions/password/) dari kelas [OdtSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/odtsaveoptions/).

Contoh kode berikut menunjukkan cara memuat dan menyimpan OpenDocument yang dienkripsi dengan kata sandi:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-Load_Options-LoadAndSaveEncryptedODT.cs" >}}

Tidak semua format mendukung enkripsi dan penggunaan properti **Password**.

## Tampilkan Pemberitahuan Kemajuan Penyimpanan Dokumen

Aspose.Words menyediakan kemampuan untuk menggunakan properti [ProgressCallback](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/progresscallback/) untuk menerima pemberitahuan tentang kemajuan penyimpanan dokumen.

Sekarang tersedia saat menyimpan ke format DOCX, FlatOpc, DOCM, DOTM, DOTX, HTML, MHTML, EPUB, XamlFlow, XamlFlowPack, atau TXT.

## Perbarui Waktu Pembuatan Dokumen

Aspose.Words menyediakan kemampuan untuk menggunakan properti [CreatedTime](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/createdtime/) untuk mendapatkan atau mengatur tanggal pembuatan dokumen dalam UTC. Anda juga dapat memperbarui nilai ini sebelum menyimpan menggunakan opsi [UpdateCreatedTimeProperty](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/updatecreatedtimeproperty/).

Contoh kode berikut menunjukkan cara memperbarui waktu pembuatan dokumen:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-Working with PdfSaveOptions-UpdateIfLastPrinted.cs" >}}

## Perbarui Properti Terakhir yang Disimpan

Aspose.Words menyediakan kemampuan untuk menggunakan properti [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/updatelastsavedtimeproperty/) untuk mendapatkan atau menetapkan nilai yang menentukan apakah properti [LastSavedTime](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/lastsavedtime/) diperbarui sebelum disimpan.

Contoh kode berikut menunjukkan cara mengatur properti ini dan menyimpan dokumen:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithOoxml-UpdateLastSavedTimeProperty.cs" >}}

## Kontrol Sumber Daya Eksternal Saat Menyimpan Dokumen ke dalam HTML atau SVG

Untuk mengonversi HTML atau SVG menjadi PDF, cukup aktifkan metode [Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save/) dan tentukan nama file dengan ekstensi ".PDF". Jika Anda ingin memuat gambar, CSS, dll dari sumber eksternal, Anda dapat menggunakan [IResourceSavingCallback](https://reference.aspose.com/words/net/aspose.words.saving/iresourcesavingcallback/).

Contoh kode berikut menunjukkan cara mengonversi HTML ke PDF dan memuat gambar dari sumber eksternal:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ImageLoadingWithCredentialsHandler-ImageLoadingWithCredentialsHandler.cs" >}}

## Simpan Gambar Hitam Putih dengan Format Satu Bit Per Piksel

Untuk mengontrol opsi penyimpanan gambar, kelas **ImageSaveOptions** digunakan. Misalnya, Anda dapat menggunakan properti [PixelFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/pixelformat/) untuk mengatur format piksel untuk gambar yang dihasilkan. Harap dicatat bahwa format piksel gambar keluaran mungkin berbeda dari nilai yang ditetapkan karena kerja GDI+.

Contoh kode berikut menunjukkan cara menyimpan gambar hitam putih dengan format satu bit per piksel:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-ImageColorFilters-SaveImageToOnebitPerPixel.cs" >}}
