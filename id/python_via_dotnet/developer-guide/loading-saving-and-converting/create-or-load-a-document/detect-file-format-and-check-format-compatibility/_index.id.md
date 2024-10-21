---
title: Deteksi Format File Saat Memuat
second_title: Aspose.Words untuk Python via .NET
articleTitle: Deteksi Format File dan Periksa Kompatibilitas Format
linktitle: Deteksi Format File dan Periksa Kompatibilitas Format
description: "Tentukan format file di Python jika Anda tidak yakin dengan konten file sebenarnya, atau untuk memeriksa kompatibilitas format."
type: docs
weight: 20
url: /id/python-net/detect-file-format-and-check-format-compatibility/
---

Terkadang perlu menentukan format suatu dokumen sebelum dibuka karena ekstensi file tidak menjamin kesesuaian isi file. Misalnya, Crystal Reports diketahui sering mengeluarkan dokumen dalam format RTF, tetapi memberinya ekstensi .doc.

Aspose.Words menyediakan kemampuan untuk memperoleh informasi tentang jenis file untuk menghindari pengecualian jika Anda tidak yakin dengan konten sebenarnya dari file tersebut.

## Deteksi Format File tanpa Pengecualian

Saat Anda berurusan dengan banyak dokumen dalam berbagai format file, Anda mungkin perlu memisahkan file-file yang dapat diproses oleh Aspose.Words dari file-file yang tidak dapat diproses. Anda mungkin juga ingin mengetahui mengapa beberapa dokumen tidak dapat diproses.

Jika Anda mencoba memuat file ke objek [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) dan Aspose.Words tidak dapat mengenali format file atau formatnya tidak didukung, Aspose.Words akan mengeluarkan pengecualian. Anda dapat menangkap pengecualian tersebut dan menganalisisnya, namun Aspose.Words juga menyediakan metode [detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) yang memungkinkan kita menentukan format file dengan cepat tanpa memuat dokumen dengan kemungkinan pengecualian. Metode ini mengembalikan objek [FileFormatInfo](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/) yang berisi informasi yang terdeteksi tentang jenis file.

{{% alert color="primary" %}}

[detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) hanya memeriksa format file tetapi tidak memvalidasi format file. Tidak ada jaminan bahwa file akan berhasil dibuka, meskipun [detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) mengembalikan bahwa itu adalah salah satu format yang didukung. Hal ini karena metode [detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) hanya membaca sebagian data format file, cukup untuk memeriksa format file, namun tidak cukup untuk validasi lengkap.

{{% /alert %}}

## Periksa Kompatibilitas Format File

Kami dapat memeriksa kompatibilitas format semua file di folder yang dipilih dan mengurutkannya berdasarkan format ke dalam subfolder yang sesuai.

Karena kita berurusan dengan konten dalam sebuah folder, hal pertama yang perlu kita lakukan adalah mengumpulkan semua file dalam folder ini menggunakan metode **listdir** pada modul **os**.

Contoh kode berikut menunjukkan cara mendapatkan daftar semua file dalam folder:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-GetListOfFilesInFolder.py" >}}

Ketika semua file dikumpulkan, sisa pekerjaan dilakukan dengan metode [detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/), yang memeriksa format file.

Contoh kode berikut menunjukkan cara mengulangi daftar file yang dikumpulkan, memeriksa format setiap file, dan memindahkan setiap file ke folder yang sesuai:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-CheckFormatCompatibility.py" >}}

File dipindahkan ke subfolder yang sesuai menggunakan metode **copyfile** pada modul **tutup**.

File berikut digunakan dalam contoh di atas. Nama file di sebelah kiri dan deskripsinya di sebelah kanan:

| Group File | Dokumen Masukan | Jenis |
|  :-  |  :-  |  :-  |
| Format file yang didukung | File Uji (Dok).doc|Dokumen Microsoft Word 95/6.0 atau Microsoft Word 97 – 2003. |
|  | File Uji (`Dot`).dot | Templat Microsoft Word 95/6.0 atau Microsoft Word 97 – 2003. |
|  | File Uji (Docx).docx | Dokumen Office Open XML WordprocessingML tanpa makro. |
|  | File Uji (Docm).docm | Dokumen Office Open XML WordprocessingML dengan makro. |
|  | File Uji (Dotx).dotx | Templat Office Open XML WordprocessingML. |
|  | File Uji (Dotm).dotm | Templat Office Open XML WordprocessingML dengan makro. |
|  | File Uji (XML).xml | Dokumen FlatOPC OOXML. |
|  | File Uji (RTF).rtf | Dokumen Format Teks Kaya. |
|  | File Uji (WordML).xml | Dokumen Microsoft Word 2003 WordprocessingML. |
|  | File Uji (HTML).html | dokumen HTML. |
|  | File Uji (MHTML).mhtml | Dokumen MHTML (arsip Web). |
|  | File Uji (Aneh).odt | Teks OpenDocument (Penulis OpenOffice). |
|  | File Uji (Ott).ott | Templat Dokumen OpenDocument. |
|  | File Uji (DocPreWord60).doc|dokumen Microsoft Word 2.0. |
| Dokumen terenkripsi | File Uji (Enc).doc|Dokumen Microsoft Word 95/6.0 atau Microsoft Word 97 – 2003 terenkripsi. |
|  | File Uji (Enc).docx | Dokumen Office Open XML WordprocessingML terenkripsi. |
| Format file tidak didukung | File Uji (JPG).jpg | File gambar JPEG. |

