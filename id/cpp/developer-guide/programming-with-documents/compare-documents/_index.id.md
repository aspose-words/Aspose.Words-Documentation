---
title: Bandingkan Dokumen dalam C++
second_title: Aspose.Words untuk C++
articleTitle: Bandingkan Dokumen
linktitle: Bandingkan Dokumen
type: docs
description: "Bandingkan dua dokumen dalam format apa pun yang didukung dan tampilkan perubahan konten menggunakan C++. Anda dapat menerapkan opsi lanjutan saat membandingkan."
weight: 60
url: /id/cpp/compare-documents/
timestamp: 2024-01-27-14-07-04
---

Membandingkan dokumen adalah proses yang mengidentifikasi perubahan antara dua dokumen dan berisi perubahan sebagai revisi. Proses ini membandingkan dua dokumen, termasuk versi dari satu dokumen tertentu, kemudian perubahan di antara kedua dokumen tersebut akan ditampilkan sebagai revisi di dokumen pertama.

Metode perbandingan dicapai dengan membandingkan kata-kata pada tingkat karakter atau tingkat kata. Jika sebuah kata berisi perubahan setidaknya satu karakter, hasilnya, perbedaan tersebut akan ditampilkan sebagai perubahan seluruh kata, bukan karakter. Proses perbandingan ini merupakan tugas biasa dalam industri hukum dan keuangan.

Alih-alih mencari perbedaan antar dokumen secara manual atau di antara versi yang berbeda, Anda dapat menggunakan Aspose.Words untuk membandingkan dokumen dan mendapatkan perubahan konten dalam pemformatan, header/footer, tabel, dan lainnya.

Artikel ini menjelaskan cara membandingkan dokumen dan cara menentukan properti pembanding lanjutan.

{{% alert color="primary" %}}

**Coba online**

Anda dapat membandingkan dua dokumen secara online dengan menggunakan [Perbandingan dokumen secara online](https://products.aspose.app/words/comparison) alat.

Perhatikan bahwa metode perbandingan, yang dijelaskan di bawah, digunakan dalam alat ini untuk memastikan mendapatkan hasil yang sama. Jadi Anda akan mendapatkan hasil yang sama bahkan dengan menggunakan alat perbandingan online atau dengan menggunakan metode perbandingan dalam Aspose.Words.

{{% /alert %}}

## Batasan dan Format File yang Didukung {#limitations-and-supported-file-formats}

Membandingkan dokumen adalah fitur yang sangat kompleks. Ada berbagai bagian kombinasi konten yang perlu dianalisis untuk mengenali semua perbedaan. Alasan kompleksitas ini adalah karena Aspose.Words bertujuan untuk mendapatkan hasil perbandingan yang sama dengan algoritma perbandingan Microsoft Word.

Batasan umum untuk dua dokumen yang dibandingkan adalah dokumen tersebut tidak boleh memiliki revisi sebelum memanggil metode compare karena batasan ini ada di Microsoft Word.

{{% alert color="primary" %}}

Perhatikan bahwa Anda dapat membandingkan dua dokumen apa pun di dalam dokumen [format file yang didukung](/words/cpp/supported-document-formats/). Anda dapat membandingkan objek dokumen dan bahkan Anda dapat membuat objek tersebut dari awal tanpa memiliki format tertentu.

{{% /alert %}}

## Bandingkan Dua Dokumen {#compare-two-documents}

Saat Anda membandingkan dokumen, perbedaan dokumen terakhir dari dokumen sebelumnya muncul sebagai revisi dari dokumen sebelumnya. Saat Anda memodifikasi dokumen, setiap pengeditan akan memiliki revisinya sendiri setelah menjalankan metode compare.

Aspose.Words memungkinkan Anda mengidentifikasi perbedaan dokumen menggunakan metode [Compare](https://reference.aspose.com/words/cpp/aspose.words/document/compare/) - ini mirip dengan fitur perbandingan dokumen Microsoft Word. Ini memungkinkan Anda untuk memeriksa dokumen atau versi dokumen untuk menemukan perbedaan dan perubahan, termasuk modifikasi pemformatan seperti perubahan font, perubahan spasi, penambahan kata dan paragraf.

Sebagai hasil dari perbandingan, dokumen dapat ditentukan sama atau tidak sama. Istilah dokumen "setara" berarti bahwa metode perbandingan tidak dapat merepresentasikan perubahan sebagai revisi. Ini berarti bahwa teks dokumen dan pemformatan teks adalah sama. Tetapi mungkin ada perbedaan lain di antara dokumen. Misalnya, Microsoft Word hanya mendukung revisi format untuk gaya, dan Anda tidak dapat mewakili penyisipan/penghapusan gaya. Jadi dokumen dapat memiliki kumpulan gaya yang berbeda, dan metode **Compare** tetap tidak menghasilkan revisi.

Contoh kode berikut menunjukkan cara memeriksa apakah dua dokumen sama atau tidak:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-CompareDocument-CompareForEqual.cpp" >}}

Contoh kode berikut menunjukkan cara menerapkan metode `Compare` ke dua dokumen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-CompareDocument-CompareWhenDocumentHasRevisions.cpp" >}}

## Tentukan Opsi Perbandingan Lanjutan {#specify-advanced-comparing-properties}

Ada banyak properti berbeda dari kelas [CompareOptions](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/) yang dapat Anda terapkan saat ingin membandingkan dokumen.

Misalnya, Aspose.Words memungkinkan Anda mengabaikan perubahan yang dibuat selama operasi perbandingan untuk jenis objek tertentu dalam dokumen asli. Anda dapat memilih properti yang sesuai untuk jenis objek, seperti [IgnoreHeadersAndFooters](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/get_ignoreheadersandfooters/), [IgnoreFormatting](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/get_ignoreformatting/), [IgnoreComments](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/get_ignorecomments/), dan lainnya dengan menyetelnya ke "true".

Selain itu, Aspose.Words menyediakan properti [Granularity](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/get_granularity/) yang dapat digunakan untuk menentukan apakah akan melacak perubahan berdasarkan karakter atau kata.

Properti umum lainnya adalah pilihan dokumen mana yang akan menampilkan perubahan perbandingan. Misalnya, kotak dialog "Bandingkan dokumen" di Microsoft Word memiliki opsi "Tampilkan perubahan" – ini juga memengaruhi hasil perbandingan. Aspose.Words menyediakan properti [Target](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/get_target/) yang melayani tujuan ini.

Contoh kode berikut menunjukkan cara mengatur properti pembanding lanjutan:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-CompareDocument-CompareDocumentWithCompareOptions.cpp" >}}
