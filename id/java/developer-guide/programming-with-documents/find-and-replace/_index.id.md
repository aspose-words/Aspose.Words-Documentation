---
title: Cari dan Ganti Java
second_title: Aspose.Words Sitemap Java
articleTitle: Cari dan Ganti
linktitle: Cari dan Ganti
type: docs
description: "Temukan string atau pola ekspresi biasa dalam dokumen Anda dan gantinya dengan teks yang Anda inginkan JavaSitemap"
weight: 100
url: /id/java/find-and-replace/
timestamp: 2024-01-27-14-07-04
---

Anda dapat dengan mudah menavigasi dalam dokumen Anda menggunakan keyboard dan mouse, tetapi jika Anda memiliki banyak halaman untuk menggulir melalui, itu akan mengambil cukup sementara untuk menemukan teks tertentu dalam dokumen panjang. Ini akan lebih memakan waktu ketika Anda ingin mengganti karakter atau kata-kata tertentu yang telah Anda gunakan dalam dokumen Anda. Fungsi "Find dan menggantikan" memungkinkan Anda untuk menemukan urutan karakter dalam dokumen dan menggantinya dengan urutan karakter lain.

Aspose.Words memungkinkan Anda untuk menemukan string spesifik atau pola ekspresi biasa dalam dokumen Anda dan menggantinya dengan alternatif tanpa menginstal dan menggunakan aplikasi tambahan seperti Microsoft WordSitemap Ini akan mempercepat banyak tugas mengetik dan memformat, berpotensi menghemat jam kerja.

Artikel ini menjelaskan cara menerapkan penggantian string dan ekspresi rutin dengan dukungan metacharacters.

## Cara Mencari dan Mengganti {#ways-to-find-and-replace}

Aspose.Words menyediakan dua cara untuk menerapkan menemukan dan mengganti operasi dengan menggunakan berikut:

Sitemap *Pergantian string sederhana * - untuk menemukan dan mengganti string tertentu dengan yang lain, Anda perlu menentukan string pencarian (karakter alfanumerik) yang akan diganti sesuai dengan semua kejadian dengan string penggantian yang ditentukan lainnya. Kedua string tidak boleh mengandung simbol. Perhatikan bahwa perbandingan string dapat menjadi case-sensitif, atau Anda mungkin tidak yakin ejaan atau memiliki beberapa ejaan serupa.
2. * Ekspresi sudut * - untuk menentukan ekspresi biasa untuk menemukan string yang tepat pertandingan dan menggantinya sesuai dengan ekspresi reguler Anda. Perhatikan bahwa kata didefinisikan sebagai terdiri dari hanya karakter alfanumerik. Jika penggantian dieksekusi dengan hanya seluruh kata yang cocok dan string input terjadi untuk mengandung simbol, maka tidak ada frasa yang akan ditemukan.

Juga, Anda dapat menggunakan metacharacters khusus dengan penggantian string sederhana dan ekspresi reguler untuk menentukan istirahat dalam operasi menemukan dan mengganti.

