---
title: Apa yang baru
second_title: Aspose.Words untuk .NET
articleTitle: Apa yang baru di Aspose.Words untuk .NET
linktitle: Apa yang baru di Aspose.Words untuk .NET
type: docs
description: "Aspose.Words untuk .NET berkembang dan ditingkatkan setiap hari. Di halaman ini, Anda dapat mempelajari tentang fitur-fitur produk yang besar dan paling menarik."
weight: 10
url: /id/net/what-s-new-in-aspose-words-for-net/
---

Halaman ini menjelaskan fitur-fitur Aspose.Words baru yang paling menarik yang diperkenalkan dalam rilis terbaru.

## Aspose.Words untuk .NET 24.1, 24.2

Aspose.Words 24.1 meningkatkan pengalaman dalam mengelola warna guratan, menyempurnakan objek OLE dan pelaporan LINQ, serta memperkenalkan API publik Sumber Bibliografi baru.

Aspose.Words 24.2 memperluas API Charts, manajemen gaya, dan opsi LINQ. Versi Aspose.Words ini juga memperkenalkan kemampuan untuk menentukan SvgSaveOptions selama rendering, kontrol yang lebih fleksibel dalam memuat file Markdown, dan bekerja dengan teks referensi untuk catatan kaki dan catatan akhir.

### Rendering dan Pencetakan

#### Kontrol Warna Goresan <sup>24.1</sup>

Kelas [Stroke](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/) telah diperluas dengan serangkaian properti publik baru yang terkait dengan pengelolaan warna guratan: [ForeThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/forethemecolor/) dan [BackThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/backthemecolor/), [ForeTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/foretintandshade/) dan [BackTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/backtintandshade/).

####Ekstensi DrawingML Charts API <sup>24.2</sup>

**DrawingML Charts API** terus diperluas.

### Memuat dan Menyimpan Dokumen

#### Tentukan SvgSaveOptions Selama Rendering <sup>24.2</sup>

Kemampuan untuk menentukan [SvgSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/svgsaveoptions/) selama rendering telah ditambahkan menggunakan metode [ShapeRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/shaperenderer/).[Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/) dan [OfficeMathRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/officemathrenderer/).[Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/).

#### Pertahankan Baris Kosong saat Memuat file Markdown <sup>24.2</sup>

Kemampuan untuk mempertahankan baris kosong saat memuat file Markdown telah ditambahkan.

### Lainnya

