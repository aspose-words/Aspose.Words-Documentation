---
title: Bekerja dengan Bookmark di Python
second_title: Aspose.Words untuk Python via .NET
articleTitle: Bekerja dengan Bookmark
linktitle: Bekerja dengan Bookmark
description: "Cara menyisipkan, memperoleh, memindahkan, menampilkan atau menyembunyikan bookmark menggunakan Python."
type: docs
weight: 180
url: /id/python-net/working-with-bookmarks/
---

Bookmark mengidentifikasi dalam dokumen Microsoft Word lokasi atau fragmen yang Anda beri nama dan identifikasi untuk referensi di masa mendatang. Misalnya, Anda mungkin menggunakan penanda untuk mengidentifikasi teks yang ingin Anda revisi nanti. Daripada menelusuri dokumen untuk menemukan teks, Anda dapat membukanya dengan menggunakan kotak dialog Bookmark.

Tindakan yang dapat dilakukan dengan bookmark menggunakan Aspose.Words sama dengan tindakan yang dapat Anda lakukan menggunakan Microsoft Word. Anda dapat menyisipkan penanda baru, menghapus, memindahkan ke penanda, mendapatkan atau menetapkan nama penanda, mendapatkan atau mengatur teks yang disertakan di dalamnya. Dengan Aspose.Words, Anda juga dapat menggunakan penanda di laporan atau dokumen untuk menyisipkan beberapa data ke dalam penanda atau menerapkan pemformatan khusus pada kontennya. Anda juga dapat menggunakan penanda untuk mengambil teks dari lokasi tertentu di dokumen Anda.

## Masukkan Penanda

Gunakan [start_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/start_bookmark/) dan [end_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_bookmark/) untuk membuat bookmark dengan menandai awal dan akhir masing-masing. Jangan lupa untuk memberikan nama bookmark yang sama ke kedua metode. Penanda dalam dokumen bisa tumpang tindih dan menjangkau rentang apa pun. Bookmark yang bentuknya buruk atau bookmark dengan nama duplikat akan diabaikan saat dokumen disimpan.

{{% alert color="primary" %}}

Semua spasi di bookmark diganti dengan garis bawah. Pembatasan ini berasal dari format MS Word, karena bookmark dalam format MS Word, seperti DOCX atau DOC, tidak boleh memiliki spasi. Namun, PDF mengizinkan penanda seperti itu. Jadi sekarang, jika Anda perlu menggunakan bookmark dalam format PDF atau XPS, Anda dapat menggunakannya dengan spasi.

{{% /alert %}}

Contoh kode berikut menunjukkan cara membuat bookmark baru:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-CreateBookmark.py" >}}

## Dapatkan Bookmark

Terkadang perlu untuk mendapatkan koleksi bookmark untuk beralih melalui bookmark atau untuk tujuan lain. Gunakan properti [Node.range](https://reference.aspose.com/words/python-net/aspose.words/node/range/) yang diekspos oleh node dokumen apa pun yang mengembalikan objek [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) yang mewakili bagian dokumen yang terdapat dalam node ini. Gunakan objek ini untuk mengambil [BookmarkCollection](https://reference.aspose.com/words/python-net/aspose.words/bookmarkcollection/) dan kemudian gunakan pengindeks koleksi untuk mendapatkan bookmark tertentu.

{{% alert color="primary" %}}

Anda dapat mengunduh file contoh contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Bookmarks.docx).

{{% /alert %}}

Contoh kode berikut menunjukkan cara mendapatkan bookmark dari koleksi bookmark:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-AccessBookmarks.py" >}}

Contoh kode berikut menunjukkan cara mendapatkan atau mengatur nama dan teks bookmark:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-UpdateBookmarkData.py" >}}

Contoh kode berikut menunjukkan cara mem-bookmark tabel:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-BookmarkTable.py" >}}

Jika Anda mengubah nama penanda menjadi nama yang sudah ada di dokumen, tidak ada kesalahan yang akan terjadi dan hanya penanda pertama yang akan disimpan saat Anda menyimpan dokumen.

Perhatikan bahwa beberapa penanda dalam dokumen ditetapkan ke bidang formulir. Pindah ke bookmark tersebut dan memasukkan teks di sana akan memasukkan teks ke dalam kode bidang formulir. Meskipun hal ini tidak akan membuat kolom formulir menjadi tidak valid, teks yang disisipkan tidak akan terlihat karena menjadi bagian dari kode kolom.

Contoh kode berikut menunjukkan cara mengakses kolom tabel yang diberi bookmark:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-BookmarkTableColumns.py" >}}

## Pindah ke Penanda

Jika Anda perlu memasukkan konten yang kaya (bukan hanya teks biasa) ke dalam bookmark, Anda harus menggunakan [move_to_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_bookmark/) untuk memindahkan kursor ke bookmark dan kemudian menggunakan metode dan properti [DocumentBuilder's](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) untuk memasukkan konten.

## Tampilkan Sembunyikan Konten Bookmark

Seluruh Bookmark (*termasuk konten yang di-bookmark*) dapat dienkapsulasi dalam bagian True pada bidang `IF` menggunakan Aspose.Words. Bisa jadi bidang `IF` berisi Bidang Gabungan yang disarangkan dalam ekspresi (*Kiri Operator*) dan bergantung pada nilai Bidang Gabungan, bidang `IF` memperlihatkan atau menyembunyikan konten Bookmark di Dokumen Word.

Contoh kode berikut menunjukkan cara menampilkan/menyembunyikan bookmark:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-ShowHideBookmarks.py" >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-ShowHideBookmarkedContent.py" >}}
