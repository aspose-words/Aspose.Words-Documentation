---
title: Ekstrak Konten Antar Node Dokumen
second_title: Aspose.Words untuk Python
articleTitle: Ekstrak Konten Antar Node dalam Dokumen
linktitle: Ekstrak Konten Antar Node
description: "Cara mengekstrak konten tertentu dari suatu rentang dalam dokumen dengan mudah menggunakan Python."
type: docs
weight: 140
url: /id/python-net/how-to-extract-selected-content-between-nodes-in-a-document/
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

Untuk mengekstrak konten dari dokumen Anda, Anda perlu memanggil metode **ekstrak_konten** di bawah ini dan meneruskan parameter yang sesuai. Dasar yang mendasari metode ini melibatkan pencarian node tingkat blok (paragraf dan tabel) dan mengkloningnya untuk membuat salinan yang identik. Jika node penanda yang diteruskan adalah level blok maka metode ini dapat dengan mudah menyalin konten pada level tersebut dan menambahkannya ke array.

Namun jika node penandanya sejajar (anak dari paragraf) maka situasinya menjadi lebih kompleks, karena paragraf perlu dipecah pada node sebaris, baik itu run, kolom bookmark, dll. Konten dalam node induk yang dikloning tidak yang ada di antara penanda akan dihapus. Proses ini digunakan untuk memastikan bahwa node sebaris masih mempertahankan format paragraf induk. Metode ini juga akan menjalankan pemeriksaan pada node yang diteruskan sebagai parameter dan memberikan pengecualian jika salah satu node tidak valid. Parameter yang akan diteruskan ke metode ini adalah:

