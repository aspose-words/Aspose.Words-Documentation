---
title: Bekerja dengan Teks dalam Tabel
second_title: Aspose.Words untuk .NET
articleTitle: Bekerja dengan Teks dalam Tabel
linktitle: Bekerja dengan Teks dalam Tabel
description: "Ganti teks dalam tabel di C#. Ekstrak Teks Biasa dari Tabel atau Sel menggunakan C#."
type: docs
weight: 60
url: /id/net/work-with-text-in-a-table/
timestamp: 2024-01-27-14-07-04
---

Seperti yang telah disebutkan pada artikel sebelumnya, sebuah tabel biasanya berisi teks biasa, meskipun konten lain seperti gambar atau bahkan tabel lainnya dapat ditempatkan di sel tabel.

Menambahkan teks atau konten lain ke tabel dilakukan menggunakan metode kelas [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) yang sesuai dan dijelaskan dalam artikel **"Buat Tabel"**. Pada artikel ini, kita akan membahas tentang cara bekerja dengan teks di tabel yang sudah ada.

## Ganti Teks dalam Tabel

Tabel, seperti node lainnya di Aspose.Words, memiliki akses ke objek [Range](https://reference.aspose.com/words/net/aspose.words/range/). Dengan menggunakan objek rentang tabel, Anda dapat mengganti teks dalam tabel.

Kemampuan untuk menggunakan karakter khusus saat penggantian saat ini didukung, sehingga teks yang ada dapat diganti dengan teks multi-paragraf. Untuk melakukan ini, Anda perlu menggunakan metakarakter khusus yang dijelaskan dalam metode [Replace](https://reference.aspose.com/words/net/aspose.words/range/replace/) yang sesuai.

{{% alert color="primary" %}}

Biasanya, penggantian teks harus dilakukan pada tingkat sel (per sel) atau pada tingkat paragraf.

{{% /alert %}}

Contoh kode berikut menunjukkan cara mengganti semua contoh string teks di sel seluruh tabel:

{{< gist "aspose-words-gists" "458eb4fd5bd1de8b06fab4d1ef1acdc6" "replace-text.cs" >}}

## Ekstrak Teks Biasa dari Tabel atau Sel

Dengan menggunakan objek **Range**, Anda juga dapat memanggil metode di seluruh rentang tabel dan mengekstrak tabel sebagai teks biasa. Untuk melakukan ini, gunakan properti [Text](https://reference.aspose.com/words/net/aspose.words/range/text/)

Contoh kode berikut menunjukkan cara mencetak rentang teks tabel:

{{< gist "aspose-words-gists" "458eb4fd5bd1de8b06fab4d1ef1acdc6" "extract-text.cs" >}}

Teknik yang sama digunakan untuk mengekstrak konten dari sel tabel individual saja.

Contoh kode berikut menunjukkan cara mencetak rentang teks elemen baris dan tabel:

{{< gist "aspose-words-gists" "458eb4fd5bd1de8b06fab4d1ef1acdc6" "print-text-range-row-and-table.cs" >}}

## Bekerja dengan Teks Tabel Alternatif

Tabel Microsoft Word memiliki `table title` dan `table description` yang memberikan representasi tekstual alternatif dari informasi yang terkandung dalam tabel.

Di Aspose.Words, Anda juga bisa menambahkan judul dan deskripsi tabel menggunakan properti [Title](https://reference.aspose.com/words/net/aspose.words.tables/table/title/) dan [Description](https://reference.aspose.com/words/net/aspose.words.tables/table/description/). Properti ini berguna untuk dokumen DOCX yang sesuai dengan ISO/IEC 29500. Saat menyimpan dalam format yang lebih lama dari ISO/IEC 29500, properti ini diabaikan.

Contoh kode berikut menunjukkan cara mengatur properti judul dan deskripsi tabel:

{{< gist "aspose-words-gists" "458eb4fd5bd1de8b06fab4d1ef1acdc6" "table-title-and-description.cs" >}}
