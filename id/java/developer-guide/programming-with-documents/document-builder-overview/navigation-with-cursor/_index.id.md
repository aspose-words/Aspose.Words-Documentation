---
title: Navigasi dengan Cursor di Java
second_title: Aspose.Words Sitemap Java
articleTitle: Navigasi dengan Cursor
linktitle: Navigasi dengan Cursor
description: "Navigasi antara node yang berbeda dalam dokumen, seperti paragraf, bookmark, atau karakter tertentu menggunakan JavaSitemap"
type: docs
weight: 5
url: /id/java/navigation-with-cursor/
---

Meskipun bekerja dengan dokumen, bahkan jika itu adalah yang singkat atau panjang, Anda harus menavigasi melalui dokumen Anda. Navigasi dengan kursor virtual mewakili kemampuan untuk menavigasi antara node yang berbeda dalam dokumen.

Dalam dokumen singkat, bergerak di sekitar dokumen sederhana seperti Anda dapat memindahkan titik penyisipan bahkan dengan menggunakan tombol panah keyboard atau dengan mengklik mouse untuk menemukan titik penyisipan di mana pun Anda inginkan. Tapi setelah Anda memiliki dokumen besar yang memiliki banyak halaman, teknik dasar ini tidak akan mencukupi.

Artikel ini menjelaskan cara bergerak di sekitar dokumen dan menavigasi dengan kursor virtual ke bagian yang berbeda.

## Mendeteksi Posisi Cursor Saat Ini

Sebelum memulai proses navigasi melalui dokumen Anda, Anda harus mendapatkan node yang saat ini dipilih. Anda bisa mendapatkan posisi yang tepat dari kursor pada node yang dipilih dengan menggunakan [CurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentNode) Login Selain itu, bukan mendapatkan node saat ini, Anda bisa mendapatkan paragraf yang dipilih saat ini atau bagian yang dipilih saat ini dengan menggunakan [CurrentParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentParagraph) Login [CurrentSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentSection) Sitemap

Setiap operasi insert yang Anda lakukan menggunakan [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) akan dimasukkan sebelum [CurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#CurrentNode)Sitemap Ketika paragraf saat ini kosong atau kursor diposisikan hanya sebelum akhir paragraf, **CurrentNode** kembali null.

## Metode Navigasi dalam Dokumen

Ketika Anda mengedit teks, penting untuk mengetahui cara menavigasi dokumen Anda dan di mana persis bergerak di dalamnya. Aspose.Words memungkinkan Anda untuk bergerak di sekitar dokumen dan arahkan ke bagian dan bagian yang berbeda - ini mirip dengan fungsi Navigasi Pane di Microsoft Word untuk pergi ke halaman atau menuju dokumen Word tanpa gulir.

Metode utama adalah dapat memindahkan posisi kursor ke node tertentu dalam dokumen Anda, Anda dapat mencapai ini dengan menggunakan [MoveTo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveTo-com.aspose.words.Node) Login

Contoh kode berikut menunjukkan cara memindahkan **DocumentBuilder** untuk node yang berbeda dalam dokumen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToNode-DocumentBuilderMoveToNode.java" >}}

Tapi selain dasar **MoveTo** metode, ada yang lebih spesifik.

### Menjelajahi Awal atau Akhir Dokumen

Anda dapat pergi ke awal atau akhir dokumen Anda menggunakan [MoveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart) Login [MoveToDocumentEnd](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentEnd) Login

Contoh kode berikut menunjukkan cara memindahkan posisi kursor ke awal atau akhir dokumen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToDocumentStartEnd-DocumentBuilderMoveToDocumentStartEnd.java" >}}

### Navigasi Dengan Bookmarks

Anda dapat menandai tempat yang ingin Anda temukan dan pindah kenya lagi dengan mudah. Anda dapat memasukkan banyak bookmark ke dokumen Anda seperti yang Anda inginkan, dan kemudian menavigasi melalui mereka dengan mengidentifikasi bookmark dengan nama unik. Anda dapat pindah ke bookmark dengan menggunakan [MoveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String-boolean-boolean) Login

Contoh kode berikut menunjukkan cara memindahkan posisi kursor ke bookmark:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmark-DocumentBuilderMoveToBookmark.java" >}}

### Navigasi ke Sel Meja

Anda dapat pindah ke sel meja dengan menggunakan [MoveToCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToCell-int-int-int-int) Login Metode ini akan memungkinkan Anda untuk menavigasi kursor Anda ke dalam sel tertentu. Selain itu, Anda dapat menentukan indeks untuk memindahkan kursor ke posisi apa pun atau karakter yang ditentukan dalam sel dalam **MoveToCell** Login

Contoh kode berikut menunjukkan cara memindahkan posisi kursor ke sel tabel yang ditentukan:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToTableCell-DocumentBuilderMoveToTableCell.java" >}}

### Navigasi ke Lapangan

Anda dapat pindah ke bidang tertentu dalam dokumen Anda dengan menggunakan [MoveToField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToField-com.aspose.words.Field-boolean) Login Selain itu, Anda dapat bergerak ke bidang merge tertentu dengan menggunakan [MoveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField-java.lang.String) Login

Contoh kode berikut menunjukkan cara memindahkan kursor pembangun dokumen ke bidang tertentu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToMergeField-DocumentBuilderMoveToMergeField.java" >}}

### Navigasi ke Header atau Footer

Anda dapat pindah ke awal header atau footer dengan menggunakan [MoveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int) Login

Contoh kode berikut menunjukkan cara memindahkan kursor pembangun dokumen ke header dokumen atau footer:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderHeadersAndFooters-DocumentBuilderHeaderAndFooters.java" >}}

### Navigasi ke Bagian atau Paragraf

Anda dapat pindah ke bagian atau paragraf tertentu dengan menggunakan [MoveToParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToParagraph-int-int) Sitemap [MoveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int) Login Selain itu, Anda dapat menentukan indeks untuk memindahkan kursor ke posisi atau karakter tertentu dalam paragraf dalam **MoveToParagraph** Login

Contoh kode berikut menunjukkan cara bergerak ke bagian tertentu dan paragraf tertentu dalam dokumen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToSectionParagraph-DocumentBuilderMoveToSectionParagraph.java" >}}
