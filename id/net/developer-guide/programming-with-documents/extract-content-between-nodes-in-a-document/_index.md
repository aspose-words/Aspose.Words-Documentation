---
title: Cara Mengekstrak Konten Antar Node Dokumen
second_title: Aspose.Words untuk .NET
articleTitle: Ekstrak Konten Antar Node dalam Dokumen
linktitle: Ekstrak Konten Antar Node
description: "Mengekstrak konten dokumen secara berbeda menggunakan C#."
type: docs
weight: 140
url: /id/net/how-to-extract-selected-content-between-nodes-in-a-document/
---

Saat bekerja dengan dokumen, penting untuk dapat dengan mudah mengekstraksi konten dari rentang tertentu dalam dokumen. Namun, kontennya mungkin terdiri dari elemen kompleks seperti paragraf, tabel, gambar, dll.

Terlepas dari konten apa yang perlu diekstraksi, metode untuk mengekstrak konten tersebut akan selalu ditentukan oleh node mana yang dipilih untuk mengekstrak konten. Ini bisa berupa keseluruhan isi teks atau rangkaian teks sederhana.

Ada banyak kemungkinan situasi dan oleh karena itu banyak jenis node berbeda yang perlu dipertimbangkan saat mengekstraksi konten. Misalnya, Anda mungkin ingin mengekstrak konten antara:

- Dua paragraf tertentu
- Rangkaian teks tertentu
- Bidang dari berbagai jenis, seperti bidang gabungan
- Rentang awal dan akhir bookmark atau komentar
- Berbagai badan teks terdapat dalam bagian terpisah

Dalam beberapa situasi, Anda bahkan mungkin perlu menggabungkan tipe simpul yang berbeda, seperti mengekstraksi konten antara paragraf dan bidang, atau antara eksekusi dan bookmark.

Artikel ini menyediakan implementasi kode untuk mengekstraksi teks antara node yang berbeda, serta contoh skenario umum.

{{% alert color="primary" %}}

