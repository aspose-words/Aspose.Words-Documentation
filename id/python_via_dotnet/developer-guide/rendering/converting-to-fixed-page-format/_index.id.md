---
title: Mengonversi ke Format Halaman Tetap
second_title: Aspose.Words untuk Python via .NET
articleTitle: Mengonversi ke Format Halaman Tetap
linktitle: Mengonversi ke Format Halaman Tetap
description: "Simpan dokumen ke format PDF, XPS, HTML, XAML, PostScript, dan PCL menggunakan Python."
type: docs
weight: 10
url: /id/python-net/converting-to-fixed-page-format/
timestamp: 2024-01-31-14-23-37
---

Aspose.Words mengimplementasikan mesin tata letak halamannya sendiri. Sebelum mendalami spesifikasinya, ada baiknya mendiskusikan dokumen pada tingkat tinggi terlebih dahulu. Saat memikirkan sebuah dokumen, pengguna biasanya membayangkan sejumlah lembar kertas yang berisi kata, gambar, tabel, dan bagan. Dokumen dapat terdiri dari berbagai jenis, seperti teks, spreadsheet, slide, gambar CAD, diagram alur, dan oleh karena itu, pada dasarnya dapat memiliki tata letak yang berbeda. Sebagian besar aplikasi mengizinkan pengiriman dokumen ke printer; ini adalah saat pengguna benar-benar dapat melihat tampilan akhir dokumen yang diinginkan.

## Menampilkan Dokumen di Berbagai Aplikasi

Berbagai aplikasi tampilan atau penerbitan dokumen memungkinkan pengguna untuk membuka (Adobe Acrobat, XPS Viewer), dan terkadang mengedit (Adobe InDesign) dokumen dengan format tertentu. Aplikasi ini biasanya menghasilkan apa yang disebut dokumen format "halaman tetap". Format dokumen seperti itu menjelaskan dengan tepat di mana konten dokumen ditempatkan pada setiap halaman. Secara internal, format PDF atau XPS berisi deskripsi setiap halaman, serta instruksi menggambar, menentukan tata letak konten pada halaman. Ini mirip dengan format gambar, yang menjelaskan di mana konten ditampilkan dalam bentuk raster atau vektor.

Sebaliknya, beberapa aplikasi pengeditan teks tidak mendukung tampilan halaman dokumen. Misalnya, Microsoft Notepad hanya mendukung sedikit fungsi selain sekadar menampilkan, mengedit, dan mencetak teks. Pengamatan penting di sini adalah bahwa aplikasi tersebut tidak dapat menampilkan halaman dokumen atau memberi tahu pengguna berapa banyak halaman yang akan dicetak, hanya memungkinkan untuk melihat konten dokumen. Dokumen dapat disimpan dalam format teks biasa dan dapat dibuka oleh banyak aplikasi lain. Dengan menggunakan aplikasi yang memungkinkan melihat konten biner dari file arbitrer, seseorang dapat melihat apa yang disimpan dalam file dokumen – itu hanya teks biasa, tidak ada apa pun di dalamnya.

Aplikasi pengeditan teks yang sedikit lebih canggih, seperti Microsoft WordPad, menyimpan dokumen dalam Rich Text Format (RTF), yang mendukung lebih banyak fungsi pemformatan, seperti penyisipan gambar, pemformatan karakter, margin paragraf, dan spasi. Namun, format RTF juga hanya berisi konten dokumen, tidak memiliki informasi tentang halaman.

Microsoft Word adalah aplikasi pengeditan teks Windows tercanggih saat ini. Ini memformat file dalam format DOCX, yang mendeskripsikan konten dokumen secara fleksibel dan ekstensif, memungkinkan pengguna menentukan ukuran halaman, orientasi bagian dokumen, dan, sebagai aplikasi WYSIWYG, bahkan menampilkan halaman dokumen di layar. Meski demikian, masih belum ada informasi mengenai bagaimana isi dokumen tersebut ditampilkan pada halaman yang tersedia di file dokumen. File dokumen hanya mendeskripsikan konten itu sendiri, dan hubungan objek dokumen satu sama lain, beserta beberapa batasan geometris. Hasilnya, sebelum menampilkan dokumen, Microsoft Word menghitung sendiri informasi tersebut. Di sinilah tata letak halaman berperan.

## Apa itu Tata Letak Halaman

Tata letak halaman dokumen adalah struktur data, yang menjelaskan lokasi objek tertentu pada halaman untuk semua objek dokumen. Selain itu, karena objek memiliki properti yang memengaruhi tampilannya, seperti ukuran font, bayangan, atau efek gambar, Anda tidak hanya perlu mengetahui di mana objek tersebut berada, namun juga area halaman mana yang ditempatinya, dan apakah objek tersebut akan berada di tempatnya. diterapkan pada beberapa halaman sehingga objek lain tidak tumpang tindih pada area yang sama.

Aspose.Words mengimplementasikan fungsionalitas tata letak halaman secara internal yang memungkinkannya menghasilkan semua format halaman tetap, seperti PDF, XPS, dan berbagai format gambar. Tanpa tata letak halaman, informasi yang disimpan dalam file dokumen halaman tetap tidak akan tersedia dan semua format ini tidak akan didukung.

