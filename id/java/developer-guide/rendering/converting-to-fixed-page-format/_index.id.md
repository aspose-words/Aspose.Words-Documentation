---
title: Mengonversi ke Format halaman Tetap dalam Java
second_title: Aspose.Words untuk Java
articleTitle: Mengonversi ke Format halaman Tetap
linktitle: Mengonversi ke Format halaman Tetap
description: "Aspose.Words untuk Java mengimplementasikan mesin tata letak halamannya sendiri yang memungkinkannya menghasilkan semua format halaman tetap, seperti PDF, XPS, dan berbagai format gambar."
type: docs
weight: 10
url: /id/java/converting-to-fixed-page-format/
timestamp: 2024-01-31-14-23-37
---

Aspose.Words mengimplementasikan mesin tata letak halamannya sendiri. Sebelum mempelajari spesifikasinya, ada baiknya untuk terlebih dahulu membahas dokumen pada tingkat tinggi. Saat memikirkan sebuah dokumen, pengguna biasanya membayangkan sejumlah lembar kertas berisi kata, gambar, tabel, dan bagan. Dokumen dapat terdiri dari berbagai jenis, seperti teks, spreadsheet, slide, gambar CAD, diagram alur, dan, oleh karena itu, pada dasarnya dapat memiliki tata letak yang berbeda. Sebagian besar aplikasi memungkinkan pengiriman dokumen ke printer; ini adalah saat pengguna benar-benar dapat melihat tampilan akhir dokumen yang dimaksudkan.

## Menampilkan Dokumen dalam Berbagai Aplikasi

Berbagai aplikasi tampilan atau penerbitan dokumen memungkinkan pengguna untuk membuka (Adobe Acrobat, XPS Viewer), dan terkadang mengedit (Adobe InDesign) dokumen dengan format tertentu. Aplikasi ini biasanya menghasilkan apa yang disebut dokumen berformat "halaman tetap". Format dokumen semacam itu menjelaskan dengan tepat di mana konten dokumen ditempatkan di setiap halaman. Secara internal, format PDF atau XPS berisi deskripsi setiap halaman, serta instruksi menggambar, yang menentukan tata letak konten pada halaman. Ini mirip dengan format gambar, menjelaskan di mana konten ditampilkan baik dalam bentuk raster atau vektor.

Sebaliknya, beberapa aplikasi pengeditan teks tidak mendukung tampilan halaman dokumen. Misalnya, Microsoft Notepad mendukung sangat sedikit fungsi selain hanya menampilkan, mengedit, dan mencetak teks. Pengamatan penting di sini adalah bahwa aplikasi semacam itu tidak dapat menampilkan halaman dokumen atau memberi tahu pengguna berapa banyak halaman yang akan dicetak, hanya memungkinkan untuk melihat konten dokumen. Dokumen dapat disimpan dalam format teks biasa dan dapat dibuka oleh banyak aplikasi lain. Menggunakan aplikasi yang memungkinkan melihat konten biner dari file arbitrer, orang dapat melihat apa yang disimpan dalam file dokumen-itu hanya teks biasa, tidak ada yang lain di dalamnya.

Aplikasi pengeditan teks yang sedikit lebih canggih, seperti Microsoft Word Pad, menyimpan dokumen dalam Format Teks Kaya (RTF), yang mendukung lebih banyak fungsi pemformatan, seperti penyisipan gambar, pemformatan karakter, margin paragraf, dan spasi. Namun, format RTF juga hanya berisi konten dokumen, tidak memiliki informasi tentang halaman.

Microsoft Word adalah aplikasi pengeditan teks tercanggih di Windows saat ini. Ini memformat file dalam format DOCX, yang menjelaskan konten dokumen secara fleksibel dan ekstensif, memungkinkan pengguna untuk menentukan ukuran halaman, orientasi untuk bagian dokumen, dan, sebagai aplikasi WYSIWYG bahkan menampilkan halaman dokumen di layar. Namun demikian, masih belum ada informasi mengenai bagaimana konten dokumen ditampilkan pada halaman yang tersedia di file dokumen. File dokumen hanya menjelaskan konten itu sendiri, dan hubungan objek dokumen satu sama lain, bersama dengan beberapa batasan geometris. Hasilnya, sebelum menampilkan dokumen, Microsoft Word menghitung informasi itu sendiri. Di sinilah tata letak halaman berperan.

## Apa itu Tata Letak Halaman

