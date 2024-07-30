---
title: Sitemap
second_title: Aspose.Words Sitemap Java
articleTitle: Apa yang baru di Aspose.Words Sitemap Java
linktitle: Apa yang baru di Aspose.Words Sitemap Java
type: docs
description: "Aspose.Words Sitemap Java memperluas dan meningkatkan setiap hari. Di halaman ini, Anda dapat belajar tentang fitur besar dan paling menarik dari produk."
weight: 2
url: /id/java/what-s-new-in-aspose-words-for-java/
---

Halaman ini menjelaskan yang paling menarik Aspose.Words fitur yang diperkenalkan dalam rilis terbaru.

## Aspose.Words untuk Java 24.5, 24.6, 24.7

Aspose.Words 24.5 memperluas opsi untuk rakitan, meningkatkan kemampuan rendering, dan memperluas beberapa opsi lainnya.

Aspose.Words 24.6 meningkatkan opsi rendering, meningkatkan fungsionalitas pencarian dan perbandingan, dan memperluas beberapa fitur lainnya.

Aspose.Words 24.7 mengubah cara Anda bekerja dengan ActiveX, memperluas kemampuan rendering, serta mengekspor ke format Markdown dan XLSX.

### Format yang Didukung

Mulai dari versi 24.7, ekspor ke PDF/UA-2 didukung untuk memastikan aksesibilitas bagi pengguna penyandang disabilitas.

### Rendering dan Pencetakan

#### Perubahan Charts, Shapes, dan DrawingML <sup>24.5</sup>