Contoh-contoh ini hanyalah beberapa contoh dari banyak kemungkinan. Kami berencana agar fungsi ekstraksi teks menjadi bagian dari API publik di masa mendatang, dan tidak diperlukan kode tambahan. Sementara itu, jangan ragu untuk mengirimkan permintaan Anda mengenai fungsi ini di [forum Aspose.Words](https://forum.aspose.com/c/words/8).

{{% /alert %}}

## Mengapa Mengekstrak Konten

Seringkali tujuan mengekstraksi konten adalah untuk menduplikasi atau menyimpannya secara terpisah di dokumen baru. Misalnya, Anda dapat mengekstrak konten dan:

- Salin ke dokumen terpisah
- Konversi bagian tertentu dari dokumen ke PDF atau gambar
- Gandakan konten dalam dokumen berkali-kali
- Bekerja dengan konten yang diekstraksi terpisah dari dokumen lainnya

Hal ini dapat dicapai dengan mudah menggunakan Aspose.Words dan implementasi kode di bawah ini.

## Mengekstraksi Algoritma Konten

Kode di bagian ini membahas semua kemungkinan situasi yang dijelaskan di atas dengan satu metode umum dan dapat digunakan kembali. Garis besar umum teknik ini meliputi:

1. Mengumpulkan node yang menentukan area konten yang akan diekstraksi dari dokumen Anda. Pengambilan node ini ditangani oleh pengguna dalam kodenya, berdasarkan apa yang ingin diekstraksi.
1. Meneruskan node ini ke metode **ExtractContent** yang disediakan di bawah. Anda juga harus meneruskan parameter boolean yang menyatakan apakah node ini, yang bertindak sebagai penanda, harus disertakan dalam ekstraksi atau tidak.
1. Mengambil daftar konten yang dikloning (disalin node) yang ditentukan untuk diekstraksi. Anda dapat menggunakan daftar node ini dengan cara apa pun yang dapat diterapkan, misalnya, membuat dokumen baru yang hanya berisi konten yang dipilih.

## Cara Mengekstrak Konten

Untuk mengekstrak konten dari dokumen Anda, Anda perlu memanggil metode **ExtractContent** di bawah ini dan meneruskan parameter yang sesuai. Dasar yang mendasari metode ini melibatkan pencarian node tingkat blok (paragraf dan tabel) dan mengkloningnya untuk membuat salinan yang identik. Jika node penanda yang diteruskan adalah level blok maka metode ini dapat dengan mudah menyalin konten pada level tersebut dan menambahkannya ke array.

Namun jika node penandanya sejajar (anak dari paragraf) maka situasinya menjadi lebih kompleks, karena paragraf perlu dipecah pada node sebaris, baik itu run, kolom bookmark, dll. Konten dalam node induk yang dikloning tidak yang ada di antara penanda akan dihapus. Proses ini digunakan untuk memastikan bahwa node sebaris masih mempertahankan format paragraf induk. Metode ini juga akan menjalankan pemeriksaan pada node yang diteruskan sebagai parameter dan memberikan pengecualian jika salah satu node tidak valid. Parameter yang akan diteruskan ke metode ini adalah:

1. **StartNode** dan **EndNode**. Dua parameter pertama adalah node yang menentukan di mana ekstraksi konten akan dimulai dan diakhiri. Node ini dapat berupa level blok ([Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/)) atau level inline (misalnya [Run](https://reference.aspose.com/words/net/aspose.words/run/), [FieldStart](https://reference.aspose.com/words/net/aspose.words.fields/fieldstart/), [BookmarkStart](https://reference.aspose.com/words/net/aspose.words/bookmark/bookmarkstart/), dll.):
   1. Untuk meneruskan suatu bidang, Anda harus meneruskan objek **FieldStart** yang sesuai
   1. Untuk meneruskan bookmark, node **BookmarkStart** dan [BookmarkEnd](https://reference.aspose.com/words/net/aspose.words/bookmark/bookmarkend/) harus dilewati
   1. Untuk menyampaikan komentar, node [CommentRangeStart](https://reference.aspose.com/words/net/aspose.words/commentrangestart/) dan [CommentRangeEnd](https://reference.aspose.com/words/net/aspose.words/commentrangeend/) harus digunakan
1. **IsInclusive**. Menentukan apakah penanda disertakan dalam ekstraksi atau tidak. Jika opsi ini disetel ke false dan node yang sama atau node berurutan diteruskan, maka daftar kosong akan dikembalikan:
   1. Jika node **FieldStart** dilewatkan maka opsi ini menentukan apakah seluruh bidang akan disertakan atau dikecualikan
   1. Jika node **BookmarkStart** atau **BookmarkEnd** dilewatkan, opsi ini menentukan apakah bookmark disertakan atau hanya konten di antara rentang bookmark.
   1. Jika node **CommentRangeStart** atau **CommentRangeEnd** diteruskan, opsi ini menentukan apakah komentar itu sendiri akan disertakan atau hanya konten dalam rentang komentar.

Penerapan metode **ExtractContent** Anda dapat menemukan [di Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/DocsExamples/DocsExamples/Programming%20with%20Documents/Contents%20Management/Extract%20content%20helper.cs). Metode ini akan dirujuk dalam skenario di artikel ini.

Kami juga akan menentukan metode khusus untuk dengan mudah menghasilkan dokumen dari node yang diekstraksi. Metode ini digunakan dalam banyak skenario di bawah dan hanya membuat dokumen baru dan mengimpor konten yang diekstrak ke dalamnya.

Contoh kode berikut menunjukkan cara mengambil daftar node dan menyisipkannya ke dalam dokumen baru:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "generate-document.cs" >}}

## Ekstrak Konten Antar Paragraf

Ini menunjukkan cara menggunakan metode di atas untuk mengekstrak konten di antara paragraf tertentu. Dalam hal ini, kami ingin mengekstrak isi surat yang ditemukan di paruh pertama dokumen. Kita dapat mengatakan bahwa ini adalah antara paragraf ke 7 dan ke 11.

Kode di bawah menyelesaikan tugas ini. Paragraf yang sesuai diekstraksi menggunakan metode [GetChild](https://reference.aspose.com/words/net/aspose.words/compositenode/) pada dokumen dan melewati indeks yang ditentukan. Kami kemudian meneruskan node ini ke metode **ExtractContent** dan menyatakan bahwa node tersebut akan disertakan dalam ekstraksi. Metode ini akan mengembalikan konten yang disalin di antara node-node ini yang kemudian disisipkan ke dalam dokumen baru.

Contoh kode berikut menunjukkan cara mengekstrak konten antar paragraf tertentu menggunakan metode `ExtractContent` di atas:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-paragraphs.cs" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file contoh contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Ekstrak Konten Antara Berbagai Jenis Node

Kami dapat mengekstrak konten antara kombinasi level blok atau node sebaris apa pun. Dalam skenario di bawah ini kami akan mengekstraksi konten antara paragraf pertama dan tabel di bagian kedua secara inklusif. Kami mendapatkan node penanda dengan memanggil metode [FirstParagraph](https://reference.aspose.com/words/net/aspose.words/story/firstparagraph/) dan [GetChild](https://reference.aspose.com/words/net/aspose.words/compositenode/getchild/) di bagian kedua dokumen untuk mengambil node **Paragraph** dan **Table** yang sesuai. Untuk sedikit variasi, mari kita duplikat kontennya dan sisipkan di bawah konten aslinya.

Contoh kode berikut menunjukkan cara mengekstrak konten antara paragraf dan tabel menggunakan metode **ExtractContent**:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-block-level-nodes.cs" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file contoh contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Ekstrak Konten Antar Paragraf Berdasarkan Gaya

Anda mungkin perlu mengekstrak konten antar paragraf dengan gaya yang sama atau berbeda, seperti antar paragraf yang ditandai dengan gaya judul. Kode di bawah ini menunjukkan cara mencapainya. Ini adalah contoh sederhana yang akan mengekstraksi konten antara contoh pertama gaya "Header 1" dan "Header 3" tanpa mengekstraksi judulnya juga. Untuk melakukan ini, kami menetapkan parameter terakhir ke false, yang menetapkan bahwa node penanda tidak boleh disertakan.

Dalam implementasi yang tepat, ini harus dijalankan dalam satu lingkaran untuk mengekstraksi konten di antara semua paragraf gaya ini dari dokumen. Konten yang diekstraksi disalin ke dalam dokumen baru.

Contoh kode berikut menunjukkan cara mengekstrak konten antar paragraf dengan gaya tertentu menggunakan metode **ExtractContent**:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-paragraph-styles.cs" >}}

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "paragraphs-by-style-name.cs" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file contoh contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Ekstrak Konten Di Antara Proses Tertentu

Anda juga dapat mengekstrak konten antar node sebaris seperti [Run](https://reference.aspose.com/words/net/aspose.words/run/). **Runs** dari paragraf yang berbeda dapat diteruskan sebagai penanda. Kode di bawah ini menunjukkan cara mengekstrak teks tertentu di antara node **Paragraph** yang sama.

Contoh kode berikut menunjukkan cara mengekstrak konten di antara proses tertentu dari paragraf yang sama menggunakan metode **ExtractContent**:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-runs.cs" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file contoh contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Ekstrak Konten menggunakan Bidang

Untuk menggunakan bidang sebagai penanda, node `FieldStart` harus diteruskan. Parameter terakhir pada metode `ExtractContent` akan menentukan apakah seluruh bidang akan disertakan atau tidak. Mari kita ekstrak konten antara bidang gabungan "Nama Lengkap" dan paragraf dalam dokumen. Kami menggunakan metode [MoveToMergeField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetomergefield/) kelas [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/). Ini akan mengembalikan node **FieldStart** dari nama bidang gabungan yang diteruskan ke sana.

Dalam kasus kita, mari kita atur parameter terakhir yang diteruskan ke metode **ExtractContent** ke false untuk mengecualikan bidang dari ekstraksi. Kami akan merender konten yang diekstraksi ke PDF.

Contoh kode berikut menunjukkan cara mengekstraksi konten antara bidang dan paragraf tertentu dalam dokumen menggunakan metode **ExtractContent**:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-using-field.cs" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file contoh contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Ekstrak Konten dari Bookmark

Dalam dokumen, konten yang ditentukan dalam bookmark dienkapsulasi oleh node `BookmarkStart` dan BookmarkEnd. Konten yang ditemukan di antara dua node ini membentuk penanda. Anda dapat meneruskan salah satu dari node ini sebagai penanda apa pun, bahkan penanda dari penanda berbeda, selama penanda awal muncul sebelum penanda akhir dalam dokumen. Kami akan mengekstrak konten ini ke dalam dokumen baru menggunakan kode di bawah ini. Opsi parameter **IsInclusive** menunjukkan cara mempertahankan atau membuang bookmark.

Contoh kode berikut menunjukkan cara mengekstrak konten yang direferensikan ke bookmark menggunakan metode **ExtractContent**:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-bookmark.cs" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file contoh contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Ekstrak Konten dari Komentar

Sebuah komentar terdiri dari node CommentRangeStart, CommentRangeEnd, dan Comment. Semua node ini sejajar. Dua node pertama merangkum konten dalam dokumen yang direferensikan oleh komentar, seperti yang terlihat pada gambar di bawah.

Node **Comment** sendiri adalah [InlineStory](https://reference.aspose.com/words/net/aspose.words/inlinestory/) yang dapat berisi paragraf dan berjalan. Ini mewakili pesan komentar seperti yang terlihat sebagai gelembung komentar di panel ulasan. Karena simpul ini sebaris dan merupakan turunan dari badan, Anda juga dapat mengekstraksi konten dari dalam pesan ini.

Komentar merangkum judul, paragraf pertama, dan tabel di bagian kedua. Mari ekstrak komentar ini ke dalam dokumen baru. Opsi **IsInclusive** menentukan apakah komentar itu sendiri disimpan atau dibuang.

Contoh kode berikut menunjukkan cara melakukannya:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-comment-range.cs" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file contoh contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Cara Mengekstrak Konten menggunakan DocumentVisitor

Gunakan kelas [DocumentVisitor](https://reference.aspose.com/words/net/aspose.words/documentvisitor/) untuk mengimplementasikan skenario penggunaan ini. Kelas ini sesuai dengan pola desain Pengunjung yang terkenal. Dengan **DocumentVisitor** **,** Anda dapat menentukan dan menjalankan operasi khusus yang memerlukan enumerasi pada pohon dokumen.

**DocumentVisitor** menyediakan serangkaian metode **VisitXXX** yang dipanggil ketika elemen dokumen (node) tertentu ditemukan. Misalnya, [VisitParagraphStart](https://reference.aspose.com/words/net/aspose.words/documentvisitor/visitparagraphstart/) dipanggil ketika awal paragraf teks ditemukan dan [VisitParagraphEnd](https://reference.aspose.com/words/net/aspose.words/documentvisitor/visitparagraphend/) dipanggil ketika akhir paragraf teks ditemukan. Setiap metode **DocumentVisitor.VisitXXX** menerima objek terkait yang ditemuinya sehingga Anda dapat menggunakannya sesuai kebutuhan (misalnya mengambil pemformatan), misalnya **DocumentVisitor.VisitParagraphStart** dan **DocumentVisitor.VisitParagraphEnd** menerima objek [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/).

Setiap metode **DocumentVisitor.VisitXXX** mengembalikan nilai [VisitorAction](https://reference.aspose.com/words/net/aspose.words/visitoraction/) yang mengontrol enumerasi node. Anda dapat meminta untuk melanjutkan pencacahan, melewati node saat ini (tetapi melanjutkan pencacahan), atau menghentikan pencacahan node.

Ini adalah langkah-langkah yang harus Anda ikuti untuk menentukan dan mengekstrak berbagai bagian dokumen secara terprogram:

- Buat kelas turunan dari **DocumentVisitor**
- Mengganti dan menyediakan implementasi untuk beberapa atau semua metode **DocumentVisitor.VisitXXX** untuk melakukan beberapa operasi khusus
- Panggil [Node.Accept](https://reference.aspose.com/words/net/aspose.words/node/accept/) pada node tempat Anda ingin memulai pencacahan, misalnya jika Anda ingin menghitung seluruh dokumen, gunakan [Document.Accept](https://reference.aspose.com/words/net/aspose.words/document/accept/)

**DocumentVisitor** menyediakan implementasi default untuk semua metode **DocumentVisitor.VisitXXX**. Hal ini mempermudah pembuatan pengunjung dokumen baru karena hanya metode yang diperlukan untuk pengunjung tertentu yang perlu diganti. Tidak perlu mengganti semua metode pengunjung.

Contoh berikut menunjukkan cara menggunakan pola Pengunjung untuk menambahkan operasi baru ke model objek Aspose.Words. Dalam hal ini, kami membuat konverter dokumen sederhana ke dalam format teks:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-using-document-visitor.cs" >}}

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "convert-doc-to-txt.cs" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file contoh contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Cara Mengekstrak Teks Saja

Cara mengambil teks dari dokumen adalah:

- Gunakan [Document.Save](https://reference.aspose.com/words/net/aspose.words/document/save/) dengan [SaveFormat.Text](https://reference.aspose.com/words/net/aspose.words/saveformat/) untuk menyimpan sebagai teks biasa ke dalam file atau aliran
- Gunakan [Node.ToString](https://reference.aspose.com/words/net/aspose.words/node/tostring/) dan teruskan parameter **SaveFormat.Text**. Secara internal, ini memanggil penyimpanan sebagai teks ke dalam aliran memori dan mengembalikan string yang dihasilkan
- Gunakan [Node.GetText](https://reference.aspose.com/words/net/aspose.words/node/gettext/) untuk mengambil teks dengan semua karakter kontrol Microsoft Word termasuk kode bidang
- Menerapkan [DocumentVisitor](https://reference.aspose.com/words/net/aspose.words/documentvisitor/) khusus untuk melakukan ekstraksi khusus

### Menggunakan `Node.GetText` dan `Node.ToString`

Dokumen Word dapat berisi karakter kontrol yang menunjuk elemen khusus seperti bidang, akhir sel, akhir bagian, dll. Daftar lengkap kemungkinan karakter kontrol Word ditentukan di kelas **ControlChar**. Metode **Node.GetText** mengembalikan teks dengan semua karakter kontrol yang ada di node.

Memanggil **ToString** mengembalikan representasi teks biasa dari dokumen saja tanpa karakter kontrol. Untuk informasi lebih lanjut tentang mengekspor sebagai teks biasa lihat bagian **"Menggunakan SaveFormat.Teks"** berikut.

Contoh kode berikut menunjukkan perbedaan antara memanggil metode **GetText** dan **ToString** pada sebuah node:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "simple-extract-text.cs" >}}

### Menggunakan `SaveFormat.Text`

Contoh ini menyimpan dokumen sebagai berikut:

- Menyaring karakter bidang dan kode bidang, bentuk, catatan kaki, catatan akhir, dan referensi komentar
- Mengganti karakter **ControlChar.Cr** akhir paragraf dengan kombinasi **ControlChar.CrLf**
- Menggunakan pengkodean UTF8

Contoh kode berikut menunjukkan cara menyimpan dokumen dalam format TXT:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "docx-to-txt.cs" >}}

## Ekstrak Gambar dari Bentuk

Anda mungkin perlu mengekstrak gambar dokumen untuk melakukan beberapa tugas. Aspose.Words memungkinkan Anda melakukan hal ini juga.

Contoh kode berikut menunjukkan cara mengekstrak gambar dari dokumen:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-images.cs" >}}