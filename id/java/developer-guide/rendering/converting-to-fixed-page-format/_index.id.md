---
title: Mengkonversi Format Tetap di Java
second_title: Aspose.Words Sitemap Java
articleTitle: Mengkonversi Format Tetap
linktitle: Mengkonversi Format Tetap
description: "Aspose.Words Sitemap Java menerapkan mesin tata letak halaman sendiri yang memungkinkan untuk menghasilkan semua format halaman tetap, seperti PDF, XPS, dan berbagai format gambar."
type: docs
weight: 10
url: /id/java/converting-to-fixed-page-format/
timestamp: 2024-01-31-14-23-37
---

Aspose.Words menerapkan mesin tata letak halaman sendiri. Sebelum menelusuri spesifikasinya, ada baiknya dokumen diskusi pertama di tingkat tinggi. Ketika berpikir tentang dokumen, pengguna biasanya membayangkan sejumlah lembar kertas yang mengandung kata-kata, gambar, tabel, dan grafik. Dokumen dapat berbagai jenis, seperti teks, spreadsheet, slide, gambar CAD, flowcharts, dan, oleh karena itu, dapat memiliki tata letak yang berbeda pada dasarnya. Sebagian besar aplikasi memungkinkan mengirim dokumen ke printer; ini adalah ketika pengguna benar-benar dapat melihat tampilan akhir dokumen.

## Menampilkan Dokumen dalam Berbagai Aplikasi

Berbagai tampilan dokumen atau penerbitan aplikasi memungkinkan pengguna untuk membuka (Adobe Acrobat, XPS Viewer), dan kadang-kadang mengedit (Adobe InDesign) dokumen format tertentu. Aplikasi ini biasanya menghasilkan dokumen format "fixed-page". Format dokumen seperti itu menjelaskan persis di mana konten dokumen ditempatkan di setiap halaman. Secara internal, PDF atau XPS format berisi deskripsi setiap halaman, serta instruksi gambar, menentukan tata letak konten di halaman. Ini mirip dengan format gambar, menggambarkan di mana konten ditampilkan baik dalam bentuk raster atau vektor.

Sebaliknya, beberapa aplikasi pengeditan teks tidak mendukung tampilan halaman dokumen. Contohnya, Microsoft Notepad mendukung beberapa fungsi selain hanya menampilkan, mengedit dan mencetak teks. Pengamatan penting di sini adalah bahwa aplikasi tersebut tidak dapat menunjukkan halaman dokumen atau memberitahu pengguna berapa banyak dari mereka akan dicetak, hanya memungkinkan untuk melihat konten dokumen. Dokumen dapat disimpan dalam format teks biasa dan dapat dibuka oleh banyak aplikasi lainnya. Menggunakan aplikasi yang memungkinkan melihat konten biner dari file arbitrase satu dapat melihat apa yang disimpan dalam file dokumen - itu hanya teks biasa, tidak ada yang lain di dalamnya.

Sedikit aplikasi pengedit teks yang lebih canggih, seperti Microsoft WordPad, menyimpan dokumen dalam Rich Text Format (RTF), yang mendukung lebih banyak fungsi pemformatan, seperti penyisipan gambar, format karakter, margin paragraf dan jarak. Namun, format RTF juga mengandung hanya konten dokumen, tidak memiliki informasi tentang halaman.

Microsoft Word adalah aplikasi pengedit teks paling canggih di Windows Sitemap Ini memformat file dalam format DOCX, yang menggambarkan konten dokumen secara fleksibel dan luas, memungkinkan pengguna untuk menentukan ukuran halaman, orientasi untuk bagian dokumen, dan, menjadi aplikasi WYSIWYG bahkan menunjukkan halaman dokumen di layar. Namun demikian, masih tidak ada informasi mengenai bagaimana konten dokumen ditampilkan pada halaman yang tersedia dalam file dokumen. File dokumen hanya menjelaskan konten itu sendiri, dan hubungan objek dokumen satu sama lain, bersama dengan beberapa batasan geometris. Akibatnya, sebelum menampilkan dokumen, Microsoft Word memahami bahwa informasi itu sendiri. Meme it Ini adalah di mana tata letak halaman datang ke bermain.

## Apa itu Tata Letak Halaman

Tata letak halaman dokumen adalah struktur data, yang menggambarkan di mana objek tertentu terletak di halaman untuk semua objek dokumen. Selain itu, karena objek memiliki sifat yang mempengaruhi penampilan mereka, seperti ukuran font, membentuk atau menggambar efek, Anda perlu tidak hanya tahu di mana objeknya, tetapi juga area apa (s) halaman itu menempati, dan apakah itu akan berlaku untuk beberapa halaman sehingga benda lain tidak tumpang tindih daerah yang sama (s).

