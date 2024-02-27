---
title: Ikhtisar Tabel
second_title: Aspose.Words untuk Python
articleTitle: Ikhtisar Tabel
linktitle: Ikhtisar Tabel
description: "Bekerja dengan tabel dan komponennya seperti sel, baris, kolom di Aspose.Words untuk Python. Cara bekerja dengan tabel di Python."
type: docs
weight: 10
url: /id/python-net/table-overview/
---

Aspose.Words adalah perpustakaan kelas yang dirancang untuk pemrosesan dokumen di sisi server dalam berbagai format – PDF, HTML, format Microsoft Word berbeda, dan lainnya – dan mendukung tabel dengan cara berikut:

* tabel dalam dokumen dipertahankan selama pembukaan/penyimpanan dan konversi
* dimungkinkan untuk mengedit tabel, konten, dan formatnya, lalu mengekspor perubahan ke file dalam format yang mendukung tabel

Pada artikel ini, kita akan mempelajari lebih lanjut tentang struktur tabel, sel, baris, dan kolom yang didukung oleh Aspose.Words, dan detail cara bekerja dengan tabel tersebut.

## Struktur Tabel

Seperti telah disebutkan, tabel terdiri dari elemen seperti **Cell**, **Row** dan **Column**. Ini adalah konsep yang umum untuk semua tabel secara umum, apa pun format dokumennya.

Ini adalah contoh umum tabel yang ditemukan dalam dokumen Microsoft Word:

![tables-overview-aspose-words-python-1](/words/python-net/table-overview/tables-overview-1.png)

### Node Tabel

Tabel dari dokumen apa pun yang dimuat ke Aspose.Words diimpor sebagai **Node tabel**. Tabel tersebut dapat ditemukan sebagai turunan dari:

- teks utama
- cerita sebaris seperti komentar atau catatan kaki
- sel ketika sebuah tabel disarangkan ke dalam tabel lain

{{% alert color="primary" %}}

Perhatikan bahwa tabel dapat disarangkan di dalam tabel lain hingga kedalaman berapa pun.

{{% /alert %}}

### Isi Tabel

Node tabel tidak berisi konten sebenarnya – melainkan wadah untuk node lain yang membentuk konten:

- **Table** berisi banyak node **Row**. Tabel menyediakan semua elemen simpul biasa, memungkinkan Anda dengan bebas memindahkan, memodifikasi, dan menghapus tabel dalam dokumen.
- **Row** mewakili satu baris tabel dan berisi banyak node **Cell**. Selain itu, **Row** menyediakan elemen yang menentukan bagaimana baris ditampilkan, seperti tinggi dan perataan.
- **Cell** berisi konten true yang terlihat di tabel dan terdiri dari **Paragraph** dan node tingkat blok lainnya. Selain itu, sel bisa berisi tabel bertumpuk.

![tables-overview-aspose-words-python-2](/words/python-net/table-overview/tables-overview-2.png)

{{% alert color="primary" %}}

Anda dapat memeriksa struktur node tabel dalam dokumen menggunakan **DocumentExplorer**.

{{% /alert %}}

### Paragraf Kosong setelah Tabel

Gambar di atas menunjukkan bahwa dokumen berisi tabel beberapa baris, yang terdiri dari dua sel. Masing-masing dari dua sel berisi paragraf, yang merupakan wadah untuk teks sel yang diformat.

Perlu juga dicatat bahwa memisahkan dua tabel berturut-turut dalam sebuah dokumen memerlukan setidaknya satu paragraf kosong setelah tabel. Tanpa paragraf seperti itu, tabel-tabel yang berurutan akan digabungkan menjadi satu. Perilaku ini identik di Microsoft Word dan Aspose.Words.

Di Aspose.Words, semua kelas dan properti yang terkait dengan tabel terdapat dalam modul [Aspose.Words.Tables](https://reference.aspose.com/words/python-net/aspose.words.tables/).

## Lihat juga

* [Aspose.Words Document Object Model (DOM)](/words/id/python-net/aspose-words-document-object-model/)
* [Tingkat Logis Node dalam Dokumen](/words/id/python-net/logical-levels-of-nodes-in-a-document/)