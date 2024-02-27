---
title: Bandingkan Dokumen di C#
second_title: Aspose.Words untuk .NET
articleTitle: Bandingkan Dokumen
linktitle: Bandingkan Dokumen
description: "Bandingkan dua dokumen dalam format apa pun yang didukung dan tunjukkan perubahan konten menggunakan C#. Anda dapat menerapkan opsi lanjutan saat membandingkan."
type: docs
weight: 60
url: /id/net/compare-documents/
---

Membandingkan dokumen merupakan proses yang mengidentifikasi perubahan antara dua dokumen dan memuat perubahan tersebut sebagai revisi. Proses ini membandingkan dua dokumen, termasuk versi dari satu dokumen tertentu, kemudian perubahan antara kedua dokumen tersebut akan ditampilkan sebagai revisi pada dokumen pertama.

Metode perbandingan dicapai dengan membandingkan kata-kata pada tingkat karakter atau pada tingkat kata. Jika sebuah kata mengandung perubahan minimal satu karakter, pada hasilnya, perbedaan tersebut akan ditampilkan sebagai perubahan keseluruhan kata, bukan karakter. Proses perbandingan ini merupakan tugas yang biasa dilakukan dalam industri hukum dan keuangan.

Daripada mencari perbedaan antar dokumen atau versi berbeda secara manual, Anda dapat menggunakan Aspose.Words untuk membandingkan dokumen dan mendapatkan perubahan konten dalam format, header/footer, tabel, dan lainnya.

Artikel ini menjelaskan cara membandingkan dokumen dan cara menentukan properti perbandingan tingkat lanjut.

{{% alert color="primary" %}}

**Coba daring**

Anda dapat membandingkan dua dokumen secara online dengan menggunakan alat [Perbandingan dokumen online](https://products.aspose.app/words/comparison).

Perhatikan bahwa metode perbandingan, yang dijelaskan di bawah, digunakan dalam alat ini untuk memastikan mendapatkan hasil yang setara. Jadi Anda akan mendapatkan hasil yang sama bahkan dengan menggunakan alat perbandingan online atau dengan menggunakan metode perbandingan di Aspose.Words.

{{% /alert %}}

## Batasan dan Format File yang Didukung {#limitations-and-supported-file-formats}

Membandingkan dokumen adalah fitur yang sangat kompleks. Ada beragam bagian dari kombinasi konten yang perlu dianalisis untuk mengenali semua perbedaan. Alasan kompleksitas ini adalah karena Aspose.Words bertujuan untuk mendapatkan hasil perbandingan yang sama dengan algoritma perbandingan Microsoft Word.

Batasan umum untuk dua dokumen yang dibandingkan adalah keduanya tidak boleh direvisi sebelum memanggil metode perbandingan karena batasan ini ada di Microsoft Word.

{{% alert color="primary" %}}

Perhatikan bahwa Anda dapat membandingkan dua dokumen apa pun dalam [Format Dokumen yang Didukung](/words/id/net/supported-document-formats/). Pada dasarnya, Anda dapat membandingkan objek dokumen dan bahkan Anda dapat membuat objek tersebut dari awal tanpa format tertentu.

{{% /alert %}}

## Bandingkan Dua Dokumen {#compare-two-documents}

Saat Anda membandingkan dokumen, perbedaan antara dokumen terakhir dan dokumen sebelumnya akan terlihat sebagai revisi terhadap dokumen sebelumnya. Saat Anda memodifikasi dokumen, setiap pengeditan akan memiliki revisi tersendiri setelah menjalankan metode perbandingan.

Aspose.Words memungkinkan Anda mengidentifikasi perbedaan dokumen menggunakan metode [Compare](https://reference.aspose.com/words/net/aspose.words/document/compare/#compare/) – ini mirip dengan fitur perbandingan dokumen Microsoft Word. Memungkinkan Anda memeriksa dokumen atau versi dokumen untuk menemukan perbedaan dan perubahan, termasuk modifikasi format seperti perubahan font, perubahan spasi, penambahan kata dan paragraf.

Dari hasil perbandingan, dokumen dapat ditentukan sama atau tidak sama. Yang dimaksud dengan dokumen "setara" adalah metode perbandingan tidak mampu merepresentasikan perubahan sebagai revisi. Artinya teks dokumen dan format teksnya sama. Namun mungkin terdapat perbedaan lain antar dokumen. Misalnya, Microsoft Word hanya mendukung revisi format untuk gaya, dan Anda tidak dapat mewakili penyisipan/penghapusan gaya. Jadi dokumen dapat memiliki kumpulan gaya yang berbeda, dan metode **Compare** tetap tidak menghasilkan revisi.

Contoh kode berikut menunjukkan cara memeriksa apakah dua dokumen sama atau tidak:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-CompareDocument-CompareForEqual.cs" >}}

Contoh kode berikut menunjukkan cara menerapkan metode `Compare` ke dua dokumen:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-CompareDocument-ApplyCompareTwoDocuments.cs" >}}

## Tentukan Opsi Perbandingan Lanjutan {#specify-advanced-comparing-properties}

Ada banyak properti berbeda dari kelas [CompareOptions](https://reference.aspose.com/words/net/aspose.words.comparing/compareoptions/) yang dapat Anda terapkan saat ingin membandingkan dokumen.

Misalnya, Aspose.Words memungkinkan Anda mengabaikan perubahan yang dibuat selama operasi perbandingan untuk tipe objek tertentu dalam dokumen asli. Anda dapat memilih properti yang sesuai untuk jenis objek, seperti [IgnoreHeadersAndFooters](https://reference.aspose.com/words/net/aspose.words.comparing/compareoptions/ignoreheadersandfooters/), [IgnoreFormatting](https://reference.aspose.com/words/net/aspose.words.comparing/compareoptions/ignoreformatting/), [IgnoreComments](https://reference.aspose.com/words/net/aspose.words.comparing/compareoptions/ignorecomments/), dan lainnya dengan menyetelnya ke "true".

Selain itu, Aspose.Words menyediakan properti [Granularity](https://reference.aspose.com/words/net/aspose.words.comparing/compareoptions/granularity/) yang dapat digunakan untuk menentukan apakah akan melacak perubahan berdasarkan karakter atau kata.

Properti umum lainnya adalah pilihan dokumen mana yang menunjukkan perubahan perbandingan. Misalnya, "Kotak dialog Bandingkan dokumen" di Microsoft Word memiliki opsi "Tampilkan perubahan" – ini juga mempengaruhi hasil perbandingan. Aspose.Words menyediakan properti [Target](https://reference.aspose.com/words/net/aspose.words.comparing/compareoptions/target/) yang melayani tujuan ini.

Contoh kode berikut menunjukkan cara mengatur properti perbandingan lanjutan:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-CompareDocument-SetAdvancedComparingProperties.cs" >}}
