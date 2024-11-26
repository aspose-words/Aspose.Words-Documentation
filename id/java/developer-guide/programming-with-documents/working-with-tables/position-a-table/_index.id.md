---
title: Posisi Tabel dalam Java
second_title: Aspose.Words untuk Java
articleTitle: Posisikan Tabel
linktitle: Posisikan Tabel
description: "Tentukan posisi tabel dalam Java. Dapatkan perataan tabel, dapatkan, dan setel posisi tabel mengambang menggunakan Java."
type: docs
weight: 50
url: /id/java/position-a-table/
timestamp: 2024-01-27-14-07-04
---

Ada tabel mengambang dan tabel sebaris:

* **Inline tables** ditempatkan pada layer yang sama dengan teks dan ditempatkan dalam alur teks yang hanya mengelilingi tabel di atas dan di bawah. Tabel sebaris akan selalu muncul di antara paragraf tempat Anda meletakkannya.
* **Floating tables** dilapis di atas teks, dan posisi tabel relatif terhadap paragraf ditentukan oleh jangkar tabel. Karena itu, posisi tabel mengambang dalam dokumen dipengaruhi oleh pengaturan pemosisian vertikal dan horizontal.

Terkadang Anda perlu memposisikan tabel dalam dokumen dengan cara tertentu. Untuk melakukan ini, Anda perlu menggunakan alat perataan dan mengatur indentasi antara tabel dan teks di sekitarnya.

Pada artikel ini, kita akan membahas opsi apa yang disediakan Aspose.Words untuk penentuan posisi.

## Tentukan Posisi Tabel Sebaris

Anda dapat mengatur posisi tabel sebaris menggunakan properti Aspose.Words API dan [Alignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getAlignment). Dengan demikian, Anda dapat menyesuaikan perataan tabel relatif terhadap halaman dokumen.

Contoh kode berikut menunjukkan cara mengatur posisi tabel sebaris:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "inline-table-position.java" >}}

## Dapatkan Perataan Tabel Mengambang

Jika pembungkusan teks tabel disetel ke **Around**, Anda bisa mendapatkan perataan horizontal dan vertikal tabel menggunakan properti [RelativeHorizontalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeHorizontalAlignment) dan [RelativeVerticalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeVerticalAlignment).

Dengan **other types of text wrapping**, Anda bisa mendapatkan perataan tabel sebaris menggunakan properti **Alignment**.

Contoh kode berikut menunjukkan cara mendapatkan perataan tabel:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "get-table-position.java" >}}

## Dapatkan Posisi Meja Mengambang

 Posisi tabel mengambang ditentukan menggunakan properti berikut:

* [HorizontalAnchor](https://reference.aspose.com/words/java/com.aspose.words/table/#getHorizontalAnchor) - objek untuk menghitung posisi horizontal tabel mengambang
* [VerticalAnchor](https://reference.aspose.com/words/java/com.aspose.words/table/#getVerticalAnchor) - objek untuk menghitung posisi vertikal tabel mengambang
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/java/com.aspose.words/table/#getAbsoluteHorizontalDistance) - posisi tabel mengambang horizontal mutlak
* [AbsoluteVerticalDistance](https://reference.aspose.com/words/java/com.aspose.words/table/#getAbsoluteVerticalDistance) - posisi tabel mengambang vertikal mutlak
* [AllowOverlap](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowOverlap) - opsi untuk mengaktifkan / menonaktifkan tumpang tindih dengan objek mengambang lainnya
* [RelativeHorizontalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeHorizontalAlignment) - perataan horizontal relatif tabel mengambang.
* [RelativeVerticalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeVerticalAlignment) - perataan vertikal relatif tabel mengambang.

Contoh kode berikut menunjukkan cara mendapatkan posisi tabel mengambang:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "get-floating-table-position.java" >}}

## Atur Posisi Meja Mengambang

Sama seperti getting, Anda dapat mengatur posisi tabel mengambang menggunakan Aspose.Words API yang sama.

Penting untuk diketahui bahwa perataan dan jarak horizontal dan vertikal adalah properti gabungan dan yang satu dapat mengatur ulang yang lain. Misalnya, menyetel **RelativeHorizontalAlignment** akan menyetel ulang **AbsoluteHorizontalDistance** ke nilai defaultnya dan sebaliknya. Hal yang sama berlaku untuk pengaturan vertikal.

Contoh kode berikut menunjukkan cara mengatur posisi tabel mengambang:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "floating-table-position.java" >}}

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "relative-horizontal-or-vertical-position.java" >}}

## Dapatkan Jarak antara Tabel dan Teks di Sekitarnya

Aspose.Words juga memberikan peluang untuk mengetahui jarak antara tabel dan teks di sekitarnya:

- [DistanceTop](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceTop) - nilai jarak dari atas
- [DistanceBottom](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceBottom) - nilai jarak persepsi
- [DistanceRight](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceRight) - nilai jarak di sebelah kanan
- [DistanceLeft](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceLeft) - nilai jarak di sebelah kiri

Contoh kode berikut menunjukkan cara mendapatkan jarak antara tabel dan teks di sekitarnya:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "distance-between-table-surrounding-text.java" >}}
