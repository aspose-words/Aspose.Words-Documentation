---
title: Temukan dan Ganti di Python
second_title: Aspose.Words untuk Python via .NET
articleTitle: Temukan dan ganti
linktitle: Temukan dan ganti
type: docs
description: "Temukan string atau pola ekspresi reguler di dokumen Anda dan ganti dengan teks yang Anda inginkan menggunakan Python."
weight: 100
url: /id/python-net/find-and-replace/
timestamp: 2024-01-27-14-07-04
---

Anda dapat dengan mudah menavigasi dalam dokumen Anda menggunakan keyboard dan mouse, namun jika Anda memiliki banyak halaman untuk digulir, akan memakan waktu cukup lama untuk menemukan teks tertentu dalam dokumen yang panjang. Akan lebih memakan waktu ketika Anda ingin mengganti karakter atau kata tertentu yang telah Anda gunakan dalam dokumen Anda. Fungsionalitas "Temukan dan ganti" memungkinkan Anda menemukan rangkaian karakter dalam dokumen dan menggantinya dengan rangkaian karakter lain.

Aspose.Words memungkinkan Anda menemukan string atau pola ekspresi reguler tertentu dalam dokumen Anda dan menggantinya dengan alternatif tanpa menginstal dan menggunakan aplikasi tambahan seperti Microsoft Word. Ini akan mempercepat banyak tugas pengetikan dan pemformatan, sehingga berpotensi menghemat jam kerja Anda.

Artikel ini menjelaskan cara menerapkan penggantian string dan ekspresi reguler dengan dukungan metakarakter.

## Cara Menemukan dan Mengganti {#ways-to-find-and-replace}

Aspose.Words menyediakan dua cara untuk menerapkan operasi temukan dan ganti dengan menggunakan yang berikut ini:

1. *Penggantian string sederhana* – untuk mencari dan mengganti string tertentu dengan string lain, Anda perlu menentukan string pencarian (karakter alfanumerik) yang akan diganti sesuai dengan semua kemunculan dengan string pengganti lain yang ditentukan. Kedua string tidak boleh mengandung simbol. Ingatlah bahwa perbandingan string dapat membedakan huruf besar-kecil, atau Anda mungkin tidak yakin dalam mengeja atau memiliki beberapa ejaan yang mirip.
2. *Ekspresi reguler* – untuk menentukan ekspresi reguler guna menemukan string yang sama persis dan menggantinya sesuai dengan ekspresi reguler Anda. Perhatikan bahwa sebuah kata didefinisikan hanya terdiri dari karakter alfanumerik. Jika penggantian dijalankan dengan hanya seluruh kata yang cocok dan string masukan mengandung simbol, maka tidak ada frasa yang akan ditemukan.

Selain itu, Anda dapat menggunakan metakarakter khusus dengan penggantian string sederhana dan ekspresi reguler untuk menentukan jeda dalam operasi temukan dan ganti.

