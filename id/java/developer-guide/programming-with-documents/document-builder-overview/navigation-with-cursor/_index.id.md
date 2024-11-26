---
title: Navigasi dengan Kursor di Java
second_title: Aspose.Words untuk Java
articleTitle: Navigasi dengan Kursor
linktitle: Navigasi dengan Kursor
description: "Bernavigasi di antara simpul yang berbeda dalam dokumen, seperti paragraf, penanda, atau karakter tertentu menggunakan Java."
type: docs
weight: 5
url: /id/java/navigation-with-cursor/
timestamp: 2024-01-27-14-07-04
---

Saat bekerja dengan dokumen, meskipun dokumen itu pendek atau panjang, Anda perlu menavigasi dokumen Anda. Navigasi dengan kursor virtual mewakili kemampuan untuk bernavigasi di antara node yang berbeda dalam sebuah dokumen.

Dalam dokumen singkat, bergerak di sekitar dokumen menjadi sederhana karena Anda dapat memindahkan titik penyisipan bahkan dengan menggunakan tombol panah keyboard atau dengan mengklik mouse untuk menemukan titik penyisipan di mana pun Anda inginkan. Tetapi begitu Anda memiliki dokumen besar yang memiliki banyak halaman, teknik dasar ini tidak akan cukup.

Artikel ini menjelaskan cara berpindah-pindah dalam dokumen dan menavigasi dengan kursor virtual ke berbagai bagiannya.

## Mendeteksi Posisi Kursor Saat Ini

Sebelum memulai proses menavigasi dokumen Anda, Anda harus mendapatkan simpul yang saat ini dipilih. Anda bisa mendapatkan posisi kursor yang tepat pada simpul yang dipilih dengan menggunakan properti [CurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentNode). Selain itu, alih-alih mendapatkan simpul saat ini, Anda bisa mendapatkan paragraf yang saat ini dipilih atau bagian yang saat ini dipilih dengan menggunakan properti [CurrentParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentParagraph) dan [CurrentSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentSection).

Setiap operasi penyisipan yang Anda lakukan menggunakan [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) akan disisipkan sebelum [CurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#CurrentNode). Saat paragraf saat ini kosong atau kursor diposisikan tepat sebelum akhir paragraf, **CurrentNode** mengembalikan null.

## Menavigasi Metode dalam Dokumen

Saat Anda mengedit teks, penting untuk mengetahui cara menavigasi dokumen Anda dan ke mana tepatnya harus memindahkannya. Aspose.Words memungkinkan Anda untuk berpindah-pindah dalam dokumen dan menavigasi ke bagian dan bagiannya yang berbeda-ini mirip dengan fungsionalitas Panel Navigasi di Microsoft Word untuk membuka halaman atau judul dalam dokumen Word tanpa menggulir.

Metode utamanya adalah dapat memindahkan posisi kursor ke simpul tertentu di dokumen Anda, Anda dapat mencapainya dengan menggunakan metode [MoveTo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveTo-com.aspose.words.Node).

Contoh kode berikut menunjukkan cara memindahkan **DocumentBuilder** ke node yang berbeda dalam dokumen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToNode-DocumentBuilderMoveToNode.java" >}}

Tetapi selain metode dasar **MoveTo**, ada metode yang lebih spesifik.

### Navigasikan ke Awal atau Akhir Dokumen

Anda dapat pergi ke awal atau akhir dokumen Anda menggunakan metode [MoveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart) dan [MoveToDocumentEnd](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentEnd).

Contoh kode berikut menunjukkan cara memindahkan posisi kursor ke awal atau akhir dokumen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToDocumentStartEnd-DocumentBuilderMoveToDocumentStartEnd.java" >}}

### Navigasi dengan Bookmark

Anda dapat menandai tempat yang ingin Anda temukan dan memindahkannya lagi dengan mudah. Anda dapat menyisipkan penanda ke dalam dokumen sebanyak yang Anda inginkan, lalu menavigasinya dengan mengidentifikasi penanda dengan nama unik. Anda dapat pindah ke bookmark dengan menggunakan metode [MoveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String-boolean-boolean).

Contoh kode berikut menunjukkan cara memindahkan posisi kursor ke bookmark:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmark-DocumentBuilderMoveToBookmark.java" >}}

### Arahkan ke Sel Tabel

Anda dapat pindah ke sel tabel dengan menggunakan metode [MoveToCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToCell-int-int-int-int). Metode ini akan memungkinkan Anda untuk mengarahkan kursor ke sel mana pun dalam tabel tertentu. Selain itu, Anda dapat menentukan indeks untuk memindahkan kursor ke posisi mana pun atau karakter tertentu dalam sel dalam metode **MoveToCell**.

Contoh kode berikut menunjukkan cara memindahkan posisi kursor ke sel tabel tertentu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToTableCell-DocumentBuilderMoveToTableCell.java" >}}

### Arahkan ke Bidang

Anda dapat memindahkan ke bidang tertentu di dokumen Anda dengan menggunakan metode [MoveToField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToField-com.aspose.words.Field-boolean). Selain itu, Anda dapat pindah ke bidang penggabungan tertentu dengan menggunakan metode [MoveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField-java.lang.String).

Contoh kode berikut menunjukkan cara memindahkan kursor pembuat dokumen ke bidang tertentu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToMergeField-DocumentBuilderMoveToMergeField.java" >}}

### Navigasikan ke Header atau Footer

Anda dapat berpindah ke awal header atau footer dengan menggunakan metode [MoveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int).

Contoh kode berikut menunjukkan cara memindahkan kursor pembuat dokumen ke header atau footer dokumen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderHeadersAndFooters-DocumentBuilderHeaderAndFooters.java" >}}

### Navigasikan ke Bagian atau Paragraf

Anda dapat berpindah ke bagian atau paragraf tertentu dengan menggunakan metode [MoveToParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToParagraph-int-int) atau [MoveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int). Selain itu, Anda dapat menentukan indeks untuk memindahkan kursor ke posisi mana pun atau karakter tertentu dalam paragraf dalam metode **MoveToParagraph**.

Contoh kode berikut menunjukkan cara berpindah ke bagian tertentu dan paragraf tertentu dalam dokumen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToSectionParagraph-DocumentBuilderMoveToSectionParagraph.java" >}}
