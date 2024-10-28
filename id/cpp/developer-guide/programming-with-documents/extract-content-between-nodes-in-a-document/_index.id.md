---
title: Cara Mengekstrak Konten Di Antara Simpul Dokumen
second_title: Aspose.Words untuk C++
articleTitle: Ekstrak Konten Antar Node dalam Dokumen
linktitle: Ekstrak Konten Antar Node
type: docs
description: "Mengekstrak konten dokumen secara berbeda menggunakan C++."
weight: 140
url: /id/cpp/how-to-extract-selected-content-between-nodes-in-a-document/
---

Saat bekerja dengan dokumen, penting untuk dapat dengan mudah mengekstrak konten dari rentang tertentu dalam dokumen. Namun, konten dapat terdiri dari elemen kompleks seperti paragraf, tabel, gambar, dll.

Terlepas dari konten apa yang perlu diekstraksi, metode untuk mengekstrak konten tersebut akan selalu ditentukan oleh node mana yang dipilih untuk mengekstrak konten di antaranya. Ini bisa berupa seluruh badan teks atau rangkaian teks sederhana.

Ada banyak kemungkinan situasi dan oleh karena itu banyak jenis simpul yang berbeda untuk dipertimbangkan saat mengekstrak konten. Misalnya, Anda mungkin ingin mengekstrak konten di antara keduanya:

- Dua paragraf khusus
- Rangkaian teks tertentu
- Bidang dengan berbagai jenis, seperti bidang gabungan
- Rentang awal dan akhir bookmark atau komentar
- Berbagai badan teks terkandung dalam bagian-bagian terpisah

Dalam beberapa situasi, Anda bahkan mungkin perlu menggabungkan jenis simpul yang berbeda, seperti mengekstrak konten antara paragraf dan bidang, atau antara proses dan penanda.

Artikel ini menyediakan implementasi kode untuk mengekstrak teks di antara node yang berbeda, serta contoh skenario umum.

{{% alert color="primary" %}}