Aspose.Words menerapkan fungsi tata letak halaman secara internal memungkinkan untuk menghasilkan semua format halaman tetap, seperti PDF, XPS, dan berbagai format gambar. Tanpa tata letak halaman, informasi yang disimpan dalam file dokumen halaman tetap tidak akan tersedia dan semua format ini tidak akan didukung.

Hubungan antara dokumen dan tata letak halaman cukup sederhana. Sedangkan dokumen menggambarkan konten, tata letak halaman yang sesuai menjelaskan geometri konten tersebut. Catatan, bahwa tata letak halaman tidak dapat ada tanpa dokumen karena tidak ada konten untuk mengkomputasikan geometri, tetapi dokumen dapat ada tanpa tata letak halaman. Misalnya, ketika dokumen DOCX diubah menjadi dokumen RTF, biasanya tidak perlu untuk mengetahui geometri, karena tidak menyimpan format.

## Membuat Tata Letak Halaman

Membuat tata letak halaman dapat menjadi prosedur yang mahal, baik dalam hal kecepatan dan memori. Ini karena beberapa alasan:

- Login Dokumen dapat memiliki sejumlah besar konten, yang mungkin perlu ditampilkan pada ribuan halaman. Geometri setiap objek pada setiap halaman harus dijelaskan, mengkonsumsi sumber daya memori.
- Login Dokumen dapat memiliki banyak aturan, menempatkan batasan pada geometri. Waktu komputasi yang disarankan dapat dihabiskan, memastikan setiap batasan puas
- Beberapa fitur dokumen, misalnya, `NUMPAGES` lapangan, menciptakan ketergantungan berulang untuk nilai properti masa depan, yang tidak tersedia pada saat perhitungan. Ini menyebabkan perhitungan berulang dan menambah waktu komputasi.

Karena alasan yang disebutkan sebelumnya, Aspose.Words akan membuat tata letak halaman hanya ketika perlu. Alasan khas untuk ini akan menjadi permintaan untuk membuat halaman dokumen atau untuk mendapatkan nilai lapangan yang tergantung pada informasi yang tersedia dalam tata letak halaman. Alasan yang kurang jelas bisa mengekspor dokumen ke HTML. Meskipun HTML bukan format halaman tetap dan tidak menggambarkan geometri objek konten, masih mendukung gambar. Gambar seperti itu dapat berupa bentuk bentuk yang dibuat dalam Microsoft Word dengan teks di dalamnya. Misalnya, grafik dengan label sumbu dapat diekspor ke HTML sebagai gambar, tetapi sebelum ini dapat dilakukan Aspose.Words perlu untuk membuat gambar itu, dan karenanya perlu tahu di mana untuk menampilkan label. Lihat contoh grafik di bawah ini:

<img src="/words/java/converting-to-fixed-page-format/converting-to-fixed-page-format-1.png" alt="converting-to-fixed-page-format-aspose-words-" style="width:800px"/>

### Non-Geometric Login

Selain menangani informasi geometris, tata letak halaman juga bertanggung jawab untuk menghitung warna dan gaya perbatasan. Sitemap Microsoft Word, warna teks dapat ditentukan sebagai otomatis, menyiratkan bahwa pemilihan warna harus didasarkan pada warna sel atau paragraf, atau berdasarkan warna halaman, di mana teks muncul.

Pengaturan tata letak halaman di mana teks akan muncul dan konten apa yang akan diberikan di belakangnya, memungkinkan perhitungan warna. Ada perhitungan spesifik lainnya yang dilakukan oleh tata letak halaman. Misalnya, perbatasan horisontal dalam tabel tergantung apakah baris meja terakhir dalam kolom teks, dan apakah itu rusak di kolom. Jika baris diberikan terakhir di kolom, perbatasan bawah digunakan bukan horisontal.

![non_geometric_properties_aspose-words-java](/words/java/converting-to-fixed-page-format/converting-to-fixed-page-format-2.png)

Sitemap <span notrans="<span notrans=" Aspose.Words"=""></span>Sitemap pengguna dapat meminta apakah untuk membangun tata letak halaman baru, atau memperbarui yang ada. Kedua ini dapat dilakukan oleh Meme it [UpdatePageLayout](https://reference.aspose.com/words/java/com.aspose.words/document/#updatePageLayout\(\)) metode, disediakan oleh [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) Sitemap Jika tata letak halaman tidak ada, tetapi ada kebutuhan untuk itu (misalnya, ketika dokumen diekspor ke format halaman tetap), Aspose.Words akan secara otomatis memanggil metode ini. Namun, jika tata letak halaman sudah ada, Aspose.Words akan menggunakan yang ada, untuk menghindari mengkonsumsi sumber daya yang diperlukan untuk memperbaruinya. Dalam hal ini, pengguna perlu memanggil Meme it `UpdatePageLayout` metode, untuk memastikan bahwa tata letak halaman hingga tanggal dengan model dokumen.

