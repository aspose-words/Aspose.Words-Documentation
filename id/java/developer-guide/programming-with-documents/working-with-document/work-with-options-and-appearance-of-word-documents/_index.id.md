---
title: Pilihan dan Penampilan Dokumen Word
second_title: Aspose.Words Sitemap Java
articleTitle: Bekerja dengan Pilihan dan Penampilan Dokumen Word
linktitle: Bekerja dengan Pilihan dan Penampilan Dokumen Word
description: "Mengontrol tampilan dokumen Word dalam memperhitungkan perbedaan antara berbagai Microsoft Word versi menggunakan JavaSitemap"
type: docs
weight: 40
url: /id/java/work-with-word-document-options-and-appearance/
---

Kadang-kadang Anda mungkin perlu mengubah tampilan dokumen, misalnya, mengatur preferensi bahasa atau jumlah garis per halaman.Aspose.Words memberikan kemampuan untuk mengontrol bagaimana dokumen akan ditampilkan, serta beberapa opsi tambahan. Artikel ini menjelaskan kemungkinan tersebut.

## Mengatur Opsi Tampilan Dokumen

Anda dapat mengontrol bagaimana dokumen akan ditampilkan dalam Microsoft Word menggunakan [ViewOptions](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/) Sitemap Misalnya, Anda dapat mengatur nilai perbesaran dokumen menggunakan [ZoomPercent](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/#getZoomPercent) properti, atau mode tampilan menggunakan [ViewType](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/#getViewType) Login

Contoh kode berikut menunjukkan bagaimana memastikan bahwa dokumen ditampilkan pada 50% ketika dibuka Microsoft WordSitemap

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SetViewOptions-SetViewOptions.java" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file template untuk contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/Document/TestFile.doc)Sitemap

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word 2013 tidak menulis faktor zoom apa pun ke dokumen dan tidak lagi menetapkan zoom default dari nilai yang ditulis ke dokumen, bukan, tampaknya menggunakan faktor zoom dokumen terbuka terakhir.

{{% /alert %}}

## Opsi Tampilan Halaman Set

Jika Anda ingin mengatur jumlah karakter per baris, gunakan [CharactersPerLine](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getCharactersPerLine) Login Anda juga dapat mengatur jumlah garis per halaman untuk dokumen Word - gunakan [LinesPerPage](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getLinesPerPage) properti untuk mendapatkan atau mengatur jumlah garis per halaman di grid dokumen.

{{% alert color="primary" %}}

Sitemap Microsoft Word, Anda dapat mengatur parameter yang sama menggunakan tab "Document Grid" di kotak dialog "Page Setup" hanya ketika dukungan bahasa Asia diinstal.

{{% /alert %}}

Contoh kode berikut menunjukkan cara mengatur jumlah karakter per baris dan jumlah garis per halaman untuk Microsoft Word dokumen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentPageSetup-DocumentPageSetup.java" >}}

## Mengatur Preferensi Bahasa

Menampilkan dokumen dalam Microsoft Word tergantung pada bahasa mana yang ditetapkan sebagai default untuk dokumen ini. Jika tidak ada bahasa yang diatur secara default, Microsoft Word mengambil informasi dari "Set Office Language Preferences" kotak dialog, yang, misalnya, dapat ditemukan di bawah "File → Options → Bahasa" dalam Microsoft Word Sitemap

Sitemap Aspose.Words, Anda juga dapat mengatur preferensi bahasa dengan menggunakan [LanguagePreferences](https://reference.aspose.com/words/java/com.aspose.words/languagepreferences/) Sitemap Juga dicatat bahwa untuk tampilan yang benar dari dokumen Anda perlu mengatur Microsoft Word versi bahwa proses pemuatan dokumen harus cocok - ini dapat dilakukan menggunakan [MswVersion](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getMswVersion) Login

{{% alert color="primary" %}}

Sitemap Aspose.Words dokumen yang dihasilkan tidak terlihat seperti yang diharapkan, periksa **LanguagePreferences** Login **MswVersion** nilai dan menyesuaikan mereka jika perlu untuk mencocokkan pengaturan untuk Anda Microsoft Word Sitemap

{{% /alert %}}

Contoh kode berikut menunjukkan cara menambahkan bahasa Jepang untuk mengedit:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-AddJapaneseAsEditinglanguages.java" >}}

Contoh kode berikut menunjukkan cara mengatur bahasa Rusia sebagai bahasa pengeditan default:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-SetRussianAsDefaultEditingLanguage.java" >}}

## Optimalkan Dokumen untuk Particular Versi Word

Login [OptimizeFor](https://reference.aspose.com/words/java/com.aspose.words/compatibilityoptions/#optimizeFor-int) metode memungkinkan mengoptimalkan konten dokumen, serta default Aspose.Words perilaku untuk versi tertentu Microsoft WordSitemap Anda dapat menggunakan metode ini untuk mencegah Microsoft Word dari menampilkan pita "moditas" pada pemuatan dokumen. Perhatikan bahwa Anda juga perlu mengatur `Compliance` properti untuk Iso29500_2008_Transitional atau lebih tinggi.

Contoh kode berikut menunjukkan bagaimana mengoptimalkan konten dokumen untuk Microsoft Word 2016:

{{< highlight csharp >}}
Document doc = new Document(dataDir + "Document.docx");

// Set Word2016 version for document
doc.getCompatibilityOptions().optimizeFor(MsWordVersion.WORD_2016);

// Save the document.
doc.save(dataDir + "output.docx");
{{< /highlight >}}
