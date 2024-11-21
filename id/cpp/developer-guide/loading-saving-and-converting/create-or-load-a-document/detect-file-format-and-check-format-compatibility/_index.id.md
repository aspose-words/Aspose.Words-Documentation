---
title: Deteksi Format File dan Periksa Kompatibilitas Format
second_title: Aspose.Words untuk C++
articleTitle: Deteksi Format File dan Periksa Kompatibilitas Format
linktitle: Deteksi Format File dan Periksa Kompatibilitas Format
description: "Tentukan format file dalam C++ jika Anda tidak yakin apa isi sebenarnya dari file tersebut, atau untuk memeriksa kompatibilitas format."
type: docs
weight: 20
url: /id/cpp/detect-file-format-and-check-format-compatibility/
timestamp: 2024-10-21-11-17-44
---

Terkadang perlu untuk menentukan format dokumen sebelum dibuka karena ekstensi file tidak menjamin bahwa isi file tersebut sesuai. Misalnya, diketahui bahwa Crystal Reports sering kali mengeluarkan dokumen dalam format RTF, tetapi memberikannya.ekstensi dokumen.

Aspose.Words menyediakan kemampuan untuk memperoleh informasi tentang jenis file untuk menghindari pengecualian jika Anda tidak yakin apa isi sebenarnya dari file tersebut.

## Mendeteksi Format File tanpa Pengecualian

Saat Anda berurusan dengan banyak dokumen dalam berbagai format file, Anda mungkin perlu memisahkan file yang dapat diproses oleh Aspose.Words dari yang tidak dapat. Anda mungkin juga ingin tahu mengapa beberapa dokumen tidak dapat diproses.

Jika Anda mencoba memuat file ke dalam objek [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) dan Aspose.Words tidak dapat mengenali format file atau formatnya tidak didukung, Aspose.Words akan mengeluarkan pengecualian. Anda dapat menangkap pengecualian tersebut dan menganalisisnya, tetapi Aspose.Words juga menyediakan metode [DetectFileFormat](https://reference.aspose.com/words/cpp/aspose.words/fileformatutil/detectfileformat/) yang memungkinkan kita menentukan format file dengan cepat tanpa memuat dokumen dengan kemungkinan pengecualian. Metode ini mengembalikan objek [FileFormatInfo](https://reference.aspose.com/words/cpp/aspose.words/fileformatinfo/) yang berisi informasi yang terdeteksi tentang jenis file.

{{% alert color="primary" %}}

DetectFileFormat hanya memeriksa format file tetapi tidak memvalidasi format file. Tidak ada jaminan bahwa file akan berhasil dibuka, meskipun **DetectFileFormat** mengembalikan bahwa itu adalah salah satu format yang didukung. Ini karena metode **DetectFileFormat** hanya membaca sebagian data format file, cukup untuk memeriksa format file, tetapi tidak cukup untuk validasi lengkap.

{{% /alert %}}

## Periksa Kompatibilitas Format File

Kami dapat memeriksa kompatibilitas format semua file di folder yang dipilih dan mengurutkannya berdasarkan format ke dalam subfolder yang sesuai.

Karena kita berurusan dengan konten dalam sebuah folder, hal pertama yang perlu kita lakukan adalah mendapatkan kumpulan semua file dalam folder ini menggunakan metode **GetFiles** dari kelas `Directory` (dari namespace `System.IO`).

Contoh kode berikut menunjukkan cara mendapatkan daftar semua file dalam folder:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-CheckFormat-GetListOfFilesInFolder.cpp" >}}

Ketika semua file dikumpulkan, sisa pekerjaan dilakukan dengan metode **DetectFileFormat**, yang memeriksa format file.

Contoh kode berikut menunjukkan cara mengulang daftar file yang dikumpulkan, memeriksa format setiap file, dan memindahkan setiap file ke folder yang sesuai:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-CheckFormat-CheckFormatCompatibility.cpp" >}}

File dipindahkan ke subfolder yang sesuai menggunakan metode `Move` dari kelas `File`, dari namespace `System.IO` yang sama.

File-file berikut digunakan dalam contoh di atas. Nama file ada di sebelah kiri dan deskripsinya ada di sebelah kanan:

| Grup File | Dokumen Masukan | Jenis |
| :- | :- | :- |
| Format file yang didukung | Test File (DOC).doc | Dokumen Microsoft Word 95/6.0 atau Microsoft Word 97-2003. |
|  | Test File (DOT).dot | Templat Microsoft Word 95/6.0 atau Microsoft Word 97-2003. |
|  | Test File (DOCX).docx | Office Membuka dokumen WordprocessingML XML tanpa makro. |
|  | Test File (DOCM).docm | Office Membuka dokumen WordprocessingML XML dengan makro. |
|  | Test File (DOTX).dotx | Kantor Buka templat WordprocessingML XML. |
|  | Test File (DOTM).dotm | Kantor Buka XML templat WordprocessingML dengan makro. |
|  | Test File (XML).xml | Dokumen FlatOPC OOXML. |
|  | Test File (RTF).rtf | Dokumen Format Teks Kaya. |
|  | Test File (WordML).xml | Microsoft Word Dokumen WordprocessingML tahun 2003. |
|  | Test File (HTML).html | HTML dokumen. |
|  | Test File (MHTML).mhtml | Dokumen MHTML (Arsip web). |
|  | Test File (ODT).odt | OpenDocument Teks (OpenOffice Penulis). |
|  | Test File (OTT).ott | OpenDocument Templat Dokumen. |
|  | Berkas Uji (DocPreWord60).doc | Microsoft Word 2.0 dokumen. |
| Dokumen terenkripsi | Test File (Enc).doc | Dokumen Microsoft Word 95/6.0 atau Microsoft Word 97 – 2003 terenkripsi. |
|  | Test File (Enc).docx | Kantor Terenkripsi Membuka dokumen WordprocessingML XML. |
| Format file yang tidak didukung | Test File (JPG).jpg | JPEG berkas gambar. |

