---
title: Tentukan Opsi Muat di Python
second_title: Aspose.Words untuk Python via .NET
articleTitle: Tentukan Opsi Muat
linktitle: Tentukan Opsi Muat
description: "Kontrol proses pemuatan lebih akurat menggunakan Python."
type: docs
weight: 10
url: /id/python-net/specify-load-options/
---

Saat memuat dokumen, Anda dapat mengatur beberapa properti lanjutan. Aspose.Words memberi Anda kelas [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/), yang memungkinkan kontrol proses pemuatan yang lebih tepat. Beberapa format pemuatan memiliki kelas terkait yang berisi opsi pemuatan untuk format pemuatan ini, misalnya, ada [PdfLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/) untuk memuat ke format PDF atau [TxtLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/) untuk memuat ke TXT. Artikel ini memberikan contoh bekerja dengan opsi kelas [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/).

## Atur Versi Microsoft Word untuk Mengubah Tampilan

Versi aplikasi Microsoft Word yang berbeda dapat menampilkan dokumen dengan cara yang berbeda. Misalnya, ada masalah umum dengan dokumen OOXML seperti DOCX atau DOTX yang dibuat menggunakan WPS Office. Dalam hal ini, elemen markup dokumen penting mungkin hilang atau ditafsirkan berbeda sehingga menyebabkan Microsoft Word 2019 menampilkan dokumen tersebut secara berbeda dibandingkan dengan Microsoft Word 2010.

Secara default Aspose.Words membuka dokumen menggunakan aturan Microsoft Word 2019. Jika Anda perlu membuat pemuatan dokumen tampak seperti yang terjadi di salah satu versi aplikasi Microsoft Word sebelumnya, Anda harus secara eksplisit menentukan versi yang diinginkan menggunakan properti [msw_version](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/msw_version/) kelas [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/).

Contoh kode berikut menunjukkan cara mengatur versi Microsoft Word dengan opsi pemuatan:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-SetMSWordVersion.py" >}}

## Atur Preferensi Bahasa untuk Mengubah Tampilan

Detail tampilan dokumen di Microsoft Word tidak hanya bergantung pada versi aplikasi dan nilai properti [msw_version](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/msw_version/) tetapi juga pada pengaturan bahasa. Microsoft Word mungkin menampilkan dokumen secara berbeda tergantung pada pengaturan dialog "Preferensi Bahasa Office", yang dapat ditemukan di "File → Opsi → Bahasa". Dengan menggunakan dialog ini pengguna dapat memilih, misalnya, bahasa utama, bahasa pemeriksaan, bahasa tampilan, dan sebagainya. Aspose.Words menyediakan properti [language_preferences](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/language_preferences/) yang setara dengan dialog ini. Jika keluaran Aspose.Words berbeda dengan keluaran Microsoft Word, tetapkan nilai yang sesuai untuk [EditingLanguage](https://reference.aspose.com/words/python-net/aspose.words.loading/editinglanguage/) – ini dapat meningkatkan kualitas dokumen keluaran.

Contoh kode berikut menunjukkan cara menyetel bahasa Jepang sebagai [EditingLanguage](https://reference.aspose.com/words/python-net/aspose.words.loading/editinglanguage/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-AddJapaneseAsEditinglanguages.py" >}}

## Gunakan TempFolder untuk Menghindari Pengecualian Memori

Aspose.Words mendukung dokumen berukuran sangat besar yang memiliki ribuan halaman penuh dengan konten yang kaya. Memuat dokumen seperti itu mungkin memerlukan banyak RAM. Dalam proses memuat, Aspose.Words memerlukan lebih banyak memori untuk menampung struktur sementara yang digunakan untuk mengurai dokumen.

Jika Anda mengalami masalah dengan pengecualian Kehabisan Memori saat memuat dokumen, coba gunakan properti [temp_folder](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/temp_folder/). Dalam hal ini, Aspose.Words akan menyimpan beberapa data dalam file sementara, bukan di memori, dan ini dapat membantu menghindari pengecualian tersebut.

Contoh kode berikut menunjukkan cara mengatur [temp_folder](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/temp_folder/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-UseTempFolder.py" >}}

## Atur Pengkodean Secara Eksplisit

Kebanyakan format dokumen modern menyimpan kontennya dalam Unicode dan tidak memerlukan penanganan khusus. Di sisi lain, masih banyak dokumen yang menggunakan pengkodean pra-Unicode dan terkadang kehilangan informasi pengkodean atau bahkan tidak mendukung pengkodean informasi secara alami. Aspose.Words mencoba mendeteksi secara otomatis pengkodean yang sesuai secara default, namun dalam kasus yang jarang terjadi, Anda mungkin perlu menggunakan pengkodean yang berbeda dari yang terdeteksi oleh algoritma pengenalan pengkodean kami. Dalam hal ini, gunakan properti [encoding](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/encoding/) untuk mendapatkan atau mengatur pengkodean.

Contoh kode berikut menunjukkan cara mengatur pengkodean untuk menggantikan pengkodean yang dipilih secara otomatis:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-LoadWithEncoding.py" >}}

## Muat Dokumen Terenkripsi

Anda dapat memuat dokumen Word yang dienkripsi dengan kata sandi. Untuk melakukan ini, gunakan kelebihan konstruktor khusus, yang menerima objek [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/). Objek ini berisi properti [password](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/password/), yang menentukan string kata sandi.

Contoh kode berikut menunjukkan cara memuat dokumen yang dienkripsi dengan kata sandi:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-OpenEncryptedDocument.py" >}}

Jika Anda tidak mengetahui sebelumnya apakah file dienkripsi, Anda dapat menggunakan kelas [FileFormatUtil](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/), yang menyediakan metode utilitas untuk bekerja dengan format file, seperti mendeteksi format file atau mengonversi ekstensi file ke/dari enumerasi format file. Untuk mendeteksi apakah dokumen dienkripsi dan memerlukan kata sandi untuk membukanya, gunakan properti [is_encrypted](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/is_encrypted/).

Contoh kode berikut menunjukkan cara memverifikasi dokumen apakah dienkripsi atau tidak:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-VerifyEncryptedDocument.py" >}}
