---
title: Navigasi dengan Kursor di Python
second_title: Aspose.Words untuk Python via .NET
articleTitle: Navigasi dengan Kursor
linktitle: Navigasi dengan Kursor
description: "Menavigasi antar node berbeda dalam dokumen seperti paragraf, bookmark, atau karakter tertentu menggunakan Python."
type: docs
weight: 10
url: /id/python-net/navigation-with-cursor/
timestamp: 2024-01-27-14-07-04
---

Saat bekerja dengan dokumen, meskipun pendek atau panjang, Anda perlu menavigasi dokumen Anda. Navigasi dengan kursor virtual mewakili kemampuan untuk bernavigasi di antara berbagai node dalam dokumen.

Dalam dokumen pendek, berpindah-pindah dokumen sangatlah mudah karena Anda dapat memindahkan titik penyisipan bahkan dengan menggunakan tombol panah pada keyboard atau dengan mengklik mouse untuk menemukan titik penyisipan di mana pun Anda inginkan. Namun begitu Anda memiliki dokumen besar yang memiliki banyak halaman, teknik dasar ini tidak akan cukup.

Artikel ini menjelaskan cara berpindah dalam dokumen dan menavigasi dengan kursor virtual ke berbagai bagian dokumen.

## Mendeteksi Posisi Kursor Saat Ini

Sebelum memulai proses navigasi dokumen Anda, Anda perlu mendapatkan node yang sedang dipilih. Anda bisa mendapatkan posisi kursor yang tepat pada node yang dipilih dengan menggunakan properti [current_node](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_node/). Selain itu, alih-alih mendapatkan simpul saat ini, Anda bisa mendapatkan paragraf yang dipilih saat ini atau bagian yang dipilih saat ini dengan menggunakan properti [current_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_paragraph/) dan [current_section](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_section/).

Setiap operasi penyisipan yang Anda lakukan menggunakan [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) akan disisipkan sebelum [current_node](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_node/). Ketika paragraf saat ini kosong atau kursor diposisikan tepat sebelum akhir paragraf, [current_node](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_node/) mengembalikan Tidak Ada.

## Menavigasi Metode dalam Dokumen

Saat Anda mengedit teks, penting untuk mengetahui cara menavigasi dokumen Anda dan ke mana tepatnya harus memindahkannya. Aspose.Words memungkinkan Anda berpindah-pindah dalam dokumen dan menavigasi ke berbagai bagian dan bagian – ini mirip dengan fungsi Panel Navigasi di Microsoft Word untuk membuka halaman atau judul di dokumen Word tanpa menggulir.

Cara utamanya adalah dengan dapat memindahkan posisi kursor ke node tertentu di dokumen Anda, Anda dapat melakukannya dengan menggunakan metode [move_to](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to/).

Contoh kode berikut menunjukkan cara memindahkan [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) ke node berbeda dalam dokumen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToNode.py" >}}

Namun selain metode [move_to](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to/) dasar, ada metode yang lebih spesifik.

### Navigasi ke Awal atau Akhir Dokumen

Anda dapat menuju ke awal atau akhir dokumen Anda menggunakan metode [move_to_document_start](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_document_start/) dan [move_to_document_end](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_document_end/).

Contoh kode berikut menunjukkan cara memindahkan posisi kursor ke awal atau akhir dokumen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToDocumentStartEnd.py" >}}

### Navigasi Dengan Bookmark

Anda dapat menandai tempat yang ingin Anda temukan dan memindahkannya kembali dengan mudah. Anda dapat menyisipkan penanda ke dalam dokumen sebanyak yang Anda inginkan, lalu menavigasinya dengan mengidentifikasi penanda dengan nama unik. Anda dapat berpindah ke bookmark dengan menggunakan metode [move_to_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_bookmark/).

Contoh kode berikut menunjukkan cara memindahkan posisi kursor ke bookmark:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToBookmark.py" >}}

### Navigasi ke Sel Tabel

Anda dapat berpindah ke sel tabel dengan menggunakan metode [move_to_cell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_cell/). Metode ini memungkinkan Anda menavigasi kursor ke sel mana pun di tabel tertentu. Selain itu, Anda dapat menentukan indeks untuk memindahkan kursor ke posisi atau karakter tertentu dalam sel dalam metode [move_to_cell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_cell/).

Contoh kode berikut menunjukkan cara memindahkan posisi kursor ke sel tabel tertentu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToTableCell.py" >}}

### Navigasi ke Bidang

Anda dapat berpindah ke bidang tertentu di dokumen Anda dengan menggunakan metode [move_to_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_field/). Selain itu, Anda dapat berpindah ke bidang gabungan tertentu dengan menggunakan metode [move_to_merge_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_merge_field/).

Contoh kode berikut menunjukkan cara memindahkan kursor pembuat dokumen ke bidang tertentu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToMergeField.py" >}}

### Navigasi ke Header atau Footer

Anda dapat berpindah ke awal header atau footer dengan menggunakan metode [move_to_header_footer](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_header_footer/)

Contoh kode berikut menunjukkan cara memindahkan kursor pembuat dokumen ke header atau footer dokumen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToHeadersFooters.py" >}}

### Navigasi ke Bagian atau Paragraf

Anda dapat berpindah ke bagian atau paragraf tertentu dengan menggunakan metode [move_to_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_paragraph/) atau [move_to_section](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_section/). Selain itu, Anda dapat menentukan indeks untuk memindahkan kursor ke posisi mana pun atau karakter tertentu dalam paragraf dalam metode [move_to_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_paragraph/).

Contoh kode berikut menunjukkan cara berpindah ke bagian tertentu dan paragraf tertentu dalam dokumen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToSection.py" >}}
