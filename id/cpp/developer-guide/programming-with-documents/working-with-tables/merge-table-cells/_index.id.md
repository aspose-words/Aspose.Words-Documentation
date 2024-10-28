---
title: Gabungkan Sel Tabel di C++
second_title: Aspose.Words untuk C++
articleTitle: Gabungkan Sel Tabel
linktitle: Gabungkan Sel Tabel
description: "Cara menggabungkan sel tabel di C++. Periksa apakah sel dalam tabel digabungkan menggunakan C++."
type: docs
weight: 40
url: /id/cpp/merge-table-cells/
---

Terkadang baris tertentu dalam tabel memerlukan judul atau blok teks besar yang menempati seluruh lebar tabel. Untuk desain tabel yang tepat, pengguna dapat menggabungkan beberapa sel tabel menjadi satu. Aspose.Words mendukung sel gabungan saat bekerja dengan semua format input, termasuk mengimpor konten HTML.

## Cara Menggabungkan Sel Tabel

Dalam Aspose.Words, sel yang digabungkan diwakili oleh properti berikut dari kelas [CellFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/):

- [HorizontalMerge](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_horizontalmerge/) yang menjelaskan apakah sel tersebut merupakan bagian dari penggabungan sel secara horizontal
- [VerticalMerge](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_verticalmerge/) yang menjelaskan jika sel merupakan bagian dari penggabungan vertikal sel

Nilai dari properti ini menentukan perilaku penggabungan sel:

- Sel pertama dalam urutan sel yang digabungkan akan memiliki [CellMerge.First](https://reference.aspose.com/words/cpp/aspose.words.tables/cellmerge/)
- Setiap sel yang digabungkan selanjutnya akan memiliki [CellMerge.Previous](https://reference.aspose.com/words/cpp/aspose.words.tables/cellmerge/)
- Sel yang tidak digabungkan akan memiliki [CellMerge.None](https://reference.aspose.com/words/cpp/aspose.words.tables/cellmerge/)

{{% alert color="primary" %}}

Terkadang, saat memuat sel dokumen yang ada dalam tabel, sel tersebut akan tampak digabungkan. Namun, ini sebenarnya bisa menjadi satu sel yang panjang-terkadang Microsoft Word mengekspor sel yang digabungkan dengan cara ini. Hal ini dapat membingungkan saat mencoba bekerja dengan sel individual, tetapi tampaknya tidak ada pola khusus kapan hal ini terjadi.

{{% /alert %}}

## Periksa apakah Sel Digabungkan

Untuk memeriksa apakah sel merupakan bagian dari urutan sel yang digabungkan, kita cukup memeriksa properti **HorizontalMerge** dan **VerticalMerge**.

Contoh kode berikut menunjukkan cara mencetak tipe penggabungan sel horizontal dan vertikal:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "check-cells-merged.h" >}}

## Menggabungkan Sel dalam Tabel {#merge-cells-in-a-table}

Untuk menggabungkan sel dalam tabel yang dibuat dengan [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/), Anda perlu menyetel jenis penggabungan yang sesuai untuk setiap sel tempat penggabungan diharapkan-pertama **CellMerge.First** lalu **CellMerge.Previous**.

Selain itu, Anda harus ingat untuk menghapus pengaturan penggabungan untuk sel-sel yang tidak memerlukan penggabungan – ini dapat dilakukan dengan menyetel sel non-penggabungan pertama ke **CellMerge.None**. Jika ini tidak dilakukan, semua sel dalam tabel akan digabungkan.

Contoh kode berikut menunjukkan cara membuat tabel dengan dua baris di mana sel-sel di baris pertama digabungkan secara horizontal:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "horizontal-merge.h" >}}

Contoh kode berikut menunjukkan cara membuat tabel dua kolom di mana sel-sel di kolom pertama digabungkan secara vertikal:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "vertical-merge.h" >}}

## Gabungkan Sel Tabel dalam Kasus Lain

Dalam situasi lain di mana **DocumentBuilder** tidak digunakan, seperti di tabel yang ada, menggabungkan sel dengan cara sebelumnya mungkin tidak semudah itu. Sebagai gantinya, kita dapat membungkus operasi dasar yang terlibat dalam menerapkan properti penggabungan ke sel dalam metode yang membuat tugas menjadi lebih mudah. Metode ini mirip dengan metode otomatisasi Penggabungan, yang dipanggil untuk menggabungkan rentang sel dalam sebuah tabel.

Kode di bawah ini akan menggabungkan sel tabel dalam rentang yang ditentukan, mulai dari sel yang diberikan dan berakhir di sel akhir. Dalam hal ini, rentang dapat menjangkau beberapa baris atau kolom:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "merge-cells.h" >}}

Contoh kode berikut menunjukkan cara menggabungkan rentang sel di antara dua sel yang ditentukan:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "merge-cell-range.h" >}}

Bergantung pada versi Kerangka Kerja yang Anda gunakan, Anda mungkin ingin menyempurnakan metode ini dengan mengubahnya menjadi metode ekstensi. Dalam hal ini, Anda dapat memanggil metode ini secara langsung pada sel untuk menggabungkan rentang sel, seperti `cell1.Merge(cell2)`.

## Sel Gabungan Vertikal dan Horizontal dalam Tabel {#vertical-and-Horizontal-merged-cells-in-the-table}

Seperti yang telah kami katakan di artikel sebelumnya, tabel dalam Microsoft Word adalah sekumpulan baris independen. Setiap baris memiliki sekumpulan sel yang tidak bergantung pada sel baris lainnya. Jadi, dalam tabel Microsoft Word tidak ada objek seperti "kolom", dan "kolom 1st" adalah sesuatu seperti "himpunan sel 1st dari setiap baris dalam tabel". Hal ini memungkinkan pengguna untuk memiliki tabel di mana, misalnya, baris 1st terdiri dari dua sel - 2cm dan 1cm, dan baris 2nd terdiri dari dua sel yang berbeda - 1cm dan lebar 2cm. Dan Aspose.Words mendukung konsep tabel ini.

Tabel dalam HTML pada dasarnya memiliki struktur yang berbeda: setiap baris memiliki jumlah sel yang sama dan (penting untuk tugas tersebut) setiap sel memiliki lebar kolom yang sesuai, sama untuk semua sel dalam satu kolom. Jadi jika **HorizontalMerge** dan **VerticalMerge** mengembalikan nilai yang salah, gunakan contoh kode berikut:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "print-horizontal-and-vertical-merged.h" >}}

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "horizontal-and-vertical-merge-helper-classes.h" >}}

## Konversikan ke Sel yang Digabungkan Secara Horizontal {#convert-to-horizontally-merged-cells}

Terkadang tidak mungkin mendeteksi sel mana yang digabungkan karena beberapa versi Microsoft Word yang lebih baru tidak lagi menggunakan tanda penggabungan saat sel digabungkan secara horizontal. Tetapi untuk situasi di mana sel digabungkan menjadi sel secara horizontal dengan lebarnya menggunakan flag gabungan, Aspose.Words menyediakan metode `ConvertToHorizontallyMergedCells` untuk mengonversi sel. Metode ini hanya mengubah tabel dan menambahkan sel baru sesuai kebutuhan.

Contoh kode berikut menunjukkan metode di atas dalam operasi:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "convert-to-horizontally-merged-cells.h" >}}