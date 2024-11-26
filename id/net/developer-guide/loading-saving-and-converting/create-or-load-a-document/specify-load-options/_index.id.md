---
title: Tentukan Opsi Muat di C#
second_title: Aspose.Words untuk .NET
articleTitle: Tentukan Opsi Muat
linktitle: Tentukan Opsi Muat
description: "Kontrol proses pemuatan lebih akurat menggunakan C#."
type: docs
weight: 10
url: /id/net/specify-load-options/
timestamp: 2024-07-09-19-00-42
---

Saat memuat dokumen, Anda dapat mengatur beberapa properti lanjutan. Aspose.Words memberi Anda kelas [LoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/), yang memungkinkan kontrol proses pemuatan yang lebih tepat. Beberapa format pemuatan memiliki kelas terkait yang berisi opsi pemuatan untuk format pemuatan ini, misalnya, ada [PdfLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/) untuk memuat ke format PDF atau [TxtLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/) untuk memuat ke TXT. Artikel ini memberikan contoh bekerja dengan opsi kelas **LoadOptions**.

## Atur Versi Microsoft Word untuk Mengubah Tampilan

Versi aplikasi Microsoft Word yang berbeda dapat menampilkan dokumen dengan cara yang berbeda. Misalnya, ada masalah umum dengan dokumen OOXML seperti DOCX atau DOTX yang dibuat menggunakan WPS Office. Dalam hal ini, elemen markup dokumen penting mungkin hilang atau ditafsirkan berbeda sehingga menyebabkan Microsoft Word 2019 menampilkan dokumen tersebut secara berbeda dibandingkan dengan Microsoft Word 2010.

Secara default Aspose.Words membuka dokumen menggunakan aturan Microsoft Word 2019. Jika Anda perlu membuat pemuatan dokumen tampak seperti yang terjadi di salah satu versi aplikasi Microsoft Word sebelumnya, Anda harus secara eksplisit menentukan versi yang diinginkan menggunakan properti [MswVersion](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/mswversion/) kelas **LoadOptions**.

Contoh kode berikut menunjukkan cara mengatur versi Microsoft Word dengan opsi pemuatan:

{{< gist "aspose-words-gists" "62b066455ff6af0e8727e3fddae47aee" "load-docx-with-msword-version.cs" >}}

## Atur Preferensi Bahasa untuk Mengubah Tampilan