Aspose.Words menyajikan fungsionalitas temukan dan ganti dengan modul [aspose.words.replacing](https://reference.aspose.com/words/python-net/aspose.words.replacing/). Anda dapat bekerja dengan banyak opsi selama proses pencarian dan penggantian menggunakan kelas [FindReplaceOptions](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/).

### Temukan dan Ganti Teks menggunakan {#find-and-replace-text-using-simple-string-replacement} Penggantian String Sederhana

Anda dapat menggunakan salah satu metode [replace](https://reference.aspose.com/words/python-net/aspose.words/range/replace/) dan [replace_regex](https://reference.aspose.com/words/python-net/aspose.words/range/replace_regex/) untuk menemukan atau mengganti string tertentu dan mengembalikan jumlah penggantian yang telah dilakukan. Dalam hal ini, Anda dapat menentukan string yang akan diganti, string yang akan menggantikan semua kemunculannya, apakah penggantian tersebut peka terhadap huruf besar-kecil, dan apakah hanya kata-kata yang berdiri sendiri yang akan terpengaruh.

Contoh kode berikut menunjukkan cara mencari string "_CustomerName_" dan menggantinya dengan string *"James Bond"*:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.writeln("Hello _CustomerName_,")
print("Original document text: " + doc.range.text)

doc.range.replace("_CustomerName_", "James Bond", aw.replacing.FindReplaceOptions(aw.replacing.FindReplaceDirection.FORWARD))

print("Document text after replace: " + doc.range.text)

# Save the modified document
doc.save(docs_base.artifacts_dir + "FindAndReplace.simple_find_replace.docx")
{{< /highlight >}}

Anda dapat melihat perbedaan antara dokumen sebelum menerapkan penggantian string sederhana:

<img src="/words/python-net/find-and-replace/before-simple-string-replacement.png" alt="sebelum-penggantian string sederhana" style="width:600px"/>

Dan setelah menerapkan penggantian string sederhana:

<img src="/words/python-net/find-and-replace/after-simple-string-replacement.png" alt="setelah penempatan string sederhana" style="width:600px"/>

### Temukan dan Ganti Teks menggunakan Regular Expressions {#find-and-replace-text-using-regular-expressions}

Ekspresi reguler adalah pola yang menggambarkan urutan teks tertentu. Misalkan Anda ingin mengganti semua kemunculan ganda suatu kata dengan kemunculan satu kata. Kemudian Anda dapat menerapkan ekspresi reguler berikut untuk menentukan pola kata ganda: `([a-zA-Z]+) \1`.

Gunakan metode [replace_regex](https://reference.aspose.com/words/python-net/aspose.words/range/replace_regex/) untuk mencari dan mengganti kombinasi karakter tertentu dengan mengatur parameter ekspresi reguler sebagai pola untuk menemukan kecocokan.

Contoh kode berikut menunjukkan cara mengganti string yang cocok dengan pola ekspresi reguler dengan string pengganti yang ditentukan:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-ReplaceWithRegex.py" >}}

Anda dapat melihat perbedaan antara dokumen sebelum menerapkan penggantian string dengan ekspresi reguler:

<img src="/words/python-net/find-and-replace/before-replacement-with-regular-expressions.png" alt="sebelum-penggantian-dengan-ekspresi reguler" style="width:600px"/>

Dan setelah menerapkan penggantian string dengan ekspresi reguler:

<img src="/words/python-net/find-and-replace/after-replacement-with-regular-expressions.png" alt="setelah-penggantian-dengan-ekspresi reguler" style="width:600px"/>

### Temukan dan Ganti String menggunakan Metacharacters {#find-and-replace-text-using-metacharacters}

Anda dapat menggunakan metakarakter dalam string pencarian atau string pengganti jika teks atau frasa tertentu terdiri dari beberapa paragraf, bagian, atau halaman. Beberapa metakarakter termasuk **&amp;P** untuk hentian paragraf, **&amp;B** untuk hentian bagian, **&amp;M** untuk hentian halaman, dan **&amp;l** untuk hentian baris.

{{% alert color="primary" %}}

Perhatikan bahwa metakarakter **&&** sama dengan **&**. Misalnya, jika Anda perlu mencari teks untuk **&amp;P** yang bukan merupakan pemisah paragraf, Anda dapat menggunakan **&amp;&amp;P**.

{{% /alert %}}

Contoh kode berikut menunjukkan cara mengganti teks dengan paragraf dan hentian halaman:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-ReplaceTextContainingMetaCharacters.py" >}}

## Temukan dan Ganti String di Header/Footer Dokumen {#find-and-replace-string-in-header-or-footer-of-a-document}

Anda dapat menemukan dan mengganti teks di bagian header/footer dokumen Word menggunakan kelas [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/).

Contoh kode berikut menunjukkan cara mengganti teks bagian header di dokumen Anda:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-ReplaceTextInFooter.py" >}}

Anda dapat melihat perbedaan antara dokumen sebelum menerapkan penggantian string header:

<img src="/words/python-net/find-and-replace/before-applying-header-string-replacement.png" alt="sebelum-menerapkan-penggantian-header-string" style="width:600px"/>

Dan setelah menerapkan penggantian string header:

<img src="/words/python-net/find-and-replace/after-applying-header-string-replacement.png" alt="setelah-menerapkan-penggantian-header-string" style="width:600px"/>

Contoh kode untuk mengganti teks bagian footer pada dokumen Anda sangat mirip dengan contoh kode header sebelumnya. Yang perlu Anda lakukan hanyalah mengganti dua baris berikut:

{{< highlight python >}}
header = headersFooters.get_by_header_footer_type(aw.HeaderFooterType.HEADER_PRIMARY)
header.range.replace("Aspose.Words", "Remove", options)
{{< /highlight >}}

Dengan yang berikut ini:

{{< highlight python >}}
header = headersFooters.get_by_header_footer_type(aw.HeaderFooterType.FOOTER_PRIMARY)
header.range.replace("Aspose.Words", "Remove", options)
{{< /highlight >}}

Anda dapat melihat perbedaan antara dokumen sebelum menerapkan penggantian string footer:

<img src="/words/python-net/find-and-replace/before-applying-footer-string-replacement.png" alt="sebelum-menerapkan-penggantian-footer-string" style="width:600px"/>

Dan setelah menerapkan penggantian string footer:

<img src="/words/python-net/find-and-replace/after-applying-footer-string-replacement.png" alt="setelah-menerapkan-penggantian-footer-string" style="width:600px"/>

## Abaikan Teks Selama Temukan dan Ganti {#ignore-text-during-find-and-replace}

Saat menerapkan operasi temukan dan ganti, Anda dapat mengabaikan segmen teks tertentu. Jadi, bagian teks tertentu dapat dikecualikan dari pencarian, dan pencarian serta penggantian hanya dapat diterapkan pada bagian lainnya.

Aspose.Words menyediakan banyak properti cari dan ganti untuk mengabaikan teks seperti [ignore_deleted](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/ignore_deleted/), [ignore_fields](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/ignore_fields/), dan [ignore_inserted](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/ignore_inserted/).

Contoh kode berikut menunjukkan cara mengabaikan teks di dalam revisi penghapusan:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-IgnoreTextInsideDeleteRevisions.py" >}}

## Sesuaikan Temukan dan Ganti Operasi {#customize-find-and-replace-operation}

Aspose.Words menyediakan banyak properti berbeda untuk mencari dan mengganti teks seperti menerapkan format tertentu dengan properti [apply_font](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/apply_font/) dan [apply_paragraph_formats](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/apply_paragraph_format/), menggunakan substitusi dalam pola penggantian dengan properti [use_substitutions](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/use_substitutions/), dan lain-lain.

Contoh kode berikut menunjukkan cara menyorot kata tertentu di dokumen Anda:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-FindAndHighlight.py" >}}
