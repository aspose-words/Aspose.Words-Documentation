---
title: Navigasi dengan Kursor di C#
second_title: Aspose.Words untuk .NET
articleTitle: Navigasi dengan Kursor
linktitle: Navigasi dengan Kursor
description: "Menavigasi antar node berbeda dalam dokumen, seperti paragraf, bookmark, atau karakter tertentu menggunakan C#."
type: docs
weight: 10
url: /id/net/navigation-with-cursor/
---

Saat bekerja dengan sebuah dokumen, meskipun pendek atau panjang, Anda perlu menavigasi dokumen Anda. Navigasi dengan kursor virtual mewakili kemampuan untuk bernavigasi di antara berbagai node dalam dokumen.

Dalam dokumen pendek, berpindah-pindah dokumen sangatlah mudah karena Anda dapat memindahkan titik penyisipan bahkan dengan menggunakan tombol panah pada keyboard atau dengan mengklik mouse untuk menemukan titik penyisipan di mana pun Anda inginkan. Namun begitu Anda memiliki dokumen besar yang memiliki banyak halaman, teknik dasar ini tidak akan cukup.

Artikel ini menjelaskan cara berpindah dalam dokumen dan menavigasi dengan kursor virtual ke berbagai bagian dokumen.

## Mendeteksi Posisi Kursor Saat Ini

Sebelum memulai proses navigasi dokumen Anda, Anda perlu mendapatkan node yang sedang dipilih. Anda bisa mendapatkan posisi kursor yang tepat pada node yang dipilih dengan menggunakan properti [CurrentNode](https://reference.aspose.com/words/net/aspose.words/documentbuilder/currentnode/). Selain itu, alih-alih mendapatkan simpul saat ini, Anda bisa mendapatkan paragraf yang dipilih saat ini atau bagian yang dipilih saat ini dengan menggunakan properti [CurrentParagraph](https://reference.aspose.com/words/net/aspose.words/documentbuilder/currentparagraph/) dan [CurrentSection](https://reference.aspose.com/words/net/aspose.words/documentbuilder/currentsection/).

Setiap operasi penyisipan yang Anda lakukan menggunakan [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) akan disisipkan sebelum [CurrentNode](https://reference.aspose.com/words/net/aspose.words/documentbuilder/currentnode/). Ketika paragraf saat ini kosong atau kursor diposisikan tepat sebelum akhir paragraf, **CurrentNode** akan mengembalikan null.

## Menavigasi Metode dalam Dokumen

Saat Anda mengedit teks, penting untuk mengetahui cara menavigasi dokumen Anda dan ke mana tepatnya harus memindahkannya. Aspose.Words memungkinkan Anda berpindah-pindah dalam dokumen dan menavigasi ke berbagai bagian dan bagian – ini mirip dengan fungsi Panel Navigasi di Microsoft Word untuk membuka halaman atau judul di dokumen Word tanpa menggulir.

Cara utamanya adalah dengan dapat memindahkan posisi kursor ke node tertentu di dokumen Anda, Anda dapat melakukannya dengan menggunakan metode [MoveTo](https://reference.aspose.com/words/net/aspose.words/documentbuilder/moveto/).

Contoh kode berikut menunjukkan cara memindahkan **DocumentBuilder** ke node berbeda dalam dokumen:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToNode.cs" >}}

Namun selain metode **MoveTo** dasar, ada metode yang lebih spesifik.

### Navigasi ke Awal atau Akhir Dokumen

Anda dapat menuju ke awal atau akhir dokumen Anda menggunakan metode [MoveToDocumentStart](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetodocumentstart/) dan [MoveToDocumentEnd](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetodocumentend/).

Contoh kode berikut menunjukkan cara memindahkan posisi kursor ke awal atau akhir dokumen:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToDocumentStartEnd.cs" >}}

### Navigasi Dengan Bookmark

Anda dapat menandai tempat yang ingin Anda temukan dan memindahkannya kembali dengan mudah. Anda dapat menyisipkan penanda ke dalam dokumen sebanyak yang Anda inginkan, lalu menavigasinya dengan mengidentifikasi penanda dengan nama unik. Anda dapat berpindah ke bookmark dengan menggunakan metode [MoveToBookmark](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetobookmark/#movetobookmark/).

Contoh kode berikut menunjukkan cara memindahkan posisi kursor ke bookmark:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToBookmark.cs" >}}

### Navigasi ke Sel Tabel

Anda dapat berpindah ke sel tabel dengan menggunakan metode [MoveToCell](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetocell/). Metode ini memungkinkan Anda menavigasi kursor ke sel mana pun di tabel tertentu. Selain itu, Anda dapat menentukan indeks untuk memindahkan kursor ke posisi atau karakter tertentu dalam sel dalam metode **MoveToCell**.

Contoh kode berikut menunjukkan cara memindahkan posisi kursor ke sel tabel tertentu:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToTableCell.cs" >}}

### Navigasi ke Bidang

Anda dapat berpindah ke bidang tertentu di dokumen Anda dengan menggunakan metode [MoveToField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetofield/). Selain itu, Anda dapat berpindah ke bidang gabungan tertentu dengan menggunakan metode [MoveToMergeField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetomergefield/#movetomergefield/).

Contoh kode berikut menunjukkan cara memindahkan kursor pembuat dokumen ke bidang tertentu:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToMergeField.cs" >}}

### Navigasi ke Header atau Footer

Anda dapat berpindah ke awal header atau footer dengan menggunakan metode [MoveToHeaderFooter](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetoheaderfooter/)

Contoh kode berikut menunjukkan cara memindahkan kursor pembuat dokumen ke header atau footer dokumen:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToHeadersFooters.cs" >}}

### Navigasi ke Bagian atau Paragraf

Anda dapat berpindah ke bagian atau paragraf tertentu dengan menggunakan metode [MoveToParagraph](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetoparagraph/) atau [MoveToSection](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetosection/). Selain itu, Anda dapat menentukan indeks untuk memindahkan kursor ke posisi mana pun atau karakter tertentu dalam paragraf dalam metode **MoveToParagraph**.

Contoh kode berikut menunjukkan cara berpindah ke bagian tertentu dan paragraf tertentu dalam dokumen:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToSection.cs" >}}