Detail tampilan dokumen di Microsoft Word tidak hanya bergantung pada versi aplikasi dan nilai properti **MswVersion** tetapi juga pada pengaturan bahasa. Microsoft Word mungkin menampilkan dokumen secara berbeda tergantung pada pengaturan dialog "Preferensi Bahasa Office", yang dapat ditemukan di "File → Opsi → Bahasa". Dengan menggunakan dialog ini pengguna dapat memilih, misalnya, bahasa utama, bahasa pemeriksaan, bahasa tampilan, dan sebagainya. Aspose.Words menyediakan properti [LanguagePreferences](https://reference.aspose.com/words/net/aspose.words.loading/languagepreferences/) yang setara dengan dialog ini. Jika keluaran Aspose.Words berbeda dengan keluaran Microsoft Word, tetapkan nilai yang sesuai untuk **EditingLanguage** – ini dapat meningkatkan kualitas dokumen keluaran.

Contoh kode berikut menunjukkan cara menyetel bahasa Jepang sebagai **EditingLanguage**:

{{< gist "aspose-words-gists" "5d49772a182a61eac0dcb9c13c98bc6e" "load-docx-with-japanese-as-editing-language.cs" >}}

## Gunakan WarningCallback untuk Mengontrol Masalah Saat Memuat Dokumen

Beberapa dokumen mungkin rusak, berisi entri yang tidak valid, atau memiliki fitur yang saat ini tidak didukung oleh Aspose.Words. Jika Anda ingin mengetahui masalah yang terjadi saat memuat dokumen, Aspose.Words menyediakan antarmuka [IWarningCallback](https://reference.aspose.com/words/net/aspose.words/iwarningcallback/).

Contoh kode berikut menunjukkan implementasi antarmuka **IWarningCallback**:

{{< gist "aspose-words-gists" "98a2dc9a7968c829a68373fa824822c9" "document-loading-warning-callback.cs" >}}

Untuk mendapatkan informasi tentang semua masalah sepanjang waktu buka, gunakan properti [WarningCallback](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/warningcallback/).

Contoh kode berikut menunjukkan cara menggunakan properti ini:

{{< gist "aspose-words-gists" "98a2dc9a7968c829a68373fa824822c9" "load-docx-with-warning-callback.cs" >}}

## Gunakan ResourceLoadingCallback untuk Mengontrol Pemuatan Sumber Daya Eksternal

Sebuah dokumen mungkin berisi tautan eksternal ke gambar yang terletak di suatu tempat di disk lokal, jaringan, atau Internet. Aspose.Words secara otomatis memuat gambar tersebut ke dalam dokumen, tetapi ada situasi ketika proses ini perlu dikontrol. Misalnya, untuk memutuskan apakah kita benar-benar perlu memuat gambar tertentu atau mungkin melewatkannya. Opsi pemuatan [ResourceLoadingCallback](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/resourceloadingcallback/) memungkinkan Anda mengontrol ini.

Contoh kode berikut menunjukkan implementasi antarmuka [IResourceLoadingCallback](https://reference.aspose.com/words/net/aspose.words.loading/iresourceloadingcallback/):

{{< gist "aspose-words-gists" "513c134d5e8e8126c385324f2d001a9b" "html-linked-resource-loading-callback.cs" >}}

Contoh kode berikut menunjukkan cara menggunakan properti **ResourceLoadingCallback**:

{{< gist "aspose-words-gists" "513c134d5e8e8126c385324f2d001a9b" "load-html-with-resource-loading-callback.cs" >}}

## Gunakan TempFolder untuk Menghindari Pengecualian Memori

Aspose.Words mendukung dokumen berukuran sangat besar yang memiliki ribuan halaman penuh dengan konten yang kaya. Memuat dokumen seperti itu mungkin memerlukan banyak RAM. Dalam proses memuat, Aspose.Words memerlukan lebih banyak memori untuk menampung struktur sementara yang digunakan untuk mengurai dokumen.

Jika Anda mengalami masalah dengan pengecualian Kehabisan Memori saat memuat dokumen, coba gunakan properti [TempFolder](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/tempfolder/). Dalam hal ini, Aspose.Words akan menyimpan beberapa data dalam file sementara, bukan di memori, dan ini dapat membantu menghindari pengecualian tersebut.

Contoh kode berikut menunjukkan cara mengatur **TempFolder**:

{{< gist "aspose-words-gists" "80fb635124a6afc0e75b9f17d1eab40c" "load-docx-using-temp-folder.cs" >}}

## Atur Pengkodean Secara Eksplisit

Kebanyakan format dokumen modern menyimpan kontennya dalam Unicode dan tidak memerlukan penanganan khusus. Di sisi lain, masih banyak dokumen yang menggunakan pengkodean pra-Unicode dan terkadang kehilangan informasi pengkodean atau bahkan tidak mendukung pengkodean informasi secara alami. Aspose.Words mencoba mendeteksi secara otomatis pengkodean yang sesuai secara default, namun dalam kasus yang jarang terjadi, Anda mungkin perlu menggunakan pengkodean yang berbeda dari yang terdeteksi oleh algoritma pengenalan pengkodean kami. Dalam hal ini, gunakan properti [Encoding](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/encoding/) untuk mendapatkan atau menyetel pengkodean.

Contoh kode berikut menunjukkan cara mengatur pengkodean untuk menggantikan pengkodean yang dipilih secara otomatis:

{{< gist "aspose-words-gists" "507181f2c99ba13012c441f1c436d9a7" "load-txt-using-encoding.cs" >}}

## Muat Dokumen Terenkripsi

Anda dapat memuat dokumen Word yang dienkripsi dengan kata sandi. Untuk melakukan ini, gunakan kelebihan konstruktor khusus, yang menerima objek [LoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/). Objek ini berisi properti [Password](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/password/), yang menentukan string kata sandi.

Contoh kode berikut menunjukkan cara memuat dokumen yang dienkripsi dengan kata sandi:

{{< gist "aspose-words-gists" "5b929b4208996737657de94443bc2852" "load-encrypted-docx.cs" >}}

Jika Anda tidak mengetahui sebelumnya apakah file dienkripsi, Anda dapat menggunakan kelas [FileFormatUtil](https://reference.aspose.com/words/net/aspose.words/fileformatutil/), yang menyediakan metode utilitas untuk bekerja dengan format file, seperti mendeteksi format file atau mengonversi ekstensi file ke/dari enumerasi format file. Untuk mendeteksi apakah dokumen dienkripsi dan memerlukan kata sandi untuk membukanya, gunakan properti [IsEncrypted](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/isencrypted/).

Contoh kode berikut menunjukkan cara memverifikasi OpenDocument apakah terenkripsi atau tidak:

{{< gist "aspose-words-gists" "935e41f0f59c7d8bd8a082ccc14f6b84" "verify-odt-is-encrypted.cs" >}}
