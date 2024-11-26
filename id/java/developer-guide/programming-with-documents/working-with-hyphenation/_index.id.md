---
title: Bekerja dengan Tanda hubung dalam Java
second_title: Aspose.Words untuk Java
articleTitle: Bekerja dengan Tanda Hubung
linktitle: Bekerja dengan Tanda Hubung
description: "Gunakan tanda hubung untuk susunan teks yang lebih ringkas. Ini menyediakan algoritma canggih untuk bekerja dengan kamus tanda hubung, menggunakan kamus OpenOffice menggunakan Java."
type: docs
weight: 220
url: /id/java/working-with-hyphenation/
timestamp: 2024-01-27-14-07-04
---

Terkadang perlu menggunakan tanda hubung untuk pengaturan teks yang lebih ringkas dalam sebuah dokumen. Pada saat yang sama, penting untuk dipahami bahwa spesifikasi tanda hubung kata mungkin berbeda untuk setiap bahasa.

Saat ini, tanda hubung tidak digunakan sesering dulu, terutama dalam teks bahasa Inggris. Namun demikian, penggunaan fitur ini dapat berdampak serius pada dokumen pengguna-tanda hubung memengaruhi tata letak dan, akibatnya, tampilan file keluaran, misalnya, dalam format PDF.

Untuk pemisahan kata yang benar, kamus tanda hubung khusus bahasa digunakan. Aspose.Words menggunakan algoritme canggih untuk bekerja dengan kamus semacam itu dan memungkinkan Anda mendapatkan tanda hubung yang sama seperti pada Microsoft Word.

## Kamus Tanda Hubung

Karena bahasa yang berbeda menggunakan norma dan aturan yang berbeda untuk tanda hubung kata, solusi optimal untuk tanda hubung yang benar adalah dengan menggunakan kamus khusus. Aspose.Words menggunakan kamus OpenOffice.

Untuk pemeriksaan ejaan, OpenOffice menggunakan [Hunspell peraturan](https://hunspell.github.io/), yang merupakan generalisasi dari algoritma tanda hubung TeX. Algoritme ini memungkinkan tanda hubung non-standar otomatis menggunakan pola tanda hubung standar dan kustom yang bersaing. Hunspell menggunakan [Tanda hubunganmu](https://github.com/hunspell/hyphen) untuk tanda hubung.

{{% alert color="primary" %}}

Kamus tanda hubung dapat diambil dari [LibreOffice kamus GitHub](https://github.com/LibreOffice/dictionaries). Misalnya, [en - US kamus tanda penghubung](https://github.com/LibreOffice/dictionaries/blob/master/en/hyph_en_US.dic).

{{% /alert %}}

{{% alert color="primary" %}}

Karena Microsoft Word menggunakan kamus selain kamus OpenOffice untuk melakukan tanda hubung, tanda hubung dari beberapa kata yang didefinisikan oleh kamus OpenOffice mungkin berbeda dari tanda hubung Microsoft Word. Untuk alasan ini, terkadang kami harus menyarankan pelanggan untuk menambahkan pola yang diperlukan ke kamus mereka untuk memperbaiki tanda hubung kata-kata tertentu.

{{% /alert %}}

## Algoritma Hyphenation

Aspose.Words mengimplementasikan [algoritma tanda hubungi TeX](https://github.com/hunspell/hyphen/blob/master/README.hyphen) dan dapat menggunakan kembali kamus tanda hubung OpenOffice.

Fitur algoritma Aspose.Words berikut harus dipertimbangkan:

* Parameter jarak tanda hubung(LEFTHYPHENMIN, RIGHTHYPHENMIN, COMPOUNDLEFTHYPHENMIN, COMPOUNDRIGHTHYPHENMIN) yang ditentukan dalam kamus tanda hubung diabaikan. Aspose.Words menggunakan kumpulan parameter jaraknya sendiri tergantung pada mode kompatibilitas dokumen.
* Algoritma tanda hubung dalam Aspose.Words mendukung [tanda hubungi komposit](https://github.com/hunspell/hyphen/blob/master/README.compound). Namun, Aspose.Words membagi urutan karakter yang berisi karakter campuran alfabet dan non-alfabet menjadi bagian (kata) khusus alfabet dan memberi tanda hubung secara terpisah.
  Perhatikan bahwa Microsoft Word logika tanda hubung kata majemuk bergantung pada mode kompatibilitas dokumen.
* Algoritma tanda hubung dalam Aspose.Words tidak mengimplementasikan [tanda hubungantidak standar](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf). Pola non-standar diabaikan.

## Memuat Kamus Tanda Hubung

Untuk menggunakan fitur tanda hubung, pertama-tama daftarkan kamus tanda hubung.Contoh kode berikut menunjukkan cara memuat kamus tanda hubung untuk bahasa yang ditentukan dari file:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-LoadHyphenationDictionaryFromFile.java" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file templat contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Contoh kode berikut menunjukkan cara memuat kamus tanda hubung untuk bahasa yang ditentukan dari aliran:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-LoadHyphenationDictionaryFromStream.java" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file templat contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Sebagai alternatif dari kamus tanda hubung pra-pendaftaran, dimungkinkan untuk mendaftarkan hanya kamus tanda hubung yang diperlukan "berdasarkan permintaan". Untuk mencapainya, implementasikan antarmuka [IHyphenationCallback](https://reference.aspose.com/words/java/com.aspose.words/ihyphenationcallback/) dan gunakan panggilan balik statis [Callback](https://reference.aspose.com/words/java/com.aspose.words/hyphenation/#getCallback).

Contoh kode berikut menunjukkan cara mengimplementasikan antarmuka **IHyphenationCallback**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-HyphenationCallback.java" >}}

## Dampak Tanda Hubung pada Tata Letak

Saat memecah teks menjadi beberapa baris, Aspose.Words memeriksa setiap kata apakah semuanya cocok dengan baris saat ini. Jika kata lain terlalu panjang untuk dimasukkan di akhir baris, secara default Aspose.Words memindahkannya ke awal baris berikutnya alih-alih memberi tanda penghubung.

Namun, fitur tanda hubung dapat digunakan dalam Aspose.Words untuk menyisipkan tanda hubung ke dalam kata-kata untuk menghilangkan celah dalam teks yang dibenarkan atau untuk mempertahankan panjang garis yang rata dalam kolom yang sempit. Ini jelas dapat memengaruhi jumlah baris dan karenanya jumlah halaman. Dengan kata lain, menggunakan fungsi tanda hubung memengaruhi tata letak dokumen.

## Tanda hubung dan Pembenaran (H & J)

Microsoft Word memiliki logika kompleks untuk memilih breakpoint jika teks dibenarkan dan tanda hubung diaktifkan. Singkatnya, Microsoft Word mungkin lebih suka mengecilkan atau meregangkan spasi untuk menghindari tanda hubung baris. Kemungkinan besar logika ini didasarkan pada [Artikel Knuth](https://www.eprg.org/G53DOC/pdfs/knuth-plass-breaking.pdf).

Aspose.Words mengimplementasikan algoritme H & J - nya sendiri yang memberikan hasil yang sama dengan Microsoft Word dan memberikan pemutusan baris yang identik dalam dokumen keluaran.

## Lihat Juga

* [Pustaka tanda penghubung – tanda penghubung](https://github.com/hunspell/hyphen/blob/master/README)
* [Tanda hubungantidak standar](https://github.com/hunspell/hyphen/blob/master/README.nonstandard)
* [Tanda hubungi otomatis non-standar di Kantor Terbuka](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf)
