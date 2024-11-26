---
title: Mendeteksi Format File
second_title: Aspose.Words untuk Java
articleTitle: Deteksi Format File dan Periksa Kompatibilitas Format
linktitle: Deteksi Format File dan Periksa Kompatibilitas Format
description: "Dapatkan informasi tentang format dokumen sebelum membukanya untuk menghindari pengecualian jika Anda tidak yakin dengan konten sebenarnya dari file yang menggunakan Java."
type: docs
weight: 20
url: /id/java/detect-file-format-and-check-format-compatibility/
timestamp: 2024-10-21-11-17-44
---

Terkadang perlu untuk menentukan format dokumen sebelum dibuka karena ekstensi file tidak menjamin bahwa isi file tersebut sesuai. Misalnya, diketahui bahwa Crystal Reports sering kali mengeluarkan dokumen dalam format RTF, tetapi memberikannya.ekstensi dokumen.

Aspose.Words menyediakan kemampuan untuk memperoleh informasi tentang jenis file untuk menghindari pengecualian jika Anda tidak yakin apa isi sebenarnya dari file tersebut.

## Mendeteksi Format File tanpa Pengecualian

Saat Anda berurusan dengan banyak dokumen dalam berbagai format file, Anda mungkin perlu memisahkan file yang dapat diproses oleh Aspose.Words dari yang tidak dapat. Anda mungkin juga ingin tahu mengapa beberapa dokumen tidak dapat diproses.

Jika Anda mencoba memuat file ke dalam objek [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) dan Aspose.Words tidak dapat mengenali format file atau formatnya tidak didukung, Aspose.Words akan mengeluarkan pengecualian. Anda dapat menangkap pengecualian tersebut dan menganalisisnya, tetapi Aspose.Words juga menyediakan metode [DetectFileFormat](https://reference.aspose.com/words/java/com.aspose.words/fileformatutil/#detectFileFormat-java.lang.String) yang memungkinkan kita menentukan format file dengan cepat tanpa memuat dokumen dengan kemungkinan pengecualian. Metode ini mengembalikan objek [FileFormatInfo](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/) yang berisi informasi yang terdeteksi tentang jenis file.

{{% alert color="primary" %}}

DetectFileFormat hanya memeriksa format file tetapi tidak memvalidasi format file. Tidak ada jaminan bahwa file akan berhasil dibuka, meskipun **DetectFileFormat** mengembalikan bahwa itu adalah salah satu format yang didukung. Ini karena metode **DetectFileFormat** hanya membaca sebagian data format file, cukup untuk memeriksa format file, tetapi tidak cukup untuk validasi lengkap.

{{% /alert %}}

## Periksa Kompatibilitas Format File

Kami dapat memeriksa kompatibilitas format semua file di folder yang dipilih dan mengurutkannya berdasarkan format ke dalam subfolder yang sesuai.

Karena kita berurusan dengan konten dalam sebuah folder, hal pertama yang perlu kita lakukan adalah mendapatkan kumpulan semua file dalam folder ini menggunakan metode **GetFiles** dari kelas `Directory` (dari namespace `System.IO`).

Contoh kode berikut menunjukkan cara mendapatkan daftar semua file dalam folder:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CheckFormatCompatibility-GetListOfFilesInFolder.java" >}}

Ketika semua file dikumpulkan, sisa pekerjaan dilakukan dengan metode **DetectFileFormat**, yang memeriksa format file.

Contoh kode berikut menunjukkan cara mengulang daftar file yang dikumpulkan, memeriksa format setiap file, dan memindahkan setiap file ke folder yang sesuai:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CheckFormatCompatibility-CheckFormatCompatibility.java" >}}

File dipindahkan ke subfolder yang sesuai menggunakan metode `Move` dari kelas `File`, dari namespace `System.IO` yang sama.

File-file berikut digunakan dalam contoh di atas. Nama file ada di sebelah kiri dan deskripsinya ada di sebelah kanan:

| Grup File | Dokumen Masukan | Jenis |
| :- | :- | :- |
| Format file yang didukung | Test File (Doc).doc | Dokumen Microsoft Word 95/6.0 atau Microsoft Word 97-2003. |
|  | Test File (Dot).dot | Templat Microsoft Word 95/6.0 atau Microsoft Word 97-2003. |
|  | Test File (Docx).docx | Office Membuka dokumen XML WordprocessingML tanpa makro. |
|  | Test File (Docm).docm | Office Membuka dokumen XML WordprocessingML dengan makro. |
|  | Test File (Dotx).dotx | Templat Kantor Terbuka XML WordprocessingML. |
|  | Test File (Dotm).dotm | Templat Office Open XML WordprocessingML dengan makro. |
|  | Test File (XML).xml | FlatOPC OOXML Dokumen. |
|  | Test File (RTF).rtf | Dokumen Format Teks Kaya. |
|  | Test File (WordML).xml | Microsoft Word Dokumen tahun 2003 WordprocessingML. |
|  | Test File (HTML).html | HTML dokumen. |
|  | Test File (MHTML).mhtml | Dokumen MHTML (Arsip web). |
|  | Test File (Odt).odt | OpenDocument Teks (OpenOffice Penulis). |
|  | Test File (Ott).ott | OpenDocument Templat Dokumen. |
|  | Test File (DocPreWord60).doc | Microsoft Word 2.0 dokumen. |
| Dokumen terenkripsi | Test File (Enc).doc | Dokumen Microsoft Word 95/6.0 atau Microsoft Word 97 – 2003 terenkripsi. |
|  | Test File (Enc).docx | Kantor Terenkripsi Membuka dokumen XML WordprocessingML. |
| Format file yang tidak didukung | Test File (JPG).jpg | JPEG berkas gambar. |

