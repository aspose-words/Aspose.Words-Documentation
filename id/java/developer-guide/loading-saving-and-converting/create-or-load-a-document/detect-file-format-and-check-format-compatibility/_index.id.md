---
title: Mendeteksi Format File
second_title: Aspose.Words Sitemap Java
articleTitle: Mendeteksi Format File dan Periksa Kompatibilitas Format
linktitle: Mendeteksi Format File dan Periksa Kompatibilitas Format
description: "Mempertahankan informasi tentang format dokumen sebelum membukanya untuk menghindari pengecualian jika Anda tidak yakin apa konten file yang sebenarnya menggunakan JavaSitemap"
type: docs
weight: 20
url: /id/java/detect-file-format-and-check-format-compatibility/
---

Kadang-kadang perlu menentukan format dokumen sebelum membuka karena ekstensi file tidak menjamin bahwa isi file yang sesuai. Misalnya, diketahui bahwa Laporan Kristal sering output dokumen dalam format RTF, tetapi memberi mereka ekstensi .doc.

Aspose.Words memberikan kemampuan untuk memperoleh informasi tentang jenis file untuk menghindari pengecualian jika Anda tidak yakin apa konten file yang sebenarnya.

## Mendeteksi Format File tanpa pengecualian

Ketika Anda berurusan dengan beberapa dokumen dalam berbagai format file, Anda mungkin perlu memisahkan file-file yang dapat diproses oleh Aspose.Words dari mereka yang tidak bisa. Meme it Anda mungkin juga ingin tahu mengapa beberapa dokumen tidak dapat diproses.

Jika Anda mencoba memuat file ke dalam [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) Sitemap Aspose.Words tidak dapat mengenali format file atau format tidak didukung, Aspose.Words akan membuang pengecualian. Anda dapat menangkap pengecualian dan menganalisis mereka, tetapi Aspose.Words juga menyediakan [DetectFileFormat](https://reference.aspose.com/words/java/com.aspose.words/fileformatutil/#detectFileFormat-java.lang.String) metode yang memungkinkan kita untuk dengan cepat menentukan format file tanpa memuat dokumen dengan pengecualian yang mungkin. Metode ini mengembalikan [FileFormatInfo](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/) objek yang berisi informasi terdeteksi tentang jenis file.

{{% alert color="primary" %}}

Login Format hanya memeriksa format file tetapi tidak memvalidasi format file. Tidak ada jaminan bahwa file akan dibuka berhasil, bahkan jika **DetectFileFormat** kembali bahwa itu adalah salah satu format yang didukung. Ini karena **DetectFileFormat** metode membaca hanya data format file parsial, cukup untuk memeriksa format file, tetapi tidak cukup untuk validasi lengkap.

{{% /alert %}}

## Periksa Kompatibilitas Format File

Kita dapat memeriksa kompatibilitas format dari semua file di folder yang dipilih dan memilahnya dengan format ke subfolder yang sesuai.

Karena kita berurusan dengan konten di folder, hal pertama yang perlu kita lakukan adalah mendapatkan koleksi semua file di folder ini menggunakan **GetFiles** metode `Directory` kelas (dari `System.IO` Login

Contoh kode berikut menunjukkan cara mendapatkan daftar semua file di folder:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CheckFormatCompatibility-GetListOfFilesInFolder.java" >}}

Ketika semua file dikumpulkan, sisa pekerjaan dilakukan oleh Meme it **DetectFileFormat** metode, yang memeriksa format file.

Contoh kode berikut menunjukkan cara menyertai daftar file yang dikumpulkan, periksa format setiap file, dan memindahkan setiap file ke folder yang sesuai:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CheckFormatCompatibility-CheckFormatCompatibility.java" >}}

File dipindahkan ke subfolder yang tepat menggunakan `Move` metode `File` kelas, dari yang sama `System.IO` Login

File berikut digunakan dalam contoh di atas. Nama file berada di sebelah kiri dan deskripsinya tepat:

| Group Login | Dokumen Masuk | Login |
|  :-  |  :-  |  :-  |
| Format file yang didukung | File Uji (Doc).doc | Microsoft Word 95/6.0 atau Microsoft Word 97 – 2003 dokumen. |
| | Uji File (Dot).dot | Microsoft Word 95/6.0 atau Microsoft Word 97 – 2003 template. |
| | File Uji (Docx).docx | Office Open XML API Dokumen ML tanpa makro. |
| | Uji File (Docm).docm | Office Open XML API Dokumen ML dengan makro. |
| | Uji File (Dotx).dotx | Office Open XML API Template ML. |
| | Uji File (Dotm).dotm | Office Open XML API Template ML dengan makro. |
| | API documentation | Sitemap |
| | Uji File (RTF).rtf | Dokumen Format Teks yang kaya. |
| | Test File (WordML).xml | Microsoft Word 2003 Wordprocessing Dokumen ML. |
| | API documentation | Database |
| | File Folder (MHTML).mhtml | MHTML (Web arsip) dokumen. |
| | Uji File (Odt).odt | OpenOffice Writer |
| | Uji File (Ott).ott | Template Dokumen OpenDocument. |
| | File Uji (DocPreWord60).doc | Microsoft Word 2.0 dokumen. |
| Dokumen yang dienkripsi | Datasheet (Enc).doc | Sitemap Microsoft Word 95/6.0 atau Microsoft Word 97 – 2003 dokumen. |
| | Datasheet (Enc).docx | Enkripsi Office Open XML Wordprocessing Dokumen ML. |
| Unsupported format file | Uji File (JPG). Login | File gambar JPEG. |

