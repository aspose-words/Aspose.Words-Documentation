---
title: Bandingkan Dokumen dalam Java
second_title: Aspose.Words Sitemap Java
articleTitle: Bandingkan Dokumen
linktitle: Bandingkan Dokumen
type: docs
description: "Bandingkan dua dokumen dalam format yang didukung dan menunjukkan perubahan konten. Anda dapat menerapkan opsi canggih ketika membandingkan menggunakan JavaSitemap"
weight: 60
url: /id/java/compare-documents/
timestamp: 2024-01-27-14-07-04
---

Dokumen membandingkan adalah proses yang mengidentifikasi perubahan antara dua dokumen dan berisi perubahan sebagai revisi. Proses ini membandingkan setiap dua dokumen, termasuk versi satu dokumen tertentu, maka perubahan antara kedua dokumen akan ditampilkan sebagai revisi dalam dokumen pertama.

Metode perbandingan dicapai dengan membandingkan kata-kata di tingkat karakter atau pada tingkat kata. Jika kata mengandung perubahan setidaknya satu karakter, akibatnya, perbedaan akan ditampilkan sebagai perubahan seluruh kata, bukan karakter. Proses perbandingan ini adalah tugas biasa dalam industri hukum dan keuangan.

Alih-alih mencari secara manual untuk perbedaan antara dokumen atau antara versi yang berbeda dari mereka, Anda dapat menggunakan Aspose.Words untuk membandingkan dokumen dan mendapatkan perubahan konten dalam format, header / footer, tabel, dan banyak lagi.

Artikel ini menjelaskan cara membandingkan dokumen dan cara menentukan sifat membandingkan canggih.

{{% alert color="primary" %}}

**Coba online**

Anda dapat membandingkan dua dokumen secara online dengan menggunakan [Sitemap](https://products.aspose.app/words/comparison) Login

Perhatikan bahwa metode perbandingan, dijelaskan di bawah ini, digunakan dalam alat ini untuk memastikan mendapatkan hasil yang sama. Jadi Anda akan mendapatkan hasil yang sama bahkan dengan menggunakan alat perbandingan online atau dengan menggunakan metode perbandingan Aspose.WordsSitemap

{{% /alert %}}

## Batasan dan Format File yang Didukung {#limitations-and-supported-file-formats}

Memenuhi dokumen adalah fitur yang sangat kompleks. Ada berbagai bagian kombinasi konten yang perlu dianalisis untuk mengenali semua perbedaan. Alasan kompleksitas ini adalah karena Aspose.Words bertujuan untuk mendapatkan hasil perbandingan yang sama dengan Microsoft Word algoritma perbandingan.

Batasan umum untuk dua dokumen dibandingkan adalah bahwa mereka tidak harus memiliki revisi sebelum memanggil metode membandingkan sebagai batasan ini ada dalam Microsoft WordSitemap

{{% alert color="primary" %}}

Perhatikan bahwa Anda dapat membandingkan dua dokumen dalam [Login](/words/id/java/supported-document-formats/)Sitemap Pada dasarnya, Anda dapat membandingkan objek dokumen dan bahkan Anda dapat membuat benda-benda tersebut dari awal tanpa memiliki format tertentu.

{{% /alert %}}

## Bandingkan Dua Dokumen {#compare-two-documents}

Ketika Anda membandingkan dokumen, perbedaan dokumen terakhir dari yang pertama muncul sebagai revisi ke bekas. Ketika Anda memodifikasi dokumen, setiap edit akan memiliki revisi sendiri setelah menjalankan metode membandingkan.

Aspose.Words memungkinkan Anda untuk mengidentifikasi perbedaan dokumen dengan menggunakan [Compare](https://reference.aspose.com/words/java/com.aspose.words/document/#compare-com.aspose.words.Document-java.lang.String-java.util.Date) metode – ini mirip dengan Microsoft Word dokumen membandingkan fitur. Hal ini memungkinkan Anda untuk memeriksa versi dokumen atau dokumen untuk menemukan perbedaan dan perubahan, termasuk modifikasi format seperti perubahan font, perubahan jarak, penambahan kata-kata dan paragraf.

Sebagai hasil dari perbandingan, dokumen dapat ditentukan sama atau tidak sama. Istilah dokumen "equal" berarti bahwa metode perbandingan tidak dapat mewakili perubahan sebagai revisi. Ini berarti bahwa format teks dokumen dan teks sama. Tapi ada perbedaan lain antara dokumen. Sitemap Microsoft Word mendukung hanya revisi format untuk gaya, dan Anda tidak dapat mewakili penyisipan gaya / penghapusan. Jadi dokumen bisa memiliki gaya yang berbeda, dan **Compare** metode masih menghasilkan revisi.

Contoh kode berikut menunjukkan cara memeriksa apakah dua dokumen sama atau tidak:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CompareTwoWordDocuments-wordDocumentsAreEqual.java" >}}

Contoh kode berikut menunjukkan cara hanya menerapkan `Compare` metode ke dua dokumen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CompareTwoWordDocuments-caseWhenDocumentHasRevisions.java" >}}

## Tentukan Opsi Perbandingan Lanjutan {#specify-advanced-comparing-properties}

Ada banyak sifat berbeda dari Meme it [CompareOptions](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/) kelas yang dapat Anda gunakan ketika Anda ingin membandingkan dokumen.

Sitemap Aspose.Words memungkinkan Anda untuk mengabaikan perubahan yang dilakukan selama operasi perbandingan untuk jenis benda tertentu dalam dokumen asli. Anda dapat memilih properti yang tepat untuk jenis objek, seperti [IgnoreHeadersAndFooters](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getIgnoreHeadersAndFooters), [IgnoreFormatting](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getIgnoreFormatting), [IgnoreComments](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getIgnoreComments), dan orang lain dengan mengatur mereka ke "trueSitemap

Selain itu, Aspose.Words Sitemap [Granularity](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getGranularity) properti yang dapat Anda tentukan apakah untuk melacak perubahan karakter atau dengan kata.

Properti umum lainnya adalah pilihan di mana dokumen untuk menunjukkan perubahan perbandingan. Misalnya, kotak dialog dokumen "Compare" di Microsoft Word memiliki opsi "Lihat perubahan" - ini juga mempengaruhi hasil perbandingan. Aspose.Words Sitemap [Target](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getTarget) properti yang melayani tujuan ini.

Contoh kode berikut menunjukkan cara mengatur sifat membandingkan canggih:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CompareTwoWordDocuments-AdvancedComparingProperties.java" >}}