Contoh-contoh ini hanyalah beberapa demonstrasi dari banyak kemungkinan. Kami berencana agar fungsionalitas ekstraksi teks menjadi bagian dari API publik di masa mendatang, dan tidak diperlukan kode tambahan. Sementara itu, jangan ragu untuk mengirimkan permintaan Anda terkait fungsi ini di [Aspose.Words forum](https://forum.aspose.com/c/words/8).

{{% /alert %}}

## Mengapa Mengekstrak Konten

Seringkali tujuan mengekstrak konten adalah untuk menduplikasi atau menyimpannya secara terpisah dalam dokumen baru. Misalnya, Anda dapat mengekstrak konten dan:

- Salin ke dalam dokumen terpisah
- Mengonversi bagian tertentu dari dokumen menjadi PDF atau gambar
- Gandakan konten dalam dokumen berkali-kali
- Bekerja dengan konten yang diekstraksi terpisah dari dokumen lainnya

Ini dapat dengan mudah dicapai dengan menggunakan Aspose.Words dan implementasi kode di bawah ini.

## Mengekstrak Algoritma Konten

Kode di bagian ini membahas semua kemungkinan situasi yang dijelaskan di atas dengan satu metode yang digeneralisasikan dan dapat digunakan kembali. Garis besar umum dari teknik ini melibatkan:

1. Mengumpulkan node yang menentukan area konten yang akan diekstraksi dari dokumen Anda. Mengambil node ini ditangani oleh pengguna dalam kodenya, berdasarkan apa yang ingin diekstraksi.
1. Meneruskan simpul-simpul ini ke metode **ExtractContent** yang disediakan di bawah ini. Anda juga harus melewati parameter boolean yang menyatakan apakah node ini, yang bertindak sebagai penanda, harus disertakan dalam ekstraksi atau tidak.
1. Mengambil daftar konten kloning (node yang disalin) yang ditentukan untuk diekstraksi. Anda dapat menggunakan daftar simpul ini dengan cara apa pun yang berlaku, misalnya, membuat dokumen baru yang hanya berisi konten yang dipilih.

## Cara Mengekstrak Konten

Untuk mengekstrak konten dari dokumen Anda, Anda perlu memanggil metode `ExtractContent` di bawah ini dan meneruskan parameter yang sesuai. Dasar yang mendasari metode ini melibatkan pencarian node tingkat blok (paragraf dan tabel) dan mengkloningnya untuk membuat salinan yang identik. Jika node penanda yang diteruskan adalah level blok, maka metode tersebut dapat dengan mudah menyalin konten pada level tersebut dan menambahkannya ke array.

Namun, jika node penanda sebaris (turunan dari paragraf) maka situasinya menjadi lebih kompleks, karena paragraf perlu dibagi pada node sebaris, baik itu run, bidang bookmark, dll. Konten di node induk yang dikloning yang tidak ada di antara penanda akan dihapus. Proses ini digunakan untuk memastikan bahwa node sebaris akan tetap mempertahankan pemformatan paragraf induk. Metode ini juga akan menjalankan pemeriksaan pada node yang diteruskan sebagai parameter dan memberikan pengecualian jika salah satu node tidak valid. Parameter yang akan diteruskan ke metode ini adalah:

1. **StartNode** dan **EndNode**. Dua parameter pertama adalah node yang menentukan di mana ekstraksi konten akan dimulai dan diakhiri masing-masing. Node-node ini dapat berupa level blok (Paragraf, Tabel) atau level sebaris (misalnya Run, FieldStart, BookmarkStart, dll.):
   1. Untuk melewati bidang, Anda harus melewati objek **FieldStart** yang sesuai.
   1. Untuk meneruskan bookmark, simpul **BookmarkStart** dan BookmarkEnd harus diteruskan.
   1. Untuk meneruskan komentar, node CommentRangeStart dan CommentRangeEnd harus digunakan.
1. **IsInclusive**. Menentukan apakah penanda disertakan dalam ekstraksi atau tidak. Jika opsi ini disetel ke false dan node yang sama atau node berurutan dilewatkan, maka daftar kosong akan dikembalikan:

      1. Jika simpul **FieldStart** dilewatkan maka opsi ini menentukan apakah seluruh bidang akan disertakan atau dikecualikan.
      1. Jika simpul **BookmarkStart** atau **BookmarkEnd** dilewatkan, opsi ini menentukan apakah bookmark disertakan atau hanya konten di antara rentang bookmark.
      1. Jika simpul **CommentRangeStart** atau **CommentRangeEnd** dilewatkan, opsi ini menentukan apakah komentar itu sendiri akan disertakan atau hanya konten dalam rentang komentar.

Penerapan metode **ExtractContent** dapat Anda temukan [di sini](https://github.com/aspose-words/Aspose.Words-for-C/blob/master/Examples/DocsExamples/source/Programming%20with%20Documents/Contents%20Management/Extract%20content%20helper.h). Metode ini akan dirujuk dalam skenario dalam artikel ini.

Kami juga akan menentukan metode khusus untuk menghasilkan dokumen dengan mudah dari node yang diekstraksi. Metode ini digunakan dalam banyak skenario di bawah ini dan hanya membuat dokumen baru dan mengimpor konten yang diekstraksi ke dalamnya.

Contoh kode berikut menunjukkan cara mengambil daftar simpul dan memasukkannya ke dalam dokumen baru.

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "generate-document.h" >}}

## Ekstrak Konten di antara Paragraf

Ini menunjukkan cara menggunakan metode di atas untuk mengekstrak konten di antara paragraf tertentu. Dalam hal ini, kami ingin mengekstrak isi surat yang ditemukan di paruh pertama dokumen. Kita dapat mengatakan bahwa ini adalah antara paragraf ke - 7dan ke-11.

Kode di bawah ini menyelesaikan tugas ini. Paragraf yang sesuai diekstraksi menggunakan metode [GetChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/getchild/) pada dokumen dan meneruskan indeks yang ditentukan. Kami kemudian meneruskan simpul-simpul ini ke metode **ExtractContent** dan menyatakan bahwa simpul-simpul ini akan disertakan dalam ekstraksi. Metode ini akan mengembalikan konten yang disalin di antara node-node ini yang kemudian dimasukkan ke dalam dokumen baru.

Contoh kode berikut menunjukkan cara mengekstrak konten di antara paragraf tertentu menggunakan metode `ExtractContent` di atas:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-paragraphs.h" >}}

## Ekstrak Konten Di Antara Berbagai Jenis Node

Kita dapat mengekstrak konten di antara kombinasi node tingkat blok atau sebaris apa pun. Dalam skenario di bawah ini, kami akan mengekstrak konten antara paragraf pertama dan tabel di bagian kedua secara inklusif. Kita mendapatkan node marker dengan memanggil metode `Body.FirstParagraph` dan [GetChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/getchild/) pada bagian kedua dokumen untuk mengambil node Paragraf dan Tabel yang sesuai. Untuk sedikit variasi, mari gandakan konten dan sisipkan di bawah aslinya.

