---
title: Ekstrak Dipilih Konten Antara Tidak ada Java
second_title: Aspose.Words Sitemap Java
articleTitle: Konten Ekstrak Antara Node dalam Dokumen
linktitle: Konten Ekstrak Antara Node
type: docs
description: "Ekstrak konten dokumen dalam penggunaan yang berbeda JavaSitemap"
weight: 140
url: /id/java/extract-selected-content-between-nodes/
---

Ketika bekerja dengan dokumen, penting untuk dapat dengan mudah mengekstrak konten dari rentang tertentu dalam dokumen. Namun, konten dapat terdiri dari elemen kompleks seperti paragraf, tabel, gambar, dll.

Terlepas dari konten apa yang perlu diekstrak, metode untuk mengekstrak konten itu akan selalu ditentukan oleh node mana yang dipilih untuk mengekstrak konten antara. Ini dapat seluruh tubuh teks atau teks sederhana berjalan.

Ada banyak situasi yang mungkin dan oleh karena itu banyak jenis node yang berbeda untuk dipertimbangkan ketika mengekstrak konten. Misalnya, Anda mungkin ingin mengekstrak konten antara:

- Dua paragraf khusus
- Melanjutkan teks khusus
- Bidang berbagai jenis, seperti bidang gabungan
- Mulai dan berakhir berbagai bookmark atau komentar
- Berbagai tubuh teks yang terkandung dalam bagian terpisah

Dalam beberapa situasi, Anda bahkan mungkin perlu menggabungkan berbagai jenis node, seperti mengekstrak konten antara paragraf dan lapangan, atau antara lari dan bookmark.

Artikel ini menyediakan implementasi kode untuk mengekstrak teks antara node yang berbeda, serta contoh skenario umum.

{{% alert color="primary" %}}