Tata letak halaman dokumen adalah struktur data, yang menjelaskan lokasi objek tertentu pada halaman untuk semua objek dokumen. Selain itu, karena objek memiliki properti yang memengaruhi penampilannya, seperti ukuran font, bayangan, atau efek gambar, Anda tidak hanya perlu mengetahui di mana objek tersebut berada, tetapi juga area halaman yang ditempatinya, dan apakah itu akan berlaku untuk beberapa halaman sehingga objek lain tidak tumpang tindih dengan area yang sama.

Aspose.Words mengimplementasikan fungsionalitas tata letak halaman secara internal yang memungkinkannya menghasilkan semua format halaman tetap, seperti PDF, XPS, dan berbagai format gambar. Tanpa tata letak halaman, informasi yang disimpan dalam file dokumen halaman tetap tidak akan tersedia dan semua format ini tidak akan didukung.

Hubungan antara dokumen dan tata letak halaman cukup sederhana. Sementara dokumen menjelaskan konten, tata letak halaman yang sesuai menjelaskan geometri konten tersebut. Perhatikan, bahwa tata letak halaman tidak dapat ada tanpa dokumen karena tidak akan ada konten untuk menghitung geometri, tetapi dokumen dapat ada tanpa tata letak halaman. Misalnya, ketika dokumen DOCX diubah menjadi dokumen RTF, biasanya tidak perlu mengetahui geometrinya, karena tidak ada format yang menyimpannya.

## Membuat Tata Letak Halaman

Membuat tata letak halaman bisa menjadi prosedur yang mahal, baik dari segi kecepatan maupun memori. Ini karena beberapa alasan:

- Dokumen tersebut mungkin memiliki konten dalam jumlah besar, yang mungkin perlu ditampilkan pada ribuan halaman. Geometri setiap objek di setiap halaman perlu dijelaskan, menghabiskan sumber daya memori.
- Dokumen tersebut mungkin memiliki banyak aturan, yang membatasi geometri. Waktu komputasi yang cukup besar dapat dihabiskan, memastikan setiap kendala terpenuhi.
- Beberapa fitur dokumen, misalnya, bidang `NUMPAGES`, membuat dependensi rekursif untuk nilai properti di masa mendatang, yang tidak tersedia pada saat komputasi. Hal ini menyebabkan perhitungan berulang dan menambah waktu perhitungan.

Karena alasan yang disebutkan di atas, Aspose.Words akan membuat tata letak halaman hanya jika diperlukan. Alasan umum untuk ini adalah permintaan untuk merender halaman dokumen atau untuk mendapatkan nilai bidang yang bergantung pada informasi yang tersedia di tata letak halaman. Alasan yang kurang jelas adalah mengekspor dokumen ke HTML. Meskipun HTML bukan format halaman tetap dan tidak menjelaskan geometri objek konten, ia tetap mendukung gambar. Gambar tersebut mungkin dalam bentuk bentuk yang dibuat dalam Microsoft Word dengan teks di dalamnya. Misalnya, bagan dengan label sumbu dapat diekspor ke HTML sebagai gambar, tetapi sebelum ini dapat dilakukan, Aspose.Words perlu merender gambar tersebut, dan karenanya perlu mengetahui di mana menampilkan labelnya. Lihat contoh bagan di bawah ini:

<img src="/words/java/converting-to-fixed-page-format/converting-to-fixed-page-format-1.png" alt="converting-to-fixed-page-format-aspose-words-" style="width:800px"/>

### Sifat Non-Geometris

Selain menangani informasi geometris, tata letak halaman juga bertanggung jawab untuk menghitung warna dan gaya batas. Dalam Microsoft Word, warna teks dapat ditentukan sebagai otomatis, menyiratkan bahwa pemilihan warna harus didasarkan pada warna bayangan sel atau paragraf, atau berdasarkan warna halaman, tempat teks muncul.

Tata letak halaman menghitung di mana teks akan muncul dan konten apa yang akan ditampilkan di belakangnya, memungkinkan penghitungan warna. Ada perhitungan khusus lainnya yang dilakukan oleh tata letak halaman. Misalnya, batas horizontal dalam tabel bergantung pada apakah baris tabel terakhir dalam kolom teks, dan apakah baris tersebut dipecah melintasi kolom. Jika baris dirender terakhir dalam kolom, batas bawah digunakan sebagai ganti horizontal.

![non_geometric_properties_aspose-words-java](/words/java/converting-to-fixed-page-format/converting-to-fixed-page-format-2.png)

