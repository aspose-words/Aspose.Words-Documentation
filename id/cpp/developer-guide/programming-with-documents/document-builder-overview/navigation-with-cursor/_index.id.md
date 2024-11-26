---
title: Navigasi dengan Kursor di C++
second_title: Aspose.Words untuk C++
articleTitle: Navigasi dengan Kursor
linktitle: Navigasi dengan Kursor
description: "Bernavigasi di antara node yang berbeda dalam dokumen, seperti paragraf, bookmark, atau karakter tertentu menggunakan C++."
type: docs
weight: 10
url: /id/cpp/navigation-with-cursor/
timestamp: 2024-01-27-14-07-04
---

Saat bekerja dengan dokumen, meskipun dokumen itu pendek atau panjang, Anda perlu menavigasi dokumen Anda. Navigasi dengan kursor virtual mewakili kemampuan untuk bernavigasi di antara node yang berbeda dalam sebuah dokumen.

Dalam dokumen singkat, bergerak di sekitar dokumen menjadi sederhana karena Anda dapat memindahkan titik penyisipan bahkan dengan menggunakan tombol panah keyboard atau dengan mengklik mouse untuk menemukan titik penyisipan di mana pun Anda inginkan. Tetapi begitu Anda memiliki dokumen besar yang memiliki banyak halaman, teknik dasar ini tidak akan cukup.

Artikel ini menjelaskan cara berpindah-pindah dalam dokumen dan menavigasi dengan kursor virtual ke berbagai bagiannya.

## Mendeteksi Posisi Kursor Saat Ini

Sebelum memulai proses menavigasi dokumen Anda, Anda harus mendapatkan simpul yang saat ini dipilih. Anda bisa mendapatkan posisi kursor yang tepat pada simpul yang dipilih dengan menggunakan properti [CurrentNode](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_currentnode/). Selain itu, alih-alih mendapatkan simpul saat ini, Anda bisa mendapatkan paragraf yang saat ini dipilih atau bagian yang saat ini dipilih dengan menggunakan properti [CurrentParagraph](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_currentparagraph/) dan [CurrentSection](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_currentsection/).

Setiap operasi penyisipan yang Anda lakukan menggunakan [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) akan disisipkan sebelum [CurrentNode](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_currentnode/). Saat paragraf saat ini kosong atau kursor diposisikan tepat sebelum akhir paragraf, **CurrentNode** mengembalikan nullptr.

## Menavigasi Metode dalam Dokumen

Saat Anda mengedit teks, penting untuk mengetahui cara menavigasi dokumen Anda dan ke mana tepatnya harus memindahkannya. Aspose.Words memungkinkan Anda berpindah-pindah dalam dokumen dan menavigasi ke bagian dan bagiannya yang berbeda-ini mirip dengan fungsionalitas Panel Navigasi di Microsoft Word untuk membuka halaman atau judul dalam dokumen Word tanpa menggulir.

Metode utamanya adalah dapat memindahkan posisi kursor ke simpul tertentu di dokumen Anda, Anda dapat mencapainya dengan menggunakan metode [MoveTo](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/moveto/).

Contoh kode berikut menunjukkan cara memindahkan **DocumentBuilder** ke node yang berbeda dalam dokumen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToNode.cpp" >}}

Tetapi selain metode dasar **MoveTo**, ada metode yang lebih spesifik.

### Navigasikan ke Awal atau Akhir Dokumen

Anda dapat pergi ke awal atau akhir dokumen Anda menggunakan metode [MoveToDocumentStart](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetodocumentstart/) dan [MoveToDocumentEnd](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetodocumentend/).

Contoh kode berikut menunjukkan cara memindahkan posisi kursor ke awal atau akhir dokumen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToDocumentStartEnd.cpp" >}}

### Navigasi dengan Bookmark

Anda dapat menandai tempat yang ingin Anda temukan dan memindahkannya lagi dengan mudah. Anda dapat menyisipkan penanda ke dalam dokumen sebanyak yang Anda inginkan, lalu menavigasinya dengan mengidentifikasi penanda dengan nama unik. Anda dapat pindah ke bookmark dengan menggunakan metode [MoveToBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetobookmark/).

Contoh kode berikut menunjukkan cara memindahkan posisi kursor ke bookmark:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmark.cpp" >}}

### Arahkan ke Sel Tabel

Anda dapat pindah ke sel tabel dengan menggunakan metode [MoveToCell](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetocell/). Metode ini akan memungkinkan Anda untuk mengarahkan kursor ke sel mana pun dalam tabel tertentu. Selain itu, Anda dapat menentukan indeks untuk memindahkan kursor ke posisi mana pun atau karakter tertentu dalam sel dalam metode **MoveToCell**.

Contoh kode berikut menunjukkan cara memindahkan posisi kursor ke sel tabel tertentu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToTableCell.cpp" >}}

### Arahkan ke Bidang

Anda dapat memindahkan ke bidang tertentu di dokumen Anda dengan menggunakan metode [MoveToField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetofield/). Selain itu, Anda dapat pindah ke bidang penggabungan tertentu dengan menggunakan metode [MoveToMergeField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetomergefield/).

Contoh kode berikut menunjukkan cara memindahkan kursor pembuat dokumen ke bidang tertentu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToMergeField.cpp" >}}

### Navigasikan ke Header atau Footer

Anda dapat berpindah ke awal header atau footer dengan menggunakan metode [MoveToHeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetoheaderfooter/).

Contoh kode berikut menunjukkan cara memindahkan kursor pembuat dokumen ke header atau footer dokumen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderHeadersAndFooters.cpp" >}}

### Navigasikan ke Bagian atau Paragraf

Anda dapat berpindah ke bagian atau paragraf tertentu dengan menggunakan metode [MoveToParagraph](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetoparagraph/) atau [MoveToSection](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetosection/). Selain itu, Anda dapat menentukan indeks untuk memindahkan kursor ke posisi mana pun atau karakter tertentu dalam paragraf dalam metode **MoveToParagraph**.

Contoh kode berikut menunjukkan cara berpindah ke bagian tertentu dan paragraf tertentu dalam dokumen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToSectionParagraph.cpp" >}}
