---
title: Temukan dan Ganti di C++
second_title: Aspose.Words untuk C++
articleTitle: Temukan dan Ganti
linktitle: Temukan dan Ganti
type: docs
description: "Temukan string atau pola ekspresi reguler di dokumen Anda dan ganti dengan teks yang Anda inginkan menggunakan C++."
weight: 100
url: /id/cpp/find-and-replace/
timestamp: 2024-01-27-14-07-04
---

Anda dapat dengan mudah menavigasi di dalam dokumen menggunakan keyboard dan mouse, tetapi jika Anda memiliki banyak halaman untuk digulir, akan memakan waktu cukup lama untuk menemukan teks tertentu dalam dokumen yang panjang. Akan lebih memakan waktu saat Anda ingin mengganti karakter atau kata tertentu yang telah Anda gunakan dalam dokumen Anda. Fungsionalitas "Temukan dan ganti" memungkinkan Anda menemukan urutan karakter dalam dokumen dan menggantinya dengan urutan karakter lainnya.

Aspose.Words memungkinkan Anda menemukan string atau pola ekspresi reguler tertentu dalam dokumen Anda dan menggantinya dengan alternatif tanpa menginstal dan menggunakan aplikasi tambahan seperti Microsoft Word. Ini akan mempercepat banyak tugas pengetikan dan pemformatan, yang berpotensi menghemat jam kerja Anda.

Artikel ini menjelaskan cara menerapkan penggantian string dan ekspresi reguler dengan dukungan metakarakter.

## Cara Menemukan dan Mengganti {#ways-to-find-and-replace}

Aspose.Words menyediakan dua cara untuk menerapkan operasi temukan dan ganti dengan menggunakan yang berikut ini:

1. *Simple string replacement* - untuk menemukan dan mengganti string tertentu dengan string lain, Anda perlu menentukan string pencarian (karakter alfanumerik) yang akan diganti menurut semua kemunculan dengan string pengganti lain yang ditentukan. Kedua string tidak boleh berisi simbol. Perhatikan bahwa perbandingan string dapat peka huruf besar-kecil, atau Anda mungkin tidak yakin dengan ejaannya atau memiliki beberapa ejaan yang serupa.
2. *Regular expressions* - untuk menentukan ekspresi reguler untuk menemukan kecocokan string yang tepat dan menggantinya sesuai dengan ekspresi reguler Anda. Perhatikan bahwa sebuah kata didefinisikan hanya terdiri dari karakter alfanumerik. Jika penggantian dijalankan dengan hanya seluruh kata yang dicocokkan dan string input kebetulan berisi simbol, maka tidak ada frasa yang akan ditemukan.

Selain itu, Anda dapat menggunakan metakarakter khusus dengan penggantian string sederhana dan ekspresi reguler untuk menentukan jeda dalam operasi temukan dan ganti.