Hubungan antara dokumen dan tata letak halaman cukup sederhana. Jika dokumen menjelaskan kontennya, tata letak halaman yang terkait menjelaskan geometri konten tersebut. Perhatikan, bahwa tata letak halaman tidak dapat ada tanpa dokumen karena tidak akan ada konten untuk menghitung geometri, namun dokumen dapat ada tanpa tata letak halaman. Misalnya, ketika dokumen DOCX diubah menjadi dokumen RTF, biasanya geometri tidak perlu diketahui, karena tidak ada format yang menyimpannya.

## Membuat Tata Letak Halaman

Membuat tata letak halaman bisa menjadi prosedur yang mahal, baik dari segi kecepatan dan memori. Hal ini disebabkan beberapa alasan:

- Dokumen mungkin memiliki konten dalam jumlah besar, yang mungkin perlu ditampilkan dalam ribuan halaman. Geometri setiap objek di setiap halaman perlu dijelaskan, sehingga menghabiskan sumber daya memori.
- Dokumen tersebut mungkin memiliki banyak aturan, sehingga memberikan batasan pada geometri. Waktu komputasi yang cukup besar mungkin diperlukan untuk memastikan setiap batasan terpenuhi
- Beberapa fitur dokumen, misalnya bidang `NUMPAGES`, membuat ketergantungan rekursif untuk nilai properti masa depan, yang tidak tersedia pada saat komputasi. Hal ini menyebabkan penghitungan berulang dan menambah waktu komputasi.

Karena alasan yang disebutkan di atas, Aspose.Words akan membuat tata letak halaman hanya jika diperlukan. Alasan umum untuk hal ini adalah permintaan untuk merender halaman dokumen atau untuk mendapatkan nilai bidang yang bergantung pada informasi yang tersedia di tata letak halaman. Alasan yang kurang jelas mungkin adalah mengekspor dokumen ke HTML. Meskipun HTML bukan format halaman tetap dan tidak mendeskripsikan geometri objek konten, HTML tetap mendukung gambar. Gambar tersebut mungkin berbentuk bentuk yang dibuat di Microsoft Word dengan teks di dalamnya. Misalnya, bagan dengan label sumbu dapat diekspor ke HTML sebagai gambar, namun sebelum hal ini dapat dilakukan, Aspose.Words perlu merender gambar tersebut, dan karenanya perlu mengetahui di mana harus menampilkan labelnya. Lihat contoh grafik di bawah ini:

<img src="/words/python-net/converting-to-fixed-page-format/converting-to-fixed-page-format-1.png" alt="mengonversi-ke-format-halaman-tetap_1" style="width:800px"/>

### Properti Non-Geometris

Selain menangani informasi geometris, tata letak halaman juga bertanggung jawab untuk menghitung warna dan gaya batas. Di Microsoft Word, warna teks dapat ditentukan secara otomatis, yang menyiratkan bahwa pemilihan warna harus didasarkan pada warna bayangan sel atau paragraf, atau berdasarkan warna halaman tempat teks muncul.

Tata letak halaman menghitung di mana teks akan muncul dan konten apa yang akan ditampilkan di belakangnya, sehingga memungkinkan penghitungan warna. Ada perhitungan khusus lainnya yang dilakukan oleh tata letak halaman. Misalnya, batas horizontal dalam tabel bergantung pada apakah baris tabel berada di urutan terakhir dalam kolom teks, dan apakah baris tersebut dipecah menjadi beberapa kolom. Jika baris dirender terakhir dalam kolom, batas bawah digunakan sebagai pengganti batas horizontal.

![converting-to-fixed-page-format_2](/words/python-net/converting-to-fixed-page-format/converting-to-fixed-page-format-2.png)

