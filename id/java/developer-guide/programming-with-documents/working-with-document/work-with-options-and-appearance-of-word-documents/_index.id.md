---
title: Opsi dan Tampilan Dokumen Word
second_title: Aspose.Words untuk Java
articleTitle: Bekerja dengan Opsi dan Tampilan Dokumen Word
linktitle: Bekerja dengan Opsi dan Tampilan Dokumen Word
description: "Kontrol tampilan dokumen Word dengan mempertimbangkan perbedaan antara berbagai versi Microsoft Word menggunakan Java."
type: docs
weight: 40
url: /id/java/work-with-word-document-options-and-appearance/
timestamp: 2024-01-27-14-07-04
---

Terkadang Anda mungkin perlu mengubah tampilan dokumen, misalnya, mengatur preferensi bahasa atau jumlah baris per halaman.Aspose.Words menyediakan kemampuan untuk mengontrol bagaimana dokumen akan ditampilkan, serta beberapa opsi tambahan. Artikel ini menjelaskan kemungkinan seperti itu.

## Setel Opsi Tampilan Dokumen

Anda dapat mengontrol bagaimana dokumen akan ditampilkan di Microsoft Word menggunakan kelas [ViewOptions](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/). Misalnya, Anda dapat menyetel nilai zoom dokumen menggunakan properti [ZoomPercent](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/#getZoomPercent), atau mode tampilan menggunakan properti [ViewType](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/#getViewType).

Contoh kode berikut menunjukkan cara memastikan bahwa dokumen ditampilkan pada 50% saat dibuka di Microsoft Word:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SetViewOptions-SetViewOptions.java" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file templat untuk contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/Document/TestFile.doc).

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word 2013 tidak menulis faktor zoom apa pun ke dokumen dan tidak lagi menetapkan zoom default dari nilai yang ditulis ke dokumen, sebagai gantinya, tampaknya menggunakan faktor zoom dari dokumen yang terakhir dibuka.

{{% /alert %}}

## Setel Opsi Tampilan Halaman

Jika Anda ingin mengatur jumlah karakter per baris, gunakan properti [CharactersPerLine](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getCharactersPerLine). Anda juga dapat mengatur jumlah baris per halaman untuk dokumen Word - gunakan properti [LinesPerPage](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getLinesPerPage) untuk mendapatkan atau mengatur jumlah baris per halaman dalam kisi dokumen.

{{% alert color="primary" %}}

Di Microsoft Word, Anda dapat mengatur parameter yang sama menggunakan tab "Kisi Dokumen" di kotak dialog "Pengaturan Halaman" hanya jika dukungan bahasa Asia diinstal.

{{% /alert %}}

Contoh kode berikut menunjukkan cara mengatur jumlah karakter per baris dan jumlah baris per halaman untuk dokumen Microsoft Word:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentPageSetup-DocumentPageSetup.java" >}}

## Atur Preferensi Bahasa

Menampilkan dokumen dalam Microsoft Word bergantung pada bahasa mana yang ditetapkan sebagai default untuk dokumen ini. Jika tidak ada bahasa yang disetel secara default, Microsoft Word mengambil informasi dari kotak dialog "Setel Preferensi Bahasa Office", yang, misalnya, dapat ditemukan di bawah "File → Options → Language" di Microsoft Word 2019.

Dengan Aspose.Words, Anda juga dapat mengatur preferensi bahasa menggunakan kelas [LanguagePreferences](https://reference.aspose.com/words/java/com.aspose.words/languagepreferences/). Perhatikan juga bahwa untuk tampilan dokumen Anda yang benar, Anda perlu menyetel versi Microsoft Word yang harus cocok dengan proses pemuatan dokumen – ini dapat dilakukan dengan menggunakan properti [MswVersion](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getMswVersion).

{{% alert color="primary" %}}

Jika dokumen yang dihasilkan Aspose.Words Anda tidak terlihat seperti yang diharapkan, periksa nilai **LanguagePreferences** dan **MswVersion** dan sesuaikan jika perlu agar sesuai dengan pengaturan untuk versi Microsoft Word Anda.

{{% /alert %}}

Contoh kode berikut menunjukkan cara menambahkan bahasa Jepang ke bahasa pengeditan:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-AddJapaneseAsEditinglanguages.java" >}}

Contoh kode berikut menunjukkan cara mengatur bahasa Rusia sebagai bahasa pengeditan default:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-SetRussianAsDefaultEditingLanguage.java" >}}

## Optimalkan Dokumen untuk Versi Word Tertentu

Metode [OptimizeFor](https://reference.aspose.com/words/java/com.aspose.words/compatibilityoptions/#optimizeFor-int) memungkinkan pengoptimalan konten dokumen, serta perilaku Aspose.Words default untuk versi tertentu dari Microsoft Word. Anda dapat menggunakan metode ini untuk mencegah Microsoft Word menampilkan pita "Mode kompatibilitas" saat memuat dokumen. Perhatikan bahwa Anda mungkin juga perlu menyetel properti `Compliance` ke Iso29500_2008_Transitional atau lebih tinggi.

Contoh kode berikut menunjukkan cara mengoptimalkan konten dokumen untuk Microsoft Word 2016:

{{< highlight csharp >}}
Document doc = new Document(dataDir + "Document.docx");

// Set Word2016 version for document
doc.getCompatibilityOptions().optimizeFor(MsWordVersion.WORD_2016);

// Save the document.
doc.save(dataDir + "output.docx");
{{< /highlight >}}