* Kemampuan untuk memodifikasi teks kontrol `TextBox` OLE telah diperkenalkan dengan menambahkan properti [Text](https://reference.aspose.com/words/net/aspose.words.drawing.ole/textboxcontrol/text/) baru ke kelas [TextBoxControl](https://reference.aspose.com/words/net/aspose.words.drawing.ole/textboxcontrol/) baru. <sup>24.1</sup>
* API publik Sumber Bibliografi diimplementasikan melalui penambahan namespace [Aspose.Words.Bibliography](https://reference.aspose.com/words/net/aspose.words.bibliography/) baru dengan kelas dan enumerasi baru, dan melalui penambahan properti [Bibliography](https://reference.aspose.com/words/net/aspose.words/document/bibliography/) baru ke kelas [Document](https://reference.aspose.com/words/net/aspose.words/document/). <sup>24.1</sup>
* API untuk membatasi akses ke anggota tipe menggunakan sintaks templat untuk Mesin Pelaporan LINQ telah disediakan. <sup>24.1</sup>
* Properti publik baru [Priority](https://reference.aspose.com/words/net/aspose.words/style/priority/), [UnhideWhenUsed](https://reference.aspose.com/words/net/aspose.words/style/unhidewhenused/), dan [SemiHidden](https://reference.aspose.com/words/net/aspose.words/style/semihidden/) untuk manajemen gaya yang ditingkatkan telah ditambahkan ke kelas [Style](https://reference.aspose.com/words/net/aspose.words/style/). <sup>24.2</sup>
- Fungsi untuk mengambil teks tanda referensi sebenarnya untuk catatan kaki dan catatan akhir telah ditingkatkan dengan properti [ActualReferenceMark](https://reference.aspose.com/words/net/aspose.words.notes/footnote/actualreferencemark/) dan metode [UpdateActualReferenceMarks](https://reference.aspose.com/words/net/aspose.words/document/updateactualreferencemarks/). <sup>24.2</sup>
- Kompatibilitas dengan grafik `Word 2016` untuk `LINQ Reporting Engine` telah diaktifkan. <sup>24.2</sup>

{{% alert color="primary" %}}

Pelajari lebih lanjut tentang [Catatan Rilis Aspose.Words untuk .NET 24.1](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-1-release-notes/).

Pelajari lebih lanjut tentang [Catatan Rilis Aspose.Words untuk .NET 24.2](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-2-release-notes/).

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

Pelajari lebih lanjut tentang [Catatan Rilis Aspose.Words untuk .NET 23.9](/words/net/aspose-words-for-net-23-9-release-notes/).

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

Pelajari lebih lanjut tentang [Catatan Rilis Aspose.Words untuk .NET 23.7](/words/net/aspose-words-for-net-23-7-release-notes/).

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

Pelajari lebih lanjut tentang [Catatan Rilis Aspose.Words untuk .NET 23.2](/words/net/aspose-words-for-net-23-2-release-notes/).

Pelajari lebih lanjut tentang [Catatan Rilis Aspose.Words untuk .NET 23.3](/words/net/aspose-words-for-net-23-3-release-notes/).

Pelajari lebih lanjut tentang [Catatan Rilis Aspose.Words untuk .NET 23.4](/words/net/aspose-words-for-net-23-4-release-notes/).

{{% /alert %}}

## Aspose.Words untuk .NET 22.9, 22.10, 22.11, 22.12

Aspose.Words 22.9 memperluas opsi untuk memuat dan menyimpan dokumen serta meningkatkan interaksi dengan beberapa opsi lainnya.

Aspose.Words 22.10 meningkatkan opsi pencarian dan penggantian, menyempurnakan objek OLE, dan memperluas fungsionalitas daftar.

Aspose.Words 22.11 memperluas fungsinya dengan opsi baru untuk pekerjaan yang lebih nyaman dengan objek yang sudah dikenal: bidang, pencetakan, OLE, dan tag dokumen terstruktur.

Aspose.Words 22.12 meningkatkan kemampuan rendering dan memperkenalkan opsi untuk bekerja dengan margin saat memuat/menyimpan dokumen.

### Peningkatan Kinerja <sup>22.12</sup>

Pengoptimalan yang secara signifikan mengurangi kedalaman sarang status grafis saat merender ke PDF untuk menjaga kepatuhan spesifikasi telah diperkenalkan.

### Rendering dan Pencetakan

#### Mencetak Halaman Tidak Berwarna pada Printer Berwarna <sup>22.11</sup>

Mode cetak berwarna/skala abu-abu khusus telah diterapkan dengan menambahkan nilai **GrayscaleAuto** baru ke enumerasi [ColorPrintMode](https://reference.aspose.com/words/net/aspose.words.rendering/colorprintmode/).

Properti cetak baru memungkinkan pengguna mengontrol cara mencetak halaman tidak berwarna jika perangkat mendukung pencetakan berwarna. Fitur ini dapat berguna jika pengguna ingin mencetak halaman tidak berwarna secara otomatis hanya dengan menggunakan mode pencetakan skala abu-abu.

#### Properti Rendering Perbatasan Baru <sup>22.12</sup>

Properti publik baru [ThemeColor](https://reference.aspose.com/words/net/aspose.words/border/themecolor/) dan [TintAndShade](https://reference.aspose.com/words/net/aspose.words/border/tintandshade/) telah diperkenalkan.

#### Rumus Garis Tren Linier untuk Rendering DrawingML <sup>22.12</sup>

Render rumus garis tren linier untuk grafik DrawingML telah diterapkan.

#### Pengaturan Penggantian Font untuk Font Google Noto <sup>22.12</sup>

Pengaturan penggantian font yang telah ditentukan sebelumnya untuk font Google Noto telah diperbarui.

### Memuat dan Menyimpan Dokumen

#### Bentuk Header atau Footer Cache untuk Memperkecil Ukuran PDF <sup>22.9</sup>

Kemampuan untuk menyimpan bentuk header/footer dalam cache untuk mengurangi ukuran file PDF keluaran telah diterapkan dengan menambahkan properti **CacheHeaderFooterShapes** baru.

#### Deteksi Penomoran Otomatis saat Memuat Dokumen <sup>22.9</sup>

Kemampuan untuk menentukan properti [AutoNumberingDetection](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/autonumberingdetection/) saat memuat teks telah diterapkan melalui kelas [TxtLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/) yang diperluas.

#### Menentukan Tipe Margin Tertentu <sup>22.12</sup>

Kemampuan untuk menentukan jenis [Margin](https://reference.aspose.com/words/net/aspose.words/pagesetup/margins/) tertentu untuk bagian tertentu telah diterapkan.

### Cari dan Bandingkan <sup>22.10</sup>

Kemampuan untuk mengabaikan [StructuredDocumentTag](https://reference.aspose.com/words/net/aspose.words.markup/structureddocumenttag/) saat opsi temukan dan ganti telah diterapkan dengan menambahkan properti [IgnoreStructuredDocumentTags](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/ignorestructureddocumenttags/) baru ke kelas [FindReplaceOptions](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/).

### Lainnya

* Fitur baru untuk mendapatkan FieldEQ sebagai OfficeMath telah ditambahkan. <sup>22.9</sup>
* Pembuatan tag dokumen terstruktur tipe Group pada tingkat Baris diperbolehkan. <sup>22.9</sup>
* Objek dan kontrol OLE sekarang diperlakukan sebagai gambar metafile saat mengonversi dokumen ke HTML. <sup>22.10</sup>
* Fitur baru untuk memeriksa apakah daftar tertentu dibuat dari templat yang sama dengan daftar yang dibandingkan telah ditambahkan dengan memperkenalkan metode [HasSameTemplate](https://reference.aspose.com/words/net/aspose.words.lists/list/hassametemplate/) baru ke dalam kelas [List](https://reference.aspose.com/words/net/aspose.words.lists/list/). <sup>22.10</sup>
* Kemampuan untuk membuat tag dokumen terstruktur baru bertipe [Citation](https://reference.aspose.com/words/net/aspose.words.markup/sdttype/) telah ditambahkan. <sup>22.11</sup>
* Kemampuan untuk melacak kemajuan pembaruan lapangan telah disediakan. <sup>22.11</sup>
* Properti **EmbedAttachments** baru yang memungkinkan pengguna untuk menyematkan lampiran OLE dari dokumen sumber ke dalam dokumen PDF keluaran telah diperkenalkan. <sup>22.11</sup>

{{% alert color="primary" %}}

Pelajari lebih lanjut tentang [Catatan Rilis Aspose.Words untuk .NET 22.9](/words/net/aspose-words-for-net-22-9-release-notes/).

Pelajari lebih lanjut tentang [Catatan Rilis Aspose.Words untuk .NET 22.10](/words/net/aspose-words-for-net-22-10-release-notes/).

Pelajari lebih lanjut tentang [Catatan Rilis Aspose.Words untuk .NET 22.11](/words/net/aspose-words-for-net-22-11-release-notes/).

Pelajari lebih lanjut tentang [Catatan Rilis Aspose.Words untuk .NET 22.12](/words/net/aspose-words-for-net-22-12-release-notes/).

{{% /alert %}}

## Aspose.Words untuk .NET 22.5, 22.6, 22.7, 22.8

Aspose.Words 22.5 memperkenalkan dukungan untuk format pemuatan baru dan ukuran halaman cetak baru, serta meningkatkan beberapa opsi rendering.

Aspose.Words 22.6 memperluas kemungkinan mengonversi PDF ke format lain, serta meningkatkan pekerjaan dengan DrawingML dan efek pengisian teks padat.

Aspose.Words 22.7 meningkatkan kemungkinan bekerja dengan fitur rendering, dan juga menambahkan fitur baru untuk bekerja dengan impor dan ekspor HTML ke PDF.

Aspose.Words 22.8 memperkenalkan format ekspor baru dan meningkatkan berbagai algoritma rendering.

API ditingkatkan untuk pengembangan yang lebih fleksibel dan nyaman.

### Format yang Didukung

* Dukungan untuk memuat dokumen EPUB dan XML telah diperkenalkan dengan menambahkan nilai baru ke enumerasi [LoadFormat](https://reference.aspose.com/words/net/aspose.words/loadformat/). Mulai dari versi 22.5, dimungkinkan untuk memuat dokumen EPUB dan XML ke dalam model dokumen Aspose.Words dan mengonversinya ke [format yang didukung](https://reference.aspose.com/words/net/aspose.words/saveformat/) apa pun. <sup>22.5</sup>
* Mulai dari versi 22.8, dimungkinkan untuk menyimpan dokumen dalam format AZW3 – format file e-book milik Amazon Kindle (KF8 adalah nama lain untuk format tersebut). Sekarang Anda tidak hanya dapat memuat dokumen AZW3, tetapi juga mengekspor file Anda ke format AZW3, yang pada dasarnya adalah EPUB yang dikompilasi. <sup>22.8</sup>

### Rendering dan Pencetakan

#### Ukuran Cetak Baru <sup>22.5</sup>

Dukungan untuk ukuran halaman cetak "Amplop No. 10" telah ditambahkan dengan memperkenalkan nilai baru pada enumerasi [PaperSize](https://reference.aspose.com/words/net/aspose.words/papersize/).

#### Merender Rumus MathML <sup>22.5</sup>

Rendering kotak pembatas di sekitar rumus MathML dan deteksi font saat merender karakter untuk rumus tersebut telah ditingkatkan.

#### Peningkatan Grafik DML <sup>22.6</sup>

Grafik DrawingML API publik telah diperluas untuk mendukung pengisian gradien, tekstur, dan pola.

#### Glyph Menguraikan Parsing untuk OpenType <sup>22.7</sup>

glyph Aspose.Words sendiri menguraikan penguraian untuk font OpenType (CFF) telah diterapkan.

Sebelumnya, penguraian glyph untuk font OpenType (CFF) dilakukan melalui GDI+. Jadi sekarang ini berfungsi jika GDI+ tidak tersedia – Java, platform .NET Standard, Linux OS, dll. Penguraian kerangka Glyph diperlukan dalam kasus tertentu seperti WordArt, efek teks, beberapa fitur Office Math, dan lainnya.

#### Mengatur Pemformatan Bentuk Bayangan <sup>22.7</sup>

Kemampuan untuk mengatur format bayangan objek bentuk telah disediakan dengan menambahkan properti [ShadowFormat](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/shadowformat/) baru.

#### Dukungan untuk Spasi Sel pada Tabel <sup>22.8</sup>

Mesin tata letak kini ditingkatkan secara signifikan: mekanisme spasi sel yang sangat kompleks dalam tabel telah diterapkan.

#### Penggantian Font untuk Simbol <sup>22.8</sup>

Penggantian font untuk simbol telah ditingkatkan.

#### Algoritma Rotasi Label Sumbu Bagan <sup>22.8</sup>

Algoritme rotasi label sumbu bagan telah ditingkatkan.

### Memuat dan Menyimpan Dokumen

#### Memuat dan Mengonversi PDF ke Format Halaman Tetap tanpa Model Tata Letak <sup>22.6</sup>

Kemampuan untuk memuat dan mengonversi dokumen PDF ke format halaman tetap dengan fidelitas dan kinerja tinggi telah diterapkan.

#### Mode Impor HTML Baru <sup>22.7</sup>

Mode impor HTML baru untuk elemen tingkat blok telah diperkenalkan dengan menambahkan nilai baru ke enumerasi [HtmlInsertOptions](https://reference.aspose.com/words/net/aspose.words/htmlinsertoptions/).

#### Konversikan ke PDF/UA-1 CSompliant dengan WCAG 2.0 <sup>22.7</sup>

Dukungan untuk mengonversi dokumen ke format PDF/UA-1, sesuai dengan WCAG 2.0, telah ditambahkan.

Jadi, jika pelanggan memiliki dokumen Word yang dapat diakses dan mengonversinya ke PDF/UA-1 melalui Aspose.Words dengan menyebutkan spesifikasi konversi, maka hasilnya akan kompatibel dengan WCAG 2.0.

WCAG atau Pedoman Aksesibilitas Konten Web adalah seperangkat pedoman yang dikembangkan oleh W3C bekerja sama dengan individu dan organisasi di seluruh dunia. Sekarang dengan Aspose.Words Anda dapat mengonversi dokumen Anda ke format keluaran PDF/UA-1, yang cocok untuk membuat dokumen PDF yang sesuai dengan WCAG 2.0.

Perlu dicatat bahwa WCAG 2.0 memiliki dua persyaratan tambahan yang tidak ditentukan dalam spesifikasi PDF/UA-1:

* persyaratan kontras

* Persyaratan untuk menandai konten multimedia

Namun kedua persyaratan tersebut tidak relevan dengan kasus kami mengonversi dari Word ke PDF.

### Lainnya

* Pengecualian untuk mewarisi efek pengisian teks padat yang meniru perilaku MS Word telah diterapkan. <sup>22.6</sup>
* Dukungan bidang `DATABASE` telah ditambahkan. Dengan menggunakan jenis bidang ini, Anda bisa, misalnya, memperlihatkan hasil kueri database dalam tabel Microsoft Word. <sup>22.7</sup>

{{% alert color="primary" %}}

Pelajari lebih lanjut tentang [Catatan Rilis Aspose.Words untuk .NET 22.5](/words/net/aspose-words-for-net-22-5-release-notes/).

Pelajari lebih lanjut tentang [Catatan Rilis Aspose.Words untuk .NET 22.6](/words/net/aspose-words-for-net-22-6-release-notes/).

Pelajari lebih lanjut tentang [Catatan Rilis Aspose.Words untuk .NET 22.7](/words/net/aspose-words-for-net-22-7-release-notes/).

Pelajari lebih lanjut tentang [Catatan Rilis Aspose.Words untuk .NET 22.8](/words/net/aspose-words-for-net-22-8-release-notes/).

{{% /alert %}}

## Lihat juga

{{% alert color="primary" %}}

Halaman ini berisi berita rilis terbaru selama 2 tahun terakhir. Untuk rincian tentang rilis sebelumnya, lihat halaman [Catatan Rilis'](/words/net/release-notes/) di bagian yang relevan.

{{% /alert %}}