---
title: Gabungkan Sel Tabel di C#
second_title: Aspose.Words untuk .NET
articleTitle: Gabungkan Sel Tabel
linktitle: Gabungkan Sel Tabel
description: "Cara menggabungkan sel tabel di C#. Periksa apakah sel dalam tabel digabungkan menggunakan C#."
type: docs
weight: 40
url: /id/net/working-with-merged-cells/
---

Terkadang baris tertentu dalam tabel memerlukan judul atau blok teks besar yang memenuhi seluruh lebar tabel. Untuk desain tabel yang benar, pengguna dapat menggabungkan beberapa sel tabel menjadi satu. Aspose.Words mendukung sel gabungan saat bekerja dengan semua format masukan, termasuk mengimpor konten HTML.

## Cara Menggabungkan Sel Tabel

Di Aspose.Words, sel yang digabungkan diwakili oleh properti kelas [CellFormat](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/) berikut:

- [HorizontalMerge](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/horizontalmerge/) yang menjelaskan jika sel merupakan bagian dari gabungan sel horizontal
- [VerticalMerge](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/verticalmerge/) yang menjelaskan jika sel merupakan bagian dari gabungan sel vertikal

Nilai properti ini menentukan perilaku penggabungan sel:

- Sel pertama dalam rangkaian sel yang digabungkan akan memiliki [CellMerge.First](https://reference.aspose.com/words/net/aspose.words.tables/cellmerge/)
- Setiap sel yang digabungkan selanjutnya akan memiliki [CellMerge.Previous](https://reference.aspose.com/words/net/aspose.words.tables/cellmerge/)
- Sel yang tidak digabungkan akan memiliki [CellMerge.None](https://reference.aspose.com/words/net/aspose.words.tables/cellmerge/)

{{% alert color="primary" %}}

Terkadang, saat memuat sel dokumen yang ada ke dalam tabel, sel tersebut akan tampak digabungkan. Namun, sebenarnya bisa berupa satu sel yang panjang – terkadang Microsoft Word mengekspor sel yang digabungkan dengan cara ini. Hal ini dapat membingungkan ketika mencoba bekerja dengan sel individual, namun tampaknya tidak ada pola tertentu mengenai kapan hal ini terjadi.

{{% /alert %}}

## Periksa apakah Sel Digabung

Untuk memeriksa apakah sel merupakan bagian dari rangkaian sel yang digabungkan, kita cukup memeriksa properti **HorizontalMerge** dan **VerticalMerge**.

Contoh kode berikut menunjukkan cara mencetak tipe gabungan sel horizontal dan vertikal:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "check-cells-merged.cs" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file contoh contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx).

{{% /alert %}}

## Gabungkan Sel Tabel Saat Menggunakan DocumentBuilder

Untuk menggabungkan sel dalam tabel yang dibuat dengan [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/), Anda perlu mengatur jenis penggabungan yang sesuai untuk setiap sel yang diharapkan akan digabungkan – pertama **CellMerge.First** dan kemudian **CellMerge.Previous**.

Selain itu, Anda harus ingat untuk menghapus pengaturan penggabungan untuk sel-sel yang tidak memerlukan penggabungan – ini dapat dilakukan dengan mengatur sel pertama yang tidak digabungkan ke **CellMerge.None**. Jika ini tidak dilakukan, semua sel dalam tabel akan digabungkan.

Contoh kode berikut menunjukkan cara membuat tabel dengan dua baris dimana sel-sel di baris pertama digabungkan secara horizontal:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "horizontal-merge.cs" >}}

Contoh kode berikut menunjukkan cara membuat tabel dua kolom dengan sel-sel di kolom pertama digabungkan secara vertikal:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "vertical-merge.cs" >}}

## Gabungkan Sel Tabel dalam Kasus Lain

Dalam situasi lain di mana **DocumentBuilder** tidak digunakan, misalnya pada tabel yang sudah ada, menggabungkan sel dengan cara sebelumnya mungkin tidak semudah itu. Sebagai gantinya, kita bisa menggabungkan operasi dasar yang terlibat dalam penerapan properti gabungan ke sel dalam metode yang membuat tugas lebih mudah. Metode ini mirip dengan metode otomatisasi Penggabungan, yang dipanggil untuk menggabungkan rentang sel dalam sebuah tabel.

Kode di bawah ini akan menggabungkan sel-sel tabel dalam rentang yang ditentukan, dimulai dari sel tertentu dan berakhir di sel akhir. Dalam hal ini, rentang dapat mencakup beberapa baris atau kolom:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "merge-cells.cs" >}}

Contoh kode berikut menunjukkan cara menggabungkan rentang sel antara dua sel tertentu:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "merge-cell-range.cs" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file contoh contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx).

{{% /alert %}}

Tergantung pada versi .NET Framework yang Anda gunakan, Anda mungkin ingin menyempurnakan metode ini dengan mengubahnya menjadi metode ekstensi. Dalam hal ini, Anda bisa memanggil metode ini secara langsung pada sel untuk menggabungkan rentang sel, seperti `cell1.Merge(cell2)`.

## Sel Gabungan Vertikal dan Horizontal dalam Tabel HTML

Seperti yang telah kami katakan di artikel sebelumnya, tabel di Microsoft Word adalah sekumpulan baris independen. Setiap baris memiliki sekumpulan sel yang tidak bergantung pada sel baris lainnya. Jadi, dalam tabel Microsoft Word tidak ada objek seperti "kolom", dan "kolom pertama" adalah sesuatu seperti "kumpulan sel pertama dari setiap baris dalam tabel". Hal ini memungkinkan pengguna untuk memiliki tabel yang, misalnya, baris pertama terdiri dari dua sel – 2cm dan 1cm, dan baris ke-2 terdiri dari dua sel berbeda – lebar 1cm dan 2cm. Dan Aspose.Words mendukung konsep tabel ini.

Tabel dalam HTML pada dasarnya memiliki struktur yang berbeda: setiap baris memiliki jumlah sel yang sama dan (penting untuk tugas ini) setiap sel memiliki lebar kolom yang sesuai, sama untuk semua sel dalam satu kolom. Jadi jika **HorizontalMerge** dan **VerticalMerge** mengembalikan nilai yang salah, gunakan contoh kode berikut:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "print-horizontal-and-vertical-merged.cs" >}}

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "horizontal-and-vertical-merge-helper-classes.cs" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file contoh contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx).

{{% /alert %}}

## Konversikan ke Sel yang Digabung Secara Horizontal

Terkadang tidak mungkin mendeteksi sel mana yang digabungkan karena beberapa versi Microsoft Word yang lebih baru tidak lagi menggunakan tanda penggabungan saat sel digabungkan secara horizontal. Namun untuk situasi di mana sel digabungkan ke dalam sel secara horizontal berdasarkan lebarnya menggunakan tanda gabungan, Aspose.Words menyediakan metode `ConvertToHorizontallyMergedCells` untuk mengonversi sel. Metode ini hanya mengubah tabel dan menambahkan sel baru sesuai kebutuhan.

Contoh kode berikut menunjukkan cara kerja metode di atas:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "convert-to-horizontally-merged-cells.cs" >}}
