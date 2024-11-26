---
title: Apa yang baru
second_title: Aspose.Words untuk C++
articleTitle: Apa yang baru di Aspose.Words untuk C++
linktitle: Apa yang baru di Aspose.Words untuk C++
type: docs
description: "Aspose.Words untuk C++ memperluas dan meningkatkan setiap hari. Di halaman ini, Anda dapat mempelajari tentang fitur produk yang sangat besar dan paling menarik."
weight: 2
url: /id/cpp/what-s-new-in-aspose-words-for-cpp/
timestamp: 2024-10-28-11-53-45
---

Halaman ini menjelaskan fitur Aspose.Words baru yang paling menarik yang diperkenalkan dalam rilis terbaru.

## Aspose.Words untuk C++ 24.9

Aspose.Words 24.9 memperkenalkan penyisipan group shape dan penyisipan StructuredDocumentTag melalui DocumentBuilder, menyempurnakan rendering bagan radial dengan graduasi, meningkatkan tanda tangan digital dengan XAdES-EPES mendukung, menambahkan pengenalan garis bawah Markdown, dan menyediakan akses ke pemisah catatan kaki / catatan akhir.

### Rendering dan Pencetakan

#### Kelulusan pada Grafik Radial

Rendering gradasi pada grafik radial telah diterapkan.

### Mengonversi, Memuat, dan Menyimpan Dokumen

#### Garis Bawahi Pemformatan saat Memuat File Markdown

Opsi untuk mengenali pemformatan garis bawah saat memuat dokumen Markdown telah digabungkan dengan menambahkan properti publik baru [ImportUnderlineFormatting]().

### Tanda Tangan Digital

#### Menandatangani Dokumen dengan XAdES-EPES

Kemampuan untuk menandatangani dokumen dengan XAdES-EPES level XML - Tanda tanganDSig telah diperkenalkan dengan menambahkan properti publik baru [XmlDsigLevel]() dan pencacahan publik baru [XmlDsigLevel]().

### Lainnya

* Metode publik baru [InsertGroupShape]() telah ditambahkan ke group shapes.
* Metode publik baru [InsertStructuredDocumentTag]() telah ditambahkan untuk menyisipkan **StructuredDocumentTags** ke dalam dokumen.
* Akses publik ke pemisah catatan kaki / catatan akhir telah disediakan dengan menambahkan beberapa kelas dan properti publik.

{{% alert color="primary" %}}

Pelajari lebih lanjut tentang [Aspose.Words untuk C++ 24.9 Catatan Rilis](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-9-release-notes/).

{{% /alert %}}

## Aspose.Words untuk C++ 24.5, 24.6, 24.7

Aspose.Words 24.5 memperluas opsi untuk rakitan, meningkatkan kemampuan rendering, dan memperluas beberapa opsi lainnya.

Aspose.Words 24.6 meningkatkan opsi rendering, meningkatkan fungsionalitas penelusuran dan perbandingan, dan memperluas beberapa fitur lainnya.

Aspose.Words 24.7 mengubah cara Anda bekerja dengan ActiveX, memperluas kemampuan rendering, serta mengekspor ke format Markdown dan XLSX.

### Format yang Didukung

Mulai dari versi 24.7, ekspor ke PDF/UA-2 didukung untuk memastikan aksesibilitas bagi pengguna penyandang disabilitas.

### Rendering dan Pencetakan

#### Perubahan Bagan, Bentuk, dan DrawingML <sup>24.5</sup>

- Rendering efek DrawingML untuk grafik SVG, memperluas fungsionalitas sebelumnya yang terbatas pada gambar, telah diterapkan.
- Dukungan untuk membuat bagan kombo dan menyesuaikan properti seperti lebar celah, tumpang tindih, dan skala gelembung dalam grup deret telah diperkenalkan dengan menambahkan kelas **ChartSeriesGroup** dan **ChartSeriesGroupCollection** serta properti **SeriesGroups**.
- Fungsionalitas untuk memanipulasi efek SoftEdge dari bentuk telah diimplementasikan dengan menambahkan kelas **SoftEdgeFormat**.
- Kemampuan untuk memodifikasi nilai adjust dari bentuk telah diimplementasikan dengan menambahkan kelas publik **AdjustmentCollection** dan **Adjustment** dan properti **Adjustments**.

#### Perubahan Bagan, Bentuk, dan Gambar <sup>24.6</sup>

