---
title: Temukan dan Ganti di C#
second_title: Aspose.Words untuk .NET
articleTitle: Temukan dan ganti
linktitle: Temukan dan ganti
type: docs
description: "Temukan string atau pola ekspresi reguler di dokumen Anda dan ganti dengan teks yang Anda inginkan menggunakan C#."
weight: 100
url: /id/net/find-and-replace/
timestamp: 2024-01-27-14-07-04
---

Anda dapat dengan mudah menavigasi dalam dokumen Anda menggunakan keyboard dan mouse, namun jika Anda memiliki banyak halaman untuk digulir, akan memakan waktu cukup lama untuk menemukan teks tertentu dalam dokumen yang panjang. Akan lebih memakan waktu ketika Anda ingin mengganti karakter atau kata tertentu yang telah Anda gunakan dalam dokumen Anda. Fungsionalitas "Temukan dan ganti" memungkinkan Anda menemukan rangkaian karakter dalam dokumen dan menggantinya dengan rangkaian karakter lain.

Aspose.Words memungkinkan Anda menemukan string atau pola ekspresi reguler tertentu dalam dokumen Anda dan menggantinya dengan alternatif tanpa menginstal dan menggunakan aplikasi tambahan seperti Microsoft Word. Ini akan mempercepat banyak tugas pengetikan dan pemformatan, sehingga berpotensi menghemat jam kerja Anda.

Artikel ini menjelaskan cara menerapkan penggantian string dan ekspresi reguler dengan dukungan metakarakter.

## Cara Menemukan dan Mengganti {#ways-to-find-and-replace}

Aspose.Words menyediakan dua cara untuk menerapkan operasi temukan dan ganti dengan menggunakan yang berikut ini:

1. *Penggantian string sederhana* – untuk mencari dan mengganti string tertentu dengan string lain, Anda perlu menentukan string pencarian (karakter alfanumerik) yang akan diganti sesuai dengan semua kemunculan dengan string pengganti lain yang ditentukan. Kedua string tidak boleh mengandung simbol. Ingatlah bahwa perbandingan string dapat membedakan huruf besar-kecil, atau Anda mungkin tidak yakin dalam mengeja atau memiliki beberapa ejaan yang serupa.
2. *Ekspresi reguler* – untuk menentukan ekspresi reguler guna menemukan string yang sama persis dan menggantinya sesuai dengan ekspresi reguler Anda. Perhatikan bahwa sebuah kata didefinisikan hanya terdiri dari karakter alfanumerik. Jika penggantian dijalankan dengan hanya seluruh kata yang cocok dan string input mengandung simbol, maka tidak ada frasa yang akan ditemukan.

Selain itu, Anda dapat menggunakan metakarakter khusus dengan penggantian string sederhana dan ekspresi reguler untuk menentukan jeda dalam operasi temukan dan ganti.

