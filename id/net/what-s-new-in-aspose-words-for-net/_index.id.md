---
title: Apa yang baru
second_title: Aspose.Words untuk .NET
articleTitle: Apa yang baru di Aspose.Words untuk .NET
linktitle: Apa yang baru di Aspose.Words untuk .NET
type: docs
description: "Aspose.Words untuk .NET berkembang dan ditingkatkan setiap hari. Di halaman ini, Anda dapat mempelajari tentang fitur-fitur produk yang besar dan paling menarik."
weight: 10
url: /id/net/what-s-new-in-aspose-words-for-net/
timestamp: 2024-12-11-13-48-02
---

Halaman ini menjelaskan fitur-fitur Aspose.Words baru yang paling menarik yang diperkenalkan dalam rilis terbaru.

## Aspose.Words untuk .NET 24.9, 24.10, 24.11, 24.12

Aspose.Words 24.9 memperkenalkan penyisipan bentuk grup dan penyisipan StructuredDocumentTag melalui DocumentBuilder, menyempurnakan perenderan bagan radial dengan gradasi, menyempurnakan tanda tangan digital dengan dukungan XAdES-EPES, menambahkan pengenalan garis bawah Markdown, dan menyediakan akses ke pemisah catatan kaki/catatan akhir.

Aspose.Words 24.10 memperkenalkan dukungan kontrol ActiveX yang disempurnakan dengan pembuatan CommandButton, kontrol visibilitas bentuk baru, kemampuan untuk mengelompokkan bentuk, peningkatan ekspor Markdown untuk tabel, pemformatan bagan untuk bagan Pie dan Doughnut, penanganan pengodean Big5 yang lebih baik, dan dukungan untuk font Taiwan yang sudah ketinggalan zaman.

Aspose.Words 24.11 memperkenalkan peringkasan dokumen bertenaga AI, opsi rendering yang ditingkatkan, peningkatan akses ke properti dokumen, dan teks kontrol ActiveX.

Aspose.Words 24.8 memperkenalkan penempatan label data yang dapat disesuaikan, penerjemahan teks yang didukung Google AI, opsi pembersihan Mail Merge yang disempurnakan, dan kelas pemrosesan LowCode baru. 

### AI-Fitur bertenaga

#### Ringkasan Dokumen Menggunakan OpenAI dan Google <sup>24.11</sup>