Contoh kode berikut menunjukkan cara mengekstrak konten antara paragraf dan tabel menggunakan metode `ExtractContent`:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-block-level-nodes.h" >}}

## Ekstrak Konten Di Antara Paragraf Berdasarkan Gaya

Anda mungkin perlu mengekstrak konten di antara paragraf dengan gaya yang sama atau berbeda, seperti di antara paragraf yang ditandai dengan gaya judul. Kode di bawah ini menunjukkan cara mencapainya. Ini adalah contoh sederhana yang akan mengekstrak konten antara contoh pertama dari gaya" Heading 1 "dan" Header 3 " tanpa mengekstrak headingnya juga. Untuk melakukan ini, kami menetapkan parameter terakhir ke false, yang menetapkan bahwa node penanda tidak boleh disertakan.

Dalam implementasi yang tepat, ini harus dijalankan dalam satu lingkaran untuk mengekstrak konten di antara semua paragraf gaya ini dari dokumen. Konten yang diekstraksi disalin ke dalam dokumen baru.

Contoh kode berikut menunjukkan cara mengekstrak konten di antara paragraf dengan gaya tertentu menggunakan metode `ExtractContent`:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-paragraph-styles.h" >}}

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "paragraphs-by-style-name.h" >}}

## Ekstrak konten di antara proses Tertentu

