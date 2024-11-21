---
title: Bekerja dengan Hyphenation di Java
second_title: Aspose.Words Sitemap Java
articleTitle: Bekerja dengan Hyphenation
linktitle: Bekerja dengan Hyphenation
description: "Gunakan hyphenation untuk pengaturan teks yang lebih kompak. Ini menyediakan algoritma canggih untuk bekerja dengan dictionaries hyphenation, menggunakan dictionaries OpenOffice menggunakan JavaSitemap"
type: docs
weight: 220
url: /id/java/working-with-hyphenation/
timestamp: 2024-01-27-14-07-04
---

Terkadang perlu menggunakan hyphenation untuk pengaturan teks yang lebih kompak dalam dokumen. Pada saat yang sama, penting untuk memahami bahwa spesifik penghilang kata mungkin berbeda untuk setiap bahasa.

Pada saat ini, hyphenation tidak digunakan karena sering digunakan untuk menjadi, terutama dalam teks Inggris. Namun demikian, penggunaan fitur ini dapat memiliki dampak serius pada dokumen pengguna - hiphenation mempengaruhi tata letak dan, sebagai hasilnya, tampilan file output, misalnya, dalam format PDF.

Untuk membagi kata-kata yang benar, dictionary hyphenation spesifik bahasa digunakan. Aspose.Words menggunakan algoritma canggih untuk bekerja dengan gangguan tersebut dan memungkinkan Anda untuk mendapatkan fiksasi yang sama seperti Microsoft WordSitemap

## Dictionaries Hyphenation

Karena bahasa yang berbeda menggunakan norma dan aturan yang berbeda untuk fiksasi kata, solusi optimal untuk fiksasi yang benar adalah untuk menggunakan dictionaries khusus. Aspose.Words menggunakan dictionaries OpenOffice.

Untuk pemeriksaan mantra, OpenOffice menggunakan [Hunspell Login](https://hunspell.github.io/), yang merupakan generalisasi algoritma hyphenation TeX. Algoritma ini memungkinkan untuk hyphenation non-standar otomatis menggunakan pola standar dan fiksasi kustom. Hunspell menggunakan [Login](https://github.com/hunspell/hyphen) untuk hyphenation.

{{% alert color="primary" %}}

Gangguan kebersihan dapat diambil dari [LibreOffice Login GitHub](https://github.com/LibreOffice/dictionaries)Sitemap Sitemap [Sitemap](https://github.com/LibreOffice/dictionaries/blob/master/en/hyph_en_US.dic)Sitemap

{{% /alert %}}

{{% alert color="primary" %}}

Sitemap Microsoft Word menggunakan dictionaries selain dictionaries OpenOffice untuk melakukan hyphenation, hyphenation dari beberapa kata yang didefinisikan oleh dictionaries OpenOffice dapat berbeda dari Microsoft Word hyphenation. Untuk alasan ini, kadang-kadang kita harus menyarankan pelanggan untuk menambahkan pola yang diperlukan untuk gangguan mereka untuk memperbaiki penghilang kata-kata tertentu.

{{% /alert %}}

## Algoritmen Hyphenation

Aspose.Words Sitemap [Algoritma hyphenation Login](https://github.com/hunspell/hyphen/blob/master/README.hyphen) dan dapat menggunakan kembali dictionaries hyphenation LibreOffice.

Fitur berikut dari Aspose.Words algoritma harus diperhitungkan:

* Parameter jarak Hyphenation (LEFTHYPHENMIN, RIGHTHYPHENMIN, COMLogin COMPOUNDRIGHTHYPHENMIN) yang ditentukan dalam kamus hyphenation diabaikan. Aspose.Words menggunakan set parameter jaraknya sendiri tergantung pada mode kompatibilitas dokumen.
* Sitemap Algoritme hyphenation di Aspose.Words Login [Login API](https://github.com/hunspell/hyphen/blob/master/README.compound)Sitemap Login Aspose.Words membagi urutan karakter yang mengandung karakter alfabet campuran dan non-alphabetic menjadi bagian abjad-hanya (words) dan menghancurkan mereka secara terpisah.
  Login Microsoft Word logika hyphenation kata-kata senyawa tergantung pada mode kompatibilitas dokumen.
* Sitemap Algoritme hyphenation di Aspose.Words tidak mengimplementasikan [hyphenation non-standar](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf)Sitemap Pola non-standar diabaikan.

## Pemuatan Pemecahan Keberlanjutan

Untuk menggunakan fitur hyphenation, pertama kali mendaftarkan kamus hyphenation. Contoh kode berikut menunjukkan bagaimana memuat gangguan hyphenation untuk bahasa yang ditentukan dari file:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-LoadHyphenationDictionaryFromFile.java" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file template dari contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx)Sitemap

{{% /alert %}}

Contoh kode berikut menunjukkan cara memuat dictionaries hyphenation untuk bahasa yang ditentukan dari aliran:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-LoadHyphenationDictionaryFromStream.java" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file template dari contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx)Sitemap

{{% /alert %}}

Sebagai alternatif untuk pre-registering hyphenation dictionaries, dimungkinkan untuk mendaftar hanya diperlukan dictionaries hyphenation "oleh permintaan". Untuk mencapai itu, menerapkan [IHyphenationCallback](https://reference.aspose.com/words/java/com.aspose.words/ihyphenationcallback/) antarmuka dan menggunakan callback statis [Callback](https://reference.aspose.com/words/java/com.aspose.words/hyphenation/#getCallback)Sitemap

Contoh kode berikut menunjukkan cara menerapkan **IHyphenationCallback** antarmuka:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-HyphenationCallback.java" >}}

## Dampak Hyphenation di Tata Letak

Ketika melanggar teks ke garis, Aspose.Words periksa setiap kata apakah cocok sepenuhnya ke garis saat ini. Jika kata lain terlalu panjang untuk pas di akhir garis, secara default Aspose.Words memindahkannya ke awal garis berikutnya bukan mendebarkannya.

Namun, fitur hyphenation dapat digunakan dalam Aspose.Words untuk memasukkan hyphens ke kata-kata untuk menghilangkan celah dalam teks yang dibenarkan atau mempertahankan panjang garis bahkan dalam kolom sempit. Ini jelas dapat mempengaruhi jumlah garis dan oleh karena itu jumlah halaman. Dengan kata lain, menggunakan fungsi hyphenation mempengaruhi tata letak dokumen.

## Hyphenation dan Justification (H&J)

Microsoft Word memiliki logika yang kompleks untuk memilih breakpoint jika teks dibenarkan dan hyphenation diaktifkan. Sitemap Microsoft Word mungkin lebih suka mengecilkan atau meregangkan ruang untuk menghindari penghilang garis. Paling mungkin logika ini didasarkan pada [Knuth artikel](https://www.eprg.org/G53DOC/pdfs/knuth-plass-breaking.pdf)Sitemap

Aspose.Words menerapkan algoritma H&J sendiri yang memberikan hasil yang sama seperti Microsoft Word dan memberikan putusan garis yang identik dalam dokumen output.

## Lihat Juga

* [Pustaka hyphenation](https://github.com/hunspell/hyphen/blob/master/README)
* [Hyphenation non-standar](https://github.com/hunspell/hyphen/blob/master/README.nonstandard)
* [Hiphenasi non-standar di Kantor Terbuka](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf)