Aspose.Words menyajikan fungsionalitas temukan dan ganti dengan namespace [Aspose.Words.Replacing](https://reference.aspose.com/words/net/aspose.words.replacing/). Anda dapat bekerja dengan banyak opsi selama proses pencarian dan penggantian menggunakan kelas [FindReplaceOptions](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/).

### Temukan dan Ganti Teks Menggunakan {#find-and-replace-text-using-simple-string-replacement} Penggantian String Sederhana

Anda dapat menggunakan salah satu metode [Replace](https://reference.aspose.com/words/net/aspose.words/range/replace/#replace/) untuk menemukan atau mengganti string tertentu dan mengembalikan jumlah penggantian yang telah dilakukan. Dalam hal ini, Anda dapat menentukan string yang akan diganti, string yang akan menggantikan semua kemunculannya, apakah penggantian tersebut peka terhadap huruf besar-kecil, dan apakah hanya kata-kata yang berdiri sendiri yang akan terpengaruh.

Contoh kode berikut menunjukkan cara mencari string "_CustomerName_" dan menggantinya dengan string *"James Bond"*:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithString-ReplaceWithString.cs" >}}

Anda dapat melihat perbedaan antara dokumen sebelum menerapkan penggantian string sederhana:

<img src="/words/net/find-and-replace/before-simple-string-replacement.png" alt="sebelum-penggantian string sederhana" style="width:600px"/>

Dan setelah menerapkan penggantian string sederhana:

<img src="/words/net/find-and-replace/after-simple-string-replacement.png" alt="setelah penempatan string sederhana" style="width:600px"/>

### Temukan dan Ganti Teks Menggunakan Ekspresi Reguler {#find-and-replace-text-using-regular-expressions}

Ekspresi reguler (regex) adalah pola yang menggambarkan urutan teks tertentu. Misalkan Anda ingin mengganti semua kemunculan ganda suatu kata dengan kemunculan satu kata. Kemudian Anda dapat menerapkan ekspresi reguler berikut untuk menentukan pola kata ganda: `([a-zA-Z]+) \1`.

Gunakan metode [Replace](https://reference.aspose.com/words/net/aspose.words/range/replace/) lainnya untuk mencari dan mengganti kombinasi karakter tertentu dengan mengatur parameter `Regex` sebagai pola ekspresi reguler untuk menemukan kecocokan.

Contoh kode berikut menunjukkan cara mengganti string yang cocok dengan pola ekspresi reguler dengan string pengganti yang ditentukan:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithRegex-ReplaceWithRegex.cs" >}}

Anda dapat melihat perbedaan antara dokumen sebelum menerapkan penggantian string dengan ekspresi reguler:

<img src="/words/net/find-and-replace/before-replacement-with-regular-expressions.png" alt="sebelum-penggantian-dengan-ekspresi reguler" style="width:600px"/>

Dan setelah menerapkan penggantian string dengan ekspresi reguler:

<img src="/words/net/find-and-replace/after-replacement-with-regular-expressions.png" alt="setelah-penggantian-dengan-ekspresi reguler" style="width:600px"/>

### Temukan dan Ganti String Menggunakan Metacharacters {#find-and-replace-text-using-metacharacters}

Anda dapat menggunakan metakarakter dalam string pencarian atau string pengganti jika teks atau frasa tertentu terdiri dari beberapa paragraf, bagian, atau halaman. Beberapa metakarakter termasuk **&amp;P** untuk jeda paragraf, **&amp;B** untuk jeda bagian, **&amp;M** untuk jeda halaman, dan **&amp;l** untuk jeda baris.

{{% alert color="primary" %}}

Perhatikan bahwa metakarakter **&&** sama dengan **&**. Misalnya, jika Anda perlu mencari teks untuk **&amp;P** yang bukan merupakan pemisah paragraf, Anda dapat menggunakan **&amp;&amp;P**.

{{% /alert %}}

Contoh kode berikut menunjukkan cara mengganti teks dengan paragraf dan hentian halaman:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-FindReplaceUsingMetaCharacters-ReplaceTextContaingMetaCharacters.cs" >}}

## Temukan dan Ganti String di Header/Footer Dokumen {#find-and-replace-string-in-header-or-footer-of-a-document}

Anda dapat menemukan dan mengganti teks di bagian header/footer dokumen Word menggunakan kelas [HeaderFooter](https://reference.aspose.com/words/net/aspose.words/headerfooter/).

Contoh kode berikut menunjukkan cara mengganti teks bagian header di dokumen Anda:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceInHeaderAndFooter-ReplaceTextInFooter.cs" >}}

Anda dapat melihat perbedaan antara dokumen sebelum menerapkan penggantian string header:

<img src="/words/net/find-and-replace/before-applying-header-string-replacement.png" alt="sebelum-menerapkan-penggantian-header-string" style="width:600px"/>

Dan setelah menerapkan penggantian string header:

<img src="/words/net/find-and-replace/after-applying-header-string-replacement.png" alt="setelah-menerapkan-penggantian-header-string" style="width:600px"/>

Contoh kode untuk mengganti teks bagian footer pada dokumen Anda sangat mirip dengan contoh kode header sebelumnya. Yang perlu Anda lakukan hanyalah mengganti dua baris berikut:

{{< highlight csharp >}}
HeaderFooter header = headersFooters[HeaderFooterType.HeaderPrimary];
header.Range.Replace("Aspose.Words", "Remove", options);
{{< /highlight >}}

Dengan yang berikut ini:

{{< highlight csharp >}}
HeaderFooter footer = headersFooters[HeaderFooterType.FooterPrimary];
int currentYear = System.DateTime.Now.Year;
footer.Range.Replace("(C) 2006 Aspose Pty Ltd.", $"Copyright (C) {currentYear} by Aspose Pty Ltd.", options);
{{< /highlight >}}

Anda dapat melihat perbedaan antara dokumen sebelum menerapkan penggantian string footer:

<img src="/words/net/find-and-replace/before-applying-footer-string-replacement.png" alt="sebelum-menerapkan-penggantian-footer-string" style="width:600px"/>

Dan setelah menerapkan penggantian string footer:

<img src="/words/net/find-and-replace/after-applying-footer-string-replacement.png" alt="setelah-menerapkan-penggantian-footer-string" style="width:600px"/>

## Abaikan Teks Selama Temukan dan Ganti {#ignore-text-during-find-and-replace}

Saat menerapkan operasi temukan dan ganti, Anda dapat mengabaikan segmen teks tertentu. Jadi, bagian teks tertentu dapat dikecualikan dari pencarian, dan pencarian serta penggantian hanya dapat diterapkan pada bagian lainnya.

Aspose.Words menyediakan banyak properti cari dan ganti untuk mengabaikan teks seperti [IgnoreDeleted](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/ignoredeleted/), [IgnoreFieldCodes](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/ignorefieldcodes/), [IgnoreFields](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/ignorefields/), [IgnoreFootnotes](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/ignorefootnotes/), dan [IgnoreInserted](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/ignoreinserted/).

Contoh kode berikut menunjukkan cara mengabaikan teks di dalam revisi penghapusan:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-IgnoreText-IgnoreTextInsideDeleteRevisions.cs" >}}

## Sesuaikan Temukan dan Ganti Operasi {#customize-find-and-replace-operation}

Aspose.Words menyediakan banyak [properties](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/) berbeda untuk mencari dan mengganti teks seperti menerapkan format tertentu dengan properti [ApplyFont](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/applyfont/) dan [ApplyParagraphFormats](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/applyparagraphformat/), menggunakan substitusi pola penggantian dengan properti [UseSubstitutions](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/usesubstitutions/), dan lain-lain.

Contoh kode berikut menunjukkan cara menyorot kata tertentu di dokumen Anda:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithString-HighlightColor.cs" >}}

Aspose.Words memungkinkan Anda menggunakan antarmuka [IReplacingCallback](https://reference.aspose.com/words/net/aspose.words.replacing/ireplacingcallback/) untuk membuat dan memanggil metode khusus selama operasi penggantian. Anda mungkin memiliki beberapa kasus penggunaan di mana Anda perlu menyesuaikan operasi pencarian dan penggantian seperti mengganti teks yang ditentukan dengan ekspresi reguler dengan tag HTML, jadi pada dasarnya Anda akan menerapkan penggantian dengan memasukkan HTML.

Jika Anda perlu mengganti string dengan tag HTML, terapkan antarmuka **IReplacingCallback** untuk menyesuaikan operasi pencarian dan penggantian sehingga pencocokan dimulai pada awal proses dengan simpul pencocokan dokumen Anda. Mari kita berikan beberapa contoh penggunaan **IReplacingCallback**.

Contoh kode berikut menunjukkan cara mengganti teks yang ditentukan dengan HTML:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithHTML-ReplaceWithHtml.cs" >}}

Contoh kode berikut menunjukkan cara menyorot bilangan positif dengan warna hijau dan bilangan negatif dengan warna merah:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithHTML-NumberHighlightCallback.cs" >}}

Contoh kode berikut menunjukkan cara menambahkan nomor baris ke setiap baris:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithHTML-LineCounter.cs" >}}