1. **mulaiNode** dan **simpul akhir**. Dua parameter pertama adalah node yang menentukan di mana ekstraksi konten akan dimulai dan diakhiri. Node ini dapat berupa level blok ([Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), atau level inline (misalnya [Run](https://reference.aspose.com/words/python-net/aspose.words/run/), [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/), [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/), dll.):
   1. Untuk meneruskan suatu bidang, Anda harus meneruskan objek [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) yang sesuai.
   1. Untuk meneruskan bookmark, node [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) dan [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/) harus dilewati.
   1. Untuk menyampaikan komentar, node [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) dan [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) harus digunakan.
1. **adalah inklusif**. Menentukan apakah penanda disertakan dalam ekstraksi atau tidak. Jika opsi ini disetel ke false dan node yang sama atau node berurutan diteruskan, maka daftar kosong akan dikembalikan:
   1. Jika node [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) dilewatkan maka opsi ini menentukan apakah seluruh bidang akan disertakan atau dikecualikan.
   1. Jika node [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) atau [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/) dilewatkan, opsi ini menentukan apakah bookmark disertakan atau hanya konten di antara rentang bookmark.
   1. Jika node [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) atau [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) diteruskan, opsi ini menentukan apakah komentar itu sendiri akan disertakan atau hanya konten dalam rentang komentar.

Penerapan metode **ekstrak_konten** Anda dapat menemukan [Di Sini](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/DocsExamples/DocsExamples/programming_with_documents/contents_management/extract_content_helper.py). Metode ini akan dirujuk dalam skenario di artikel ini.

Kami juga akan menentukan metode khusus untuk dengan mudah menghasilkan dokumen dari node yang diekstraksi. Metode ini digunakan dalam banyak skenario di bawah dan hanya membuat dokumen baru dan mengimpor konten yang diekstrak ke dalamnya.

Contoh kode berikut menunjukkan cara mengambil daftar node dan menyisipkannya ke dalam dokumen baru:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "generate-document.py" >}}

## Ekstrak Konten Antar Paragraf

Ini menunjukkan cara menggunakan metode di atas untuk mengekstrak konten di antara paragraf tertentu. Dalam hal ini, kami ingin mengekstrak isi surat yang ditemukan di paruh pertama dokumen. Kita dapat mengatakan bahwa ini adalah antara paragraf ke 7 dan ke 11.

Kode di bawah menyelesaikan tugas ini. Paragraf yang sesuai diekstraksi menggunakan metode [CompositeNode.get_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child/) pada dokumen dan melewati indeks yang ditentukan. Kami kemudian meneruskan node ini ke metode **ekstrak_konten** dan menyatakan bahwa node tersebut akan disertakan dalam ekstraksi. Metode ini akan mengembalikan konten yang disalin di antara node-node ini yang kemudian disisipkan ke dalam dokumen baru.

Contoh kode berikut menunjukkan cara mengekstrak konten antar paragraf tertentu menggunakan metode **ekstrak_konten** di atas:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-paragraphs.py" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file contoh contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Ekstrak Konten Antara Berbagai Jenis Node

Kami dapat mengekstrak konten antara kombinasi level blok atau node sebaris apa pun. Dalam skenario di bawah ini kami akan mengekstraksi konten antara paragraf pertama dan tabel di bagian kedua secara inklusif. Kami mendapatkan node penanda dengan memanggil metode [Body.first_paragraph](https://reference.aspose.com/words/python-net/aspose.words/story/first_paragraph/) dan [CompositeNode.get_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child/) di bagian kedua dokumen untuk mengambil node [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) dan [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) yang sesuai. Untuk sedikit variasi, mari kita duplikat kontennya dan sisipkan di bawah konten aslinya.

Contoh kode berikut menunjukkan cara mengekstrak konten antara paragraf dan tabel menggunakan metode **ekstrak_konten**:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-block-level-nodes.py" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file contoh contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Ekstrak Konten Antar Paragraf Berdasarkan Gaya

Anda mungkin perlu mengekstrak konten antar paragraf dengan gaya yang sama atau berbeda, seperti antar paragraf yang ditandai dengan gaya judul.

Kode di bawah ini menunjukkan cara mencapainya. Ini adalah contoh sederhana yang akan mengekstraksi konten antara contoh pertama gaya "Header 1" dan "Header 3" tanpa mengekstraksi judulnya juga. Untuk melakukan ini, kami menetapkan parameter terakhir ke false, yang menetapkan bahwa node penanda tidak boleh disertakan.

Dalam implementasi yang tepat, ini harus dijalankan dalam satu lingkaran untuk mengekstraksi konten di antara semua paragraf gaya ini dari dokumen. Konten yang diekstraksi disalin ke dalam dokumen baru.

Contoh kode berikut menunjukkan cara mengekstrak konten antar paragraf dengan gaya tertentu menggunakan metode **ekstrak_konten**:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-paragraph-styles.py" >}}

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "paragraphs-by-style-name.py" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file contoh contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Ekstrak Konten Di Antara Proses Tertentu

Anda juga dapat mengekstrak konten antar node sebaris seperti [Run](https://reference.aspose.com/words/python-net/aspose.words/run/). Berjalan dari paragraf yang berbeda dapat diteruskan sebagai penanda. Kode di bawah ini menunjukkan cara mengekstrak teks tertentu di antara node [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) yang sama.

Contoh kode berikut menunjukkan cara mengekstrak konten di antara proses tertentu dalam paragraf yang sama menggunakan metode **ekstrak_konten**:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-runs.py" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file contoh contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Ekstrak Konten menggunakan Bidang

Untuk menggunakan bidang sebagai penanda, node [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) harus diteruskan. Parameter terakhir pada metode **ekstrak_konten** akan menentukan apakah seluruh bidang akan disertakan atau tidak. Mari kita ekstrak konten antara bidang gabungan "Nama Lengkap" dan paragraf dalam dokumen. Kami menggunakan metode [DocumentBuilder.move_to_merge_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_merge_field/) kelas [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/). Ini akan mengembalikan node [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) dari nama bidang gabungan yang diteruskan ke sana.

Dalam kasus kita, mari kita atur parameter terakhir yang diteruskan ke metode **ekstrak_konten** ke `False` untuk mengecualikan bidang dari ekstraksi. Kami akan merender konten yang diekstraksi ke PDF.

Contoh kode berikut menunjukkan cara mengekstraksi konten antara bidang dan paragraf tertentu dalam dokumen menggunakan metode **ekstrak_konten**:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-using-field.py" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file contoh contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Ekstrak Konten dari Bookmark

Dalam dokumen, konten yang ditentukan dalam bookmark dienkapsulasi oleh node [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) dan [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/). Konten yang ditemukan di antara dua node ini membentuk penanda. Anda dapat meneruskan salah satu dari node ini sebagai penanda apa pun, bahkan penanda dari penanda berbeda, selama penanda awal muncul sebelum penanda akhir dalam dokumen. Kami akan mengekstrak konten ini ke dalam dokumen baru menggunakan kode di bawah ini. Opsi parameter **adalah inklusif** menunjukkan cara mempertahankan atau membuang bookmark.

Contoh kode berikut menunjukkan cara mengekstrak konten yang direferensikan ke bookmark menggunakan metode **ekstrak_konten**:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-bookmark.py" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file contoh contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Ekstrak Konten dari Komentar

Komentar terdiri dari node [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/), [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) dan [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/). Semua node ini sejajar. Dua node pertama merangkum konten dalam dokumen yang direferensikan oleh komentar, seperti yang terlihat pada gambar di bawah. Node [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) itu sendiri adalah [InlineStory](https://reference.aspose.com/words/python-net/aspose.words/inlinestory/) yang dapat berisi paragraf dan berjalan. Ini mewakili pesan komentar seperti yang terlihat sebagai gelembung komentar di panel ulasan. Karena simpul ini sebaris dan merupakan turunan dari badan, Anda juga dapat mengekstraksi konten dari dalam pesan ini.

Komentar merangkum judul, paragraf pertama, dan tabel di bagian kedua. Mari ekstrak komentar ini ke dalam dokumen baru. Opsi **adalah inklusif** menentukan apakah komentar itu sendiri disimpan atau dibuang.

Contoh kode berikut menunjukkan cara melakukannya:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-comment-range.py" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file contoh contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Cara Mengekstrak Teks Saja

Cara mengambil teks dari dokumen adalah:

- Gunakan [Document.save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) untuk menyimpan sebagai teks biasa ke dalam file atau aliran
- Gunakan [Node.to_string](https://reference.aspose.com/words/python-net/aspose.words/node/to_string/) dan teruskan parameter [SaveFormat.TEXT](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#text). Secara internal, ini memanggil penyimpanan sebagai teks ke dalam aliran memori dan mengembalikan string yang dihasilkan
- Gunakan [Node.get_text](https://reference.aspose.com/words/python-net/aspose.words/node/get_text/) untuk mengambil teks dengan semua karakter kontrol Microsoft Word termasuk kode bidang

### Menggunakan Node.get_text dan Node.to_string

Dokumen Word dapat berisi karakter kontrol yang menunjuk elemen khusus seperti bidang, akhir sel, akhir bagian, dll. Daftar lengkap kemungkinan karakter kontrol Word ditentukan di kelas [ControlChar](https://reference.aspose.com/words/python-net/aspose.words/controlchar/). Metode [Node.get_text](https://reference.aspose.com/words/python-net/aspose.words/node/get_text/) mengembalikan teks dengan semua karakter kontrol yang ada di node.

Memanggil [to_string](https://reference.aspose.com/words/python-net/aspose.words/node/to_string/) mengembalikan representasi teks biasa dari dokumen saja tanpa karakter kontrol. Untuk informasi lebih lanjut tentang mengekspor sebagai teks biasa, lihat Menggunakan [SaveFormat.TEXT](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#text)

Contoh kode berikut menunjukkan perbedaan antara memanggil metode [get_text](https://reference.aspose.com/words/python-net/aspose.words/node/get_text/) dan [to_string](https://reference.aspose.com/words/python-net/aspose.words/node/to_string/) pada sebuah node:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "simple-extract-text.py" >}}

### Menggunakan `SaveFormat.Text`

Contoh ini menyimpan dokumen sebagai berikut:

- Menyaring karakter bidang dan kode bidang, bentuk, catatan kaki, catatan akhir, dan referensi komentar
- Mengganti karakter **ControlChar.Cr** akhir paragraf dengan kombinasi **ControlChar.CrLf**
- Menggunakan pengkodean UTF8

Contoh kode berikut menunjukkan cara menyimpan dokumen dalam format TXT:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "docx-to-txt.py" >}}

## Ekstrak Gambar dari Bentuk

Anda mungkin perlu mengekstrak gambar dokumen untuk melakukan beberapa tugas. Aspose.Words memungkinkan Anda melakukan hal ini juga.

Contoh kode berikut menunjukkan cara mengekstrak gambar dari dokumen:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-images.py" >}}
