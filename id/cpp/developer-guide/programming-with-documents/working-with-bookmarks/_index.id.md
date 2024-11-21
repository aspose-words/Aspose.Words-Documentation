---
title: Bekerja dengan Bookmark di C++
second_title: Aspose.Words untuk C++
articleTitle: Bekerja dengan Bookmark
linktitle: Bekerja dengan Bookmark
description: "Memahami konsep bookmark dan bagaimana bookmark dapat digunakan dalam program Anda menggunakan C++."
type: docs
weight: 180
url: /id/cpp/working-with-bookmarks/
timestamp: 2024-01-27-14-07-04
---

Penanda mengidentifikasi dalam dokumen Microsoft Word lokasi atau fragmen yang Anda beri nama dan identifikasi untuk referensi di masa mendatang. Misalnya, Anda dapat menggunakan penanda untuk mengidentifikasi teks yang ingin Anda revisi nanti. Alih-alih menggulir dokumen untuk menemukan teks, Anda dapat membukanya dengan menggunakan kotak dialog Bookmark.

Tindakan yang dapat dilakukan dengan penanda menggunakan Aspose.Words sama dengan tindakan yang dapat Anda lakukan menggunakan Microsoft Word. Anda dapat menyisipkan bookmark baru, menghapus, memindahkan ke bookmark, mendapatkan atau menyetel nama bookmark, mendapatkan atau menyetel teks yang terlampir di dalamnya. Dengan Aspose.Words, Anda juga dapat menggunakan penanda di laporan atau dokumen untuk menyisipkan beberapa data ke dalam penanda atau menerapkan pemformatan khusus pada kontennya. Anda juga dapat menggunakan penanda untuk mengambil teks dari lokasi tertentu di dokumen Anda.

## Sisipkan Penanda Buku

Gunakan [StartBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/startbookmark/) dan [EndBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endbookmark/) untuk membuat bookmark dengan menandai awal dan akhir masing-masing. Jangan lupa untuk meneruskan nama bookmark yang sama ke kedua metode. Penanda dalam dokumen dapat tumpang tindih dan menjangkau rentang apa pun. Bookmark atau bookmark yang terbentuk dengan buruk dengan nama duplikat akan diabaikan saat dokumen disimpan.

Contoh kode berikut menunjukkan cara membuat bookmark baru:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-CreateBookmark-CreateBookmark.cpp" >}}

## Dapatkan Bookmark

Kadang-kadang perlu untuk mendapatkan koleksi bookmark untuk beralih melalui bookmark atau untuk tujuan lain. Gunakan properti [Node.Range](https://reference.aspose.com/words/cpp/aspose.words/node/get_range/) yang diekspos oleh simpul dokumen apa pun yang mengembalikan objek [Range](https://reference.aspose.com/words/cpp/aspose.words/range/) yang mewakili bagian dokumen yang terdapat dalam simpul ini. Gunakan objek ini untuk mengambil [BookmarkCollection](https://reference.aspose.com/words/cpp/aspose.words/bookmarkcollection/) lalu gunakan pengindeks koleksi untuk mendapatkan penanda tertentu.

Contoh kode berikut menunjukkan cara mendapatkan bookmark dari koleksi bookmark:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-AccessBookmarks-AccessBookmarks.cpp" >}}

Contoh kode berikut menunjukkan cara mendapatkan atau menyetel nama dan teks bookmark:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-BookmarkNameAndText-BookmarkNameAndText.cpp" >}}

Contoh kode berikut menunjukkan cara menandai tabel:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-BookmarkTable-BookmarkTable.cpp" >}}

Jika Anda mengubah nama penanda menjadi nama yang sudah ada di dokumen, tidak akan ada kesalahan dan hanya penanda pertama yang akan disimpan saat Anda menyimpan dokumen.

{{% alert color="primary" %}}

Perhatikan bahwa beberapa penanda dalam dokumen ditetapkan ke bidang formulir. Pindah ke bookmark seperti itu dan menyisipkan teks di sana menyisipkan teks ke dalam kode bidang formulir. Meskipun ini tidak akan membatalkan bidang formulir, teks yang disisipkan tidak akan terlihat karena menjadi bagian dari kode bidang.

{{% /alert %}}

## Pindah ke Bookmark

Jika Anda perlu menyisipkan konten kaya (bukan hanya teks biasa) ke dalam bookmark, Anda harus menggunakan [MoveToBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetobookmark/) untuk memindahkan kursor ke bookmark, lalu menggunakan metode dan properti [DocumentBuilder's](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) untuk menyisipkan konten.

## Tampilkan Sembunyikan Konten Bookmark

Seluruh Penanda (*including the bookmarked content*) dapat dienkapsulasi dalam bagian Sebenarnya dari bidang `IF` menggunakan Aspose.Words. Bisa sedemikian rupa sehingga bidang `IF` berisi Bidang Penggabungan bersarang di ekspresi (*Left of Operator*) dan bergantung pada nilai Bidang Penggabungan, bidang `IF` menampilkan atau menyembunyikan konten Bookmark di Dokumen Word.

Contoh kode berikut menunjukkan cara menampilkan / menyembunyikan bookmark:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-ShowHideBookmarks-ShowHideBookmarks.cpp" >}}