Di Aspose.Words, pengguna dapat meminta apakah akan membuat tata letak halaman baru, atau memperbarui yang sudah ada. Kedua hal ini dapat dilakukan dengan metode [update_page_layout](https://reference.aspose.com/words/python-net/aspose.words/document/update_page_layout/), yang disediakan oleh kelas [Document](https://reference.aspose.com/words/python-net/aspose.words/document/). Jika tata letak halaman tidak ada, tetapi diperlukan (misalnya, ketika dokumen diekspor ke format halaman tetap), Aspose.Words akan secara otomatis memanggil metode ini. Namun, jika tata letak halaman sudah ada, Aspose.Words akan menggunakan tata letak yang sudah ada, untuk menghindari konsumsi sumber daya yang diperlukan untuk memperbaruinya. Dalam hal ini, pengguna perlu memanggil metode [update_page_layout](https://reference.aspose.com/words/python-net/aspose.words/document/update_page_layout/), untuk memastikan bahwa tata letak halaman mutakhir dengan model dokumen.

### Struktur Dinamis

Proses pembuatan tata letak halaman terdiri dari langkah-langkah berikut:

- *Conversion* – menghitung konten model dokumen dan menyiapkan objek tata letak yang sesuai.
- *Build* – mengatur objek tata letak untuk mewakili konten dokumen pada halaman.
- *Reflow* – memperbarui susunan objek untuk memenuhi batasan geometri.
- *Memproyeksikan objek tata letak ke dalam presentasi halaman tetap dan menyelesaikan informasi warna*.
- *Membangun dan mengalirkan ulang konten bentuk* – langkah yang diperlukan jika dokumen berisi bentuk dengan konten teks bertumpuk.

Perhatikan, bahwa tata letak halaman adalah struktur dinamis, yang sebagian dapat dibangun kembali. Hal ini terutama diperlukan ketika tidak mungkin menghitung nilai bidang tanpa membangun kembali struktur tata letak dokumen. Bidang tersebut dapat mereferensikan lokasi suatu objek pada suatu halaman, dan pada saat yang sama nilai bidang itu sendiri juga dirender pada halaman tersebut, sehingga memengaruhi lokasi objek yang direferensikan. Tata letak halaman tidak dapat dibuat sekaligus, karena nilai bidang mungkin belum tersedia pada saat pemosisian pada halaman.

Pertimbangkan skenario umum ketika bidang `NUMPAGES` muncul di footer halaman pertama dokumen. Nilai bidang ini adalah jumlah total halaman. Untuk memposisikan field pada halaman, nilainya harus diketahui. Jika saat ini hanya halaman pertama yang dibuat maka jumlah halaman keseluruhannya belum diketahui. Dalam hal ini, tata letak halaman harus menggunakan nilai default dan kemudian kembali ke bidang tersebut dan mengubah nilainya sesuai dengan perhitungan sebenarnya. Namun, mengubah nilai bidang dapat mempengaruhi konten dokumen lain pada suatu halaman dan pada akhirnya menyebabkan halaman baru ditambahkan atau halaman yang sudah ada dihapus, sehingga membuat nilai yang dihitung menjadi usang. Masalah ini dapat diatasi dengan memungkinkan pembaruan tata letak halaman yang ada.

Saat membuat tata letak, dimungkinkan juga untuk mengatur properti [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/) yang memengaruhi keluaran dokumen pada halaman.

## Menyimpan ke Format Halaman Tetap

Setelah tata letak halaman dibuat dan geometri objek serta posisinya pada halaman dihitung, dokumen dapat disimpan dalam format halaman tetap yang didukung oleh Aspose.Words. Saat menyimpan dokumen ke format halaman tetap, opsi rendering yang umum untuk semua format ini dapat digunakan. Mereka mengizinkan untuk mengontrol:

- Jumlah dan rentang halaman yang terdapat dalam dokumen keluaran ([page_set](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/page_set/)).
- Satu set karakter yang digunakan untuk rendering angka ([numeral_format](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/numeral_format/)).
- Pemain metafile ([metafile_rendering_options](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/metafile_rendering_options/)). Untuk lebih jelasnya, lihat artikel [Menangani Metafile Windows](/words/id/python-net/handling-windows-metafiles/).
- Tingkat kualitas untuk mengompresi ulang gambar JPEG, yang nilainya mungkin sedikit berbeda, tergantung pada format penyimpanan yang dipilih ([jpeg_quality](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/jpeg_quality/)).
- Optimalisasi grafik vektor dalam keluaran Aspose.Words ([optimize_output](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/optimize_output/)).
- Opsi grafik saat menyimpan ke format Tiff, PNG, Bmp, Jpeg, Emf ([use_anti_aliasing](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/use_anti_aliasing/), [use_high_quality_rendering](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/use_high_quality_rendering/)).
- Menyimpan dokumen dalam skala abu-abu ([color_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/color_mode/)).
- Beralih antara rendering bentuk DrawingML dan bentuk fallback ([dml_rendering_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/dml_rendering_mode/)).
- Beralih antara mode rendering efek DML ([dml_effects_rendering_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/dml_effects_rendering_mode/)).

Contoh di bawah ini menunjukkan cara menyimpan dokumen ke format JPEG menggunakan metode [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) dan opsi rendering:

{{< highlight python >}}
# Open the document
doc = aw.Document(docs_base.my_dir + "Rendering.docx")
# Save as a JPEG image file with default options
doc.save(docs_base.artifacts_dir + "Rendering.JpegDefaultOptions.jpg")

# Save document to stream as a JPEG with default options
docStream = io.BytesIO()
doc.save(docStream, aw.SaveFormat.JPEG)
# Rewind the stream position back to the beginning, ready for use
docStream.seek(0)

# Save document to a JPEG image with specified options.
# Render the third page only and set the JPEG quality to 80%
# In this case we need to pass the desired SaveFormat to the ImageSaveOptions constructor 
# to signal what type of image to save as.
imageOptions = aw.saving.ImageSaveOptions(aw.SaveFormat.JPEG)
imageOptions.page_index = 2
imageOptions.page_count = 1
imageOptions.jpeg_quality = 80
doc.save(docs_base.artifacts_dir + "Rendering.JpegCustomOptions.jpg", imageOptions)
{{< /highlight >}}
