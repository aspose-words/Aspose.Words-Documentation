---
title: Posisi Tabel dalam C++
second_title: Aspose.Words untuk C++
articleTitle: Posisikan Tabel
linktitle: Posisikan Tabel
description: "Tentukan posisi tabel di C++. Dapatkan perataan tabel, dapatkan, dan atur posisi tabel mengambang menggunakan C++."
type: docs
weight: 50
url: /id/cpp/position-a-table/
---

Ada tabel mengambang dan tabel sebaris:

* **Inline tables** ditempatkan pada layer yang sama dengan teks dan ditempatkan dalam alur teks yang hanya mengelilingi tabel di atas dan di bawah. Tabel sebaris akan selalu muncul di antara paragraf tempat Anda meletakkannya.
* **Floating tables** dilapis di atas teks, dan posisi tabel relatif terhadap paragraf ditentukan oleh jangkar tabel. Karena itu, posisi tabel mengambang dalam dokumen dipengaruhi oleh pengaturan pemosisian vertikal dan horizontal.

Terkadang Anda perlu memposisikan tabel dalam dokumen dengan cara tertentu. Untuk melakukan ini, Anda perlu menggunakan alat perataan dan mengatur indentasi antara tabel dan teks di sekitarnya.

Pada artikel ini, kita akan membahas opsi apa yang disediakan Aspose.Words untuk penentuan posisi.

## Tentukan Posisi Tabel Sebaris

Anda dapat mengatur posisi tabel sebaris menggunakan properti Aspose.Words API dan [Alignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_alignment/). Dengan demikian, Anda dapat menyesuaikan perataan tabel relatif terhadap halaman dokumen.

Contoh kode berikut menunjukkan cara mengatur posisi tabel sebaris:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "inline-table-position.h" >}}

## Dapatkan Perataan Tabel Mengambang

Jika pembungkusan teks tabel disetel ke **Around**, Anda bisa mendapatkan perataan horizontal dan vertikal tabel menggunakan properti [RelativeHorizontalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativehorizontalalignment/) dan [RelativeVerticalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativeverticalalignment/).

Dengan **other types of text wrapping**, Anda bisa mendapatkan perataan tabel sebaris menggunakan properti [Alignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_alignment/).

Contoh kode berikut menunjukkan cara mendapatkan perataan tabel:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "get-table-position.h" >}}

## Dapatkan Posisi Meja Mengambang

 Posisi tabel mengambang ditentukan menggunakan properti berikut:

* [HorizontalAnchor](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_horizontalanchor/) - objek untuk menghitung posisi horizontal tabel mengambang
* [VerticalAnchor](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_verticalanchor/) - objek untuk menghitung posisi vertikal tabel mengambang
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_absolutehorizontaldistance/) - posisi tabel mengambang horizontal mutlak
* [AbsoluteVerticalDistance](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_absoluteverticaldistance/) - posisi tabel mengambang vertikal mutlak
* [AllowOverlap](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_allowoverlap/) - opsi untuk mengaktifkan / menonaktifkan tumpang tindih dengan objek mengambang lainnya
* [RelativeHorizontalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativehorizontalalignment/) - perataan horizontal relatif tabel mengambang.
* [RelativeVerticalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativeverticalalignment/) - perataan vertikal relatif tabel mengambang.

Contoh kode berikut menunjukkan cara mendapatkan posisi tabel mengambang:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "get-floating-table-position.h" >}}

## Atur Posisi Meja Mengambang

Sama seperti getting, Anda dapat mengatur posisi tabel mengambang menggunakan Aspose.Words API yang sama.

Penting untuk diketahui bahwa perataan dan jarak horizontal dan vertikal adalah properti gabungan dan yang satu dapat mengatur ulang yang lain. Misalnya, menyetel **RelativeHorizontalAlignment** akan menyetel ulang **AbsoluteHorizontalDistance** ke nilai defaultnya dan sebaliknya. Hal yang sama berlaku untuk pengaturan vertikal.

Contoh kode berikut menunjukkan cara mengatur posisi tabel mengambang:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "floating-table-position.h" >}}

## Dapatkan Jarak antara Tabel dan Teks di Sekitarnya

Aspose.Words juga memberikan peluang untuk mengetahui jarak antara tabel dan teks di sekitarnya:

- [DistanceTop](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distancetop/) - nilai jarak dari atas
- [DistanceBottom](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distancebottom/) - nilai jarak persepsi
- [DistanceRight](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distanceright/) - nilai jarak di sebelah kanan
- [DistanceLeft](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distanceleft/) - nilai jarak di sebelah kiri

Contoh kode berikut menunjukkan cara mendapatkan jarak antara tabel dan teks di sekitarnya:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "distance-between-table-surrounding-text.h" >}}
