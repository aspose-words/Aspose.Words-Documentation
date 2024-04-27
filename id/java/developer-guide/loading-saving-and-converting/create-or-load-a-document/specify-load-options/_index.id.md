---
title: Tentukan Opsi Beban dalam Java
second_title: Aspose.Words Sitemap Java
articleTitle: Tentukan Opsi Beban
linktitle: Tentukan Opsi Beban
description: "Mengatur sifat canggih ketika memuat dokumen menggunakan Java untuk mendapatkan kontrol proses yang lebih tepat."
type: docs
weight: 10
url: /id/java/specify-load-options/
---

Ketika memuat dokumen, Anda dapat mengatur beberapa sifat canggih. Aspose.Words memberikan Anda [LoadOptions](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/) kelas, yang memungkinkan kontrol proses beban yang lebih tepat. Beberapa format beban memiliki kelas yang sesuai yang memegang opsi beban untuk format beban ini, misalnya, ada [PdfLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfloadoptions/) untuk memuat ke format PDF atau [TxtLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/) untuk memuat ke TXT. Artikel ini memberikan contoh kerja dengan pilihan **LoadOptions** Sitemap

## Login Microsoft Word Versi untuk Mengubah Penampilan

Versi yang berbeda dari Microsoft Word aplikasi dapat menampilkan dokumen secara berbeda. Misalnya, ada masalah yang terkenal dengan dokumen OOXML seperti DOCX atau DOTX diproduksi menggunakan WPS Office. Dalam kasus seperti itu, elemen markup dokumen penting dapat hilang atau dapat ditafsirkan secara berbeda menyebabkan Microsoft Word 2019 untuk menunjukkan dokumen semacam itu berbeda dibandingkan dengan Meme it Microsoft Word Sitemap

Sitemap Aspose.Words dokumen terbuka menggunakan Microsoft Word 2019 aturan. Jika Anda perlu membuat pemuatan dokumen muncul karena akan terjadi di salah satu yang sebelumnya Microsoft Word versi aplikasi, Anda harus secara eksplisit menentukan versi yang diinginkan menggunakan [MswVersion](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getMswVersion) properti **LoadOptions** Sitemap

Contoh kode berikut menunjukkan cara mengatur Microsoft Word versi dengan opsi beban:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-SetMSWordVersion.java" >}}

## Mengatur Preferensi Bahasa untuk Mengubah Penampilan

Rincian menampilkan dokumen dalam Microsoft Word tidak hanya tergantung pada versi aplikasi dan **MswVersion** nilai properti tetapi juga pada pengaturan bahasa. Microsoft Word dapat menunjukkan dokumen secara berbeda tergantung pada pengaturan dialog "Office Language Preferences", yang dapat ditemukan di "File → Options → Languаge". Menggunakan dialog ini pengguna dapat memilih, misalnya, bahasa primer, bahasa bukti, bahasa tampilan, dan sebagainya. Aspose.Words Sitemap [LanguagePreferences](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getLanguagePreferences) properti sebagai setara dari dialog ini. Sitemap Aspose.Words output berbeda dari Microsoft Word output, set nilai yang sesuai untuk **EditingLanguage** - ini dapat meningkatkan dokumen output.

Contoh kode berikut menunjukkan cara mengatur bahasa Jepang **EditingLanguage**Sitemap

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-AddJapaneseAsEditinglanguages.java" >}}

## Sitemap WarningCallback untuk Mengontrol Masalah Saat Memuat Dokumen

