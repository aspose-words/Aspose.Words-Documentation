---
title: Tentukan Opsi Muat di C++
second_title: Aspose.Words untuk C++
articleTitle: Tentukan Opsi Muat
linktitle: Tentukan Opsi Muat
description: "Lebih akurat mengontrol proses pemuatan."
type: docs
weight: 10
url: /id/cpp/specify-load-options/
timestamp: 2024-01-30-16-22-34
---

Saat memuat dokumen, Anda dapat mengatur beberapa properti lanjutan. Aspose.Words memberi Anda kelas [LoadOptions](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/), yang memungkinkan kontrol proses pemuatan yang lebih tepat. Beberapa format pemuatan memiliki kelas terkait yang menyimpan opsi pemuatan untuk format pemuatan ini, misalnya, ada [PdfLoadOptions](https://reference.aspose.com/words/cpp/aspose.words.loading/pdfloadoptions/) untuk memuat ke format PDF atau [TxtLoadOptions](https://reference.aspose.com/words/cpp/aspose.words.loading/txtloadoptions/) untuk memuat ke TXT. Artikel ini memberikan contoh bekerja dengan opsi dari kelas **LoadOptions**.

## Setel Versi Microsoft Word untuk Mengubah Tampilan

Versi berbeda dari aplikasi Microsoft Word dapat menampilkan dokumen dengan acuh tak acuh. Misalnya, ada masalah umum dengan dokumen OOXML seperti DOCX atau DOTX yang diproduksi menggunakan WPS Office. Dalam kasus seperti itu, elemen markup dokumen penting mungkin hilang atau dapat ditafsirkan secara berbeda sehingga menyebabkan Microsoft Word 2019 menampilkan dokumen tersebut secara berbeda dibandingkan dengan Microsoft Word 2010.

Secara default, Aspose.Words membuka dokumen menggunakan aturan Microsoft Word 2019. Jika Anda perlu membuat pemuatan dokumen muncul seperti yang akan terjadi di salah satu versi aplikasi Microsoft Word sebelumnya, Anda harus secara eksplisit menentukan versi yang diinginkan menggunakan properti [MswVersion](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_mswversion/) dari kelas **LoadOptions**.

Contoh kode berikut menunjukkan cara menyetel versi Microsoft Word dengan opsi muat:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-SetMSWordVersion.cpp" >}}

## Atur Preferensi Bahasa untuk Mengubah Tampilan

Detail menampilkan dokumen dalam Microsoft Word tidak hanya bergantung pada versi aplikasi dan nilai properti **MswVersion**, tetapi juga pada pengaturan bahasa. Microsoft Word dapat menampilkan dokumen secara berbeda tergantung pada pengaturan dialog "Preferensi Bahasa Office", yang dapat ditemukan di "File → Options → Dengan menggunakan dialog ini, pengguna dapat memilih, misalnya, bahasa utama, bahasa pemeriksaan, bahasa tampilan, dan sebagainya. Aspose.Words menyediakan properti [LanguagePreferences](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_languagepreferences/) yang setara dengan dialog ini. Jika keluaran Aspose.Words berbeda dari keluaran Microsoft Word, setel nilai yang sesuai untuk **EditingLanguage** - ini dapat meningkatkan dokumen keluaran.

Contoh kode berikut menunjukkan cara menyetel bahasa Jepang sebagai **EditingLanguage**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-Setuplanguagepreferences-AddJapaneseAsEditinglanguages.cpp" >}}

## Gunakan WarningCallback untuk Mengontrol Masalah Saat Memuat Dokumen

Beberapa dokumen mungkin rusak, berisi entri yang tidak valid, atau memiliki fitur yang saat ini tidak didukung oleh Aspose.Words. Jika Anda ingin mengetahui tentang masalah yang terjadi saat memuat dokumen, Aspose.Words menyediakan antarmuka [IWarningCallback](https://reference.aspose.com/words/cpp/aspose.words/iwarningcallback/).

Contoh kode berikut menunjukkan implementasi antarmuka **IWarningCallback**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-DocumentLoadingWarningCallback.cpp" >}}

Untuk mendapatkan informasi tentang semua masalah selama waktu buka, gunakan properti `WarningCallback`.

Contoh kode berikut menunjukkan cara menggunakan properti ini:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-LoadOptionsWarningCallback.cpp" >}}

## Gunakan ResourceLoadingCallback untuk Mengontrol Pemuatan Sumber Daya Eksternal

Sebuah dokumen mungkin berisi tautan eksternal ke gambar yang terletak di suatu tempat di disk lokal, jaringan, atau Internet. Aspose.Words secara otomatis memuat gambar seperti itu ke dalam dokumen, tetapi ada situasi ketika proses ini perlu dikontrol. Misalnya, untuk memutuskan apakah kita benar-benar perlu memuat gambar tertentu atau mungkin melewatkannya. Opsi ResourceLoadingCallback load memungkinkan Anda untuk mengontrol ini.

Contoh kode berikut menunjukkan implementasi antarmuka IResourceLoadingCallback:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-HtmlLinkedResourceLoadingCallback.cpp" >}}

Contoh kode berikut menunjukkan cara menggunakan properti **ResourceLoadingCallback**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-LoadOptionsResourceLoadingCallback.cpp" >}}

## Gunakan TempFolder untuk Menghindari Pengecualian Memori

Aspose.Words mendukung dokumen yang sangat besar yang memiliki ribuan halaman penuh dengan konten yang kaya. Memuat dokumen semacam itu mungkin membutuhkan banyak RAM. Dalam proses pemuatan, Aspose.Words membutuhkan lebih banyak memori untuk menyimpan struktur sementara yang digunakan untuk mengurai dokumen.

Jika Anda memiliki masalah dengan pengecualian Kehabisan Memori saat memuat dokumen, coba gunakan properti [TempFolder](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_tempfolder/). Dalam hal ini, Aspose.Words akan menyimpan beberapa data dalam file sementara alih-alih memori, dan ini dapat membantu menghindari pengecualian semacam itu.

Contoh kode berikut menunjukkan cara menyetel **TempFolder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-SetTempFolder.cpp" >}}

## Setel Penyandian Secara Eksplisit

Sebagian besar format dokumen modern menyimpan kontennya dalam Unicode dan tidak memerlukan penanganan khusus. Di sisi lain, masih banyak dokumen yang menggunakan beberapa penyandian pra-Unicode dan terkadang melewatkan informasi penyandian atau bahkan tidak mendukung penyandian informasi secara alami. Aspose.Words mencoba mendeteksi penyandian yang sesuai secara otomatis secara default, tetapi dalam kasus yang jarang terjadi, Anda mungkin perlu menggunakan penyandian yang berbeda dari yang dideteksi oleh algoritme pengenalan penyandian kami. Dalam hal ini, gunakan properti [Encoding](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_encoding/) untuk mendapatkan atau menyetel penyandian.

Contoh kode berikut menunjukkan cara mengatur penyandian untuk menimpa penyandian yang dipilih secara otomatis:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-LoadOptionsEncoding.cpp" >}}

## Muat Dokumen Terenkripsi

Anda dapat memuat dokumen Word yang dienkripsi dengan kata sandi. Untuk melakukannya, gunakan kelebihan konstruktor khusus, yang menerima objek [LoadOptions](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/). Objek ini berisi properti [Password](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_password/), yang menentukan string kata sandi.

Contoh kode berikut menunjukkan cara memuat dokumen yang dienkripsi dengan kata sandi:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-OpenEncryptedDocument-OpenEncryptedDocument.cpp" >}}

Jika Anda tidak mengetahui sebelumnya apakah file tersebut dienkripsi, Anda dapat menggunakan kelas [FileFormatUtil](https://reference.aspose.com/words/cpp/aspose.words/fileformatutil/), yang menyediakan metode utilitas untuk bekerja dengan format file, seperti mendeteksi format file atau mengonversi ekstensi file ke / dari pencacahan format file. Untuk mendeteksi apakah dokumen dienkripsi dan memerlukan kata sandi untuk membukanya, gunakan properti `IsEncrypted`.

Contoh kode berikut menunjukkan cara memverifikasi OpenDocument apakah itu dienkripsi atau tidak:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-VerifyODTdocument.cpp" >}}