### Struktur dinamis

Proses pembuatan tata letak halaman terdiri dari langkah-langkah berikut:

- Login *Conversion* - menghitung konten model dokumen dan menyiapkan benda tata letak yang sesuai.
- Login *Build* - mengatur objek tata letak untuk mewakili konten dokumen di halaman.
- Login *Reflow* - memperbarui pengaturan objek untuk memenuhi batasan geometri.
- * Melindungi objek tata letak ke presentasi halaman tetap dan menyelesaikan informasi warna*.
- * Membangun dan reflow konten bentuk * - langkah yang diperlukan jika dokumen mengandung bentuk dengan konten teks yang bersarang.

Catatan, bahwa tata letak halaman adalah struktur dinamis, yang dapat sebagian dibangun kembali. Hal ini terutama diperlukan ketika tidak mungkin untuk menghitung nilai lapangan tanpa membangun kembali struktur tata letak dokumen. Bidang dapat merujuk lokasi objek pada halaman, dan pada saat yang sama nilai lapangan itu sendiri juga diberikan pada halaman, mempengaruhi lokasi objek yang direferensikan. Tata letak halaman tidak dapat dibangun dalam satu perjalanan, karena nilai lapangan belum tersedia pada saat pemosisian di halaman.

Pertimbangkan skenario khas ketika `NUMPAGES` lapangan muncul di footer halaman pertama dalam dokumen. Nilai lapangan ini adalah total jumlah halaman. Untuk memposisikan lapangan di halaman, nilainya harus diketahui. Jika hanya halaman pertama saat ini dibangun maka jumlah total halaman belum diketahui. Dalam hal ini, tata letak halaman harus menggunakan nilai default dan kemudian kembali ke bidang itu dan mengubah nilainya sesuai dengan perhitungan aktual. Namun, mengubah nilai lapangan dapat mempengaruhi konten dokumen lain di halaman dan akhirnya menyebabkan halaman baru untuk diendapkan atau halaman yang sudah ada dihapus, sehingga membuat nilai yang sebanding. Masalah ini dapat diselesaikan dengan memungkinkan untuk memperbarui tata letak halaman yang ada.

Saat membuat tata letak, juga dimungkinkan untuk mengatur [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) sifat yang mempengaruhi output dokumen pada halaman.

## Simpan ke Format Tetap

Setelah tata letak halaman dibangun dan geometri objek dan posisi mereka di halaman dihitung, dokumen dapat disimpan dalam format halaman tetap didukung oleh Aspose.WordsSitemap Ketika menyimpan dokumen ke format halaman tetap, opsi rendering umum untuk semua format ini dapat digunakan. Mereka memungkinkan untuk mengontrol:

- Login Jumlah dan rentang halaman yang terkandung dalam dokumen output ([PageIndex](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/), [PageCount](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/)Sitemap
- Perkembangan tabungan dokumen halaman-by-halaman (Bahasa Indonesia)[PageSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/)Sitemap
- Satu set karakter yang digunakan untuk jumlah rendering ([NumeralFormat](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/)Sitemap
- Sebuah pemain metafile ([MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/)Sitemap Untuk detail lebih lanjut, lihat [Login Windows Login](/words/id/java/handling-windows-metafiles/) Artikel
- Tingkat kualitas untuk mengkompresi ulang gambar JPEG, nilai yang mungkin berbeda sedikit, tergantung pada format simpan yang dipilih ([JpegQuality](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/jpegquality/)Sitemap
- Optimasi grafis vektor dalam Aspose.Words keluaran ([OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/)Sitemap
- Opsi grafis ketika menyimpan ke Tiff, Png, Bmp, Jpeg, format Emf ([UseAntiAliasing](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getUseAntiAliasing), [UseHighQualityRendering](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/)Sitemap
- Menyimpan dokumen dalam skala abu-abu ([ColorMode](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/)Sitemap
- Beralih antara rendering bentuk DrawingML dan bentuk fallback ([DmlRenderingMode](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/)Sitemap
- Beralih antara mode rendering efek DML ([DmlEffectsRenderingMode](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/)Sitemap

Contoh di bawah ini menunjukkan cara menyimpan dokumen ke format JPEG menggunakan `Save` metode dan opsi rendering:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveDocumentToJPEG-SaveDocumentToJPEG.java" >}}