Di Aspose.Words, pengguna dapat meminta apakah akan membuat tata letak halaman baru, atau memperbarui yang sudah ada. Keduanya dapat dilakukan dengan metode [UpdatePageLayout](https://reference.aspose.com/words/java/com.aspose.words/document/#updatePageLayout\(\)), yang disediakan oleh kelas [Document](https://reference.aspose.com/words/java/com.aspose.words/document/). Jika tata letak halaman tidak ada, tetapi diperlukan (misalnya, saat dokumen diekspor ke format halaman tetap), Aspose.Words akan memanggil metode ini secara otomatis. Namun, jika tata letak halaman sudah ada, Aspose.Words akan menggunakan yang sudah ada, untuk menghindari penggunaan sumber daya yang diperlukan untuk memperbaruinya. Dalam hal ini, pengguna perlu memanggil metode `UpdatePageLayout`, untuk memastikan bahwa tata letak halaman mutakhir dengan model dokumen.

### Struktur Dinamis

Proses pembuatan tata letak halaman terdiri dari langkah-langkah berikut:

- *Conversion* - menghitung konten model dokumen dan menyiapkan objek tata letak yang sesuai.
- *Build* - mengatur objek tata letak untuk mewakili konten dokumen pada halaman.
- *Reflow* - memperbarui susunan objek untuk memenuhi batasan geometri.
- *Projecting layout objects into fixed page presentation and finalizing color information*.
- *Building and reflowing of shape content* - langkah yang diperlukan jika dokumen berisi bentuk dengan konten teks bersarang.

Perhatikan, bahwa tata letak halaman adalah struktur dinamis, yang dapat dibangun kembali sebagian. Ini terutama diperlukan ketika tidak mungkin menghitung nilai bidang tanpa membangun kembali struktur tata letak dokumen. Bidang dapat mereferensikan lokasi objek pada halaman, dan pada saat yang sama nilai bidang itu sendiri juga dirender pada halaman, memengaruhi lokasi objek yang direferensikan. Tata letak halaman tidak dapat dibuat sekaligus, karena nilai bidang mungkin belum tersedia pada saat penentuan posisi pada halaman.

Pertimbangkan skenario tipikal saat bidang `NUMPAGES` muncul di footer halaman pertama dalam dokumen. Nilai bidang ini adalah jumlah total halaman. Untuk memposisikan bidang pada halaman, nilainya harus diketahui. Jika hanya halaman pertama yang sedang dibangun maka jumlah total halaman belum diketahui. Dalam hal ini, tata letak halaman harus menggunakan nilai default dan kemudian kembali ke bidang tersebut dan mengubah nilainya sesuai dengan perhitungan aktual. Namun, mengubah nilai bidang dapat memengaruhi konten dokumen lain pada halaman dan pada akhirnya menyebabkan halaman baru ditambahkan atau halaman yang sudah ada dihapus, sehingga membuat nilai yang dihitung menjadi usang. Masalah ini dapat diatasi dengan memungkinkan pembaruan tata letak halaman yang ada.

Saat membuat tata letak, Anda juga dapat mengatur properti [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) yang memengaruhi keluaran dokumen pada halaman.

## Menyimpan ke Format halaman Tetap

Setelah tata letak halaman dibuat dan geometri objek serta posisinya pada halaman dihitung, dokumen dapat disimpan dalam format halaman tetap yang didukung oleh Aspose.Words. Saat menyimpan dokumen ke format halaman tetap, opsi rendering yang umum untuk semua format ini dapat digunakan. Mereka memungkinkan untuk mengontrol:

- Jumlah dan rentang halaman yang terdapat dalam dokumen keluaran ([PageIndex](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/), [PageCount](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Kemajuan penyimpanan dokumen halaman demi halaman ([PageSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Satu set karakter yang digunakan untuk rendering angka ([NumeralFormat](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Pemutar metafile ([MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/). Untuk lebih jelasnya, lihat [Mendapatkan Windows Metafile](/words/java/handling-windows-metafiles/) artikel.
- Tingkat kualitas untuk mengompresi ulang gambar JPEG, yang nilainya mungkin sedikit berbeda, bergantung pada format penyimpanan yang dipilih ([JpegQuality](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/jpegquality/).
- Optimalisasi grafik vektor dalam keluaran Aspose.Words ([OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Opsi grafik saat menyimpan ke format Tiff, Png, Bmp, Jpeg, Emf ([UseAntiAliasing](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getUseAntiAliasing), [UseHighQualityRendering](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Menyimpan dokumen dalam skala abu-abu ([ColorMode](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Beralih antara rendering bentuk DrawingML dan bentuk mundur ([DmlRenderingMode](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Beralih di antara mode rendering efek DML ([DmlEffectsRenderingMode](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).

Contoh di bawah ini menunjukkan cara menyimpan dokumen ke format JPEG menggunakan metode `Save` dan opsi rendering:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveDocumentToJPEG-SaveDocumentToJPEG.java" >}}
