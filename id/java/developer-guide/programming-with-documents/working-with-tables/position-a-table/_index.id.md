---
title: Posisi tabel di Java
second_title: Aspose.Words Sitemap Java
articleTitle: Posisikan tabel
linktitle: Posisikan tabel
description: "Tentukan posisi tabel di JavaSitemap Dapatkan penyelarasan meja, dapatkan dan set posisi meja mengambang menggunakan JavaSitemap"
type: docs
weight: 50
url: /id/java/position-a-table/
---

Ada tabel mengambang dan tabel inline:

* Sitemap **Tabel inline** ditempatkan pada lapisan yang sama dengan teks dan ditempatkan dalam aliran teks yang hanya mengelilingi tabel di atas dan di bawah ini. Tabel inline akan selalu muncul di antara paragraf di mana Anda menempatkannya.
* Sitemap **Tabel mengambang** dilapisi atas teks, dan posisi tabel relatif ke paragraf ditentukan oleh jangkar meja. Karena ini, posisi tabel mengambang dalam dokumen dipengaruhi oleh pengaturan posisi vertikal dan horizontal.

Kadang-kadang Anda perlu memposisikan tabel dengan cara tertentu. Untuk melakukan ini, Anda perlu menggunakan alat penyelarasan dan mengatur indent di antara tabel dan teks sekitarnya.

Dalam artikel ini, kita akan membahas opsi apa Aspose.Words menyediakan untuk posisi.

## Tentukan Posisi Tabel Inline

Anda dapat mengatur posisi tabel inline menggunakan Aspose.Words API dan [Alignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getAlignment) Login Dengan demikian, Anda dapat menyesuaikan keselarasan tabel relatif ke halaman dokumen.

Contoh kode berikut menunjukkan cara mengatur posisi tabel inline:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "inline-table-position.java" >}}

## Dapatkan Alignment Meja Terapung

Jika pembungkus teks tabel diatur untuk **Around**, Anda bisa mendapatkan penyelarasan horisontal dan vertikal meja menggunakan [RelativeHorizontalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeHorizontalAlignment) Login [RelativeVerticalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeVerticalAlignment) Sitemap

Sitemap **jenis lain dari pembungkus teks**, Anda bisa mendapatkan penyelarasan tabel inline menggunakan **Alignment** Login

Contoh kode berikut menunjukkan cara mendapatkan keselarasan tabel:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "get-table-position.java" >}}

## Dapatkan Posisi Tabel Mengambang

 Posisi tabel mengambang ditentukan menggunakan sifat berikut:

* Sitemap [HorizontalAnchor](https://reference.aspose.com/words/java/com.aspose.words/table/#getHorizontalAnchor) - objek untuk menghitung posisi horizontal dari meja mengambang
* Sitemap [VerticalAnchor](https://reference.aspose.com/words/java/com.aspose.words/table/#getVerticalAnchor) - objek untuk menghitung posisi vertikal dari meja mengambang
* Sitemap [AbsoluteHorizontalDistance](https://reference.aspose.com/words/java/com.aspose.words/table/#getAbsoluteHorizontalDistance) - Posisi meja mengambang horisontal absolut
* Sitemap [AbsoluteVerticalDistance](https://reference.aspose.com/words/java/com.aspose.words/table/#getAbsoluteVerticalDistance) - Posisi meja mengambang vertikal absolut
* Sitemap [AllowOverlap](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowOverlap) - pilihan untuk mengaktifkan / menonaktifkan tumpang tindih dengan benda mengambang lainnya
* Sitemap [RelativeHorizontalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeHorizontalAlignment) - Tabel mengambang penyelarasan horisontal relatif.
* Sitemap [RelativeVerticalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeVerticalAlignment) - Penyelarasan vertikal relatif meja mengambang.

Contoh kode berikut menunjukkan cara mendapatkan posisi tabel mengambang:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "get-floating-table-position.java" >}}

## Mengatur Posisi Meja Terapung

Sama seperti mendapatkan, Anda dapat mengatur posisi meja mengambang menggunakan yang sama Aspose.Words APISitemap

Penting untuk mengetahui bahwa keselarasan dan jarak horisontal dan vertikal dikombinasikan sifat dan satu dapat mengatur ulang yang lain. Misalnya, pengaturan **RelativeHorizontalAlignment** akan mengatur ulang **AbsoluteHorizontalDistance** untuk nilai default dan sebaliknya. Meme it Hal yang sama true untuk pengaturan vertikal.

Contoh kode berikut menunjukkan cara mengatur posisi tabel mengambang:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "floating-table-position.java" >}}

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "relative-horizontal-or-vertical-position.java" >}}

## Dapatkan Jarak antara Tabel dan Surrounding Teks

Aspose.Words juga memberikan kesempatan untuk mengetahui jarak antara tabel dan teks sekitarnya:

- Login [DistanceTop](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceTop) – nilai jarak dari atas
- Login [DistanceBottom](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceBottom) - nilai dari jarak persepsi
- Login [DistanceRight](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceRight) – nilai jarak di sebelah kanan
- Login [DistanceLeft](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceLeft) – nilai jarak di sebelah kiri

Contoh kode berikut menunjukkan cara mendapatkan jarak antara tabel dan teks sekitarnya:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "distance-between-table-surrounding-text.java" >}}