Contoh ini hanya beberapa demonstrasi dari banyak kemungkinan. Kami berencana untuk fungsi ekstraksi teks menjadi bagian dari publik API di masa depan, dan tidak ada kode tambahan yang akan diperlukan. Sementara itu, jangan ragu untuk memposting permintaan Anda mengenai fungsi ini di [Aspose.Words Login](https://forum.aspose.com/c/words/8)Sitemap

{{% /alert %}}

## Mengapa Konten Ekstrak

Sering tujuan mengekstrak konten adalah untuk menduplikasi atau menyimpannya secara terpisah dalam dokumen baru. Misalnya, Anda dapat mengekstrak konten dan:

- Salin ke dokumen terpisah
- Mengkonversi bagian tertentu dari dokumen ke PDF atau gambar
- Duplikat konten dalam dokumen banyak kali
- Bekerja dengan konten yang diekstrak terpisah dari sisa dokumen

Ini dapat dengan mudah dicapai menggunakan Aspose.Words dan implementasi kode di bawah ini.

## Ekstrak Konten Algorithm

Kode di bagian ini membahas semua situasi yang mungkin dijelaskan di atas dengan satu metode umum dan dapat digunakan kembali. Garis umum teknik ini melibatkan:

Sitemap Menyiapkan node yang menentukan area konten yang akan diekstrak dari dokumen Anda. Mengembalikan node ini ditangani oleh pengguna dalam kode mereka, berdasarkan apa yang ingin diekstrak.
Sitemap Menyiapkan node ini ke **ExtractContent** metode yang disediakan di bawah ini. Anda juga harus melewati parameter boolean yang menyatakan apakah node ini, bertindak sebagai penanda, harus dimasukkan dalam ekstraksi atau tidak.
Sitemap Mengembalikan daftar konten yang dikloning (node yang disalin) yang ditentukan untuk diekstrak. Anda dapat menggunakan daftar node ini dengan cara yang berlaku, misalnya, membuat dokumen baru hanya mengandung konten yang dipilih.

## Cara Mengekstrak Konten

Kami akan bekerja dengan dokumen di bawah artikel ini. Seperti yang dapat Anda lihat mengandung berbagai konten. Catatan juga, dokumen berisi bagian kedua dimulai di tengah halaman pertama. Sebuah bookmark dan komentar juga hadir dalam dokumen tetapi tidak terlihat di tangkapan layar di bawah ini.

![extract-content-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-1.png)

Untuk mengekstrak konten dari dokumen Anda yang perlu Anda sebut `ExtractContent` metode di bawah dan lulus parameter yang tepat.

Dasar dari metode ini melibatkan menemukan node tingkat blok (paragraf dan tabel) dan membekukan mereka untuk membuat salinan yang identik. Jika node penanda dilewatkan adalah level blok maka metode ini dapat hanya menyalin konten pada tingkat itu dan menambahkannya ke array.

Namun, jika node penanda adalah inline (sebuah anak paragraf) maka situasi menjadi lebih kompleks, karena perlu membagi paragraf di node inline, itu lari, bidang bookmark dll. Konten dalam node induk yang dikloning tidak hadir antara penanda dihapus. Proses ini digunakan untuk memastikan bahwa node inline masih akan mempertahankan format paragraf induk.

Metode juga akan menjalankan cek pada node yang dilewatkan sebagai parameter dan membuang pengecualian jika node tidak valid. Parameter yang akan dilewatkan ke metode ini adalah:

Sitemap **StartNode** Login **EndNode**Sitemap Dua parameter pertama adalah node yang menentukan di mana ekstraksi konten harus dimulai dan berakhir pada masing-masing. Node ini dapat menjadi tingkat blok (blok)[Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) Login [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) ) atau tingkat inline (misalnya [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) Login [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/) Login [BookmarkStart](https://reference.aspose.com/words/java/com.aspose.words/bookmarkstart/) dll
   1. Untuk lulus lapangan Anda harus melewati yang sesuai **FieldStart** Sitemap
   1. Untuk melewati bookmark, **BookmarkStart** Login [BookmarkEnd](https://reference.aspose.com/words/java/com.aspose.words/bookmarkend/) node harus dilewati.
   1. Untuk lulus komentar, [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) Login [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/) node harus digunakan.
Sitemap **IsInclusive**Sitemap Tentukan jika penanda disertakan dalam ekstraksi atau tidak. Jika opsi ini ditetapkan false dan node yang sama atau node berturut-turut dilewatkan, maka daftar kosong akan dikembalikan:

      1. Apabila **FieldStart** node dilewatkan maka opsi ini menentukan apakah seluruh lapangan harus disertakan atau dikecualikan.
      1. Apabila **BookmarkStart** Sitemap **BookmarkEnd** node dilewatkan, opsi ini menentukan apakah bookmark disertakan atau hanya konten antara rentang bookmark.
      1. Apabila **CommentRangeStart** Sitemap **CommentRangeEnd** node dilewatkan, opsi ini mendefinisikan jika komentar itu sendiri dimasukkan atau hanya konten dalam rentang komentar.

Implementasi **ExtractContent** metode yang dapat Anda temukan [Sitemap](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Programming_with_documents/Contents_management/ExtractContentHelper.java)Sitemap Metode ini akan disebut dalam skenario dalam artikel ini.

Kami juga akan mendefinisikan metode kustom untuk dengan mudah menghasilkan dokumen dari node yang diekstrak. Metode ini digunakan dalam banyak skenario di bawah ini dan hanya membuat dokumen baru dan mengimpor konten yang diekstrak ke dalamnya.

Contoh kode berikut menunjukkan cara mengambil daftar node dan memasukkannya ke dalam dokumen baru:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "generate-document.java" >}}

## Ekstrak Konten Antara Paragraf

Ini menunjukkan cara menggunakan metode di atas untuk mengekstrak konten antara paragraf tertentu. Dalam kasus ini, kita ingin mengekstrak tubuh surat yang ditemukan pada paruh pertama dokumen. Kita dapat memberitahukan bahwa ini antara paragraf ke-7 dan ke-11.

Kode di bawah ini menyelesaikan tugas ini. Paragraf yang tepat diekstrak menggunakan [getChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getChild-int-int-boolean) metode pada dokumen dan melewati indeks yang ditentukan. Kami kemudian melewati node ini ke Meme it **ExtractContent** metode dan keadaan yang ini akan dimasukkan dalam ekstraksi. Metode ini akan mengembalikan konten yang disalin antara node ini yang kemudian dimasukkan ke dalam dokumen baru.

Contoh kode berikut menunjukkan cara mengekstrak konten antara paragraf tertentu menggunakan `ExtractContent` metode di atas:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-paragraphs.java" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file sampel dari contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx)Sitemap

{{% /alert %}}

Dokumen output mengandung dua paragraf yang diekstrak.

![extract-content-result-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-2.png)

## Konten Ekstrak Antara Berbagai Jenis Node

Kita dapat mengekstrak konten antara setiap kombinasi dari node block-level atau inline. Dalam skenario ini di bawah ini kita akan mengekstrak konten antara paragraf pertama dan tabel di bagian kedua secara inklusif. Kami mendapatkan node penanda dengan memanggil [getFirstParagraph](https://reference.aspose.com/words/java/com.aspose.words/body/#getFirstParagraph) Login [getChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getChild-int-int-boolean) metode pada bagian kedua dokumen untuk mengambil yang sesuai **Paragraph** Login **Table** Login Untuk variasi sedikit mari kita sebutkan konten dan masukkannya di bawah aslinya.

Contoh kode berikut menunjukkan cara mengekstrak konten antara paragraf dan tabel menggunakan **ExtractContent** metode:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-block-level-nodes.java" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file sampel dari contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx)Sitemap

{{% /alert %}}

Konten antara paragraf dan tabel telah diduplikasi di bawah ini adalah hasilnya.

![extract-content-between-paragraphs-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-3.png)

## Ekstrak Konten Antara Paragraf Berdasarkan Gaya

Anda mungkin perlu mengekstrak konten antara paragraf dengan gaya yang sama atau berbeda, seperti antara paragraf yang ditandai dengan gaya judul.

Kode di bawah menunjukkan cara mencapai ini. Ini adalah contoh sederhana yang akan mengekstrak konten antara instance pertama dari "Kepala 1" dan "Kepala 3" gaya tanpa mengekstrak judul juga. Untuk melakukan ini kami mengatur parameter terakhir untuk Meme it false, yang menentukan bahwa node penanda tidak boleh disertakan.

Dalam implementasi yang tepat, ini harus dijalankan dalam lingkaran untuk mengekstrak konten antara semua paragraf dari gaya ini dari dokumen. Konten yang diekstrak disalin ke dokumen baru.

Contoh kode berikut menunjukkan cara mengekstrak konten antara paragraf dengan gaya tertentu **ExtractContent** metode:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-paragraph-styles.java" >}}

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "paragraphs-by-style-name.java" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file sampel dari contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx)Sitemap

{{% /alert %}}

Di bawah ini adalah hasil dari operasi sebelumnya.

![extract-content-between-paragraph-style-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-4.png)

## Konten Ekstrak Antara Jalur Spesifik

Anda dapat mengekstrak konten antara node inline seperti **Run** Sitemap **Runs** dari paragraf yang berbeda dapat dilewati sebagai penanda. Kode di bawah ini menunjukkan cara mengekstrak teks spesifik dalam-antaranya **Paragraph** Login

Contoh kode berikut menunjukkan bagaimana mengekstrak konten antara lari spesifik paragraf yang sama menggunakan **ExtractContent** metode:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-runs.java" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file sampel dari contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx)Sitemap

{{% /alert %}}

Teks yang diekstrak ditampilkan di konsol

![extract-content-between-runs-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-5.png)

## Konten Ekstrak menggunakan Lapangan

Untuk menggunakan bidang sebagai penanda, `FieldStart` node harus dilewati. Parameter terakhir untuk `ExtractContent` metode akan menentukan apakah seluruh bidang harus disertakan atau tidak. Mari mengekstrak konten antara kolom menggabungkan "FullName" dan paragraf dalam dokumen. Kami menggunakan [moveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField(java.lang.String)) metode [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) Sitemap Ini akan mengembalikan **FieldStart** Node dari nama lapangan merge yang dilewati ke dalamnya.

Dalam kasus kami memungkinkan mengatur parameter terakhir yang dilewatkan ke **ExtractContent** metode untuk false untuk mengecualikan bidang dari ekstraksi. Kami akan membuat konten yang diekstrak ke PDF.

Contoh kode berikut menunjukkan bagaimana mengekstrak konten antara bidang dan paragraf tertentu dalam dokumen menggunakan **ExtractContent** metode:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-using-field.java" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file sampel dari contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx)Sitemap

{{% /alert %}}

Konten yang diekstrak antara bidang dan paragraf, tanpa bidang dan node penanda paragraf yang diberikan ke PDF.

![extract-content-using-field-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-6.png)

## Ekstrak Konten dari Bookmark

Dalam dokumen, konten yang didefinisikan dalam sebuah bookmark dicentangkan oleh `BookmarkStart` dan BookmarkEnd nodes. Konten yang ditemukan antara dua node ini membuat bookmark. Anda dapat melewati salah satu node ini sebagai penanda, bahkan salah satu dari bookmark yang berbeda, selama penanda awal muncul sebelum penanda akhir dalam dokumen.

Dalam dokumen sampel kami, kami memiliki satu bookmark, bernama "Bookmark1". Konten bookmark ini disorot konten dalam dokumen kami:

![extract-content-from-bookmark-aspose-words-java-1](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-7.png)

Kami akan mengekstrak konten ini ke dalam dokumen baru menggunakan kode di bawah ini. Login **IsInclusive** opsi parameter menunjukkan cara mempertahankan atau membuang bookmark.

Contoh kode berikut menunjukkan cara mengekstrak konten yang direferensikan bookmark menggunakan **ExtractContent** metode:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-bookmark.java" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file sampel dari contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx)Sitemap

{{% /alert %}}

Output yang diekstrak dengan `IsInclusive` parameter diatur untuk trueSitemap Salinan akan mempertahankan bookmark juga.

![extract-content-from-bookmark-aspose-words-java-2](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-8.png)

Output yang diekstrak dengan **IsInclusive** parameter diatur untuk falseSitemap Salinan berisi konten tetapi tanpa bookmark.

![extract-content-from-bookmark-aspose-words-java-3](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-9.png)

## Ekstrak Konten dari Komentar

Komentar terdiri dari CommentRangeStart, CommentRangeEnd dan Komentar node. Semua node ini masuk. Dua node pertama mengenkap konten dalam dokumen yang direferensikan oleh komentar, seperti yang terlihat pada tangkapan layar di bawah ini.

Login **Comment** node itu sendiri adalah [InlineStory](https://reference.aspose.com/words/java/com.aspose.words/inlinestory/) yang dapat mengandung paragraf dan berjalan. Ini mewakili pesan komentar seperti yang terlihat sebagai gelembung komentar di pane ulasan. Sebagai node ini adalah inline dan keturunan tubuh Anda juga dapat mengekstrak konten dari dalam pesan ini juga.

Dalam dokumen kami, kami memiliki satu komentar. Mari kita lihat dengan menampilkan markup di tab Review:

![extract-content-from-comment-aspose-words-java-1](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-10.png)

Komentar ini menimbulkan judul, paragraf pertama dan tabel di bagian kedua. Mari ekstrak komentar ini ke dalam dokumen baru. Login **IsInclusive** opsi menentukan jika komentar itu sendiri disimpan atau dibuang.

Contoh kode berikut menunjukkan cara melakukan ini di bawah ini:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-comment-range.java" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file sampel dari contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx)Sitemap

{{% /alert %}}

Pertama output yang diekstrak dengan `IsInclusive` parameter diatur untuk trueSitemap Salinan akan berisi komentar juga.

![extract-content-from-comment-aspose-words-java-2](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-11.png)

Kedua output yang diekstrak dengan **Login** Sitemap falseSitemap Salinan berisi konten tetapi tanpa komentar.

![extract-content-from-comment-aspose-words-java-12](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-12.png)

## Konten Ekstrak menggunakan DocumentVisitor

Aspose.Words dapat digunakan tidak hanya untuk membuat Microsoft Word dokumen dengan membangun mereka secara dinamis atau merging template dengan data, tetapi juga untuk membuat dokumen untuk mengekstrak elemen dokumen terpisah seperti header, footer, paragraf, tabel, gambar, dan lain-lain. Tugas lain yang mungkin adalah untuk menemukan semua teks format atau gaya tertentu.

Gunakan [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) kelas untuk menerapkan skenario penggunaan ini. Kelas ini sesuai dengan pola desain pengunjung yang terkenal. Sitemap [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/), Anda dapat mendefinisikan dan mengeksekusi operasi kustom yang memerlukan numerasi atas pohon dokumen.

[DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) menyediakan satu set **VisitXXX** metode yang invoked ketika elemen dokumen tertentu (node) ditemui. Sitemap [VisitParagraphStart](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphStart-com.aspose.words.Paragraph) disebut ketika awal paragraf teks ditemukan dan Meme it [VisitParagraphEnd](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphEnd-com.aspose.words.Paragraph) disebut ketika akhir paragraf teks ditemukan. Sitemap **DocumentVisitor.VisitXXX** metode menerima objek yang sesuai sehingga Anda dapat menggunakannya sesuai kebutuhan (kata mengambil format), misalnya keduanya [VisitParagraphStart](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphStart-com.aspose.words.Paragraph) Login [VisitParagraphEnd](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphEnd-com.aspose.words.Paragraph) Sitemap [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) Sitemap

Sitemap **DocumentVisitor.VisitXXX** metode mengembalikan sebuah **VisitorAction** nilai yang mengontrol numerasi node. Anda dapat meminta baik untuk melanjutkan enumerasi, melewatkan node saat ini (tetapi terus numerasi), atau menghentikan numerasi node.

Ini adalah langkah yang harus Anda ikuti untuk menentukan dan mengekstrak berbagai bagian dokumen:

- Buat kelas yang berasal dari [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/)Sitemap
- Override dan memberikan implementasi untuk beberapa atau semua **DocumentVisitor.VisitXXX** metode untuk melakukan beberapa operasi kustom.
- Sitemap [Node.accept](https://reference.aspose.com/words/java/com.aspose.words/node/#accept-com.aspose.words.DocumentVisitor) di node dari mana Anda ingin memulai enumerasi. Misalnya, jika Anda ingin menghitung seluruh dokumen, gunakan [accept(DocumentVisitor)](https://reference.aspose.com/words/java/com.aspose.words/document/#accept-com.aspose.words.DocumentVisitor)Sitemap

[DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) menyediakan implementasi default untuk semua **DocumentVisitor.VisitXXX** Login Ini memudahkan untuk membuat pengunjung dokumen baru hanya metode yang diperlukan untuk pengunjung tertentu perlu ditimidasi. Tidak perlu untuk menimpa semua metode pengunjung.

Contoh berikut menunjukkan cara menggunakan pola Pengunjung untuk menambahkan operasi baru ke Aspose.Words model objek. Dalam hal ini, kami membuat converter dokumen sederhana ke format teks:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-using-document-visitor.java" >}}

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "convert-doc-to-txt.java" >}}

## Ekstrak Teks Sitemap

Cara untuk mengambil teks dari dokumen adalah:

- Sitemap [Document.save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) Login [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) menyimpan teks biasa ke dalam file atau aliran
- Sitemap [Node.toString](https://reference.aspose.com/words/java/com.aspose.words/node/#toString-com.aspose.words.SaveOptions) dan lulus `SaveFormat.Text` parameter. Secara internal, invokes ini menyimpan teks ke aliran memori dan mengembalikan string yang dihasilkan
- Sitemap [Node.getText](https://reference.aspose.com/words/java/com.aspose.words/node/#getText) untuk mengambil teks dengan semua Microsoft Word karakter kontrol termasuk kode lapangan
- Menerapkan kustom [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) untuk melakukan ekstraksi yang disesuaikan

### Sitemap `Node.GetText` Login `Node.ToString`

Login Dokumen Word dapat berisi karakter kontrol yang menunjuk elemen khusus seperti bidang, akhir sel, akhir bagian dll. Daftar lengkap dari kemungkinan karakter kontrol kata didefinisikan dalam **ControlChar** Sitemap Login [GetText](https://reference.aspose.com/words/java/com.aspose.words/node/#getText) metode mengembalikan teks dengan semua karakter karakter kontrol yang ada di node.

Menelepon ToString kembali representasi teks biasa dokumen hanya tanpa karakter kontrol. Untuk informasi lebih lanjut tentang ekspor sebagai teks biasa melihat **Using SaveFormat.Text**Sitemap

Contoh kode berikut menunjukkan perbedaan antara memanggil **GetText** Login [ToString](https://reference.aspose.com/words/java/com.aspose.words/node/#toString) metode pada node:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "simple-extract-text.java" >}}

### Sitemap `SaveFormat.Text`

Contoh ini menyimpan dokumen sebagai berikut:

- Filter karakter lapangan dan kode lapangan, bentuk, catatan kaki, catatan akhir dan referensi komentar
- Mengganti akhir paragraf [ControlChar.Cr](https://reference.aspose.com/words/java/com.aspose.words/controlchar/) karakter dengan [ControlChar.CrLf](https://reference.aspose.com/words/java/com.aspose.words/controlchar/) Login
- Menggunakan pengkodean UTF8

Contoh kode berikut menunjukkan cara menyimpan dokumen dalam format TXT:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "docx-to-txt.java" >}}

## Ekstrak Gambar dari Bentuk

Anda mungkin perlu mengekstrak gambar dokumen untuk melakukan beberapa tugas. Aspose.Words memungkinkan Anda untuk melakukan ini juga. Meme it

Contoh kode berikut menunjukkan cara mengekstrak gambar dari dokumen:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-images.java" >}}