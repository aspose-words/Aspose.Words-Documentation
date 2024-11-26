---
title: Gambaran Umum Tabel
second_title: Aspose.Words untuk C++
articleTitle: Gambaran Umum Tabel
linktitle: Gambaran Umum Tabel
description: "Bekerja dengan tabel dan komponennya seperti sel, baris, kolom di Aspose.Words untuk C++. Cara bekerja dengan tabel di C++."
type: docs
weight: 10
url: /id/cpp/table-overview/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words adalah pustaka kelas yang dirancang untuk pemrosesan dokumen di sisi server dalam berbagai format- PDF, HTML, format Microsoft Word yang berbeda, dan lainnya-dan mendukung tabel dengan cara berikut:

* tabel dalam dokumen dipertahankan selama buka / simpan dan konversi
* dimungkinkan untuk mengedit tabel, konten, dan formatnya, lalu mengekspor perubahan ke file dalam format yang mendukung tabel

Pada artikel ini, kita akan mempelajari lebih lanjut tentang struktur tabel, sel, baris, dan kolom yang didukung oleh Aspose.Words, dan detail bekerja dengan tabel tersebut.

## Struktur Tabel

Seperti yang telah disebutkan, tabel terdiri dari elemen-elemen seperti **Cell**, **Row** dan **Column**. Ini adalah konsep yang umum untuk semua tabel secara umum, apa pun format dokumennya.

Ini adalah contoh umum dari tabel yang ditemukan dalam dokumen Microsoft Word:

![tables-overview-aspose-words-cpp-1](tables-overview-1.png)

### Node Tabel

Tabel dari dokumen apa pun yang dimuat ke dalam Aspose.Words diimpor sebagai **Table node**. Tabel dapat ditemukan sebagai anak dari:

- teks utama
- cerita sebaris seperti komentar atau catatan kaki
- sel saat tabel disarangkan di dalam tabel lain

{{% alert color="primary" %}}

Perhatikan bahwa tabel dapat disarangkan di dalam tabel lain hingga kedalaman berapa pun.

{{% /alert %}}

### Isi Tabel

Node tabel tidak berisi konten nyata apa pun – sebagai gantinya, ini adalah wadah untuk node lain yang membentuk konten tersebut:

- **Table** berisi banyak **Row** simpul. Tabel menyediakan semua elemen simpul biasa, memungkinkan Anda untuk dengan bebas memindahkan, memodifikasi, dan menghapus tabel dalam dokumen.
- **Row** mewakili satu baris tabel dan berisi banyak simpul **Cell**. Selain itu, **Row** menyediakan elemen yang menentukan bagaimana baris ditampilkan, seperti tinggi dan perataan.
- **Cell** adalah apa yang berisi konten sebenarnya yang terlihat dalam tabel dan terdiri dari **Paragraph** dan node level blok lainnya. Selain itu, sel dapat berisi tabel bersarang.

![tables-overview-aspose-words-cpp-2](tables-overview-2.png)

{{% alert color="primary" %}}

Anda dapat memeriksa struktur simpul tabel dalam dokumen menggunakan **DocumentExplorer**.

{{% /alert %}}

### Paragraf Kosong setelah Tabel

Gambar di atas menunjukkan bahwa dokumen tersebut berisi tabel beberapa baris, yang pada gilirannya terdiri dari dua sel. Masing-masing dari dua sel menyertakan paragraf, yang merupakan wadah untuk teks berformat sel.

Perlu juga dicatat bahwa memisahkan dua tabel berurutan dalam sebuah dokumen memerlukan setidaknya satu paragraf kosong setelah tabel. Tanpa paragraf seperti itu, tabel yang berurutan akan digabungkan menjadi satu. Perilaku ini identik di Microsoft Word dan Aspose.Words.

Dalam Aspose.Words, semua kelas dan properti yang terkait dengan tabel terdapat dalam namespace [Aspose.Words.Tables](https://reference.aspose.com/words/cpp/aspose.words.tables/).

## Lihat Juga

* [Aspose.Words Model Objek Dokumen (DOM)](/words/cpp/aspose-words-document-object-model/)
* [Tingkat Logis dari Node dalam Dokumen](/words/cpp/logical-levels-of-nodes-in-a-document/)
