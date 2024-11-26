---
title: Bekerja dengan Teks dalam Tabel
second_title: Aspose.Words untuk Java
articleTitle: Bekerja dengan Teks dalam Tabel
linktitle: Bekerja dengan Teks dalam Tabel
description: "Ganti teks dalam tabel dengan Java. Ekstrak Teks Biasa dari Tabel atau Sel menggunakan Java."
type: docs
weight: 60
url: /id/java/extract-text-from-and-replace-text-in-a-table/
timestamp: 2024-01-27-14-07-04
---

Seperti yang telah disebutkan di artikel sebelumnya, tabel biasanya berisi teks biasa, meskipun konten lain seperti gambar atau bahkan tabel lain dapat ditempatkan di sel tabel.

Menambahkan teks atau konten lain ke tabel dilakukan dengan menggunakan metode yang sesuai dari kelas [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) dan dijelaskan dalam artikel **"Create a Table"**. Pada artikel ini, kita akan berbicara tentang cara bekerja dengan teks di tabel yang sudah ada.

## Ganti Teks dalam Tabel

Tabel, seperti simpul lainnya di Aspose.Words, memiliki akses ke objek [Range](https://reference.aspose.com/words/java/com.aspose.words/range/). Menggunakan objek rentang tabel, Anda dapat mengganti teks dalam tabel.

Kemampuan untuk menggunakan karakter khusus saat mengganti saat ini didukung, sehingga dimungkinkan untuk mengganti teks yang ada dengan teks multi-paragraf. Untuk melakukan ini, Anda perlu menggunakan metakarakter khusus yang dijelaskan dalam metode [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.lang.String-java.lang.String) yang sesuai.

{{% alert color="primary" %}}

Biasanya, penggantian teks harus dilakukan pada tingkat sel (per sel) atau pada tingkat paragraf.

{{% /alert %}}

Contoh kode berikut menunjukkan cara mengganti semua instance string teks di sel seluruh tabel:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "replace-text.java" >}}

## Ekstrak Teks Biasa dari Tabel

Dengan menggunakan objek **Range**, Anda juga dapat memanggil metode pada seluruh rentang tabel dan mengekstrak tabel sebagai teks biasa. Untuk melakukannya, gunakan properti [Text](https://reference.aspose.com/words/java/com.aspose.words/range/#Text).

Contoh kode berikut menunjukkan cara mencetak rentang teks tabel:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "extract-text.java" >}}

{{% alert color="primary" %}}

Teknik yang sama digunakan untuk mengekstrak konten dari sel tabel individual saja.

Contoh kode berikut menunjukkan cara mencetak rentang teks elemen baris dan tabel:

{{% /alert %}}

Contoh kode berikut menunjukkan cara mencetak rentang teks elemen baris dan tabel.

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "print-text-range-row-and-table.java" >}}

## Bekerja dengan Teks Tabel Alternatif

Tabel Microsoft Word memiliki `table title` dan `table description` yang memberikan representasi tekstual alternatif dari informasi yang terdapat dalam tabel.

Di Aspose.Words, Anda juga dapat menambahkan judul dan deskripsi tabel menggunakan properti [Title](https://reference.aspose.com/words/java/com.aspose.words/table/#getTitle) dan [Description](https://reference.aspose.com/words/java/com.aspose.words/table/#getDescription). Properti ini berarti untuk dokumen DOCX yang sesuai dengan ISO / IEC 29500. Saat menyimpan dalam format lebih awal dari ISO / IEC 29500, properti ini diabaikan.

Contoh kode berikut menunjukkan cara mengatur properti judul dan deskripsi tabel:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "table-title-and-description.java" >}}