Anda juga dapat mengekstrak konten di antara simpul sebaris seperti [Run](https://reference.aspose.com/words/cpp/aspose.words/run/). **Runs** dari paragraf yang berbeda dapat diteruskan sebagai penanda. Kode di bawah ini menunjukkan cara mengekstrak teks tertentu di antara simpul **Paragraph** yang sama.

Contoh kode berikut menunjukkan cara mengekstrak konten di antara proses tertentu dari paragraf yang sama menggunakan metode **ExtractContent**:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-runs.h" >}}

## Ekstrak Konten menggunakan Bidang

Untuk menggunakan bidang sebagai penanda, simpul `FieldStart` harus diteruskan. Parameter terakhir untuk metode `ExtractContent` akan menentukan apakah seluruh bidang akan disertakan atau tidak. Mari kita ekstrak konten di antara bidang gabungan "FullName " dan sebuah paragraf dalam dokumen. Kami menggunakan metode [MoveToMergeField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetomergefield/) dari kelas [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/). Ini akan mengembalikan simpul **FieldStart** dari bidang name of merge yang diteruskan ke sana.

Dalam kasus kami, mari setel parameter terakhir yang diteruskan ke metode **ExtractContent** menjadi false untuk mengecualikan bidang dari ekstraksi. Kami akan merender konten yang diekstraksi menjadi PDF.

Contoh kode berikut menunjukkan cara mengekstrak konten antara bidang dan paragraf tertentu dalam dokumen menggunakan metode **ExtractContent**:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-using-field.h" >}}

## Ekstrak Konten dari Bookmark

Dalam dokumen, konten yang didefinisikan dalam penanda dienkapsulasi oleh simpul `BookmarkStart` dan BookmarkEnd. Konten yang ditemukan di antara dua simpul ini membentuk bookmark. Anda dapat meneruskan salah satu dari simpul ini sebagai penanda apa pun, bahkan yang berasal dari penanda yang berbeda, selama penanda awal muncul sebelum penanda akhir dalam dokumen. Kami akan mengekstrak konten ini ke dalam dokumen baru menggunakan kode di bawah ini. Opsi parameter **IsInclusive** menunjukkan cara mempertahankan atau membuang bookmark.

Contoh kode berikut menunjukkan cara mengekstrak konten yang mereferensikan bookmark menggunakan metode **ExtractContent**:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-bookmark.h" >}}

## Ekstrak Konten dari Komentar

Komentar terdiri dari simpul CommentRangeStart, CommentRangeEnd, dan Komentar. Semua node ini sebaris. Dua node pertama merangkum konten dalam dokumen yang dirujuk oleh komentar, seperti yang terlihat pada tangkapan layar di bawah ini.

Simpul **Comment** itu sendiri adalah InlineStory yang dapat berisi paragraf dan run. Ini mewakili pesan komentar seperti yang terlihat sebagai gelembung komentar di panel pratinjau. Karena simpul ini sebaris dan merupakan turunan dari isi, Anda juga dapat mengekstrak konten dari dalam pesan ini.

Komentar merangkum judul, paragraf pertama, dan tabel di bagian kedua. Mari kita ekstrak komentar ini ke dalam dokumen baru. Opsi **IsInclusive** menentukan apakah komentar itu sendiri disimpan atau dibuang.

Contoh kode berikut menunjukkan cara melakukannya:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-comment-range.h" >}}

## Cara Mengekstrak Konten menggunakan DocumentVisitor

Gunakan kelas [DocumentVisitor](https://reference.aspose.com/words/cpp/aspose.words/documentvisitor/) untuk mengimplementasikan skenario penggunaan ini. Kelas ini sesuai dengan pola desain Pengunjung yang terkenal. Dengan **DocumentVisitor,** Anda dapat menentukan dan menjalankan operasi khusus yang memerlukan pencacahan di atas pohon dokumen.

**DocumentVisitor**

Setiap metode **DocumentVisitor.VisitXXX** mengembalikan nilai [VisitorAction](https://reference.aspose.com/words/net/aspose.words/visitoraction/) yang mengontrol pencacahan node. Anda dapat meminta untuk melanjutkan pencacahan, melewati node saat ini (tetapi melanjutkan pencacahan), atau menghentikan pencacahan node.

Ini adalah langkah-langkah yang harus Anda ikuti untuk menentukan dan mengekstrak berbagai bagian dokumen secara terprogram:

- Buat kelas yang diturunkan dari **DocumentVisitor**
- Timpa dan berikan implementasi untuk beberapa atau semua metode **DocumentVisitor.VisitXXX** untuk melakukan beberapa operasi khusus
- Panggil `Node.Accept` pada simpul dari mana Anda ingin memulai pencacahan. Misalnya, jika Anda ingin menghitung seluruh dokumen, gunakan `Document.Accept`

**DocumentVisitor**

Contoh ini menunjukkan cara menggunakan pola Pengunjung untuk menambahkan operasi baru ke model objek Aspose.Words. Dalam hal ini, kami membuat pengonversi dokumen sederhana menjadi format teks:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-using-document-visitor.h" >}}

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "convert-doc-to-txt.h" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file contoh contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Cara Mengekstrak Teks Saja

Cara untuk mengambil teks dari dokumen adalah:

- Gunakan [Document.Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) dengan [SaveFormat.Text](https://reference.aspose.com/words/cpp/aspose.words/saveformat/) untuk menyimpan sebagai teks biasa ke dalam file atau aliran
- Gunakan [Node.ToString](https://reference.aspose.com/words/cpp/aspose.words/node/tostring/) dan berikan parameter **SaveFormat.Text**. Secara internal, ini memanggil save as text ke dalam aliran memori dan mengembalikan string yang dihasilkan
- Gunakan [Node.GetText](https://reference.aspose.com/words/cpp/aspose.words/node/gettext/) untuk mengambil teks dengan semua karakter kontrol Microsoft Word termasuk kode bidang
- Terapkan [DocumentVisitor](https://reference.aspose.com/words/cpp/aspose.words/documentvisitor/) khusus untuk melakukan ekstraksi khusus

### Menggunakan `Node.GetText` dan `Node.ToString`

Dokumen Word dapat berisi karakter kontrol yang menunjuk elemen khusus seperti bidang, akhir sel, akhir bagian, dll. Daftar lengkap kemungkinan karakter kontrol Kata didefinisikan dalam kelas [ControlChar](https://reference.aspose.com/words/cpp/aspose.words/controlchar/). Metode **Node.GetText** mengembalikan teks dengan semua karakter karakter kontrol yang ada di simpul.

Memanggil **ToString** mengembalikan representasi teks biasa dari dokumen hanya tanpa karakter kontrol.

Contoh kode berikut menunjukkan perbedaan antara memanggil metode **GetText** dan **ToString** pada sebuah node:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "simple-extract-text.h" >}}

### Menggunakan `SaveFormat.Text`

Contoh ini menyimpan dokumen sebagai berikut:

- Memfilter karakter bidang dan kode bidang, bentuk, catatan kaki, catatan akhir, dan referensi komentar
- Mengganti karakter akhir paragraf **ControlChar.Cr** dengan kombinasi **ControlChar.CrLf**
- Menggunakan penyandian UTF8

Contoh kode berikut menunjukkan cara menyimpan dokumen dalam format TXT:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "docx-to-txt.h" >}}

## Ekstrak Gambar dari Bentuk

Anda mungkin perlu mengekstrak gambar dokumen untuk melakukan beberapa tugas. Aspose.Words memungkinkan Anda melakukan ini juga.

Contoh kode berikut menunjukkan cara mengekstrak gambar dari dokumen:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-images.h" >}}