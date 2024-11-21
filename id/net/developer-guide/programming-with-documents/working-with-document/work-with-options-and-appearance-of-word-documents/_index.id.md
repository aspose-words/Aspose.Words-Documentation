---
title: Opsi dan Tampilan Dokumen Word
second_title: Aspose.Words untuk .NET
articleTitle: Bekerja dengan Opsi dan Tampilan Dokumen Word
linktitle: Bekerja dengan Opsi dan Tampilan Dokumen Word
description: "Kontrol tampilan dokumen Word dengan mempertimbangkan perbedaan antara berbagai versi Microsoft Word menggunakan C#."
type: docs
weight: 40
url: /id/net/work-with-word-document-options-and-appearance/
timestamp: 2024-01-27-14-07-04
---

Terkadang Anda mungkin perlu mengubah tampilan dokumen, misalnya mengatur preferensi bahasa atau jumlah baris per halaman. Aspose.Words menyediakan kemampuan untuk mengontrol bagaimana dokumen akan ditampilkan, serta beberapa opsi tambahan. Artikel ini menjelaskan kemungkinan tersebut.

## Atur Opsi Tampilan Dokumen

Anda dapat mengontrol bagaimana dokumen akan ditampilkan di Microsoft Word menggunakan kelas [ViewOptions](https://reference.aspose.com/words/net/aspose.words.settings/viewoptions/). Misalnya, Anda bisa mengatur nilai zoom dokumen menggunakan properti [ZoomPercent](https://reference.aspose.com/words/net/aspose.words.settings/viewoptions/zoompercent/), atau mode tampilan menggunakan properti [ViewType](https://reference.aspose.com/words/net/aspose.words.settings/viewoptions/viewtype/).

Contoh kode berikut menunjukkan cara memastikan bahwa dokumen ditampilkan 50% saat dibuka di Microsoft Word:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-SetViewOption-SetViewOption.cs" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file template untuk contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word 2013 tidak menulis faktor zoom apa pun ke dokumen dan tidak lagi menetapkan zoom default dari nilai yang ditulis ke dokumen, sebaliknya, tampaknya menggunakan faktor zoom dari dokumen terakhir yang dibuka.

{{% /alert %}}

## Atur Opsi Tampilan Halaman

Jika Anda ingin mengatur jumlah karakter per baris, gunakan properti [CharactersPerLine](https://reference.aspose.com/words/net/aspose.words/pagesetup/charactersperline/). Anda juga dapat mengatur jumlah baris per halaman untuk dokumen Word – gunakan properti [LinesPerPage](https://reference.aspose.com/words/net/aspose.words/pagesetup/linesperpage/) untuk mendapatkan atau mengatur jumlah baris per halaman dalam kisi dokumen.

{{% alert color="primary" %}}

Di Microsoft Word, Anda dapat mengatur parameter yang sama menggunakan tab "Document Grid" di kotak dialog "Page Setup" hanya jika dukungan bahasa Asia diinstal.

{{% /alert %}}

Contoh kode berikut menunjukkan cara mengatur jumlah karakter per baris dan jumlah baris per halaman untuk dokumen Microsoft Word:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentPageSetup-DocumentPageSetup.cs" >}}

## Tetapkan Preferensi Bahasa

Menampilkan dokumen di Microsoft Word bergantung pada bahasa yang ditetapkan sebagai default untuk dokumen ini. Jika tidak ada bahasa yang disetel secara default, Microsoft Word mengambil informasi dari kotak dialog "Atur Preferensi Bahasa Office", yang, misalnya, dapat ditemukan di bawah "File → Opsi → Bahasa" di Microsoft Word 2019.

Dengan Aspose.Words, Anda juga dapat mengatur preferensi bahasa menggunakan kelas [LanguagePreferences](https://reference.aspose.com/words/net/aspose.words.loading/languagepreferences/). Perhatikan juga bahwa agar dokumen Anda ditampilkan dengan benar, Anda perlu mengatur versi Microsoft Word yang harus cocok dengan proses pemuatan dokumen – ini dapat dilakukan menggunakan properti [MswVersion](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/mswversion/).

{{% alert color="primary" %}}

Jika dokumen yang dihasilkan Aspose.Words Anda tidak terlihat seperti yang diharapkan, periksa nilai **LanguagePreferences** dan **MswVersion** dan sesuaikan jika perlu agar sesuai dengan pengaturan versi Microsoft Word Anda.

{{% /alert %}}

Contoh kode berikut menunjukkan cara menambahkan bahasa Jepang ke bahasa pengeditan:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-Setuplanguagepreferences-AddJapaneseAsEditinglanguages.cs" >}}

Contoh kode berikut menunjukkan cara mengatur bahasa Rusia sebagai bahasa pengeditan default:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-Setuplanguagepreferences-SetRussianAsDefaultEditingLanguage.cs" >}}

## Optimalkan Dokumen untuk Versi Word Tertentu

Metode [OptimizeFor](https://reference.aspose.com/words/net/aspose.words.settings/compatibilityoptions/optimizefor/) memungkinkan pengoptimalan konten dokumen, serta perilaku Aspose.Words default untuk versi Microsoft Word tertentu. Anda dapat menggunakan metode ini untuk mencegah Microsoft Word menampilkan pita "Mode kompatibilitas" saat dokumen dimuat. Perhatikan bahwa Anda mungkin juga perlu menyetel properti `Compliance` ke Iso29500_2008_Transitional atau lebih tinggi.

Contoh kode berikut menunjukkan cara mengoptimalkan konten dokumen untuk Microsoft Word 2016:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-SetCompatibilityOptions-OptimizeFor.cs" >}}