Aspose.Words menyajikan fungsionalitas temukan dan ganti dengan namespace [Aspose.Words.Replacing](https://reference.aspose.com/words/cpp/namespace/aspose.words.replacing). Anda dapat bekerja dengan banyak opsi selama proses temukan dan ganti menggunakan kelas [FindReplaceOptions](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions/).

### Temukan dan Ganti Teks Menggunakan Penggantian String Sederhana {#find-and-replace-text-using-simple-string-replacement}

Anda dapat menggunakan salah satu metode [Replace](https://reference.aspose.com/words/cpp/aspose.words/range/replace/) untuk menemukan atau mengganti string tertentu dan mengembalikan jumlah penggantian yang dilakukan. Dalam hal ini, Anda dapat menentukan string yang akan diganti, string yang akan menggantikan semua kemunculannya, apakah penggantiannya peka huruf besar-kecil, dan apakah hanya kata-kata yang berdiri sendiri yang akan terpengaruh.

Contoh kode berikut menunjukkan cara menemukan string "_CustomerName_ " dan menggantinya dengan string *"James Bond"*:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithString-ReplaceWithString.cpp" >}}

Anda dapat melihat perbedaan antara dokumen sebelum menerapkan penggantian string sederhana:

<img src="before-simple-string-replacement.png" alt="before-simple-string-replacement-aspose-words-cpp" style="width:600px"/>

Dan setelah menerapkan penggantian string sederhana:

<img src="after-simple-string-replacement.png" alt="after-simple-string-replacement-aspose-words-cpp" style="width:600px"/>

### Temukan dan Ganti Teks Menggunakan Ekspresi Reguler {#find-and-replace-text-using-regular-expressions}

Ekspresi reguler (regex) adalah pola yang menggambarkan urutan teks tertentu. Misalkan Anda ingin mengganti semua kemunculan ganda sebuah kata dengan kemunculan satu kata. Kemudian Anda dapat menerapkan ekspresi reguler berikut untuk menentukan pola kata ganda: `([a-zA-Z]+) \1`.

Gunakan metode [Replace](https://reference.aspose.com/words/cpp/aspose.words/range/replace/) lainnya untuk mencari dan mengganti kombinasi karakter tertentu dengan menyetel parameter `Regex` sebagai pola ekspresi reguler untuk menemukan kecocokan.

Contoh kode berikut menunjukkan cara mengganti string yang cocok dengan pola ekspresi reguler dengan string pengganti yang ditentukan:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithRegex-ReplaceWithRegex.cpp" >}}

Anda dapat melihat perbedaan antara dokumen sebelum menerapkan penggantian string dengan ekspresi reguler:

<img src="before-replacement-with-regular-expressions.png" alt="before-replacement-with-regular-expressions-aspose-words-cpp" style="width:600px"/>

Dan setelah menerapkan penggantian string dengan ekspresi reguler:

<img src="after-replacement-with-regular-expressions.png" alt="after-replacement-with-regular-expressions-aspose-words-cpp" style="width:600px"/>

### Temukan dan Ganti String Menggunakan Metakarakter {#find-and-replace-text-using-metacharacters}

Anda dapat menggunakan metakarakter dalam string pencarian atau string pengganti jika teks atau frasa tertentu terdiri dari beberapa paragraf, bagian, atau halaman. Beberapa metakarakter termasuk **&p** untuk jeda paragraf, **&b** untuk jeda bagian, **&m** untuk jeda halaman, dan **&l** untuk jeda baris.

{{% alert color="primary" %}}

Perhatikan bahwa metakarakter **&&** sama dengan **&**. Misalnya, jika Anda perlu menemukan teks untuk **&p** yang bukan pemisah paragraf, maka Anda dapat menggunakan **&&p**.

{{% /alert %}}

Contoh kode berikut menunjukkan cara mengganti teks dengan paragraf dan jeda halaman:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-FindReplaceUsingMetaCharacters-ReplaceTextContaingMetaCharacters.cpp" >}}

## Temukan dan Ganti String di Header / Footer Dokumen {#find-and-replace-string-in-header-or-footer-of-a-document}

Anda dapat menemukan dan mengganti teks di bagian header / footer dokumen Word menggunakan kelas [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/).

Contoh kode berikut menunjukkan cara mengganti teks bagian header di dokumen Anda:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceInHeaderAndFooter-ReplaceTextInFooter.cpp" >}}

Anda dapat melihat perbedaan antara dokumen sebelum menerapkan penggantian string header:

<img src="before-applying-header-string-replacement.png" alt="before-applying-header-string-replacement-aspose-words-cpp" style="width:600px"/>

Dan setelah menerapkan penggantian string header:

<img src="after-applying-header-string-replacement.png" alt="after-applying-header-string-replacement-aspose-words-cpp" style="width:600px"/>

Contoh kode untuk mengganti teks bagian footer di dokumen Anda sangat mirip dengan contoh kode header sebelumnya. Yang perlu Anda lakukan hanyalah mengganti dua baris berikut:

{{< highlight csharp >}}
auto header = headersFooters->idx_get(HeaderFooterType::HeaderPrimary);
header->get_Range()->Replace(u"Aspose.Words", u"Remove", options);
{{< /highlight >}}

Dengan yang berikut ini:

{{< highlight csharp >}}
auto footer = headersFooters->idx_get(HeaderFooterType::FooterPrimary);
footer->get_Range()->Replace(u"(C) 2006 Aspose Pty Ltd.", u"Copyright (C) Aspose Pty Ltd.", options);
{{< /highlight >}}

Anda dapat melihat perbedaan antara dokumen sebelum menerapkan penggantian string footer:

<img src="before-applying-footer-string-replacement.png" alt="before-applying-footer-string-replacement-aspose-words-cpp" style="width:600px"/>

Dan setelah menerapkan penggantian string footer:

<img src="after-applying-footer-string-replacement.png" alt="after-applying-footer-string-replacement-aspose-words-cpp" style="width:600px"/>

## Abaikan Teks Saat Mencari dan Mengganti {#ignore-text-during-find-and-replace}

Saat menerapkan operasi temukan dan ganti, Anda dapat mengabaikan segmen teks tertentu. Jadi, bagian teks tertentu dapat dikecualikan dari pencarian, dan find and replace hanya dapat diterapkan ke bagian yang tersisa.

Aspose.Words menyediakan banyak properti find dan replace untuk mengabaikan teks seperti [IgnoreDeleted](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions), [IgnoreFieldCodes](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions/get_ignorefieldcodes/), [IgnoreFields](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions/get_ignorefields/), [IgnoreFootnotes](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions/get_ignorefootnotes/), dan [IgnoreInserted](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions/get_ignoreinserted/).

Contoh kode berikut menunjukkan cara mengabaikan teks di dalam revisi hapus:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-IgnoreText-IgnoreTextInsideDeleteRevisions.cpp" >}}

## Sesuaikan Operasi Temukan dan Ganti {#customize-find-and-replace-operation}

Aspose.Words menyediakan banyak [properties](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/) berbeda untuk menemukan dan mengganti teks seperti menerapkan format tertentu dengan properti [ApplyFont](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/applyfont/) dan [ApplyParagraphFormats](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/applyparagraphformat/), menggunakan substitusi dalam pola penggantian dengan properti [UseSubstitutions](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/usesubstitutions/), dan lainnya.

Contoh kode berikut menunjukkan cara menyorot kata tertentu dalam dokumen Anda:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithString-HighlightColor.cpp" >}}

Aspose.Words memungkinkan Anda menggunakan antarmuka [IReplacingCallback](https://reference.aspose.com/words/cpp/aspose.words.replacing/ireplacingcallback/) untuk membuat dan memanggil metode khusus selama operasi penggantian. Anda mungkin memiliki beberapa kasus penggunaan di mana Anda perlu menyesuaikan operasi temukan dan ganti seperti mengganti teks yang ditentukan dengan ekspresi reguler dengan tag HTML, jadi pada dasarnya Anda akan menerapkan replace dengan menyisipkan HTML.

Jika Anda perlu mengganti string dengan tag HTML, terapkan antarmuka **IReplacingCallback** untuk menyesuaikan operasi temukan dan ganti sehingga pencocokan dimulai di awal proses dengan simpul pencocokan dokumen Anda. Mari kita berikan beberapa contoh penggunaan **IReplacingCallback**.

Contoh kode berikut menunjukkan cara mengganti teks yang ditentukan dengan HTML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithHTML-ReplaceWithHtml.cpp" >}}

Contoh kode berikut menunjukkan cara menyorot bilangan positif dengan warna hijau dan bilangan negatif dengan warna merah:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithHTML-NumberHighlightCallback.cpp" >}}

Contoh kode berikut menunjukkan cara menambahkan nomor baris ke setiap baris:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithHTML-LineCounter.cpp" >}}
