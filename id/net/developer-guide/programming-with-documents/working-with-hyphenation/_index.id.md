---
title: Bekerja dengan Tanda Hubung di C#
second_title: Aspose.Words untuk .NET
articleTitle: Bekerja dengan Tanda Hubung
linktitle: Bekerja dengan Tanda Hubung
description: "Gunakan tanda hubung untuk susunan teks yang lebih ringkas menggunakan C#. Ini menyediakan algoritma tingkat lanjut untuk bekerja dengan kamus tanda hubung, menggunakan kamus OpenOffice."
type: docs
weight: 220
url: /id/net/working-with-hyphenation/
timestamp: 2024-01-27-14-07-04
---

Terkadang perlu menggunakan tanda hubung untuk susunan teks yang lebih ringkas dalam dokumen. Pada saat yang sama, penting untuk dipahami bahwa kekhasan tanda hubung kata mungkin berbeda untuk setiap bahasa.

Saat ini, tanda hubung tidak lagi digunakan sesering dulu, terutama dalam teks bahasa Inggris. Namun demikian, penggunaan fitur ini dapat berdampak serius pada dokumen pengguna – tanda hubung memengaruhi tata letak dan, akibatnya, tampilan file keluaran, misalnya, dalam format PDF.

Untuk pemisahan kata yang benar, kamus tanda hubung khusus bahasa digunakan. Aspose.Words menggunakan algoritme tingkat lanjut untuk bekerja dengan kamus tersebut dan memungkinkan Anda mendapatkan tanda hubung yang sama seperti di Microsoft Word.

## Kamus Tanda Hubung

Karena bahasa yang berbeda menggunakan norma dan aturan yang berbeda untuk tanda hubung kata, solusi optimal untuk tanda hubung yang benar adalah dengan menggunakan kamus khusus. Aspose.Words menggunakan kamus OpenOffice.

Untuk pemeriksaan ejaan, OpenOffice menggunakan [perpustakaan Hunspell](https://hunspell.github.io/), yang merupakan generalisasi dari algoritma tanda hubung TeX. Algoritma ini memungkinkan tanda hubung non-standar otomatis menggunakan pola tanda hubung standar dan khusus yang bersaing. Hunspell menggunakan [Tanda penghubung](https://github.com/hunspell/hyphen) untuk tanda hubung.

{{% alert color="primary" %}}

Kamus tanda hubung dapat diambil dari [Kamus LibreOffice GitHub](https://github.com/LibreOffice/dictionaries). Misalnya [kamus tanda hubung en-AS](https://github.com/LibreOffice/dictionaries/blob/master/en/hyph_en_US.dic).

{{% /alert %}}

{{% alert color="primary" %}}

Karena Microsoft Word menggunakan kamus selain kamus OpenOffice untuk melakukan tanda hubung, tanda hubung beberapa kata yang ditentukan oleh kamus OpenOffice mungkin berbeda dari tanda hubung Microsoft Word. Karena alasan ini, terkadang kami harus menyarankan pelanggan untuk menambahkan pola yang diperlukan ke kamus mereka untuk memperbaiki tanda hubung pada kata-kata tertentu.

{{% /alert %}}

## Algoritma Tanda Hubung

Aspose.Words mengimplementasikan [algoritma tanda hubung TeX](https://github.com/hunspell/hyphen/blob/master/README.hyphen) dan dapat menggunakan kembali kamus tanda hubung OpenOffice.

Fitur-fitur algoritma Aspose.Words berikut harus dipertimbangkan:

* Parameter jarak tanda hubung (LEFTHYPHENMIN, RIGHTHYPHENMIN, COMPOUNDLEFTHYPHENMIN, COMPOUNDRIGHTHYPHENMIN) yang ditentukan dalam kamus tanda hubung diabaikan. Aspose.Words menggunakan serangkaian parameter jaraknya sendiri bergantung pada mode kompatibilitas dokumen.
* Algoritme tanda hubung di Aspose.Words mendukung [tanda hubung komposit](https://github.com/hunspell/hyphen/blob/master/README.compound). Namun, Aspose.Words membagi urutan karakter yang berisi karakter campuran alfabet dan non-abjad menjadi bagian-bagian (kata) yang hanya berdasarkan alfabet dan memberi tanda hubung secara terpisah.
  Perhatikan bahwa logika tanda hubung Microsoft Word pada kata majemuk bergantung pada mode kompatibilitas dokumen.
* Algoritme tanda hubung di Aspose.Words tidak mengimplementasikan [tanda hubung non-standar](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf). Pola non-standar diabaikan.

## Memuat Kamus Tanda Hubung

Untuk menggunakan fitur tanda hubung, pertama-tama daftarkan kamus tanda hubung. Contoh kode berikut menunjukkan cara memuat kamus tanda hubung untuk bahasa tertentu dari sebuah file:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Hyphenation-HyphenateWordsOfLanguages.cs" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file template contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Contoh kode berikut menunjukkan cara memuat kamus tanda hubung untuk bahasa tertentu dari aliran:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Hyphenation-LoadHyphenationDictionaryForLanguage.cs" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file template contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Sebagai alternatif dari prapendaftaran kamus tanda hubung, dimungkinkan untuk mendaftarkan hanya kamus tanda hubung yang diperlukan "berdasarkan permintaan". Untuk mencapainya, implementasikan antarmuka [IHyphenationCallback](https://reference.aspose.com/words/net/aspose.words/ihyphenationcallback/) dan gunakan [Callback](https://reference.aspose.com/words/net/aspose.words/hyphenation/callback/) callback statis.

Contoh kode berikut menunjukkan cara mengimplementasikan antarmuka **IHyphenationCallback**:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Hyphenation-CustomHyphenation.cs" >}}

## Dampak Tanda Hubung pada Tata Letak

Saat memecah teks menjadi beberapa baris, Aspose.Words memeriksa setiap kata apakah cocok sepenuhnya dengan baris saat ini. Jika kata lain terlalu panjang untuk ditempatkan di akhir baris, secara default Aspose.Words memindahkannya ke awal baris berikutnya alih-alih memberi tanda hubung.

Namun, fitur tanda hubung dapat digunakan di Aspose.Words untuk menyisipkan tanda hubung ke dalam kata guna menghilangkan kesenjangan dalam teks yang dibenarkan atau untuk mempertahankan panjang garis yang rata di kolom yang sempit. Hal ini jelas dapat mempengaruhi jumlah baris dan jumlah halaman. Dengan kata lain, penggunaan fungsi tanda hubung mempengaruhi tata letak dokumen.

## Tanda Hubung dan Pembenaran (H&amp;J)

Microsoft Word memiliki logika kompleks untuk memilih breakpoint jika teks diratakan dan tanda hubung diaktifkan. Singkatnya, Microsoft Word mungkin lebih memilih untuk mengecilkan atau meregangkan ruang untuk menghindari tanda hubung garis. Kemungkinan besar logika ini didasarkan pada [artikel Knuth](https://www.eprg.org/G53DOC/pdfs/knuth-plass-breaking.pdf).

Aspose.Words mengimplementasikan algoritme H&amp;J-nya sendiri yang memberikan hasil yang sama seperti Microsoft Word dan memberikan pemutusan baris yang identik pada dokumen keluaran.

## Lihat juga

* [Tanda hubung – perpustakaan tanda hubung](https://github.com/hunspell/hyphen/blob/master/README)
* [Tanda hubung non-standar](https://github.com/hunspell/hyphen/blob/master/README.nonstandard)
* [Tanda hubung non-standar otomatis di Open Office](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf)