- Render efek DrawingML untuk grafik SVG, memperluas fungsionalitas sebelumnya yang terbatas pada gambar, telah diterapkan.
- Dukungan untuk membuat bagan kombo dan menyesuaikan properti seperti lebar celah, tumpang tindih, dan skala gelembung dalam grup seri telah diperkenalkan dengan menambahkan [ChartSeriesGroup](https://reference.aspose.com/words/java/com.aspose. word/chartseriesgroup/) dan kelas [ChartSeriesGroupCollection](https://reference.aspose.com/words/java/com.aspose.words/chartseriesgroupcollection/) dan kelas [SeriesGroups](https://reference.aspose.com/ properti word/java/com.aspose.words/chart/#getSeriesGroups).
- Fungsionalitas untuk memanipulasi efek SoftEdge bentuk telah diimplementasikan dengan menambahkan kelas [SoftEdgeFormat](https://reference.aspose.com/words/java/com.aspose.words/softedgeformat/).
- Kemampuan untuk mengubah nilai penyesuaian bentuk telah diterapkan dengan menambahkan [AdjustmentCollection](https://reference.aspose.com/words/java/com.aspose.words/adjustmentcollection/) dan [Adjustment](https:/ /reference.aspose.com/words/java/com.aspose.words/adjustment/) kelas umum dan [Adjustments](https://reference.aspose.com/words/java/com.aspose.words/shape/# getAdjustments) properti.

#### Perubahan Bagan, Bentuk, dan Gambar <sup>24.6</sup>

* Kemampuan pembuatan grafik telah ditingkatkan. Kini Anda dapat membuat lebih banyak variasi bagan, termasuk *Peta Pohon*, *Sunburst*, *Histogram*, bagan *Pareto*, bagan *Kotak & Kumis*, *Air Terjun*, dan *Corong*. Hal ini memungkinkan Anda memvisualisasikan data dengan cara yang lebih beragam dan informatif.
* Kontrol warna untuk pemformatan bayangan telah ditingkatkan. Anda bisa mendapatkan kontrol yang lebih tepat atas tampilan dokumen Anda dengan mengakses warna bayangan.
* Peningkatan kinerja untuk rendering latar belakang telah ditingkatkan. Anda dapat mempercepat rendering latar belakang yang berisi elemen kecil secara signifikan berkat teknologi ubin asli.
* Gradien realistis untuk bentuk telah ditambahkan. Anda sekarang dapat membuat bentuk DML dengan gradien non-linier, meniru gaya visual Microsoft Word untuk tampilan yang lebih halus.

#### Penyesuaian Label Data Bagan <sup>24.7</sup>

Kemampuan untuk menyesuaikan label data bagan seperti **Orientation** dan **Rotation** telah ditambahkan.

#### Gaya Nomor Khusus untuk Tingkat Daftar <sup>24.7</sup>

Penyetel untuk properti publik [CustomNumberStyleFormat](https://reference.aspose.com/words/java/com.aspose.words/listlevel/#getCustomNumberStyleFormat) telah ditambahkan. Anda sekarang dapat menentukan gaya nomor khusus untuk tingkat daftar.

#### Perubahan dalam bekerja dengan ActiveX <sup>24.7</sup>

* Properti objek ActiveX sekarang dapat dimodifikasi, memberi Anda kontrol lebih besar atas perilakunya.
* Kemampuan untuk mengubah nilai tombol radio kontrol ActiveX untuk mengaktifkan interaksi dinamis telah ditambahkan.
* Kemampuan untuk mengubah kotak centang ActiveX menjadi "dicentang" atau "tidak dicentang" telah ditambahkan.

### Memuat dan Menyimpan Dokumen

#### Mengekspor Tautan ke Format Penurunan Harga <sup>24.7</sup>

Kemampuan untuk mengontrol ekspor tautan dalam format Markdown telah ditambahkan melalui penerapan properti [LinkExportMode](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getLinkExportMode).

### Cari dan Bandingkan

#### Opsi Perbandingan Lanjutan <sup>24.6</sup>
Kemampuan untuk menyederhanakan alur kerja analisis data dengan fungsionalitas perbandingan yang ditingkatkan telah ditambahkan. Ini mencakup opsi [IgnoreStoreItemId](https://reference.aspose.com/words/java/com.aspose.words/advancedcompareoptions/#getIgnoreStoreItemId) baru dan antarmuka yang didesain ulang untuk perbandingan lanjutan.

### Lainnya

* Fungsi untuk menghilangkan halaman kosong dari dokumen telah diterapkan dengan menambahkan metode [RemoveBlankPages](https://reference.aspose.com/words/java/com.aspose.words/document/#removeBlankPages). <sup>24.5</sup>
* Kemampuan untuk memeriksa keberadaan makro VBA tanpa memuat dokumen telah disediakan dengan menambahkan [HasMacros](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#hasMacros) Properti. <sup>24.5</sup>
* Menyimpan penomoran sumber saat memasukkan dokumen menggunakan Mesin Pelaporan LINQ kini didukung. <sup>24.5</sup>
* Properti [DateTimeUtc](https://reference.aspose.com/words/java/com.aspose.words/comment/#getDateTimeUtc) baru telah ditambahkan – ini memberikan stempel waktu yang lebih tepat untuk komentar, meningkatkan pengorganisasian, dan ketertelusuran. <sup>24.6</sup>
* Mesin Pelaporan LINQ telah ditingkatkan. Penghapusan selektif paragraf kosong dan definisi pesan khusus untuk anggota objek yang hilang telah dilakukan, menghasilkan laporan yang lebih bersih dan informatif. <sup>24.6</sup>
* Format tanggalwaktu sekarang secara otomatis terdeteksi untuk ekspor tanpa batas ke format XLSX. <sup>24.7</sup>
* Properti publik [IsProtected](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/#isProtected), yang memungkinkan Anda memverifikasi apakah proyek VBA dilindungi, telah ditambahkan. <sup>24.7</sup>

{{% alert color="primary" %}}

Pelajari lebih lanjut tentang [Catatan Rilis Aspose.Words untuk Java 24.5](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-5-release-notes/).

Pelajari lebih lanjut tentang [Catatan Rilis Aspose.Words untuk Java 24.6](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-6-release-notes/).

Pelajari lebih lanjut tentang [Catatan Rilis Aspose.Words untuk Java 24.7](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-7-release-notes/).

{{% /alert %}}

## Aspose.Words Sitemap Java 24.1, 24.2, 24.3, 24.4

Aspose.Words 24.1 meningkatkan pengalaman di sekitar mengelola warna stroke, meningkatkan objek OLE dan pelaporan LINQ, serta memperkenalkan sumber Bibliografi baru publik APISitemap

Aspose.Words 24.2 Grafik diperluas API, manajemen gaya, dan opsi LINQ. Versi ini Aspose.Words juga memperkenalkan kemampuan untuk menentukan SvgSaveOptions selama rendering, pemuatan kontrol yang lebih fleksibel Markdown file, dan bekerja dengan teks referensi untuk catatan kaki dan catatan akhir.

Aspose.Words 24.3 memperkenalkan TIFF Reader / Writer baru dan Emulation operasi raster biner untuk metafile WMF. Aspose.Words 24.3 juga terus memperluas Charts APISitemap

Aspose.Words 24.4 meningkatkan penyimpanan format, beberapa opsi rendering, serta meningkatkan kerja dengan tanda tangan digital.

### Format yang Didukung <sup>24.4</sup>

Format gambar WebP modern kini didukung di Aspose.Words. Anda sekarang dapat membaca dan menyisipkan gambar WebP ke dalam dokumen, serta menyimpan gambar dalam format WebP.

### Rendering dan Pencetakan

#### Kontrol Warna Stroke <sup>3,1 g</sup>

Login [Stroke](https://reference.aspose.com/words/java/com.aspose.words/stroke/) kelas telah diperpanjang dengan satu set properti publik baru yang berkaitan dengan mengelola warna stroke: [ForeThemeColor](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getForeThemeColor) Login [BackThemeColor](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getBackThemeColor), [ForeTintAndShade](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getForeTintAndShade) Login [BackTintAndShade](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getBackTintAndShade)Sitemap

#### Login API Login <sup>24.2 / 24.3 / 24.4</sup>

Login **DrawingML Charts API** terus diperluas.

#### Menyematkan Font yang Dideklarasikan dalam Aturan @font-face <sup>24.4</sup>

Ditambahkan kemampuan untuk menyematkan font yang dideklarasikan dalam aturan @font-face ke dalam definisi font dokumen yang dihasilkan dengan menambahkan properti baru bernama [SupportFontFaceRules](https://reference.aspose.com/words/java/com.aspose.words/htmlloadoptions/#getSupportFontFaceRules).

#### Bekerja dengan Format Cahaya dan Pantulan <sup>24.4</sup>

Kemampuan untuk bekerja dengan format cahaya dan pantulan untuk objek gambar telah diimplementasikan.

### Memuat dan Menyimpan Dokumen

#### Tentukan SvgSaveOptions Selama rendering <sup>24.2 g</sup>

Kemampuan untuk menentukan [SvgSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/svgsaveoptions/) selama rendering telah ditambahkan menggunakan [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/)Sitemap[Save](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#save-java.io.OutputStream-com.aspose.words.SvgSaveOptions) Login [OfficeMathRenderer](https://reference.aspose.com/words/java/com.aspose.words/officemathrenderer/)Sitemap[Save](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#save-java.io.OutputStream-com.aspose.words.SvgSaveOptions) Login

#### Mempertahankan Garis Kosong saat Pemuatan Markdown Login <sup>24.2 g</sup>

Kemampuan untuk melestarikan garis kosong ketika pemuatan Markdown file telah ditambahkan.

#### Pembaca TIFF Baru / Writer <sup>24.3 g</sup>

Pembaca TIFF baru / penulis untuk Aspose.Words Sitemap .NET Standard, .NET 6 dan kemudian telah dikembangkan. Aspose.Words Sitemap .NET 24.3 menambahkan dukungan untuk membaca gambar TIFF dengan jenis kompresi JPEG dan JPEG lama, dan juga meningkatkan kualitas operasi membaca dan menulis secara signifikan.

### Sitemap

* Sitemap Kemampuan untuk memodifikasi teks `TextBox` Kontrol OLE telah diperkenalkan dengan menambahkan yang baru [Text](https://reference.aspose.com/words/java/com.aspose.words/textboxcontrol/#getText) properti untuk yang baru [TextBoxControl](https://reference.aspose.com/words/java/com.aspose.words/textboxcontrol/) Sitemap 3,1 g <sup>3,1 g</sup>
* Sumber Bibliografi publik API diimplementasikan dengan menambahkan beberapa baru [Bibliography](https://reference.aspose.com/words/java/com.aspose.words/bibliography/), [Source](https://reference.aspose.com/words/java/com.aspose.words/source/), [ContributorCollection](https://reference.aspose.com/words/java/com.aspose.words/contributorcollection/), [Contributor](https://reference.aspose.com/words/java/com.aspose.words/contributor/), [Corporate](https://reference.aspose.com/words/java/com.aspose.words/corporate/), [PersonCollection](https://reference.aspose.com/words/java/com.aspose.words/personcollection/) Login [Person](https://reference.aspose.com/words/java/com.aspose.words/person/) kelas dan [SourceType](https://reference.aspose.com/words/java/com.aspose.words/sourcetype/) enumerasi, serta dengan menambahkan baru [Bibliography](https://reference.aspose.com/words/java/com.aspose.words/document/#getBibliography) harta [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) Sitemap <sup>3,1 g</sup>
* Sitemap API untuk membatasi akses ke anggota tipe menggunakan sintaks template untuk Mesin Pelaporan LINQ telah disediakan. <sup>3,1 g</sup>
* Sifat publik baru [Priority](https://reference.aspose.com/words/net/aspose.words/style/priority/), [UnhideWhenUsed](https://reference.aspose.com/words/net/aspose.words/style/unhidewhenused/), Login [SemiHidden](https://reference.aspose.com/words/net/aspose.words/style/semihidden/) untuk manajemen gaya yang ditingkatkan telah ditambahkan ke [Style](https://reference.aspose.com/words/net/aspose.words/style/) Sitemap <sup>24.2 g</sup>
* Sitemap Fungsi untuk mengambil teks tanda referensi aktual untuk catatan kaki dan catatan akhir telah ditingkatkan dengan [ActualReferenceMark](https://reference.aspose.com/words/net/aspose.words.notes/footnote/actualreferencemark/) properti dan [UpdateActualReferenceMarks](https://reference.aspose.com/words/net/aspose.words/document/updateactualreferencemarks/) Login <sup>24.2 g</sup>
* Kompatibilitas dengan `Word 2016` grafik untuk `LINQ Reporting Engine` telah diaktifkan. <sup>24.2 g</sup>
* Emulasi operasi raster biner untuk metafile WMF telah diterapkan. <sup>24.3 g</sup>
* Kemampuan untuk menentukan opsi tanda tangan untuk dokumen dalam SaveOptions telah diaktifkan dengan menambahkan kelas baru bernama [DigitalSignatureDetails](https://reference.aspose.com/words/java/com.aspose.words/digitalsignaturedetails/) dengan anggota publik baru, serta menambahkan properti baru ke dalam kelas-kelas [OoxmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/ooxmlsaveoptions/), [DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/), dan [OdtSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/). <sup>24.4</sup>

{{% alert color="primary" %}}

Pelajari lebih lanjut [Aspose.Words Sitemap Java 24.1 Login](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-1-release-notes/)Sitemap

Pelajari lebih lanjut [Aspose.Words Sitemap Java 24.2株式会社](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-2-release-notes/)

Pelajari lebih lanjut [Aspose.Words Sitemap Java 24.3 Login](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-3-release-notes/)

Pelajari lebih lanjut [Aspose.Words Sitemap Java 24.4 Login](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-4-release-notes/)

{{% /alert %}}

## Aspose.Words Sitemap Java 23.9, 23.10, 23.11, 23.12

Aspose.Words 23.9 memperluas opsi rendering, emulasi rendering metafile, dan markdown menyimpan opsi.

Aspose.Words 23.10 meningkatkan rendering, memperluas opsi untuk memuat dan menyimpan dokumen, dan memungkinkan pengguna untuk menggabungkan dokumen dengan cara baru.

Aspose.Words 23.11 meningkatkan pekerjaan dengan revisi, format XLSX dan font pada legenda grafik dengan opsi tambahan.

Aspose.Words 23.12 memperkenalkan sifat baru dan enumerasi untuk bekerja dengan dokumen PDF, dukungan untuk WebP gambar, dan memperbarui perpustakaan Bouncy Castle.

### Rendering dan Pencetakan

#### Kustomisasi Judul Axes di DrawingML Login <sup>23.9 g</sup>

Kemampuan untuk menyesuaikan judul sumbu dalam grafik DrawingML telah diperkenalkan oleh implementasi kelas publik baru [ChartAxisTitle](https://reference.aspose.com/words/java/com.aspose.words/chartaxistitle/) Login [Title](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/#getTitle) Login

#### Menentukan Posisi Vertikal Font dalam Paragraf <sup>23.9 g</sup>

Sekarang dimungkinkan untuk menentukan posisi vertikal font dalam paragraf menggunakan publik baru [BaselineAlignment](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getBaselineAlignment) properti dan yang baru [BaselineAlignment](https://reference.aspose.com/words/java/com.aspose.words/baselinealignment/) Sitemap

#### Kontrol Warna Foreground <sup>18.10 g</sup>

Kemampuan untuk mengambil warna latar belakang tanpa pengubah telah ditambahkan ke [Fill](https://reference.aspose.com/words/java/com.aspose.words/fill/) Login [Stroke](https://reference.aspose.com/words/java/com.aspose.words/stroke/) kelas melalui **BaseForeColor** Login

#### Memperluas Fungsional Grafik <sup>18.10 g</sup>

Fungsi fungsi [ChartDataPointCollection](https://reference.aspose.com/words/java/com.aspose.words/chartdatapointcollection/), [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/), Login [ChartFormat](https://reference.aspose.com/words/java/com.aspose.words/chartformat/) Kelas telah diperluas dengan metode dan properti baru.

#### Secara otomatis Menyesuaikan dan Sesuai Gambar ke Bentuk <sup>18.10 g</sup>

Cara sederhana untuk secara otomatis menyesuaikan dan sesuaikan gambar dalam bentuk tertentu telah disediakan melalui yang baru [FitImageToShape](https://reference.aspose.com/words/java/com.aspose.words/imagedata/#fitImageToShape) Login

#### Format Font Default untuk Menggambar Login Grafik Legenda Entries <sup>23.11</sup>

Kemampuan untuk menentukan format font default untuk entri legenda grafik DrawingML telah ditambahkan melalui **Font** Login Fitur ini memfasilitasi penampilan yang lebih ramping dan konsisten untuk elemen grafik, meningkatkan estetika dokumen secara keseluruhan.

#### Tentukan Tata Letak Halaman saat Membuka PDF di Pembaca <sup>12.12.12</sup>

Kemampuan untuk menentukan tata letak halaman yang akan digunakan ketika membuka dokumen dalam pembaca PDF telah ditambahkan melalui pengenalan baru [PageLayout](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getPageLayout) harta [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) kelas dan pengenalan baru [PdfPageLayout](https://reference.aspose.com/words/java/com.aspose.words/pdfpagelayout/) Sitemap

### Memuat dan Menyimpan Dokumen

#### Menentukan Nama Folder untuk Membangun Gambar URIs di Markdown <sup>23.9 g</sup>

Login [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) kelas telah diperluas dengan termasuk [ImagesFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImagesFolderAlias) properti, yang memungkinkan untuk menentukan nama folder yang digunakan untuk membangun gambar URI ditulis ke dalam Markdown Sitemap

#### Login Ukuran output <sup>18.10 g</sup>

Berbagai optimasi rendering PDF untuk mengurangi ukuran output saat memanfaatkan [OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getOptimizeOutput) pengaturan telah diimplementasikan.

#### Recognize Hyperlinks ketika Memuat Dokumen TXT <sup>18.10 g</sup>

Fitur untuk mengenali hyperlink ketika memuat dokumen TXT telah diterapkan dengan menambahkan yang baru [DetectHyperlinks](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDetectHyperlinks) Login

### Sitemap

- emulasi rendering Metafile untuk menentukan ukuran rasterisasi telah diterapkan, khusus untuk lebar pena WMF dan lebar pena kosmetik EMF. Untuk mencapai ini, **ScaleWmfFontsToMetafileSize** properti diganti dengan [EmulateRenderingToSizeOnPage](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/#getEmulateRenderingToSizeOnPage) properti dan [EmulateRenderingToSizeOnPageResolution](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/#getEmulateRenderingToSizeOnPageResolution) properti ditambahkan. <sup>23.9 g</sup>
- Metode yang disederhanakan untuk memasukkan satu dokumen ke dokumen lain pada posisi kursor saat ini telah diperkenalkan menggunakan [InsertDocumentInline](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocumentInline-com.aspose.words.Document-int-com.aspose.words.ImportFormatOptions) Login <sup>18.10 g</sup>
- Login Kemampuan untuk mengakses dan memodifikasi sifat gaya telah ditambahkan melalui pengenalan baru [Locked](https://reference.aspose.com/words/java/com.aspose.words/style/#getLocked) Login <sup>18.10 g</sup>
- Parameter tipe generik telah ditambahkan ke metode [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) Sitemap <sup>18.10 g</sup>
- Cara untuk mengontrol ketika revisi tertentu harus diterima / disuntikkan atau tidak diimplementasikan dengan menggunakan [Accept](https://reference.aspose.com/words/java/com.aspose.words/revisioncollection/#accept-com.aspose.words.IRevisionCriteria) Login [Reject](https://reference.aspose.com/words/java/com.aspose.words/revisioncollection/#reject-com.aspose.words.IRevisionCriteria) Login Peningkatan ini memberi pengguna kontrol yang lebih halus atas proses revisi. <sup>23.11</sup>
- Login Kemampuan untuk menulis semua bagian dokumen ke lembar kerja XLSX yang sama telah disediakan melalui yang baru [XlsxSectionMode](https://reference.aspose.com/words/java/com.aspose.words/xlsxsectionmode/) jenis enumerasi dan jenis baru [SectionMode](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/#getSectionMode) Login <sup>23.11</sup>
- Sitemap WebP gambar telah diperkenalkan. Harap dicatat bahwa fitur ini hanya tersedia untuk .NetLogin .NET6+ versi. <sup>12.12.12</sup>

{{% alert color="primary" %}}

Pelajari lebih lanjut [Aspose.Words Sitemap Java 23.9 Login](/words/java/aspose-words-for-java-23-9-release-notes/)Sitemap

Pelajari lebih lanjut [Aspose.Words Sitemap Java 23.10 Login](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-10-release-notes/)Sitemap

Pelajari lebih lanjut [Aspose.Words Sitemap Java 23.11 Login](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-11-release-notes/)Sitemap

Pelajari lebih lanjut [Aspose.Words Sitemap Java 23.12 Login](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-12-release-notes/)Sitemap

{{% /alert %}}

## Aspose.Words Sitemap Java 23.5, 23.6, 23.7, 23.8

Aspose.Words 23.5 meningkatkan kemampuan untuk bekerja dengan data seri grafik dan kemampuan untuk bekerja dengan dokumen ODT, serta meningkatkan header / footer dan pembungkus teks mereka.

Aspose.Words 23.6 memperluas opsi rendering, menambahkan format ekspor baru, meningkatkan pelaporan LINQ dan LowCode Sitemap

Aspose.Words 23.7 meningkatkan kemampuan pelaporan, menambahkan format ekspor baru, dan memperkenalkan perubahan untuk bekerja dengan tabel dan tanda tangan digital.

Aspose.Words 23.8 memperluas kemampuan format yang berbeda, meningkatkan rendering, dan menambahkan opsi baru untuk bekerja dengan bidang

### Sitemap

* Mulai dengan versi 23.6, dimungkinkan untuk menyimpan dokumen dalam format XLSX. Sekarang Anda dapat mengonversi dokumen Anda ke format Excel. <sup>23.6</sup>

* Mulai dengan versi 23.7, dimungkinkan untuk menyimpan halaman dokumen atau bentuk dalam format EPS. <sup>23.7 g</sup>

* Sitemap #### Fitur Format Baru

  - Fungsi untuk secara otomatis menghasilkan Tabel Konten (TOC) untuk dokumen MOBI telah diperkenalkan. <sup>18.8 g</sup>
  Sitemap [PdfEncryptionDetails](https://reference.aspose.com/words/java/com.aspose.words/pdfencryptiondetails/#PdfEncryptionDetails-java.lang.String-java.lang.String) konstruktor telah diperluas dengan [PdfPermissions](https://reference.aspose.com/words/java/com.aspose.words/pdfpermissions/)Sitemap <sup>18.8 g</sup>
  - Membentuk teks vertikal untuk metafile EMF telah diterapkan. <sup>18.8 g</sup>

### Login

#### Dapatkan dan Memodifikasi Database <sup>23.5</sup>

Fitur untuk mendapatkan dan memodifikasi data seri grafik disediakan dengan menambahkan:

- kelas baru: [ChartXValue](https://reference.aspose.com/words/java/com.aspose.words/chartxvalue/), [ChartYValue](https://reference.aspose.com/words/java/com.aspose.words/chartyvalue/), [ChartXValueCollection](https://reference.aspose.com/words/java/com.aspose.words/chartxvaluecollection/), [ChartYValueCollection](https://reference.aspose.com/words/java/com.aspose.words/chartyvaluecollection/), [BubbleSizeCollection](https://reference.aspose.com/words/java/com.aspose.words/bubblesizecollection/), [ChartMultilevelValue](https://reference.aspose.com/words/java/com.aspose.words/chartmultilevelvalue/)
- jenis enum baru: [ChartXValueType](https://reference.aspose.com/words/java/com.aspose.words/chartxvaluetype/), [ChartYValueType](https://reference.aspose.com/words/java/com.aspose.words/chartyvaluetype/)

#### Mendukung Typografi Lanjutan <sup>23.6</sup>

Dukungan untuk Typografi Lanjutan di WMF, EMF dan EMF + rendering telah ditambahkan.

#### Konten Berwarna di Halaman <sup>23.6</sup>

Properti publik [PageInfo.Colored](https://reference.aspose.com/words/java/com.aspose.words/pageinfo/#getColored), menunjukkan apakah halaman berwarna atau tidak, telah ditambahkan.

#### Format untuk Label Data Chart <sup>23.6</sup>

Kemampuan untuk mengatur pengisian, stroke, dan format panggilan untuk label data grafik telah diterapkan.

### Mail Merge Login

#### Penyisipan HTML dinamis untuk Mesin Pelaporan LINQ <sup>23.6</sup>

Cara baru penyisipan HTML dinamis untuk Mesin Pelaporan LINQ telah ditambahkan.

#### Mustache Sitemap <sup>23.7 g</sup>

Mustache Tag sekarang didukung dalam [MailMerge.GetRegionsHierarchy](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getRegionsHierarchy) Login [MailMerge.GetFieldNamesForRegion](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getFieldNamesForRegion-java.lang.String) Login

#### LINQ Pelaporan Template Syntax Memperbarui <sup>23.7 g</sup>

Sintaks LINQ Pelaporan Engine sekarang mendukung `ElementAt` dan metode ekstensi ElementAtOrDefault.

#### Menentukan Ukuran Gambar Rendered <sup>18.8 g</sup>

Properti publik baru **ImageSize** untuk menentukan ukuran gambar yang diberikan dalam pixel telah diperkenalkan.

#### Preserve Whitespaces untuk Nilai String JSON - LINQ <sup>18.8 g</sup>

Pilihan telah ditambahkan ke LINQ Pelaporan Mesin untuk melestarikan ruang putih untuk nilai string JSON.

### LowCode <sup>23.6</sup>

Login LowCode metode dimaksudkan untuk menggabungkan berbagai jenis dokumen ke dalam dokumen output tunggal telah ditambahkan.

### Sitemap

- Dukungan untuk pembungkus teks di header / footers telah diterapkan. <sup>23.5</sup>
- Login Kemampuan untuk menghapus tanda tangan digital dari dokumen ODT telah ditambahkan melalui [RemoveAllSignatures](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#removeAllSignatures-java.io.InputStream-java.io.OutputStream) Login <sup>23.5</sup>
- Login Properti publik [PhoneticGuide](https://reference.aspose.com/words/java/com.aspose.words/run/#getPhoneticGuide) untuk mendapatkan teks dasar dan ruby dari panduan telepon [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) Promo <sup>23.5</sup>
- Login Kemampuan untuk mengambil nilai tanda tangan digital dari dokumen yang ditandatangani secara digital sebagai array byte telah ditambahkan dengan memperkenalkan baru [SignatureValue](https://reference.aspose.com/words/java/com.aspose.words/digitalsignature/#getSignatureValue) Login <sup>23.7 g</sup>
- Sitemap [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) Login [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) kelas telah diperpanjang dengan anggota publik baru – [Row.NextRow](https://reference.aspose.com/words/java/com.aspose.words/row/#getNextRow), [Row.PreviousRow](https://reference.aspose.com/words/java/com.aspose.words/row/#getPreviousRow), [Cell.NextCell](https://reference.aspose.com/words/java/com.aspose.words/cell/#getNextCell), Login [Cell.PreviousCell](https://reference.aspose.com/words/java/com.aspose.words/cell/#getPreviousCell)Sitemap <sup>23.7 g</sup>
- Dukungan untuk bidang CITASI dan BIBLIOGRAPHY telah ditambahkan. <sup>18.8 g</sup>

{{% alert color="primary" %}}

Pelajari lebih lanjut [Aspose.Words Sitemap Java 23.5 Login](/words/java/aspose-words-for-java-23-5-release-notes/)Sitemap

Pelajari lebih lanjut [Aspose.Words Sitemap Java 23.6 Login](/words/java/aspose-words-for-java-23-6-release-notes/)Sitemap

Pelajari lebih lanjut [Aspose.Words Sitemap Java 23.7 Login](/words/java/aspose-words-for-java-23-7-release-notes/)Sitemap

Pelajari lebih lanjut [Aspose.Words Sitemap Java 23.8 Login](/words/java/aspose-words-for-java-23-8-release-notes/)Sitemap

{{% /alert %}}

## Aspose.Words Sitemap Java 23.1, 23.2, 23.3, 23.4

Aspose.Words 23.1 meningkatkan kinerja emulasi operasi raster, serta meningkatkan ekspor dokumen dan kualitas rendering.

Aspose.Words 23.2 memperkenalkan dokumen tabungan dalam format MOBI, meningkatkan rendering grafik, dan membuat perubahan yang tidak dapat didokumentasikan ke rincian penampilan dokumen.

Aspose.Words 23.3 meningkatkan impor dokumen dan penghematan dengan sifat baru, dan juga meningkatkan kualitas kerja dengan latar belakang dan warna latar belakang dan gradien radial.

Aspose.Words 23.4 meningkatkan perhitungan beberapa parameter dan penentuan posisi tabel dan teks sekitarnya.

### Peningkatan Kinerja

#### Emulasi Operasi Raster <sup>23.1</sup>

Kinerja dan kualitas emulasi operasi raster dengan metafile telah meningkat secara signifikan.

### Sitemap

#### Ekspor ke MOBI <sup>23.2 g</sup>

Mulai dengan versi 23.2, dimungkinkan untuk menyimpan dokumen dalam format MOBI (juga disebut PRC, AZW - Amazon Format file e-book milik Kindle). Sekarang Anda tidak hanya dapat memuat dokumen MOBI, tetapi juga mengekspor file Anda ke format MOBI.

### Login

#### Bekerja dengan Shading Tema Warna <sup>23.1</sup>

Kemampuan untuk bekerja dengan warna tema yang membentuk telah diterapkan.

#### Dukungan Koefisien R-squared di Charts DML <sup>23.1</sup>

Mendukung koefisien R-squared dalam label trendline grafik DML ketika rendering telah ditambahkan.

#### Peningkatan rendering Chart <sup>23.2 g</sup>

Sejak 23.2 rendering grafik telah meningkat secara signifikan.

#### Latar Belakang dan Kontrol Warna Foreground <sup>23.3 g</sup>

Login [Fill](https://reference.aspose.com/words/java/com.aspose.words/fill/) kelas telah diperpanjang dengan serangkaian sifat publik baru yang berkaitan dengan latar belakang dan warna latar belakang: **ForeThemeColor** Login **BackThemeColor**, **ForeTintAndShade** Login **BackTintAndShade**Sitemap

#### Radial Gradients dengan `SkiaSharp` Mr. Victor Yang <sup>23.3 g</sup>

Pengirim gradien radial dengan `SkiaSharp` naungan asli untuk .NET Standard telah diimplementasikan.

#### Jarak Antara Tabel dan Surrounding Teks <sup>23.4 g</sup>

Kemampuan untuk mengatur jarak antara tabel dan teks sekitarnya telah ditambahkan dengan memperkenalkan sifat baru ke [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) kelas: [DistanceLeft](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceLeft), [DistanceRight](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceRight), [DistanceTop](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceTop), Login [DistanceBottom](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceBottom)Sitemap

### Memuat dan Menyimpan Dokumen

#### Login `TOC` untuk Dokumen AZW3 <sup>23.1</sup>

Kemampuan untuk menghasilkan `TOC` (table of contents) untuk dokumen AZW3 telah ditambahkan melalui penggunaan [EpubNavigationMapLevel](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getEpubNavigationMapLevel) Login

#### Daftar Ekspor Item ke Markdown <sup>23.1</sup>

Cara mengontrol ekspor item daftar untuk Markdown format telah disediakan dengan menambahkan [ListExportMode](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getListExportMode) harta [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) Sitemap

#### Dokumen Menyimpan Pemberitahuan Perkembangan <sup>23.3 g</sup>

Menyimpan pemberitahuan kemajuan untuk format MOBI dan AZW3 telah dilaksanakan.

#### Penyesuaian Sentence dan Word Spacing <sup>23.3 g</sup>

Kemampuan untuk menentukan apakah untuk menyesuaikan kalimat dan kata jarak secara otomatis pada impor dokumen telah ditambahkan dengan memperkenalkan **AdjustSentenceAndWordSpacing** Login

### Sitemap

- Login Kemampuan untuk menentukan penyesuaian jarak karakter dokumen telah ditambahkan melalui [JustificationMode](https://reference.aspose.com/words/java/com.aspose.words/document/#getJustificationMode) implementasi properti <sup>23.2 g</sup>
- Cara untuk memerintahkan Aspose.Words apakah untuk menyertakan kotak teks, catatan kaki, dan catatan akhir dalam statistik penghitungan kata telah disediakan dengan menambahkan [IncludeTextboxesFootnotesEndnotesInStat](https://reference.aspose.com/words/java/com.aspose.words/document/#getIncludeTextboxesFootnotesEndnotesInStat) Login <sup>23.2 g</sup>
- Pilihan baru untuk gaya dokumen, yang memungkinkan menentukan apakah gaya secara otomatis ditentukan berdasarkan nilai yang tepat, telah diperkenalkan melalui [AutomaticallyUpdate](https://reference.aspose.com/words/java/com.aspose.words/style/#getAutomaticallyUpdate) Login <sup>23.2 g</sup>
- Login Kemampuan untuk menentukan apakah [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) adalah panduan telepon yang dijalankan telah ditambahkan menggunakan **IsPhoneticGuide** Login <sup>23.4 g</sup>
- Cara sederhana untuk bekerja dengan serangkaian dan sumbu grafik combo telah diterapkan dengan memperkenalkan **ChartAxisCollection** kelas dan menambahkan **Chart.Axes** Login <sup>23.4 g</sup>
- Sifat publik baru yang terhubung ke posisi relatif bentuk dan ukuran telah ditambahkan ke [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) Login <sup>23.4 g</sup>
- Akurasi dan kinerja perhitungan kecerahan warna untuk resolusi warna teks otomatis telah ditingkatkan sesuai dengan versi terbaru dari Microsoft Word <sup>23.4 g</sup>

{{% alert color="primary" %}}

Pelajari lebih lanjut [Aspose.Words Sitemap Java 23.1 Login](/words/java/aspose-words-for-java-23-1-release-notes/)Sitemap

Pelajari lebih lanjut [Aspose.Words Sitemap Java 23.2 Login](/words/java/aspose-words-for-java-23-2-release-notes/)Sitemap

Pelajari lebih lanjut [Aspose.Words Sitemap Java 23.3 Login](/words/java/aspose-words-for-java-23-3-release-notes/)Sitemap

Pelajari lebih lanjut [Aspose.Words Sitemap Java 23.4 Login](/words/java/aspose-words-for-java-23-4-release-notes/)Sitemap

{{% /alert %}}

## Aspose.Words Sitemap Java 22.9, 22.10, 22.11, 22.12

Aspose.Words 22.9 memperluas opsi untuk memuat dan menyimpan dokumen dan meningkatkan interaksi dengan beberapa opsi lain.

Aspose.Words 22.10 meningkatkan menemukan dan mengganti pilihan, meningkatkan objek OLE, dan memperluas fungsi daftar.

Aspose.Words 22.11 memperluas fungsinya dengan opsi baru untuk pekerjaan yang lebih nyaman dengan objek yang sudah akrab: bidang, percetakan, OLE dan tag dokumen terstruktur.

Aspose.Words 22.12 meningkatkan kemampuan rendering dan memperkenalkan opsi untuk bekerja dengan margin ketika memuat/ menyimpan dokumen.

### Peningkatan Kinerja <sup>12.12.12</sup>

Optimasi yang secara signifikan mengurangi kedalaman nesting state grafis ketika rendering ke PDF untuk mempertahankan kepatuhan spesifikasi telah diperkenalkan.

### Rendering dan Pencetakan

#### Pencetakan Tidak berwarna Halaman pada Printer Warna <sup>22.11</sup>

Mode cetak berwarna/abus kustom telah diterapkan dengan menambahkan mode cetak baru **GrayscaleAuto** Sitemap [ColorPrintMode](https://reference.aspose.com/words/java/com.aspose.words/colorprintmode/) Sitemap

Properti cetak baru memungkinkan pengguna untuk mengontrol bagaimana halaman yang tidak berwarna dicetak jika perangkat mendukung pencetakan warna. Fitur ini dapat berguna jika pengguna ingin secara otomatis mencetak halaman non-warna hanya menggunakan mode pencetakan grayscale.

#### Properti Pengirim Perbatasan Baru <sup>12.12.12</sup>

Sifat publik baru [ThemeColor](https://reference.aspose.com/words/java/com.aspose.words/border/#getThemeColor) Login [TintAndShade](https://reference.aspose.com/words/java/com.aspose.words/border/#getTintAndShade) telah diperkenalkan.

#### Formula Trenline Linear untuk Pengirim GambarML <sup>12.12.12</sup>

Pembuatan formula trendline linier untuk grafik DrawingML telah diterapkan.

#### Pengaturan Fallback Font untuk Google Noto Login <sup>12.12.12</sup>

Pengaturan fallback font yang telah ditentukan untuk Google Noto font telah diperbarui.

### Memuat dan Menyimpan Dokumen

#### Cache Header atau Footer Bentuk untuk Mengurangi ukuran PDF <sup>22.5 g</sup>

Kemampuan untuk bentuk header cache / footer untuk mengurangi ukuran file PDF output telah diterapkan dengan menambahkan yang baru [CacheHeaderFooterShapes](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) Login

#### Deteksi Angka Otomatis saat Memuat Dokumen <sup>22.5 g</sup>

Kemampuan untuk menentukan [AutoNumberingDetection](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getAutoNumberingDetection) properti setelah pemuatan teks telah diterapkan melalui perpanjangan [TxtLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/) Sitemap

#### Menentukan Particular Jenis Margin <sup>12.12.12</sup>

Kemampuan untuk menentukan tertentu [Margin](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getMargins) jenis untuk bagian yang diberikan telah diterapkan.

### Sitemap <sup>22.10 g</sup>

Kemampuan untuk mengabaikan [StructuredDocumentTag](https://reference.aspose.com/words/java/com.aspose.words/structureddocumenttag/) setelah menemukan dan mengganti pilihan telah diterapkan dengan menambahkan baru [IgnoreStructuredDocumentTags](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreStructuredDocumentTags--) harta [FindReplaceOptions](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/) Sitemap

### Sitemap

- Fitur baru untuk mendapatkan FieldEQ sebagai OfficeMath telah ditambahkan. <sup>22.5 g</sup>
- Login Pembuatan tag dokumen terstruktur Group jenis di tingkat Row diperbolehkan. <sup>22.5 g</sup>
- OLE objek dan kontrol sekarang diperlakukan sebagai gambar metafile ketika mengkonversi dokumen ke HTML. <sup>22.10 g</sup>
- Fitur baru untuk memeriksa bahwa daftar tertentu dibuat dari template yang sama seperti daftar dibandingkan telah ditambahkan dengan memperkenalkan baru [HasSameTemplate](https://reference.aspose.com/words/java/com.aspose.words/list/#hasSameTemplate-com.aspose.words.List-) metode ke [List](https://reference.aspose.com/words/java/com.aspose.words/list/) Sitemap <sup>22.10 g</sup>
- Login Kemampuan untuk membuat tag dokumen terstruktur baru dari [Citation](https://reference.aspose.com/words/java/com.aspose.words/sdttype/) jenis telah ditambahkan. <sup>22.11</sup>
- Kemampuan untuk melacak kemajuan pemutakhiran lapangan telah disediakan. <sup>22.11</sup>
- Sitemap **EmbedAttachments** properti yang memungkinkan pengguna untuk mengatur lampiran OLE dari dokumen sumber ke dalam dokumen PDF output telah diperkenalkan. <sup>22.11</sup>

{{% alert color="primary" %}}

Pelajari lebih lanjut [Aspose.Words Sitemap Java 22.9 Login](/words/java/aspose-words-for-java-22-9-release-notes/)Sitemap

Pelajari lebih lanjut [Aspose.Words Sitemap Java 22.10 Login](/words/java/aspose-words-for-java-22-10-release-notes/)Sitemap

Pelajari lebih lanjut [Aspose.Words Sitemap Java 22.11. Login](/words/java/aspose-words-for-java-22-11-release-notes/)Sitemap

Pelajari lebih lanjut [Aspose.Words Sitemap Java 22.12 Login](/words/java/aspose-words-for-java-22-12-release-notes/)Sitemap

{{% /alert %}}

## Lihat Juga

{{% alert color="primary" %}}

Halaman ini berisi berita rilis terbaru selama 2 tahun terakhir. Untuk detail tentang rilis sebelumnya, lihat [Sitemap](/words/java/release-notes/) halaman di bagian yang relevan.

{{% /alert %}}