Beberapa dokumen mungkin rusak, mengandung entri tidak valid, atau memiliki fitur yang tidak saat ini didukung oleh Aspose.WordsSitemap Jika Anda ingin tahu tentang masalah yang terjadi saat memuat dokumen, Aspose.Words Sitemap [IWarningCallback](https://reference.aspose.com/words/java/com.aspose.words/iwarningcallback/) Login

Contoh kode berikut menunjukkan implementasi **IWarningCallback** antarmuka:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-DocumentLoadingWarningCallback.java" >}}

Untuk mendapatkan informasi tentang semua masalah sepanjang waktu beban, gunakan [WarningCallback](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getWarningCallback) Login

Contoh kode berikut menunjukkan cara menggunakan properti ini:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-LoadOptionsWarningCallback.java" >}}

## Menggunakan ResourceLoading Callback untuk Mengontrol Pemuatan Sumber Daya Eksternal

Dokumen dapat berisi tautan eksternal ke gambar yang terletak di suatu tempat di disk lokal, jaringan, atau Internet. Aspose.Words secara otomatis memuat gambar tersebut ke dalam dokumen, tetapi ada situasi ketika proses ini perlu dikontrol. Misalnya, untuk memutuskan apakah kita benar-benar perlu memuat gambar tertentu atau mungkin melewatkannya. Login [ResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getResourceLoadingCallback) opsi beban memungkinkan Anda untuk mengontrol ini.

Contoh kode berikut menunjukkan implementasi [IResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/iresourceloadingcallback/) antarmuka:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-HtmlLinkedResourceLoadingCallback.java" >}}

Contoh kode berikut menunjukkan cara menggunakan **ResourceLoadingCallback** properti:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-LoadOptionsResourceLoadingCallback.java" >}}

## Gunakan TempFolder untuk Hindari Kecuali Memori

Aspose.Words mendukung dokumen yang sangat besar yang memiliki ribuan halaman penuh dengan konten yang kaya. Memuat dokumen tersebut mungkin memerlukan banyak RAM. Dalam proses pemuatan, Aspose.Words membutuhkan lebih banyak memori untuk menahan struktur sementara yang digunakan untuk membuat dokumen.

Jika Anda memiliki masalah dengan pengecualian Memori selama memuat dokumen, coba gunakan [TempFolder](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getTempFolder) Login Dalam kasus ini, Aspose.Words akan menyimpan beberapa data dalam file sementara bukan memori, dan ini dapat membantu menghindari pengecualian tersebut.

Contoh kode berikut menunjukkan cara mengatur **TempFolder**Sitemap

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-SetTempFolder.java" >}}

## Mengatur Pengkodean Jelas

Kebanyakan format dokumen modern menyimpan konten mereka di Unicode dan tidak memerlukan penanganan khusus. Di sisi lain, masih ada banyak dokumen yang menggunakan beberapa pengkodean pra-Unicode dan kadang-kadang kehilangan informasi pengkodean atau bahkan tidak mendukung informasi pengkodean oleh alam. Aspose.Words mencoba untuk secara otomatis mendeteksi pengkodean yang tepat secara default, tetapi dalam kasus yang jarang Anda mungkin perlu menggunakan pengkodean yang berbeda dari satu terdeteksi oleh algoritma pengenalan pengkodean kami. Dalam kasus ini, gunakan [Encoding](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getEncoding) properti untuk mendapatkan atau mengatur pengkodean.

Contoh kode berikut menunjukkan cara mengatur pengkodean untuk menimpa pengkodean yang dipilih secara otomatis:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-LoadOptionsEncoding.java" >}}

## Dokumen Terenkripsi Beban

Anda dapat memuat Dokumen Word dienkripsi dengan kata sandi. Untuk melakukan ini, gunakan beban konstror khusus, yang menerima [LoadOptions](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/) Sitemap Objek ini mengandung [Password](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getPassword) properti, yang menentukan string kata sandi.

Contoh kode berikut menunjukkan cara memuat dokumen yang dienkripsi dengan kata sandi:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenEncryptedDocument.java" >}}

Jika Anda tidak tahu terlebih dahulu apakah file dienkripsi, Anda dapat menggunakan [FileFormatUtil](https://reference.aspose.com/words/java/com.aspose.words/fileformatutil/) kelas, yang menyediakan metode utilitas untuk bekerja dengan format file, seperti mendeteksi format file atau mengubah ekstensi file ke / dari numerasi format file. Untuk mendeteksi apakah dokumen dienkripsi dan memerlukan kata sandi untuk membukanya, gunakan [IsEncrypted](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#isEncrypted) Login

Contoh kode berikut menunjukkan cara memverifikasi OpenDocument baik dienkripsi atau tidak:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-VerifyODTdocument.java" >}}
