---
title: Bekerja dengan Bookmark di C#
second_title: Aspose.Words untuk .NET
articleTitle: Bekerja dengan Bookmark
linktitle: Bekerja dengan Bookmark
description: "Memahami konsep bookmark dan bagaimana bookmark dapat digunakan dalam program Anda menggunakan C#."
type: docs
weight: 180
url: /id/net/working-with-bookmarks/
timestamp: 2024-01-27-14-07-04
---

Bookmark mengidentifikasi dalam dokumen Microsoft Word lokasi atau fragmen yang Anda beri nama dan identifikasi untuk referensi di masa mendatang. Misalnya, Anda mungkin menggunakan penanda untuk mengidentifikasi teks yang ingin Anda revisi nanti. Daripada menelusuri dokumen untuk menemukan teks, Anda dapat membukanya dengan menggunakan kotak dialog Bookmark.

Tindakan yang dapat dilakukan dengan bookmark menggunakan Aspose.Words sama dengan tindakan yang dapat Anda lakukan menggunakan Microsoft Word. Anda dapat menyisipkan penanda baru, menghapus, memindahkan ke penanda, mendapatkan atau menetapkan nama penanda, mendapatkan atau mengatur teks yang disertakan di dalamnya.

## Masukkan Penanda

Gunakan [StartBookmark](https://reference.aspose.com/words/net/aspose.words/documentbuilder/startbookmark/) dan [EndBookmark](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endbookmark/) untuk membuat bookmark dengan menandai awal dan akhir masing-masing. Jangan lupa untuk memberikan nama bookmark yang sama ke kedua metode. Penanda dalam dokumen bisa tumpang tindih dan menjangkau rentang apa pun. Bookmark yang bentuknya buruk atau bookmark dengan nama duplikat akan diabaikan saat dokumen disimpan.

{{% alert color="primary" %}}

Semua spasi di bookmark diganti dengan garis bawah. Pembatasan ini berasal dari format Microsoft Word, karena bookmark dalam format Word seperti DOCX atau DOC tidak boleh memiliki spasi putih. Namun, PDF mengizinkan penanda seperti itu. Jadi sekarang, jika Anda perlu menggunakan bookmark dalam format PDF atau XPS, Anda dapat menggunakannya dengan spasi.

{{% /alert %}}

Contoh kode berikut menunjukkan cara membuat bookmark baru:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-CreateBookmark-CreateBookmark.cs" >}}

## Dapatkan Bookmark

Terkadang perlu untuk mendapatkan koleksi bookmark untuk beralih melalui bookmark atau untuk tujuan lain. Gunakan properti [Node.Range](https://reference.aspose.com/words/net/aspose.words/node/range/) yang diekspos oleh node dokumen apa pun yang mengembalikan objek [Range](https://reference.aspose.com/words/net/aspose.words/range/) yang mewakili bagian dokumen yang terdapat dalam node ini. Gunakan objek ini untuk mengambil [BookmarkCollection](https://reference.aspose.com/words/net/aspose.words/bookmarkcollection/) dan kemudian gunakan pengindeks koleksi untuk mendapatkan bookmark tertentu.

Contoh kode berikut menunjukkan cara mendapatkan bookmark dari koleksi bookmark:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-AccessBookmarks-AccessBookmarks.cs" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file contoh contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Bookmarks.docx).

{{% /alert %}}


Contoh kode berikut menunjukkan cara mendapatkan atau mengatur nama dan teks bookmark:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-BookmarkNameAndText-BookmarkNameAndText.cs" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file contoh contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Bookmarks.docx).

{{% /alert %}}

Contoh kode berikut menunjukkan cara mem-bookmark tabel:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-BookmarkTable-BookmarkTable.cs" >}}

Jika Anda mengubah nama penanda menjadi nama yang sudah ada di dokumen, tidak ada kesalahan yang akan terjadi dan hanya penanda pertama yang akan disimpan saat Anda menyimpan dokumen.

Perhatikan bahwa beberapa penanda dalam dokumen ditetapkan ke bidang formulir. Pindah ke bookmark tersebut dan memasukkan teks di sana akan memasukkan teks ke dalam kode bidang formulir. Meskipun hal ini tidak akan membuat kolom formulir menjadi tidak valid, teks yang disisipkan tidak akan terlihat karena menjadi bagian dari kode kolom.

Contoh kode berikut menunjukkan cara mengakses kolom tabel yang diberi bookmark:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-BookmarkTable-BookmarkTableColumns.cs" >}}

## Pindah ke Penanda

Jika Anda perlu memasukkan konten yang kaya (bukan hanya teks biasa) ke dalam bookmark, Anda harus menggunakan [MoveToBookmark](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetobookmark/) untuk memindahkan kursor ke bookmark dan kemudian menggunakan metode dan properti [DocumentBuilder's](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) untuk memasukkan konten.

## Tampilkan Sembunyikan Konten Bookmark

Seluruh Bookmark (*termasuk konten yang di-bookmark*) dapat dienkapsulasi dalam bagian True pada bidang `IF` menggunakan Aspose.Words. Bisa jadi bidang `IF` berisi Bidang Gabungan yang disarangkan dalam ekspresi (*Kiri Operator*) dan bergantung pada nilai Bidang Gabungan, bidang `IF` memperlihatkan atau menyembunyikan konten Bookmark di Dokumen Word.

Contoh kode berikut menunjukkan cara menampilkan/menyembunyikan bookmark:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-ShowHideBookmarks-ShowHideBookmarks_call.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-ShowHideBookmarks-ShowHideBookmarks.cs" >}}
