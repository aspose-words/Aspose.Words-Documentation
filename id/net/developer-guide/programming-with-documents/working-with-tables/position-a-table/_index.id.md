---
title: Posisi Tabel di C#
second_title: Aspose.Words untuk .NET
articleTitle: Posisikan Meja
linktitle: Posisikan Meja
description: "Tentukan posisi tabel di C#. Dapatkan perataan tabel, dapatkan dan atur posisi tabel mengambang menggunakan C#."
type: docs
weight: 50
url: /id/net/position-a-table/
timestamp: 2024-01-27-14-07-04
---

Ada tabel mengambang dan tabel inline:

* **Tabel sebaris** ditempatkan pada lapisan yang sama dengan teks dan ditempatkan dalam aliran teks yang hanya mengelilingi tabel di atas dan di bawah. Tabel sebaris akan selalu muncul di antara paragraf tempat Anda menempatkannya.
* **Meja mengambang** berlapis di atas teks, dan posisi tabel relatif terhadap paragraf ditentukan oleh jangkar tabel. Oleh karena itu, posisi tabel mengambang dalam dokumen dipengaruhi oleh pengaturan posisi vertikal dan horizontal.

Terkadang Anda perlu memposisikan tabel dalam dokumen dengan cara tertentu. Untuk melakukan ini, Anda perlu menggunakan alat penyelarasan dan mengatur indentasi antara tabel dan teks di sekitarnya.

Pada artikel ini, kita akan membahas opsi apa saja yang disediakan Aspose.Words untuk penentuan posisi.

## Tentukan Posisi Tabel Sebaris

Anda dapat mengatur posisi tabel sebaris menggunakan Aspose.Words API dan properti [Alignment](https://reference.aspose.com/words/net/aspose.words.tables/table/alignment/). Dengan demikian, Anda dapat menyesuaikan perataan tabel relatif terhadap halaman dokumen.

Contoh kode berikut menunjukkan cara mengatur posisi tabel sebaris:

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "inline-table-position.cs" >}}

## Dapatkan Penyelarasan Tabel Mengambang

Jika pembungkusan teks tabel diatur ke **Around**, Anda bisa mendapatkan perataan tabel secara horizontal dan vertikal menggunakan properti [RelativeHorizontalAlignment](https://reference.aspose.com/words/net/aspose.words.tables/table/relativehorizontalalignment/) dan [RelativeVerticalAlignment](https://reference.aspose.com/words/net/aspose.words.tables/table/relativeverticalalignment/).

Dengan **jenis pembungkus teks lainnya**, Anda bisa mendapatkan penyelarasan tabel sebaris menggunakan properti [Alignment](https://reference.aspose.com/words/net/aspose.words.tables/table/alignment/).

Contoh kode berikut menunjukkan cara menyelaraskan tabel:

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "get-table-position.cs" >}}

## Dapatkan Posisi Meja Mengambang

 Posisi tabel mengambang ditentukan menggunakan properti berikut:

* [HorizontalAnchor](https://reference.aspose.com/words/net/aspose.words.tables/table/horizontalanchor/) – objek untuk menghitung posisi horizontal tabel mengambang
* [VerticalAnchor](https://reference.aspose.com/words/net/aspose.words.tables/table/verticalanchor/) – objek untuk menghitung posisi vertikal tabel mengambang
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/net/aspose.words.tables/table/absolutehorizontaldistance/) – posisi tabel mengambang horizontal absolut
* [AbsoluteVerticalDistance](https://reference.aspose.com/words/net/aspose.words.tables/table/absoluteverticaldistance/) – posisi tabel mengambang vertikal absolut
* [AllowOverlap](https://reference.aspose.com/words/net/aspose.words.tables/table/allowoverlap/) – opsi untuk mengaktifkan/menonaktifkan tumpang tindih dengan objek mengambang lainnya
* [RelativeHorizontalAlignment](https://reference.aspose.com/words/net/aspose.words.tables/table/relativehorizontalalignment/) – perataan horizontal relatif tabel mengambang.
* [RelativeVerticalAlignment](https://reference.aspose.com/words/net/aspose.words.tables/table/relativeverticalalignment/) – perataan vertikal relatif tabel mengambang.

Contoh kode berikut menunjukkan cara mendapatkan posisi tabel mengambang:

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "get-floating-table-position.cs" >}}

## Atur Posisi Meja Mengambang

Sama seperti mendapatkan, Anda dapat mengatur posisi tabel mengambang menggunakan Aspose.Words API yang sama.

Penting untuk diketahui bahwa perataan dan jarak horizontal dan vertikal merupakan properti gabungan dan yang satu dapat mengatur ulang yang lain. Misalnya, menyetel **RelativeHorizontalAlignment** akan menyetel ulang **AbsoluteHorizontalDistance** ke nilai defaultnya dan sebaliknya. Sama halnya dengan true untuk susunan vertikal.

Contoh kode berikut menunjukkan cara mengatur posisi tabel mengambang:

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "floating-table-position.cs" >}}

## Dapatkan Jarak antara Tabel dan Teks Sekitarnya

Aspose.Words juga memberikan kesempatan untuk mengetahui jarak antara tabel dan teks di sekitarnya:

- [DistanceTop](https://reference.aspose.com/words/net/aspose.words.tables/table/distancetop/) – nilai jarak dari atas
- [DistanceBottom](https://reference.aspose.com/words/net/aspose.words.tables/table/distancebottom/) – nilai jarak persepsi
- [DistanceRight](https://reference.aspose.com/words/net/aspose.words.tables/table/distanceright/) – nilai jarak di sebelah kanan
- [DistanceLeft](https://reference.aspose.com/words/net/aspose.words.tables/table/distanceleft/) – nilai jarak di sebelah kiri

Contoh kode berikut menunjukkan cara mendapatkan jarak antara tabel dan teks di sekitarnya:

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "distance-between-table-surrounding-text.cs" >}}