Dukungan untuk peringkasan dokumen menggunakan model bahasa generatif **OpenAI** dan **Google** telah diintegrasikan dengan menambahkan namespace [Aspose.Words.AI](https://reference.aspose.com/words/net/aspose.words.ai/) dengan anggota publiknya.

#### Penerjemahan teks menggunakan model bahasa generatif Google <sup>24.12</sup>

Kemampuan menerjemahkan teks menggunakan model bahasa generatif Google telah diimplementasikan di Aspose.Words dengan menambahkan metode [Translate](https://reference.aspose.com/words/net/aspose.words.ai/iaimodeltext/translate/) dan enumerasi [Language](https://reference.aspose.com/words/net/aspose.words.ai/language/) ke namespace [Aspose.Words.AI](https://reference.aspose.com/words/net/aspose.words.ai/).

### Low Code <sup>24.12</sup>

Kelas LowCode baru seperti [Comparer](https://reference.aspose.com/words/net/aspose.words.lowcode/comparer/), [MailMerger](https://reference.aspose.com/words/net/aspose.words.lowcode/mailmerger/), [Replacer](https://reference.aspose.com/words/net/aspose.words.lowcode/replacer/), [Splitter](https://reference.aspose.com/words/net/aspose.words.lowcode/splitter/) dll. telah diperkenalkan, menawarkan serangkaian metode yang menghasilkan keseimbangan sempurna antara kesederhanaan dan fleksibilitas untuk pemrosesan dokumen.

### Perenderan dan Pencetakan

#### Graduasi pada Bagan Radial <sup>24.9</sup>

Perenderan gradasi pada bagan radial telah diimplementasikan.

#### Kontrol ActiveX CommandButton <sup>24.10</sup>

Kemampuan untuk membuat kontrol ActiveX CommandButton telah diperkenalkan dengan menambahkan metode publik baru [InsertForms2OleControl](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertforms2olecontrol/) dan kelas publik baru [Forms2OleControl](https://reference.aspose.com/words/net/aspose.words.drawing.ole/forms2olecontrol/).

#### Kontrol Visibilitas Bentuk <sup>24.10</sup>

Properti publik baru [Tersembunyi](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/hidden/) telah ditambahkan untuk mengontrol visibilitas bentuk.

#### Perubahan pada Bagan Pai dan Donat <sup>24.10</sup>

Beberapa properti publik baru telah ditambahkan untuk memformat bagan Pai dan Donat.

#### Kontrol Rendering Batas Bidang Formulir Pilihan PDF <sup>24.11</sup>

Opsi baru untuk mengontrol rendering batas bidang formulir pilihan PDF telah diterapkan dengan menambahkan opsi publik baru [RenderChoiceFormFieldBorder](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/renderchoiceformfieldborder/).

#### Dapatkan dan Atur Kode Format untuk Data Bagan <sup>24.11</sup>

Kemampuan untuk mendapatkan dan mengatur kode format untuk data bagan telah ditambahkan dengan menerapkan properti [FormatCode](https://reference.aspose.com/words/net/aspose.words.drawing.charts/bubblesizecollection/formatcode/) di kelas [ChartXValueCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartxvaluecollection/), [ChartYValueCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartyvaluecollection/), dan [BubbleSizeCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/bubblesizecollection/).

#### Render Bagan Histogram dengan Tempat Sampah dan Label <sup>24.11</sup>

Rendering grafik histogram telah ditingkatkan dengan memungkinkan sejumlah tempat sampah dan label tertentu.

#### Menyesuaikan Penempatan Label Data <sup>24.12</sup>

Kemampuan untuk menyesuaikan penempatan label data telah ditambahkan dengan memperkenalkan properti baru ke kelas [ChartDataLabel](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatalabel/) dan [ChartDataLabelCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatalabelcollection/).

### Mengonversi, Memuat, dan Menyimpan Dokumen

#### Pemformatan Garis Bawah saat Memuat File Markdown <sup>24.9</sup>

Opsi untuk mengenali pemformatan garis bawah saat memuat dokumen Markdown telah disertakan dengan menambahkan properti publik baru [ImportUnderlineFormatting](https://reference.aspose.com/words/net/aspose.words.loading/markdownloadoptions/importunderlineformatting/).

#### Mengekspor tabel sebagai HTML saat menyimpan ke Markdown <sup>24.10</sup>

Opsi untuk mengekspor tabel sebagai HTML saat menyimpan dokumen ke format Markdown telah diimplementasikan dengan menambahkan properti publik baru [ExportAsHtml](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/exportashtml/) dan enumerasi [MarkdownExportAsHtml](https://reference.aspose.com/words/net/aspose.words.saving/markdownexportashtml/).

#### Ekspor PDF dengan Struktur Logika yang Diperbarui <sup>24.11</sup>

Ekspor PDF telah ditingkatkan dengan menyertakan properti judul tabel sebagai judul elemen struktur logis PDF.

### Gabungan Surat dan Pelaporan

#### Hapus Tabel Kosong selama Gabungan Surat <sup>24.12</sup>

Opsi **RemoveEmptyTables** baru telah ditambahkan ke enumerasi [MailMergeCleanupOptions](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmergecleanupoptions/) untuk menyempurnakan keluaran Gabungan Surat.

### Tanda Tangan Digital

#### Menandatangani Dokumen dengan XAdES-EPES <sup>24.9</sup>

Kemampuan untuk menandatangani dokumen dengan tanda tangan XML-DSig level XAdES-EPES telah diperkenalkan dengan menambahkan properti publik baru [XmlDsigLevel](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/signoptions/xmldsiglevel/) dan enumerasi publik baru [XmlDsigLevel](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/xmldsiglevel/).

### Lainnya

* Metode publik baru [InsertGroupShape](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertgroupshape/) telah ditambahkan ke bentuk grup. <sup>24.9</sup>
* Metode publik baru [InsertStructuredDocumentTag](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertstructureddocumenttag/) telah ditambahkan untuk menyisipkan **StructuredDocumentTags** ke dalam dokumen. <sup>24.9</sup>
* Akses publik ke pemisah catatan kaki/catatan akhir telah disediakan dengan menambahkan beberapa kelas dan properti publik. <sup>24.9</sup>
* Kemampuan untuk mengelompokkan bentuk individual, mengelompokkan bentuk bersama-sama, dan langsung mengelompokkan kedua bentuk dan mengelompokkan bentuk telah diperkenalkan dengan menambahkan metode [InsertGroupShape](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertgroupshape/#insertgroupshape_1). <sup>24.10</sup>
* Penanganan pengodean Big5 untuk tabel cmap TrueType telah ditingkatkan. <sup>24.10</sup>
* Dukungan untuk font Taiwan yang sudah ketinggalan zaman telah ditingkatkan. <sup>24.10</sup>
* Untuk mengakses properti dokumen yang diperluas, properti hanya-baca telah ditambahkan ke kelas [BuiltInDocumentProperties](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/). <sup>24.11</sup>
* Menyetel teks untuk kontrol ActiveX telah diaktifkan dengan menambahkan penyetel publik baru ke properti [Forms2OleControl.Caption](https://reference.aspose.com/words/net/aspose.words.drawing.ole/forms2olecontrol/caption/). <sup>24.11</sup>

{{% alert color="primary" %}}

Pelajari lebih lanjut tentang [Catatan Rilis Aspose.Words untuk .NET 24.9](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-9-release-notes/).

Pelajari lebih lanjut tentang [Catatan Rilis Aspose.Words untuk .NET 24.10](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-10-release-notes/).

Pelajari lebih lanjut tentang [Aspose.Words untuk .NET 24.11 Catatan Rilis](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-11-release-notes/).

Pelajari lebih lanjut tentang [Aspose.Words untuk .NET 24.12 Catatan Rilis](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-12-release-notes/).

{{% /alert %}}

## Aspose.Words untuk .NET 24.5, 24.6, 24.7, 24.8

Aspose.Words 24.5 memperluas opsi untuk rakitan, meningkatkan kemampuan rendering, dan memperluas beberapa opsi lainnya.

Aspose.Words 24.6 meningkatkan opsi rendering, meningkatkan fungsionalitas pencarian dan perbandingan, dan memperluas beberapa fitur lainnya.

Aspose.Words 24.7 mengubah cara Anda bekerja dengan ActiveX, memperluas kemampuan rendering, serta mengekspor ke format Markdown dan XLSX.

Aspose.Words 24.8 menyempurnakan kustomisasi bagan dengan kontrol yang tepat atas label sumbu, memperluas manajemen font, meningkatkan penanganan struktur dokumen, dan menambahkan kemampuan baru untuk ekspor HTML/XAML, fungsionalitas PDF, konversi dokumen, dan tanda tangan digital.

### Format yang Didukung

Mulai dari versi 24.7, ekspor ke PDF/UA-2 didukung untuk memastikan aksesibilitas bagi pengguna penyandang disabilitas.

### Platform <sup>24.5</sup>

Rakitan .NET 7.0/8.0 telah disertakan dalam paket NuGet Aspose.Words.

### Rendering dan Pencetakan

#### Perubahan Charts, Shapes dan DrawingML <sup>24.5</sup>

* Render efek DrawingML untuk grafik SVG, memperluas fungsionalitas sebelumnya yang terbatas pada gambar, telah diterapkan.
* Dukungan untuk membuat bagan kombo dan menyesuaikan properti seperti lebar celah, tumpang tindih, dan skala gelembung dalam grup seri telah diperkenalkan dengan menambahkan kelas [ChartSeriesGroup](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseriesgroup/) dan [ChartSeriesGroupCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseriesgroupcollection/) serta properti [SeriesGroups](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chart/seriesgroups/).
* Fungsionalitas untuk memanipulasi efek SoftEdge bentuk telah diterapkan dengan menambahkan kelas [SoftEdgeFormat](https://reference.aspose.com/words/net/aspose.words.drawing/softedgeformat/).
* Kemampuan untuk mengubah nilai penyesuaian bentuk telah diterapkan dengan menambahkan [AdjustmentCollection](https://reference.aspose.com/words/net/aspose.words.drawing/adjustmentcollection/) dan [Adjustment](https://reference.aspose.com/words/net/aspose.words.drawing/adjustment/) kelas umum dan [Adjustments](https://reference.aspose.com/words/net/aspose.words.drawing/shape/adjustments/) Properti.

#### Perubahan Bagan, Bentuk, dan Gambar <sup>24.6</sup>

* Kemampuan pembuatan grafik telah ditingkatkan. Kini Anda dapat membuat lebih banyak variasi bagan, termasuk *Peta Pohon*, *Sunburst*, *Histogram*, bagan *Pareto*, bagan *Kotak & Kumis*, *Air Terjun*, dan *Corong*. Hal ini memungkinkan Anda memvisualisasikan data dengan cara yang lebih beragam dan informatif.
* Kontrol warna untuk pemformatan bayangan telah ditingkatkan. Anda bisa mendapatkan kontrol yang lebih tepat atas tampilan dokumen Anda dengan mengakses warna bayangan.
* Peningkatan kinerja untuk rendering latar belakang telah ditingkatkan. Anda dapat mempercepat rendering latar belakang yang berisi elemen kecil secara signifikan berkat teknologi ubin asli.
* Gradien realistis untuk bentuk telah ditambahkan. Anda sekarang dapat membuat bentuk DML dengan gradien non-linier, meniru gaya visual Microsoft Word untuk tampilan yang lebih halus.

#### Penyesuaian Label Data Bagan <sup>24.7</sup>

Kemampuan untuk menyesuaikan label data bagan seperti **Orientation** dan **Rotation** telah ditambahkan.

#### Gaya Nomor Khusus untuk Tingkat Daftar <sup>24.7</sup>

Penyetel untuk properti publik [CustomNumberStyleFormat](https://reference.aspose.com/words/net/aspose.words.lists/listlevel/customnumberstyleformat/) telah ditambahkan. Anda sekarang dapat menentukan gaya nomor khusus untuk tingkat daftar.

#### Perubahan dalam bekerja dengan ActiveX <sup>24.7</sup>

* Properti objek ActiveX sekarang dapat dimodifikasi, memberi Anda kontrol lebih besar atas perilakunya.
* Kemampuan untuk mengubah nilai tombol radio kontrol ActiveX untuk mengaktifkan interaksi dinamis telah ditambahkan.
* Kemampuan untuk mengubah kotak centang ActiveX menjadi "dicentang" atau "tidak dicentang" telah ditambahkan.

#### Kontrol Atas Orientasi dan Rotasi Label Centang Sumbu Bagan <sup>24.8</sup>

Kontrol yang tepat atas orientasi dan rotasi label centang sumbu bagan telah ditambahkan untuk kustomisasi bagan yang lebih mudah – kelas [AxisTickLabels](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisticklabels/) telah diperluas dengan properti [Orientation](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisticklabels/orientation/) dan [Rotation](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisticklabels/rotation/) yang baru.

#### Mengganti Garis Miring Terbalik dengan Tanda Yen <sup>24.8</sup>

Ekspor HTML dan XAML yang kompatibel dengan versi sebelumnya untuk mengganti karakter garis miring terbalik dengan tanda Yen telah ditingkatkan. Untuk mencapai hal ini, properti **ReplaceBackslashWithYenSign** telah ditambahkan ke kelas [HtmlSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/) dan [XamlFlowSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/xamlflowsaveoptions/).

#### Menggunakan Tag SDT sebagai Nama Kolom Formulir saat Mengekspor ke PDF <sup>24.8</sup>

Ekspor PDF dengan dukungan penggunaan tag SDT sebagai nama kolom formulir telah ditingkatkan dengan menambahkan properti [UseSdtTagAsFormFieldName](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usesdttagasformfieldname/) baru ke kelas [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/).

### Mengonversi, Memuat, dan Menyimpan Dokumen

#### Mengekspor Tautan ke Format Markdown <sup>24.7</sup>

Kemampuan untuk mengontrol ekspor tautan dalam format Markdown telah ditambahkan melalui penerapan properti [LinkExportMode](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/linkexportmode/).

#### LowCode <sup>24.8</sup>

Kelas [LowCode.Converter](https://reference.aspose.com/words/net/aspose.words.lowcode/converter/) baru, yang dirancang untuk menyediakan serangkaian metode guna mengonversi berbagai jenis dokumen dengan satu baris kode, telah diperkenalkan.

### Cari dan Bandingkan

#### Opsi Perbandingan Lanjutan <sup>24.6</sup>
Kemampuan untuk menyederhanakan alur kerja analisis data dengan fungsionalitas perbandingan yang ditingkatkan telah ditambahkan. Ini mencakup opsi [IgnoreStoreItemId](https://reference.aspose.com/words/net/aspose.words.comparing/advancedcompareoptions/ignorestoreitemid/) baru dan antarmuka yang didesain ulang untuk perbandingan lanjutan.

### Lainnya

* Fungsi untuk menghilangkan halaman kosong dari dokumen telah diterapkan dengan menambahkan metode [RemoveBlankPages](https://reference.aspose.com/words/net/aspose.words/document/removeblankpages/). <sup>24.5</sup>
* Kemampuan untuk memeriksa keberadaan makro VBA tanpa memuat dokumen telah disediakan dengan menambahkan properti [HasMacros](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/hasmacros/). <sup>24.5</sup>
* Menyimpan penomoran sumber saat memasukkan dokumen menggunakan Mesin Pelaporan LINQ kini didukung. <sup>24.5</sup>
* Properti [DateTimeUtc](https://reference.aspose.com/words/net/aspose.words/comment/datetimeutc/) baru telah ditambahkan – ini memberikan stempel waktu yang lebih tepat untuk komentar, meningkatkan pengorganisasian, dan ketertelusuran. <sup>24.6</sup>
* Mesin Pelaporan LINQ telah ditingkatkan. Penghapusan selektif paragraf kosong dan definisi pesan khusus untuk anggota objek yang hilang telah dilakukan, menghasilkan laporan yang lebih bersih dan informatif. <sup>24.6</sup>
* Format tanggalwaktu sekarang secara otomatis terdeteksi untuk ekspor tanpa batas ke format XLSX. <sup>24.7</sup>
* Properti publik [IsProtected](https://reference.aspose.com/words/net/aspose.words.vba/vbaproject/isprotected/), yang memungkinkan Anda memverifikasi apakah proyek VBA dilindungi, telah ditambahkan. <sup>24.7</sup>
* Informasi fon telah diperluas dengan properti **EmbeddingLicensingRights** yang ditambahkan ke kelas [FontInfo](https://reference.aspose.com/words/net/aspose.words.fonts/fontinfo/) dan [PhysicalFontInfo](https://reference.aspose.com/words/net/aspose.words.fonts/physicalfontinfo/). <sup>24.8</sup>
* Cara untuk menghapus header dan footer bagian secara efisien sambil mempertahankan tanda air telah ditambahkan agar dapat bekerja dengan struktur dokumen secara lebih akurat. Untuk menghapus header dan footer bagian, gunakan metode publik baru [ClearHeadersFooters](https://reference.aspose.com/words/net/aspose.words/section/clearheadersfooters/). <sup>24.8</sup>
* Penandatanganan digital dokumen XPS menggunakan [XpsSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/xpssaveoptions/) telah diaktifkan – properti baru [DigitalSignatureDetails](https://reference.aspose.com/words/net/aspose.words.saving/xpssaveoptions/digitalsignaturedetails/) telah ditambahkan untuk tujuan ini. <sup>24.8</sup>

{{% alert color="primary" %}}

Pelajari lebih lanjut tentang [Catatan Rilis Aspose.Words untuk .NET 24.5](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-5-release-notes/).

Pelajari lebih lanjut tentang [Catatan Rilis Aspose.Words untuk .NET 24.6](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-6-release-notes/).

Pelajari lebih lanjut tentang [Catatan Rilis Aspose.Words untuk .NET 24.7](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-7-release-notes/).

Pelajari lebih lanjut tentang [Catatan Rilis Aspose.Words untuk .NET 24.8](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-8-release-notes/).

{{% /alert %}}

## Aspose.Words untuk .NET 24.1, 24.2, 24.3, 24.4

Aspose.Words 24.1 meningkatkan pengalaman dalam mengelola warna guratan, menyempurnakan objek OLE dan pelaporan LINQ, serta memperkenalkan API publik Sumber Bibliografi baru.

Aspose.Words 24.2 memperluas API Charts, manajemen gaya, dan opsi LINQ. Versi Aspose.Words ini juga memperkenalkan kemampuan untuk menentukan SvgSaveOptions selama rendering, kontrol yang lebih fleksibel dalam memuat file Markdown, dan bekerja dengan teks referensi untuk catatan kaki dan catatan akhir.

Aspose.Words 24.3 memperkenalkan pembaca/pemutar TIFF baru dan emulasi operasi raster biner untuk metafile WMF. Aspose.Words 24.3 juga terus memperluas API Grafik.

Aspose.Words 24.4 meningkatkan penyimpanan format, beberapa opsi rendering, serta meningkatkan kerja dengan tanda tangan digital.

### Format yang Didukung <sup>24.4</sup>

Format gambar WebP modern kini didukung di Aspose.Words untuk .NET Framework 4.6.2 dan yang lebih tinggi. Anda sekarang dapat membaca dan menyisipkan gambar WebP ke dalam dokumen, serta menyimpan gambar dalam format WebP.

Harap dicatat bahwa WebP saat ini hanya tersedia di .NET Standard dan .NET Framework v4.6.2 dan di atasnya.

### Rendering dan Pencetakan

#### Kontrol Warna Goresan <sup>24.1</sup>

Kelas [Stroke](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/) telah diperluas dengan serangkaian properti publik baru yang terkait dengan pengelolaan warna guratan: [ForeThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/forethemecolor/) dan [BackThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/backthemecolor/), [ForeTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/foretintandshade/) dan [BackTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/backtintandshade/).

####Ekstensi DrawingML Charts API <sup>24.2 / 24.3 / 24.4</sup>

**DrawingML Charts API** terus diperluas.

#### Menyematkan Font yang Dideklarasikan dalam Aturan @font-face <sup>24.4</sup>

Ditambahkan kemampuan untuk menyematkan font yang dideklarasikan dalam aturan @font-face ke dalam definisi font dokumen yang dihasilkan dengan menambahkan properti baru bernama [SupportFontFaceRules](https://reference.aspose.com/words/net/aspose.words.loading/htmlloadoptions/supportfontfacerules/).

#### Bekerja dengan Format Cahaya dan Pantulan <sup>24.4</sup>

Kemampuan untuk bekerja dengan format cahaya dan pantulan untuk objek gambar telah diimplementasikan.

### Memuat dan Menyimpan Dokumen

#### Tentukan SvgSaveOptions Selama Rendering <sup>24.2</sup>

Kemampuan untuk menentukan [SvgSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/svgsaveoptions/) selama rendering telah ditambahkan menggunakan metode [ShapeRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/shaperenderer/).[Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/) dan [OfficeMathRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/officemathrenderer/).[Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/).

#### Pertahankan Baris Kosong saat Memuat file Markdown <sup>24.2</sup>

Kemampuan untuk mempertahankan baris kosong saat memuat file Markdown telah ditambahkan.

#### Pembaca/Pemutar TIFF Baru <sup>24.3</sup>

Pembaca/pemutar TIFF baru telah dikembangkan untuk Aspose.Words untuk .NET Standard, .NET 6, dan versi selanjutnya. Aspose.Words untuk .NET 24.3 menambahkan dukungan untuk membaca gambar TIFF dengan tipe kompresi JPEG dan Old JPEG, dan juga secara signifikan meningkatkan kualitas operasi baca dan tulis.

### Lainnya

* Kemampuan untuk memodifikasi teks kontrol `TextBox` OLE telah diperkenalkan dengan menambahkan properti [Text](https://reference.aspose.com/words/net/aspose.words.drawing.ole/textboxcontrol/text/) baru ke kelas [TextBoxControl](https://reference.aspose.com/words/net/aspose.words.drawing.ole/textboxcontrol/) baru. <sup>24.1</sup>
* API publik Sumber Bibliografi diimplementasikan melalui penambahan namespace [Aspose.Words.Bibliography](https://reference.aspose.com/words/net/aspose.words.bibliography/) baru dengan kelas dan enumerasi baru, dan melalui penambahan properti [Bibliography](https://reference.aspose.com/words/net/aspose.words/document/bibliography/) baru ke kelas [Document](https://reference.aspose.com/words/net/aspose.words/document/). <sup>24.1</sup>
* API untuk membatasi akses ke anggota tipe menggunakan sintaks templat untuk Mesin Pelaporan LINQ telah disediakan. <sup>24.1</sup>
* Properti publik baru [Priority](https://reference.aspose.com/words/net/aspose.words/style/priority/), [UnhideWhenUsed](https://reference.aspose.com/words/net/aspose.words/style/unhidewhenused/), dan [SemiHidden](https://reference.aspose.com/words/net/aspose.words/style/semihidden/) untuk manajemen gaya yang ditingkatkan telah ditambahkan ke kelas [Style](https://reference.aspose.com/words/net/aspose.words/style/). <sup>24.2</sup>
* Fungsi untuk mengambil teks tanda referensi sebenarnya untuk catatan kaki dan catatan akhir telah ditingkatkan dengan properti [ActualReferenceMark](https://reference.aspose.com/words/net/aspose.words.notes/footnote/actualreferencemark/) dan metode [UpdateActualReferenceMarks](https://reference.aspose.com/words/net/aspose.words/document/updateactualreferencemarks/). <sup>24.2</sup>
* Kompatibilitas dengan grafik `Word 2016` untuk `LINQ Reporting Engine` telah diaktifkan. <sup>24.2</sup>
* Emulasi operasi raster biner untuk metafile WMF telah diimplementasikan. <sup>24.3</sup>
* Kemampuan untuk menentukan opsi tanda tangan untuk dokumen dalam SaveOptions telah diaktifkan dengan menambahkan kelas baru bernama [DigitalSignatureDetails](https://reference.aspose.com/words/net/aspose.words.saving/digitalsignaturedetails/) dengan anggota publik baru, serta menambahkan properti baru ke dalam kelas-kelas [OoxmlSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/ooxmlsaveoptions/), [DocSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/), dan [OdtSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/odtsaveoptions/). <sup>24.4</sup>

{{% alert color="primary" %}}

Pelajari lebih lanjut tentang [Catatan Rilis Aspose.Words untuk .NET 24.1](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-1-release-notes/).

Pelajari lebih lanjut tentang [Catatan Rilis Aspose.Words untuk .NET 24.2](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-2-release-notes/).

Pelajari lebih lanjut tentang [Catatan Rilis Aspose.Words untuk .NET 24.3](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-3-release-notes/).

Pelajari lebih lanjut tentang [Catatan Rilis Aspose.Words untuk .NET 24.4](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-4-release-notes/).

{{% /alert %}}

## Aspose.Words untuk .NET 23.9, 23.10, 23.11, 23.12

Aspose.Words 23.9 memperluas opsi rendering, emulasi rendering metafile, dan opsi penyimpanan markdown.

Aspose.Words 23.10 meningkatkan rendering, memperluas opsi untuk memuat dan menyimpan dokumen, dan memungkinkan pengguna menggabungkan dokumen dengan cara baru.

Aspose.Words 23.11 menyempurnakan pekerjaan dengan revisi, format XLSX, dan font pada legenda bagan dengan opsi tambahan.

Aspose.Words 23.12 memperkenalkan properti dan enumerasi baru untuk bekerja dengan dokumen PDF dan OOXML, serta dukungan untuk gambar WebP.

### Rendering dan Pencetakan

#### Menyesuaikan Judul Sumbu di DrawingML Charts <sup>23.9</sup>

Kemampuan untuk menyesuaikan judul sumbu dalam bagan DrawingML telah diperkenalkan melalui penerapan properti [ChartAxisTitle](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxistitle/) dan [Title](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxis/title/) kelas publik baru.

#### Menentukan Posisi Vertikal Font dalam Paragraf <sup>23.9</sup>

Sekarang dimungkinkan untuk menentukan posisi vertikal font dalam paragraf menggunakan properti [BaselineAlignment](https://reference.aspose.com/words/net/aspose.words/paragraphformat/baselinealignment/) publik baru dan enumerasi [BaselineAlignment](https://reference.aspose.com/words/net/aspose.words/baselinealignment/) baru.

#### Kontrol Warna Latar Depan <sup>23.10</sup>

Kemampuan untuk mengambil warna latar depan tanpa pengubah telah ditambahkan ke kelas [Fill](https://reference.aspose.com/words/net/aspose.words.drawing/fill/) dan [Stroke](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/) melalui properti **BaseForeColor**.

#### Memperluas Fungsi Grafik <sup>23.10</sup>

Fungsionalitas kelas [ChartDataPointCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatapointcollection/), [ChartSeries](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseries/), dan [ChartFormat](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartformat/) telah diperluas dengan metode dan properti baru.

#### Secara Otomatis Menyesuaikan dan Menyesuaikan Gambar ke dalam Bentuk <sup>23.10</sup>

Cara sederhana untuk secara otomatis menyesuaikan dan menyesuaikan gambar dalam bentuk tertentu telah disediakan melalui metode [FitImageToShape](https://reference.aspose.com/words/net/aspose.words.drawing/imagedata/fitimagetoshape/) baru.

#### Pemformatan Font Default untuk Entri Legenda Bagan DrawingML <sup>23.11</sup>

Kemampuan untuk menentukan format font default untuk entri legenda diagram DrawingML telah ditambahkan melalui properti [Font](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartlegend/font/). Fitur ini memfasilitasi tampilan elemen bagan yang lebih ramping dan konsisten, sehingga meningkatkan estetika dokumen secara keseluruhan.

#### Tentukan Tata Letak Halaman saat Membuka PDF di Pembaca <sup>23.12</sup>

Kemampuan untuk menentukan tata letak halaman yang akan digunakan saat membuka dokumen di pembaca PDF telah ditambahkan melalui pengenalan properti [PageLayout](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/pagelayout/) baru ke kelas [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) dan pengenalan enumerasi [PdfPageLayout](https://reference.aspose.com/words/net/aspose.words.saving/pdfpagelayout/) baru.

### Memuat dan Menyimpan Dokumen

#### Menentukan Nama Folder untuk Membuat URI Gambar di Markdown <sup>23.9</sup>

Kelas [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/) telah diperluas dengan menyertakan properti [ImagesFolderAlias](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/imagesfolderalias/), yang memungkinkan untuk menentukan nama folder yang digunakan untuk membuat URI gambar yang ditulis ke dalam dokumen Markdown.

#### Kurangi Ukuran Output PDF <sup>23.10</sup>

Berbagai optimasi rendering PDF untuk mengurangi ukuran keluaran saat menggunakan pengaturan [OptimizeOutput](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/optimizeoutput/) telah diterapkan.

#### Mengenali Hyperlink saat Memuat Dokumen TXT <sup>23.10</sup>

Fitur untuk mengenali hyperlink saat memuat dokumen TXT telah diterapkan dengan menambahkan properti [DetectHyperlinks](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/detecthyperlinks/) baru.

### Lainnya

* Emulasi rendering metafile untuk menentukan ukuran rasterisasi telah diterapkan, khususnya untuk lebar pena WMF dan lebar pena kosmetik EMF. Untuk mencapai hal ini, properti **ScaleWmfFontsToMetafileSize** diganti dengan properti [EmulateRenderingToSizeOnPage](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/emulaterenderingtosizeonpage/) dan properti [EmulateRenderingToSizeOnPageResolution](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/emulaterenderingtosizeonpageresolution/) ditambahkan. <sup>23.9</sup>
* Metode sederhana untuk menyisipkan satu dokumen ke dokumen lain pada posisi kursor saat ini telah diperkenalkan menggunakan metode [InsertDocumentInline](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertdocumentinline/). <sup>23.10</sup>
* Kemampuan untuk mengakses dan memodifikasi properti gaya telah ditambahkan melalui pengenalan properti [Locked](https://reference.aspose.com/words/net/aspose.words/style/locked/) baru. <sup>23.10</sup>
* Parameter tipe generik telah ditambahkan ke metode kelas [CompositeNode](https://reference.aspose.com/words/net/aspose.words/compositenode/). <sup>23.10</sup>
* Cara untuk mengontrol kapan revisi tertentu harus diterima/ditolak atau tidak telah diterapkan dengan menggunakan metode [Accept](https://reference.aspose.com/words/net/aspose.words/revisioncollection/accept/) dan [Reject](https://reference.aspose.com/words/net/aspose.words/revisioncollection/reject/). Peningkatan ini memberi pengguna kontrol yang lebih baik atas proses revisi. <sup>23.11</sup>
* Kemampuan untuk menulis semua bagian dokumen ke lembar kerja XLSX yang sama telah disediakan melalui tipe enumerasi [XlsxSectionMode](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsectionmode/) baru dan properti [SectionMode](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/sectionmode/) baru. <sup>23.11</sup>
* Cara untuk mengontrol bagaimana ekstensi format ZIP64 akan digunakan untuk dokumen OOXML telah diterapkan melalui properti Zip64Mode baru dari kelas `OoxmlSaveOptions` dan enumerasi Zip64Mode baru. <sup>23.12</sup>
* Dukungan untuk gambar WebP telah diperkenalkan. Harap diperhatikan bahwa fitur ini hanya tersedia untuk versi .NetStandart dan .NET6+. <sup>23.12</sup>

{{% alert color="primary" %}}

Pelajari lebih lanjut tentang [Catatan Rilis Aspose.Words untuk .NET 23.9](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-9-release-notes/).

Pelajari lebih lanjut tentang [Catatan Rilis Aspose.Words untuk .NET 23.10](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-10-release-notes/).

Pelajari lebih lanjut tentang [Catatan Rilis Aspose.Words untuk .NET 23.11](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-11-release-notes/).

Pelajari lebih lanjut tentang [Catatan Rilis Aspose.Words untuk .NET 23.12](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-12-release-notes/).

{{% /alert %}}

## Aspose.Words untuk .NET 23.5, 23.6, 23.7, 23.8

Aspose.Words 23.5 meningkatkan kemampuan untuk bekerja dengan data seri bagan dan kemampuan untuk bekerja dengan dokumen ODT, serta meningkatkan header/footer dan pembungkusan teksnya.

Aspose.Words 23.6 memperluas opsi rendering, menambahkan format ekspor baru, meningkatkan pelaporan LINQ dan alat LowCode.

Aspose.Words 23.7 meningkatkan kemampuan pelaporan, menambahkan format ekspor baru, dan memperkenalkan perubahan dalam bekerja dengan tabel dan tanda tangan digital.

Aspose.Words 23.8 memperluas kemampuan berbagai format, meningkatkan rendering, dan menambahkan opsi baru untuk bekerja dengan bidang

### Format yang Didukung

* Mulai versi 23.6, dimungkinkan untuk menyimpan dokumen dalam format XLSX. Sekarang Anda dapat mengonversi dokumen Anda ke format Excel. <sup>23.6</sup>
* Mulai versi 23.7, halaman atau bentuk dokumen dapat disimpan dalam format EPS. <sup>23.7</sup>

### Fitur Format Baru

* Fungsi untuk secara otomatis menghasilkan Daftar Isi (TOC) untuk dokumen MOBI telah diperkenalkan. <sup>23.8</sup>
* Konstruktor [PdfEncryptionDetails](https://reference.aspose.com/words/net/aspose.words.saving/pdfencryptiondetails/pdfencryptiondetails/) telah diperluas dengan [PdfPermissions](https://reference.aspose.com/words/net/aspose.words.saving/pdfpermissions/). <sup>23.8</sup>
* Pembentukan teks vertikal untuk metafile EMF telah diterapkan. <sup>23.8</sup>

### Rendering dan Pencetakan

#### Mendapatkan dan Memodifikasi Data Seri Bagan <sup>23.5</sup>

Fitur untuk mendapatkan dan mengubah data rangkaian grafik disediakan dengan menambahkan:

* kelas baru: [ChartXValue](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartxvalue/), [ChartYValue](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartyvalue/), [ChartXValueCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartxvaluecollection/), [ChartYValueCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartyvaluecollection/), [BubbleSizeCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/bubblesizecollection/), [ChartMultilevelValue](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartmultilevelvalue/)
* tipe enum baru: [ChartXValueType](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartxvaluetype/), [ChartYValueType](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartyvaluetype/)

#### Dukungan untuk Tipografi Tingkat Lanjut <sup>23.6</sup>

Dukungan untuk Tipografi Tingkat Lanjut dalam rendering WMF, EMF dan EMF+ telah ditambahkan.

#### Konten Berwarna di Halaman <sup>23.6</sup>

[PageInfo.Colored](https://reference.aspose.com/words/net/aspose.words.rendering/pageinfo/colored/) milik publik, yang menunjukkan apakah halaman tersebut berwarna atau tidak, telah ditambahkan.

#### Pemformatan Label Data Bagan <sup>23.6</sup>

Kemampuan untuk mengatur format isi, guratan, dan info untuk label data bagan telah diterapkan.

### Mail Merge dan Pelaporan

#### Penyisipan HTML Dinamis untuk Mesin Pelaporan LINQ <sup>23.6</sup>

Cara baru penyisipan HTML dinamis untuk Mesin Pelaporan LINQ telah ditambahkan.

#### Dukungan Tag Mustache <sup>23.7</sup>

Tag Mustache kini didukung dalam metode [MailMerge.GetRegionsHierarchy](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getregionshierarchy/) dan [MailMerge.GetFieldNamesForRegion](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getfieldnamesforregion/#getfieldnamesforregion).

#### Pembaruan Sintaks Templat Mesin Pelaporan LINQ <sup>23.7</sup>

Sintaks templat Mesin Pelaporan LINQ sekarang mendukung metode ekstensi `ElementAt` dan ElementAtOrDefault.

#### Menentukan Ukuran Gambar yang Dirender <sup>23.8</sup>

[ImageSize](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagesize/) milik publik baru untuk menentukan ukuran gambar yang dirender dalam piksel telah diperkenalkan.

#### Pertahankan Spasi untuk Nilai String JSON – LINQ <sup>23.8</sup>

Opsi telah ditambahkan ke Mesin Pelaporan LINQ untuk mempertahankan spasi putih untuk nilai string JSON.

### LowCode <sup>23.6</sup>

Metode LowCode baru yang dimaksudkan untuk menggabungkan berbagai jenis dokumen menjadi satu dokumen keluaran telah ditambahkan.

### Lainnya

* Dukungan untuk pembungkusan teks di header/footer telah diterapkan. <sup>23.5</sup>
* Kemampuan untuk menghapus tanda tangan digital dari dokumen ODT telah ditambahkan melalui metode [RemoveAllSignatures](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/removeallsignatures/). <sup>23.5</sup>
* [PhoneticGuide](https://reference.aspose.com/words/net/aspose.words/run/phoneticguide/) milik publik untuk mendapatkan teks dasar dan rubi dari panduan fonetik [Run](https://reference.aspose.com/words/net/aspose.words/run/) telah ditambahkan. <sup>23.5</sup>
* Kemampuan untuk mengambil nilai tanda tangan digital dari dokumen yang ditandatangani secara digital sebagai array byte telah ditambahkan dengan memperkenalkan properti [SignatureValue](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignature/signaturevalue/) baru. <sup>23.7</sup>
* Kelas [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) dan [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/) telah diperluas dengan anggota publik baru – [Row.NextRow](https://reference.aspose.com/words/net/aspose.words.tables/row/nextrow/), [Row.PreviousRow](https://reference.aspose.com/words/net/aspose.words.tables/row/previousrow/), [Cell.NextCell](https://reference.aspose.com/words/net/aspose.words.tables/cell/nextcell/), dan [Cell.PreviousCell](https://reference.aspose.com/words/net/aspose.words.tables/cell/previouscell/). <sup>23.7</sup>
* Dukungan untuk bidang CITATION dan BIBLIOGRAPHY telah ditambahkan. <sup>23.8</sup>

{{% alert color="primary" %}}

Pelajari lebih lanjut tentang [Catatan Rilis Aspose.Words untuk .NET 23.5](/words/net/aspose-words-for-net-23-5-release-notes/).

Pelajari lebih lanjut tentang [Catatan Rilis Aspose.Words untuk .NET 23.6](/words/net/aspose-words-for-net-23-6-release-notes/).

Pelajari lebih lanjut tentang [Catatan Rilis Aspose.Words untuk .NET 23.7](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-7-release-notes/).

Pelajari lebih lanjut tentang [Catatan Rilis Aspose.Words untuk .NET 23.8](/words/net/aspose-words-for-net-23-8-release-notes/).

{{% /alert %}}

## Aspose.Words untuk .NET 23.1, 23.2, 23.3, 23.4

Aspose.Words 23.1 meningkatkan kinerja emulasi operasi raster, serta meningkatkan kualitas ekspor dan rendering dokumen.

Aspose.Words 23.2 memperkenalkan penyimpanan dokumen dalam format MOBI, meningkatkan rendering bagan, dan membuat perubahan penting pada detail tampilan dokumen.

Aspose.Words 23.3 menyempurnakan impor dan penyimpanan dokumen dengan properti baru, dan juga meningkatkan kualitas pekerjaan dengan warna latar belakang dan latar depan serta gradien radial.

Aspose.Words 23.4 meningkatkan penghitungan beberapa parameter dan posisi tabel dan teks di sekitarnya.

### Peningkatan Kinerja

#### Emulasi Operasi Raster <sup>23.1</sup>

Kinerja dan kualitas emulasi operasi raster dengan metafile telah meningkat secara signifikan.

### Format yang Didukung

#### Ekspor ke MOBI <sup>23.2</sup>

Dimulai dengan versi 23.2, dimungkinkan untuk menyimpan dokumen dalam format MOBI (juga disebut RRC, AZW – format file e-book Amazon Kindle sendiri). Sekarang Anda tidak hanya dapat memuat dokumen MOBI, tetapi juga mengekspor file Anda ke format MOBI.

### Render

#### Bekerja dengan Warna Tema Shading <sup>23.1</sup>

Kemampuan untuk bekerja dengan warna tema penetasan telah diterapkan.

#### Dukungan Koefisien R-squared pada Grafik DML <sup>23.1</sup>

Dukungan koefisien R-kuadrat pada label garis tren bagan DML saat rendering telah ditambahkan.

#### Peningkatan Rendering Bagan <sup>23.2</sup>

Sejak versi 23.2, rendering grafik telah ditingkatkan secara signifikan.

#### Kontrol Warna Latar Belakang dan Latar Depan <sup>23.3</sup>

Kelas [Fill](https://reference.aspose.com/words/net/aspose.words.drawing/fill/) telah diperluas dengan serangkaian properti publik baru yang terkait dengan warna latar belakang dan latar depan: [ForeThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/fill/forethemecolor/) dan [BackThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/fill/backthemecolor/), [ForeTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/fill/foretintandshade/) dan [BackTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/fill/backtintandshade/).

#### Gradien Radial dengan `SkiaSharp` Native Shader <sup>23.3</sup>

Rendering gradien radial dengan shader asli `SkiaSharp` untuk .NET Standard telah diterapkan.

#### Jarak Antara Tabel dan Teks di Sekitarnya <sup>23.4</sup>

Kemampuan untuk mengatur jarak antara tabel dan teks di sekitarnya telah ditambahkan dengan memperkenalkan properti baru ke kelas [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/): [DistanceLeft](https://reference.aspose.com/words/net/aspose.words.tables/table/distanceleft/), [DistanceRight](https://reference.aspose.com/words/net/aspose.words.tables/table/distanceright/), [DistanceTop](https://reference.aspose.com/words/net/aspose.words.tables/table/distancetop/), dan [DistanceBottom](https://reference.aspose.com/words/net/aspose.words.tables/table/distancebottom/).

### Memuat dan Menyimpan Dokumen

#### Hasilkan `TOC` untuk Dokumen AZW3 <sup>23.1</sup>

Kemampuan untuk menghasilkan `TOC` (daftar isi) untuk dokumen AZW3 telah ditambahkan melalui penggunaan properti [NavigationMapLevel](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/navigationmaplevel/).

#### Mengekspor Item Daftar ke Markdown <sup>23.1</sup>

Cara untuk mengontrol ekspor item daftar ke format Markdown telah disediakan dengan menambahkan properti [ListExportMode](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/listexportmode/) ke kelas [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/).

#### Pemberitahuan Kemajuan Penyimpanan Dokumen <sup>23.3</sup>

Menyimpan pemberitahuan kemajuan untuk format MOBI dan AZW3 telah diterapkan.

#### Penyesuaian Kalimat dan Spasi Kata <sup>23.3</sup>

Kemampuan untuk menentukan apakah akan menyesuaikan spasi kalimat dan kata secara otomatis saat dokumen diimpor telah ditambahkan dengan memperkenalkan properti [AdjustSentenceAndWordSpacing](https://reference.aspose.com/words/net/aspose.words/importformatoptions/adjustsentenceandwordspacing/).

### Lainnya

* Kemampuan untuk menentukan penyesuaian spasi karakter dokumen telah ditambahkan melalui implementasi properti [JustificationMode](https://reference.aspose.com/words/net/aspose.words/document/justificationmode/) <sup>23.2</sup>
* Cara untuk menginstruksikan Aspose.Words apakah akan menyertakan kotak teks, catatan kaki, dan catatan akhir dalam statistik jumlah kata telah disediakan dengan menambahkan properti [IncludeTextboxesFootnotesEndnotesInStat](https://reference.aspose.com/words/net/aspose.words/document/includetextboxesfootnotesendnotesinstat/) <sup>23.2</sup>
* Opsi baru untuk gaya dokumen, yang memungkinkan menentukan apakah gaya didefinisikan ulang secara otomatis berdasarkan nilai yang sesuai, telah diperkenalkan melalui properti [AutomaticallyUpdate](https://reference.aspose.com/words/net/aspose.words/style/automaticallyupdate/) <sup>23.2</sup>
* Kemampuan untuk menentukan apakah [Run](https://reference.aspose.com/words/net/aspose.words/run/) merupakan panduan fonetik yang dijalankan telah ditambahkan menggunakan properti [IsPhoneticGuide](https://reference.aspose.com/words/net/aspose.words/run/isphoneticguide/) <sup>23.4</sup>
* Cara sederhana untuk bekerja dengan rangkaian dan sumbu diagram kombo telah diterapkan dengan memperkenalkan kelas [ChartAxisCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxiscollection/) dan menambahkan properti [Chart.Axes](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chart/axes/) <sup>23.4</sup>
* Properti publik baru yang terhubung dengan posisi dan ukuran relatif bentuk telah ditambahkan ke kelas [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) <sup>23.4</sup>
* Akurasi dan kinerja penghitungan kecerahan warna untuk resolusi warna teks otomatis telah ditingkatkan sesuai dengan versi terbaru Microsoft Word <sup>23.4</sup>

{{% alert color="primary" %}}

Pelajari lebih lanjut tentang [Catatan Rilis Aspose.Words untuk .NET 23.1](/words/net/aspose-words-for-net-23-1-release-notes/).

Pelajari lebih lanjut tentang [Catatan Rilis Aspose.Words untuk .NET 23.2](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-2-release-notes/).

Pelajari lebih lanjut tentang [Catatan Rilis Aspose.Words untuk .NET 23.3](/words/net/aspose-words-for-net-23-3-release-notes/).

Pelajari lebih lanjut tentang [Catatan Rilis Aspose.Words untuk .NET 23.4](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-4-release-notes/).

{{% /alert %}}

## Lihat juga

{{% alert color="primary" %}}

Halaman ini berisi berita rilis terbaru selama 2 tahun terakhir. Untuk rincian tentang rilis sebelumnya, lihat halaman [Catatan Rilis'](/words/net/release-notes/) di bagian yang relevan.

{{% /alert %}}