- Kemampuan pembuatan bagan telah ditingkatkan. Anda sekarang dapat membuat variasi bagan yang lebih luas, termasuk *Treemaps*, *Sunbursts*, *Histograms*, *Pareto* bagan, bagan *Box & Whisker*, *Waterfalls*, dan *Funnels*. Ini memungkinkan Anda untuk memvisualisasikan data Anda dengan cara yang lebih beragam dan informatif.
- Kontrol warna untuk pemformatan bayangan telah ditingkatkan. Anda dapat memperoleh kontrol yang lebih tepat atas tampilan dokumen Anda dengan mengakses warna bayangan.
- Peningkatan kinerja untuk rendering latar belakang telah ditingkatkan. Anda dapat mempercepat rendering latar belakang yang berisi elemen kecil secara signifikan berkat teknologi ubin asli.
- Gradien realistis untuk bentuk telah ditambahkan. Anda sekarang dapat membuat bentuk DML dengan gradien non-linier, meniru gaya visual Microsoft Word untuk tampilan yang lebih halus.

#### Kustomisasi Label Data Bagan <sup>24.7</sup>

Kemampuan untuk menyesuaikan label data bagan seperti **Orientation** dan **Rotation** telah ditambahkan.

#### Gaya Nomor Khusus untuk Level Daftar <sup>24.7</sup>