Aspose.Words menyajikan menemukan dan mengganti fungsi dengan [IReplacingCallBack](https://reference.aspose.com/words/java/com.aspose.words/ireplacingcallback/)Sitemap Anda dapat bekerja dengan banyak pilihan selama proses menemukan dan mengganti menggunakan [FindReplaceOptions](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/) Sitemap

### Cari dan Ganti Teks Menggunakan Penggantian String Sederhana {#find-and-replace-text-using-simple-string-replacement}

Anda dapat menggunakan salah satu [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.lang.String-java.lang.String) metode untuk menemukan atau mengganti string tertentu dan mengembalikan jumlah penggantian yang dibuat. Dalam kasus ini, Anda dapat menentukan string untuk diganti, string yang akan menggantikan semua kejadiannya, apakah penggantian sensitif kasus, dan apakah hanya kata-kata yang berdiri sendiri akan dipengaruhi.

Contoh kode berikut menunjukkan bagaimana menemukan string "_CustomerName_" dan menggantinya dengan string * "James Bond"*:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-SimpleStringReplacement.java" >}}

Anda dapat melihat perbedaan antara dokumen sebelum menerapkan penggantian string sederhana:

<img src="/words/java/find-and-replace/before-simple-string-replacement.png" alt="before-simple-string-replacement-aspose-words-java" style="width:600px"/>

Dan setelah menerapkan penggantian string sederhana:

<img src="/words/java/find-and-replace/after-simple-string-replacement.png" alt="after-simple-string-replacement-aspose-words-java" style="width:600px"/>

### Cari dan Ganti Teks Menggunakan Ekspresi Biasa {#find-and-replace-text-using-regular-expressions}

Sebuah ekspresi rutin (regex) adalah pola yang menggambarkan urutan teks tertentu. Misalkan Anda ingin mengganti semua kejadian ganda kata dengan kejadian kata tunggal. Kemudian Anda dapat menerapkan ekspresi rutin berikut untuk menentukan pola kata-kata ganda: `([a-zA-Z]+) \1`Sitemap

Gunakan yang lain [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.util.regex.Pattern-java.lang.String) metode untuk mencari dan mengganti kombinasi karakter tertentu dengan mengatur `Regex` parameter sebagai pola ekspresi biasa untuk menemukan pertandingan.

Contoh kode berikut menunjukkan cara mengganti string yang sesuai dengan pola ekspresi biasa dengan string pengganti yang ditentukan:


{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-UsingRegularExpression.java" >}}


Anda dapat melihat perbedaan antara dokumen sebelum menerapkan penggantian string dengan ekspresi biasa:

<img src="/words/java/find-and-replace/before-replacement-with-regular-expressions.png" alt="before-replacement-with-regular-expressions-aspose-words-java" style="width:600px"/>

Dan setelah menerapkan penggantian string dengan ekspresi biasa:

<img src="/words/java/find-and-replace/after-replacement-with-regular-expressions.png" alt="after-replacement-with-regular-expressions-aspose-words-java" style="width:600px"/>

### Cari dan Ganti String Menggunakan Metacharacters {#find-and-replace-text-using-metacharacters}

Anda dapat menggunakan metacharacters dalam string pencarian atau string pengganti jika teks atau frasa tertentu terdiri dari beberapa paragraf, bagian, atau halaman. Beberapa metacharacters termasuk **&p** untuk istirahat paragraf, **&b** untuk istirahat bagian, **&m** untuk istirahat halaman, dan **&l** untuk istirahat garis.

{{% alert color="primary" %}}

Catatan bahwa metacharacter **&&** sama dengan **&**Sitemap Misalnya, jika Anda perlu menemukan teks untuk Meme it **&p** itu bukan istirahat paragraf, maka Anda dapat menggunakan **&&p**Sitemap

{{% /alert %}}

Contoh kode berikut menunjukkan cara mengganti teks dengan paragraf dan istirahat halaman:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextContaingMetaCharacters.java" >}}

## Cari dan Ganti String di Header / Footer Dokumen {#find-and-replace-string-in-header-or-footer-of-a-document}

Anda dapat menemukan dan mengganti teks di bagian header / footer dokumen Word menggunakan [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) Sitemap

Contoh kode berikut menunjukkan cara mengganti teks bagian header dalam dokumen Anda:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextInHeader.java" >}}


Anda dapat melihat perbedaan antara dokumen sebelum menerapkan penggantian string header:

<img src="/words/java/find-and-replace/before-applying-header-string-replacement.png" alt="before-applying-header-string-replacement-aspose-words-java" style="width:600px"/>

Dan setelah menerapkan penggantian string header:

<img src="/words/java/find-and-replace/after-applying-header-string-replacement.png" alt="after-applying-header-string-replacement-aspose-words-java" style="width:600px"/>

Contoh kode untuk menggantikan teks bagian footer dalam dokumen Anda sangat mirip dengan contoh kode header sebelumnya. Yang perlu Anda lakukan adalah mengganti dua baris berikut:

{{< highlight java >}}
HeaderFooter header = headersFooters.get(HeaderFooterType.HEADER_PRIMARY);
header.getRange().replace("Aspose.Words", "Remove", options);
{{< /highlight >}}

Dengan berikut:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextInFooter.java" >}}


Anda dapat melihat perbedaan antara dokumen sebelum menerapkan penggantian string footer:

<img src="/words/java/find-and-replace/before-applying-footer-string-replacement.png" alt="before-applying-footer-string-replacement-aspose-words-java" style="width:600px"/>

Dan setelah menerapkan penggantian string footer:

<img src="/words/java/find-and-replace/after-applying-footer-string-replacement.png" alt="after-applying-footer-string-replacement-aspose-words-java" style="width:600px"/>

## Teks Ignore Selama Cari dan Ganti {#ignore-text-during-find-and-replace}

Saat menerapkan menemukan dan mengganti operasi, Anda dapat mengabaikan segmen teks tertentu. Jadi, bagian tertentu dari teks dapat dikecualikan dari pencarian, dan menemukan dan mengganti dapat diterapkan hanya ke bagian yang tersisa.

Aspose.Words menyediakan banyak menemukan dan mengganti properti untuk ignoring teks seperti [IgnoreDeleted](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreDeleted), [IgnoreFieldCodes](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFieldCodes), [IgnoreFields](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFields), [IgnoreFootnotes](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFootnotes), Login [IgnoreInserted](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreInserted)Sitemap

Contoh kode berikut menunjukkan cara mengabaikan teks di dalam menghapus revisi:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-IgnoreText-IgnoreTextInsideDeleteRevisions.java" >}}

## Sesuaikan Menemukan dan Mengganti Operasi {#customize-find-and-replace-operation}

Aspose.Words menyediakan berbagai macam [properties](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/) untuk menemukan dan mengganti teks seperti menerapkan format khusus dengan [ApplyFont](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getApplyFont) Login [ApplyParagraphFormats](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getApplyParagraphFormat) sifat, menggunakan substitusi dalam pola pengganti dengan [UseSubstitutions](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getUseSubstitutions) properti, dan lainnya.

Contoh kode berikut menunjukkan cara menyoroti kata tertentu dalam dokumen Anda:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-CustomizeFindAndReplaceOperation.java" >}}


Aspose.Words memungkinkan Anda untuk menggunakan [IReplacingCallback](https://reference.aspose.com/words/java/com.aspose.words/ireplacingcallback/) antarmuka untuk membuat dan memanggil metode kustom selama operasi penggantian. Anda mungkin memiliki beberapa kasus penggunaan di mana Anda perlu menyesuaikan menemukan dan mengganti operasi seperti mengganti teks yang ditentukan dengan ekspresi biasa dengan tag HTML, sehingga pada dasarnya Anda akan menerapkan ganti dengan memasukkan HTML.

Jika Anda perlu mengganti string dengan tag HTML, menerapkan **IReplacingCallback** antarmuka untuk menyesuaikan menemukan dan mengganti operasi sehingga pertandingan dimulai pada awal menjalankan dengan simpul yang sesuai dari dokumen Anda. Mari kita menyediakan beberapa contoh penggunaan **IReplacingCallback**Sitemap

Contoh kode berikut menunjukkan cara mengganti teks yang ditentukan dengan HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceWithHtml.java" >}}


Contoh kode berikut menunjukkan cara menyoroti angka positif dengan warna hijau dan angka negatif dengan warna merah:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-NumberHighlightCallback.java" >}}

Contoh kode berikut menunjukkan cara menunda nomor garis ke setiap baris:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-TestLineCounter.java" >}}
