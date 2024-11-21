---
title: Bekerja dengan Teks di Meja
second_title: Aspose.Words Sitemap Java
articleTitle: Bekerja dengan Teks di Meja
linktitle: Bekerja dengan Teks di Meja
description: "Ganti teks dalam tabel JavaSitemap Ekstrak Teks Biasa dari Tabel atau Sel menggunakan JavaSitemap"
type: docs
weight: 60
url: /id/java/extract-text-from-and-replace-text-in-a-table/
timestamp: 2024-01-27-14-07-04
---

Seperti yang disebutkan dalam artikel sebelumnya, tabel biasanya mengandung teks biasa, meskipun konten lain seperti gambar atau bahkan tabel lain dapat ditempatkan dalam sel tabel.

Menambahkan teks atau konten lain ke tabel dilakukan menggunakan metode yang tepat [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) kelas dan dijelaskan dalam **"Meningkatkan Tabel"** Artikel Dalam artikel ini, kita akan berbicara tentang cara bekerja dengan teks di tabel yang sudah ada.

## Ganti Teks di Meja

Meja, seperti node lain di Aspose.Words, memiliki akses ke [Range](https://reference.aspose.com/words/java/com.aspose.words/range/) Sitemap Menggunakan objek kisaran tabel, Anda dapat mengganti teks di meja.

Kemampuan untuk menggunakan karakter khusus saat mengganti saat ini didukung, sehingga dimungkinkan untuk mengganti teks yang ada dengan teks multi-paragraf. Untuk melakukan ini, Anda perlu menggunakan metacharacters khusus yang dijelaskan dalam hal Meme it [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.lang.String-java.lang.String) Login

{{% alert color="primary" %}}

Biasanya, penggantian teks harus dilakukan pada tingkat sel (per sel) atau pada tingkat paragraf.

{{% /alert %}}

Contoh kode berikut menunjukkan cara mengganti semua kasus string teks dalam sel seluruh tabel:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "replace-text.java" >}}

## Ekstrak Teks Biasa dari Tabel

Menggunakan **Range** objek, Anda juga dapat memanggil metode pada seluruh rentang tabel dan mengekstrak tabel sebagai teks biasa. Untuk melakukan ini, gunakan [Text](https://reference.aspose.com/words/java/com.aspose.words/range/#Text) Login

Contoh kode berikut menunjukkan cara mencetak rentang teks tabel:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "extract-text.java" >}}

{{% alert color="primary" %}}

Teknik yang sama digunakan untuk mengekstrak konten dari sel-sel meja individu saja.

Contoh kode berikut menunjukkan cara mencetak rentang teks dari baris dan elemen tabel:

{{% /alert %}}

Contoh kode berikut menunjukkan cara mencetak rentang teks elemen baris dan tabel.

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "print-text-range-row-and-table.java" >}}

## Bekerja dengan Teks Meja Alternatif

Microsoft Word tabel memiliki `table title` Login `table description` yang memberikan representasi teksal alternatif dari informasi yang terkandung dalam tabel.

Sitemap Aspose.Words, Anda juga dapat menambahkan judul meja dan deskripsi menggunakan [Title](https://reference.aspose.com/words/java/com.aspose.words/table/#getTitle) Login [Description](https://reference.aspose.com/words/java/com.aspose.words/table/#getDescription) Sitemap Sifat-sifat ini berarti untuk dokumen DOCX sesuai dengan ISO/ IEC 29500. Saat menyimpan format lebih awal dari ISO/ IEC 29500, sifat-sifat ini diabaikan.

Contoh kode berikut menunjukkan bagaimana mengatur sifat judul dan deskripsi tabel:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "table-title-and-description.java" >}}