Penyetel untuk properti publik [CustomNumberStyleFormat](https://reference.aspose.com/words/cpp/aspose.words.lists/listlevel/get_customnumberstyleformat/) telah ditambahkan. Anda sekarang dapat menentukan gaya angka khusus untuk level daftar.

#### Perubahan dalam bekerja dengan ActiveX <sup>24.7</sup>

- Properti objek ActiveX sekarang dapat dimodifikasi, memberi Anda kontrol lebih besar atas perilakunya.
- Kemampuan untuk mengubah nilai kontrol ActiveX tombol radio untuk mengaktifkan interaksi dinamis telah ditambahkan.
- Kemampuan untuk mengubah kotak centang ActiveX menjadi "dicentang" atau "tidak dicentang" telah ditambahkan.

### Memuat dan Menyimpan Dokumen

#### Mengekspor Tautan ke Format Markdown <sup>24.7</sup>

Kemampuan untuk mengontrol ekspor tautan dalam format Markdown telah ditambahkan melalui penerapan properti [LinkExportMode](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_linkexportmode/).

### Cari dan Bandingkan

#### Opsi Perbandingan Lanjutan <sup>24.6</sup>

Kemampuan untuk merampingkan alur kerja analisis data dengan fungsionalitas perbandingan yang ditingkatkan telah ditambahkan. Ini termasuk opsi **IgnoreStoreItemId** baru dan antarmuka yang didesain ulang untuk perbandingan lanjutan.

### Lainnya

- Fungsi untuk menghilangkan halaman kosong dari dokumen telah diimplementasikan dengan menambahkan metode [RemoveBlankPages](https://reference.aspose.com/words/cpp/aspose.words/document/removeblankpages/). <sup>24.5</sup>
- Kemampuan untuk memeriksa keberadaan makro VBA tanpa memuat dokumen telah disediakan dengan menambahkan properti **HasMacros**. <sup>24.5</sup>
- Properti **DateTimeUtc** baru telah ditambahkan – ini memberikan stempel waktu yang lebih tepat untuk komentar, meningkatkan organisasi, dan keterlacakan. <sup>24.6</sup>
- Format datetime sekarang secara otomatis terdeteksi untuk ekspor tanpa batas ke format XLSX. <sup>24.7</sup>
- Properti publik [IsProtected](https://reference.aspose.com/words/cpp/aspose.words.vba/vbaproject/get_isprotected/), yang memungkinkan Anda memverifikasi apakah proyek VBA dilindungi, telah ditambahkan. <sup>24.7</sup>

{{% alert color="primary" %}}

Pelajari lebih lanjut tentang [Aspose.Words untuk C++ 24.5 Catatan Rilis](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-5-release-notes/).

Pelajari lebih lanjut tentang [Aspose.Words untuk C++ 24.6 Catatan Rilis](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-6-release-notes/).

Pelajari lebih lanjut tentang [Aspose.Words untuk C++ 24.7 Catatan Rilis](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-7-release-notes/).

{{% /alert %}}

## Aspose.Words untuk C++ 24.1, 24.2, 24.3, 24.4

Aspose.Words 24.1 meningkatkan pengalaman seputar pengelolaan warna guratan, menyempurnakan objek OLE, serta memperkenalkan Sumber Bibliografi baru publik API.

Aspose.Words 24.2 Bagan yang diperluas API dan manajemen gaya. Versi Aspose.Words ini juga memperkenalkan kemampuan untuk menentukan SvgSaveOptions selama rendering, kontrol yang lebih fleksibel saat memuat file Markdown, dan bekerja dengan teks referensi untuk catatan kaki dan catatan akhir.

Aspose.Words 24.3 memperkenalkan Emulasi operasi raster biner untuk WMF metafile dan juga terus memperluas Bagan API.

Aspose.Words 24.4 menyempurnakan beberapa opsi rendering, serta meningkatkan pekerjaan dengan tanda tangan digital.

### Rendering dan Pencetakan

#### Kontrol Warna Goresan <sup>24.1</sup>

Kelas [Stroke](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/) telah diperluas dengan sekumpulan properti publik baru yang terkait dengan pengelolaan warna guratan: [ForeThemeColor](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_forethemecolor/) dan [BackThemeColor](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_backthemecolor/), [ForeTintAndShade](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_foretintandshade/) dan [BackTintAndShade](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_backtintandshade/).

#### Grafik DrawingML API Ekstensi <sup>24.2 / 24.3 / 24.4</sup>

**DrawingML Charts API** terus diperluas.

#### Sematkan Font yang Dideklarasikan dalam Aturan @font-face <sup>24.4</sup>

Menambahkan kemampuan untuk menyematkan font yang dideklarasikan dalam aturan @font-face ke dalam definisi font dokumen yang dihasilkan telah diperkenalkan dengan menambahkan properti [SupportFontFaceRules](https://reference.aspose.com/words/cpp/aspose.words.loading/htmlloadoptions/get_supportfontfacerules/) baru.

#### Bekerja dengan Pemformatan Cahaya dan Refleksi <sup>24.4</sup>

Kemampuan untuk bekerja dengan pemformatan cahaya dan refleksi untuk objek gambar telah diterapkan.

### Memuat dan Menyimpan Dokumen

#### Tentukan SvgSaveOptions Selama Rendering <sup>24.2</sup>

Kemampuan untuk menentukan [SvgSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/svgsaveoptions/) selama rendering telah ditambahkan menggunakan [ShapeRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/shaperenderer/).[Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/) dan [OfficeMathRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/officemathrenderer/).[Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/) metode.

#### Pertahankan Baris Kosong saat Memuat file Markdown <sup>24.2</sup>

Kemampuan untuk mempertahankan baris kosong saat memuat file Markdown telah ditambahkan.

### Lainnya

- Kemampuan untuk memodifikasi teks dari kontrol `TextBox` OLE telah diperkenalkan dengan menambahkan properti **Text** baru ke kelas **TextBoxControl** yang baru. <sup>24.1</sup>
- Bibliography Sources public API diimplementasikan melalui penambahan namespace baru [Aspose.Words.Bibliography](https://reference.aspose.com/words/cpp/aspose.words.bibliography/) dengan kelas dan enumerasi barunya, dan melalui penambahan properti [Bibliography](https://reference.aspose.com/words/cpp/aspose.words/document/get_bibliography/) baru ke kelas [Document](https://reference.aspose.com/words/cpp/aspose.words/document/). <sup>24.1</sup>
- Properti publik baru [Priority](https://reference.aspose.com/words/cpp/aspose.words/style/get_priority/), [UnhideWhenUsed](https://reference.aspose.com/words/cpp/aspose.words/style/get_unhidewhenused/), dan [SemiHidden](https://reference.aspose.com/words/cpp/aspose.words/style/get_semihidden/) untuk manajemen gaya yang disempurnakan telah ditambahkan ke kelas [Style](https://reference.aspose.com/words/cpp/aspose.words/style/). <sup>24.2</sup>
- Fungsionalitas untuk mengambil teks tanda referensi aktual untuk catatan kaki dan catatan akhir telah ditingkatkan dengan properti [ActualReferenceMark](https://reference.aspose.com/words/cpp/aspose.words.notes/footnote/get_actualreferencemark/) dan metode [UpdateActualReferenceMarks](https://reference.aspose.com/words/cpp/aspose.words/document/updateactualreferencemarks/). <sup>24.2</sup>
- Emulasi operasi raster biner untuk WMF metafile telah diterapkan. <sup>24.3</sup>
- Kemampuan untuk menentukan opsi tanda tangan untuk dokumen dalam **SaveOptions** telah diaktifkan dengan menambahkan kelas **DigitalSignatureDetails** baru dengan anggota publik baru, serta menambahkan properti baru ke kelas [OoxmlSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/ooxmlsaveoptions/), [DocSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/docsaveoptions/), dan [OdtSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/odtsaveoptions/). <sup>24.4</sup>

{{% alert color="primary" %}}

Pelajari lebih lanjut tentang [Aspose.Words untuk C++ 24.1 Catatan Rilis](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-1-release-notes/).

Pelajari lebih lanjut tentang [Aspose.Words untuk C++ 24.2 Catatan Rilis](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-2-release-notes/).

Pelajari lebih lanjut tentang [Aspose.Words untuk C++ 24.3 Catatan Rilis](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-3-release-notes/).

Pelajari lebih lanjut tentang [Aspose.Words untuk C++ 24.4 Catatan Rilis](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-4-release-notes/).

{{% /alert %}}

## Aspose.Words untuk C++ 23.9, 23.10, 23.11, 23.12

Aspose.Words 23.9 memperluas opsi rendering, emulasi rendering metafile, dan opsi penyimpanan markdown.

Aspose.Words 23.10 meningkatkan rendering, memperluas opsi untuk memuat dan menyimpan dokumen, dan memungkinkan pengguna menggabungkan dokumen dengan cara baru.

Aspose.Words 23.11 menyempurnakan pekerjaan dengan revisi, format XLSX, dan font pada legenda bagan dengan opsi tambahan.

Aspose.Words 23.12 memperkenalkan properti dan pencacahan baru untuk bekerja dengan dokumen PDF dan OOXML, serta dukungan untuk gambar WebP.

### Rendering dan Pencetakan

#### Menyesuaikan Judul Sumbu di Bagan DrawingML <sup>23.9</sup>

Kemampuan untuk menyesuaikan judul sumbu dalam bagan DrawingML telah diperkenalkan dengan penerapan properti kelas publik baru **ChartAxisTitle** dan [Title](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartaxis/get_title/).

#### Menentukan Posisi Vertikal Font dalam sebuah Paragraf <sup>23.9</sup>

Sekarang dimungkinkan untuk menentukan posisi vertikal font dalam paragraf menggunakan properti public [BaselineAlignment](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_baselinealignment/) baru dan enumerasi [BaselineAlignment](https://reference.aspose.com/words/cpp/aspose.words/baselinealignment/) baru.

#### Kontrol Warna Latar Depan <sup>23.10</sup>

Kemampuan untuk mengambil warna latar depan tanpa pengubah telah ditambahkan ke kelas [Fill](https://reference.aspose.com/words/cpp/aspose.words.drawing/fill/) dan [Stroke](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/) melalui properti **BaseForeColor**.

#### Memperluas Fungsionalitas Bagan <sup>23.10</sup>

Fungsionalitas kelas [ChartDataPointCollection](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartdatapointcollection/), [ChartSeries](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartseries/), dan [ChartFormat](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartformat/) telah diperluas dengan metode dan properti baru.

#### Secara Otomatis Menyesuaikan dan Menyesuaikan Gambar menjadi Bentuk <sup>23.10</sup>

Cara sederhana untuk menyesuaikan dan menyesuaikan gambar secara otomatis dalam bentuk tertentu telah disediakan melalui metode [FitImageToShape](https://reference.aspose.com/words/cpp/aspose.words.drawing/imagedata/fitimagetoshape/) yang baru.

#### Pemformatan Font Default untuk Entri Legenda Bagan DrawingML <sup>23.11</sup>

Kemampuan untuk menentukan pemformatan font default untuk entri legenda bagan DrawingML telah ditambahkan melalui properti [Font](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartlegend/get_font/). Fitur ini memfasilitasi tampilan yang lebih ramping dan konsisten untuk elemen bagan, meningkatkan estetika dokumen secara keseluruhan.

#### Tentukan Tata Letak Halaman saat Membuka PDF di Pembaca <sup>23.12</sup>

Kemampuan untuk menentukan tata letak halaman yang akan digunakan saat membuka dokumen di pembaca PDF telah ditambahkan melalui pengenalan properti **PageLayout** baru ke kelas [PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/) dan pengenalan pencacahan **PdfPageLayout** baru.

### Memuat dan Menyimpan Dokumen

#### Menentukan Nama Folder untuk Membuat Image URIs dalam Markdown <sup>23.9</sup>

Kelas [MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/) telah diperluas dengan menyertakan properti [ImagesFolderAlias](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_imagesfolderalias/), yang memungkinkan untuk menentukan nama folder yang digunakan untuk membuat image URIs yang ditulis ke dalam dokumen Markdown.

#### Kurangi Ukuran Keluaran PDF <sup>23.10</sup>

Berbagai pengoptimalan rendering PDF untuk mengurangi ukuran keluaran saat menggunakan pengaturan [OptimizeOutput](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_optimizeoutput/) telah diterapkan.

#### Mengenali Hyperlink saat Memuat Dokumen TXT <sup>23.10</sup>

Fitur untuk mengenali hyperlink saat memuat dokumen TXT telah diterapkan dengan menambahkan properti [DetectHyperlinks](https://reference.aspose.com/words/cpp/aspose.words.loading/txtloadoptions/get_detecthyperlinks/) baru.

### Lainnya

- Emulasi rendering metafile untuk menentukan ukuran rasterisasi telah diterapkan, khususnya untuk lebar pena WMF dan lebar pena kosmetik EMF. Untuk mencapai hal ini, properti **ScaleWmfFontsToMetafileSize** diganti dengan properti [EmulateRenderingToSizeOnPage](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emulaterenderingtosizeonpage/) dan properti [EmulateRenderingToSizeOnPageResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emulaterenderingtosizeonpageresolution/) ditambahkan. <sup>23.9</sup>
* Metode yang disederhanakan untuk menyisipkan satu dokumen ke dokumen lain pada posisi kursor saat ini telah diperkenalkan menggunakan metode [InsertDocumentInline](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertdocumentinline/). <sup>23.10</sup>
* Kemampuan untuk mengakses dan memodifikasi properti gaya telah ditambahkan melalui pengenalan properti [Locked](https://reference.aspose.com/words/cpp/aspose.words/style/get_locked/) yang baru. <sup>23.10</sup>
* Parameter tipe generik telah ditambahkan ke metode kelas [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/). <sup>23.10</sup>
* Cara untuk mengontrol kapan revisi tertentu harus diterima / ditolak atau tidak telah diterapkan dengan menggunakan metode [Accept](https://reference.aspose.com/words/cpp/aspose.words/revisioncollection/accept/) dan [Reject](https://reference.aspose.com/words/cpp/aspose.words/revisioncollection/reject/). Peningkatan ini memberi pengguna kontrol yang lebih baik atas proses revisi. <sup>23.11</sup>
* Kemampuan untuk menulis semua bagian dokumen ke lembar kerja XLSX yang sama telah disediakan melalui tipe enumerasi [XlsxSectionMode](https://reference.aspose.com/words/cpp/aspose.words.saving/xlsxsectionmode/) yang baru dan properti [SectionMode](https://reference.aspose.com/words/cpp/aspose.words.saving/xlsxsaveoptions/get_sectionmode/) yang baru. <sup>23.11</sup>
* Cara untuk mengontrol bagaimana ekstensi format ZIP64 akan digunakan untuk dokumen OOXML telah diterapkan melalui properti Zip64Mode baru dari kelas `OoxmlSaveOptions` dan pencacahan Zip64Mode baru. <sup>23.12</sup>
* Dukungan untuk gambar WebP telah diperkenalkan. Harap dicatat bahwa fitur ini hanya tersedia untuk .NetStandart dan .NET6 + versi. <sup>23.12</sup>

{{% alert color="primary" %}}

Pelajari lebih lanjut tentang [Aspose.Words untuk C++ 23.9 Catatan Rilis](/words/cpp/aspose-words-for-cpp-23-9-release-notes/).
Pelajari lebih lanjut tentang [Aspose.Words untuk C++ 23.10 Catatan Rilis](https://releases.aspose.com/words/cpp/release-notes/2023/aspose-words-for-cpp-23-10-release-notes/).
Pelajari lebih lanjut tentang [Aspose.Words untuk C++ 23.11 Catatan Rilis](https://releases.aspose.com/words/cpp/release-notes/2023/aspose-words-for-cpp-23-11-release-notes/).
Pelajari lebih lanjut tentang [Aspose.Words untuk C++ 23.12 Catatan Rilis](https://releases.aspose.com/words/cpp/release-notes/2023/aspose-words-for-cpp-23-12-release-notes/).

{{% /alert %}}

## Lihat Juga

{{% alert color="primary" %}}

Halaman ini berisi berita rilis terbaru selama 2 tahun terakhir. Untuk detail tentang rilis sebelumnya, lihat [Catatan Rilis'](/words/cpp/release-notes/) halaman di bagian yang relevan.

{{% /alert %}}
