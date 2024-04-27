---
title: Gambaran Keseluruhan Meja
second_title: Aspose.Words Sitemap Java
articleTitle: Gambaran Keseluruhan Meja
linktitle: Gambaran Keseluruhan Meja
description: "Bekerja dengan tabel dan komponen mereka seperti sel, baris, kolom di Aspose.Words Sitemap JavaSitemap Cara bekerja dengan tabel di JavaSitemap"
type: docs
weight: 10
url: /id/java/table-overview/
---

Aspose.Words adalah perpustakaan kelas yang dirancang untuk pemrosesan dokumen di berbagai format - PDF, HTML, berbeda Microsoft Word format dan lain – dan mendukung tabel dengan cara berikut:

* tabel dalam dokumen dipertahankan selama buka / menyimpan dan konversi
* dimungkinkan untuk mengedit tabel, konten, dan formatnya, dan kemudian mengekspor perubahan ke file dalam format yang mendukung tabel

Dalam artikel ini, kami akan mempelajari lebih lanjut tentang struktur meja, sel, baris, dan kolom yang didukung oleh Aspose.Words, dan rincian bekerja dengan tabel tersebut.

## Struktur Meja

Seperti yang sudah disebutkan, tabel terdiri dari unsur-unsur seperti itu **Cell**, **Row** Login **Column**Sitemap Ini adalah konsep yang umum untuk semua tabel secara umum, terlepas dari format dokumen.

Ini adalah contoh umum dari tabel yang ditemukan di sebuah Microsoft Word dokumen:

![tables-overview-aspose-words-java-1](/words/java/table-overview/tables-overview-1.png)

### Tabel Node

Meja dari dokumen apa pun yang dimuat ke Aspose.Words diimpor sebagai **Sitemap**Sitemap Meja dapat ditemukan sebagai anak:

- teks utama
- cerita inline seperti komentar atau catatan kaki
- sel ketika tabel bersarang dalam tabel lain

{{% alert color="primary" %}}

Perhatikan bahwa tabel dapat bersarang di dalam tabel lain ke kedalaman apa pun.

{{% /alert %}}

### Isi tabel

Node tabel tidak mengandung konten nyata - bukan, itu adalah wadah untuk node lain yang membuat konten:

- Login **Table** mengandung banyak **Row** Login Tabel menyediakan semua elemen simpul biasa, memungkinkan Anda untuk bergerak bebas, memodifikasi, dan menghapus tabel dalam dokumen.
- Login **Row** mewakili baris meja tunggal dan mengandung banyak **Cell** Login Selain itu, **Row** menyediakan unsur-unsur yang menentukan bagaimana baris ditampilkan, seperti tinggi dan keselarasan.
- Login **Cell** adalah apa yang mengandung Meme it true konten yang terlihat di meja dan terdiri dari **Paragraph** dan node level blok lainnya. Selain itu, sel dapat mengandung tabel bersarang.

![tables-overview-aspose-words-java-2](/words/java/table-overview/tables-overview-2.png)

{{% alert color="primary" %}}

Anda dapat memeriksa struktur node tabel dalam dokumen menggunakan **DocumentExplorer**Sitemap

{{% /alert %}}

### Paragraf Kosong setelah Tabel

Gambar di atas menunjukkan bahwa dokumen mengandung tabel beberapa baris, yang pada gilirannya terdiri dari dua sel. Setiap dua sel termasuk paragraf, yang merupakan wadah untuk teks yang diformat sel.

Perlu dicatat bahwa memisahkan dua tabel berturut-turut dalam dokumen membutuhkan setidaknya satu ayat kosong setelah tabel. Tanpa paragraf seperti itu, tabel berturut-turut akan bergabung bersama menjadi satu. Perilaku ini identik baik Microsoft Word Login Aspose.WordsSitemap

Aspose.Words memiliki sejumlah kelas yang berkaitan dengan tabel – [Tables](https://reference.aspose.com/words/java/com.aspose.words/table/), [Rows](https://reference.aspose.com/words/java/com.aspose.words/row/), [Cells](https://reference.aspose.com/words/java/com.aspose.words/cell/), dan lainnya.

## Lihat Juga

* [Aspose.Words Document Object Model (DOM)](/words/id/java/aspose-words-document-object-model/)
* [Login](/words/id/java/logical-levels-of-nodes-in-a-document/)