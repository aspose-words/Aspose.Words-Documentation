---
title: Apa yang baru
second_title: Aspose.Words untuk Python via .NET
articleTitle: Apa yang baru di Aspose.Words untuk Python via .NET
linktitle: Apa yang baru di Aspose.Words untuk Python via .NET
type: docs
description: "Aspose.Words untuk Python via .NET berkembang dan ditingkatkan setiap hari. Di halaman ini, Anda dapat mempelajari tentang fitur-fitur produk yang besar dan paling menarik."
weight: 10
url: /id/python-net/what-s-new-in-aspose-words-for-python-net/
---

Halaman ini menjelaskan fitur-fitur Aspose.Words baru yang paling menarik yang diperkenalkan dalam rilis terbaru.

## Aspose.Words untuk Python via .NET 24.5, 24.6, 24.7, 24.8

Aspose.Words 24.5 memperluas opsi untuk rakitan, meningkatkan kemampuan rendering, dan memperluas beberapa opsi lainnya.

Aspose.Words 24.6 meningkatkan opsi rendering, meningkatkan fungsionalitas pencarian dan perbandingan, dan memperluas beberapa fitur lainnya.

Aspose.Words 24.7 mengubah cara Anda bekerja dengan ActiveX, memperluas kemampuan rendering, serta mengekspor ke format Markdown dan XLSX.

Aspose.Words 24.8 menyempurnakan kustomisasi bagan dengan kontrol yang tepat atas label sumbu, memperluas manajemen font, meningkatkan penanganan struktur dokumen, dan menambahkan kapabilitas baru untuk ekspor HTML/XAML, fungsionalitas PDF, konversi dokumen, dan tanda tangan digital.

### Format yang Didukung

Mulai dari versi 24.7, ekspor ke PDF/UA-2 didukung untuk memastikan aksesibilitas bagi pengguna penyandang disabilitas.

### Rendering dan Pencetakan

#### Perubahan Charts, Shapes dan DrawingML <sup>24.5</sup>

* Render efek DrawingML untuk grafik SVG, memperluas fungsionalitas sebelumnya yang terbatas pada gambar, telah diterapkan.
* Dukungan untuk membuat bagan kombo dan menyesuaikan properti seperti lebar celah, tumpang tindih, dan skala gelembung dalam grup seri telah diperkenalkan dengan menambahkan kelas [ChartSeriesGroup](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriesgroup/) dan [ChartSeriesGroupCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriesgroupcollection/) serta properti [series_groups](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/series_groups/).
* Fungsionalitas untuk memanipulasi efek SoftEdge bentuk telah diterapkan dengan menambahkan kelas [SoftEdgeFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing/softedgeformat/).
* Kemampuan untuk mengubah nilai penyesuaian bentuk telah diterapkan dengan menambahkan **AdjustmentCollection** dan **Adjustment** kelas umum dan [adjustments](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/adjustments/) Properti.

#### Perubahan Bagan, Bentuk, dan Gambar <sup>24.6</sup>

* Kemampuan pembuatan grafik telah ditingkatkan. Kini Anda dapat membuat lebih banyak variasi bagan, termasuk *Peta Pohon*, *Sunburst*, *Histogram*, bagan *Pareto*, bagan *Kotak & Kumis*, *Air Terjun*, dan *Corong*. Hal ini memungkinkan Anda memvisualisasikan data dengan cara yang lebih beragam dan informatif.
* Kontrol warna untuk pemformatan bayangan telah ditingkatkan. Anda bisa mendapatkan kontrol yang lebih tepat atas tampilan dokumen Anda dengan mengakses warna bayangan.
* Peningkatan kinerja untuk rendering latar belakang telah ditingkatkan. Anda dapat mempercepat rendering latar belakang yang berisi elemen kecil secara signifikan berkat teknologi ubin asli.
* Gradien realistis untuk bentuk telah ditambahkan. Anda sekarang dapat membuat bentuk DML dengan gradien non-linier, meniru gaya visual Microsoft Word untuk tampilan yang lebih halus.

#### Penyesuaian Label Data Bagan <sup>24.7</sup>

Kemampuan untuk menyesuaikan label data bagan seperti **Orientation** dan **Rotation** telah ditambahkan.

#### Gaya Nomor Khusus untuk Tingkat Daftar <sup>24.7</sup>

Penyetel untuk properti publik [custom_number_style_format](https://reference.aspose.com/words/python-net/aspose.words.lists/listlevel/custom_number_style_format/) telah ditambahkan. Anda sekarang dapat menentukan gaya nomor khusus untuk tingkat daftar.

#### Perubahan dalam bekerja dengan ActiveX <sup>24.7</sup>

* Properti objek ActiveX sekarang dapat dimodifikasi, memberi Anda kontrol lebih besar atas perilakunya.
* Kemampuan untuk mengubah nilai tombol radio kontrol ActiveX untuk mengaktifkan interaksi dinamis telah ditambahkan.
* Kemampuan untuk mengubah kotak centang ActiveX menjadi "dicentang" atau "tidak dicentang" telah ditambahkan.

#### Kontrol Atas Orientasi dan Rotasi Label Centang Sumbu Bagan <sup>24.8</sup>

Kontrol yang tepat atas orientasi dan rotasi label centang sumbu bagan telah ditambahkan untuk kustomisasi bagan yang lebih mudah – kelas [AxisTickLabels](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisticklabels/) telah diperluas dengan properti [orientation](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisticklabels/orientation/) dan [rotation](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisticklabels/rotation/) yang baru.

#### Mengganti Garis Miring Terbalik dengan Tanda Yen <sup>24.8</sup>

Ekspor HTML dan XAML yang kompatibel dengan versi sebelumnya untuk mengganti karakter garis miring terbalik dengan tanda Yen telah ditingkatkan. Untuk mencapai hal ini, properti **replace_backslash_with_yen_sign** telah ditambahkan ke kelas [HtmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/) dan [XamlFlowSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/xamlflowsaveoptions/).

#### Menggunakan Tag SDT sebagai Nama Bidang Formulir saat Mengekspor ke PDF <sup>24.8</sup>

Ekspor PDF dengan dukungan penggunaan tag SDT sebagai nama bidang formulir telah ditingkatkan dengan menambahkan properti [use_sdt_tag_as_form_field_name](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/use_sdt_tag_as_form_field_name/) baru ke kelas [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/).

### Mengonversi, Memuat, dan Menyimpan Dokumen

#### Mengekspor Tautan ke Format Markdown <sup>24.7</sup>

Kemampuan untuk mengontrol ekspor tautan dalam format Markdown telah ditambahkan melalui penerapan properti [link_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/link_export_mode/).

#### LowCode <sup>24.8</sup>

Kelas [LowCode.Converter](https://reference.aspose.com/words/python-net/aspose.words.lowcode/converter/) baru, yang dirancang untuk menyediakan serangkaian metode guna mengonversi berbagai jenis dokumen dengan satu baris kode, telah diperkenalkan.

### Cari dan Bandingkan

#### Opsi Perbandingan Lanjutan <sup>24.6</sup>
Kemampuan untuk menyederhanakan alur kerja analisis data dengan fungsionalitas perbandingan yang ditingkatkan telah ditambahkan. Ini mencakup opsi [ignore_store_item_id](https://reference.aspose.com/words/python-net/aspose.words.comparing/advancedcompareoptions/ignore_store_item_id/) baru dan antarmuka yang didesain ulang untuk perbandingan lanjutan.

### Lainnya

* Fungsi untuk menghilangkan halaman kosong dari dokumen telah diterapkan dengan menambahkan metode [remove_blank_pages](https://reference.aspose.com/words/python-net/aspose.words/document/remove_blank_pages/). <sup>24.5</sup>
* Kemampuan untuk memeriksa keberadaan makro VBA tanpa memuat dokumen telah disediakan dengan menambahkan properti [has_macros](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/has_macros/). <sup>24.5</sup>
* Menyimpan penomoran sumber saat memasukkan dokumen menggunakan Mesin Pelaporan LINQ kini didukung. <sup>24.5</sup>
* Properti [date_time_utc](https://reference.aspose.com/words/python-net/aspose.words/comment/date_time_utc/) baru telah ditambahkan – ini memberikan stempel waktu yang lebih tepat untuk komentar, meningkatkan pengorganisasian, dan ketertelusuran. <sup>24.6</sup>
* Mesin Pelaporan LINQ telah ditingkatkan. Penghapusan selektif paragraf kosong dan definisi pesan khusus untuk anggota objek yang hilang telah dilakukan, menghasilkan laporan yang lebih bersih dan informatif. <sup>24.6</sup>
* Format tanggalwaktu sekarang secara otomatis terdeteksi untuk ekspor tanpa batas ke format XLSX. <sup>24.7</sup>
* Properti publik [is_protected](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/is_protected/), yang memungkinkan Anda memverifikasi apakah proyek VBA dilindungi, telah ditambahkan. <sup>24.7</sup>
* Informasi font telah diperluas dengan properti **embedding_licensing_rights** yang ditambahkan ke kelas [FontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/) dan [PhysicalFontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/physicalfontinfo/). <sup>24.8</sup>
* Cara untuk menghapus header dan footer bagian secara efisien sambil mempertahankan tanda air telah ditambahkan agar dapat bekerja dengan struktur dokumen secara lebih akurat. Untuk menghapus header dan footer bagian, gunakan metode publik baru [clear_headers_footers](https://reference.aspose.com/words/python-net/aspose.words/section/clear_headers_footers/#default). <sup>24.8</sup>
* Penandatanganan digital dokumen XPS menggunakan [XpsSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/xpssaveoptions/) telah diaktifkan – properti baru [digital_signature_details](https://reference.aspose.com/words/python-net/aspose.words.saving/xpssaveoptions/digital_signature_details/) telah ditambahkan untuk tujuan ini. <sup>24.8</sup>

{{% alert color="primary" %}}

Pelajari lebih lanjut tentang [Catatan Rilis Aspose.Words untuk Python via .NET 24.5](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-5-release-notes/).

Pelajari lebih lanjut tentang [Catatan Rilis Aspose.Words untuk Python via .NET 24.6](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-6-release-notes/).

Pelajari lebih lanjut tentang [Catatan Rilis Aspose.Words untuk Python via .NET 24.7](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-7-release-notes/).

Pelajari lebih lanjut tentang [Catatan Rilis Aspose.Words untuk Python via .NET 24.8](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-8-release-notes/).

{{% /alert %}}

## Aspose.Words untuk Python via .NET 24.1, 24.2, 24.3, 24.4

Aspose.Words 24.1 meningkatkan pengalaman dalam mengelola warna guratan, menyempurnakan objek OLE, serta memperkenalkan API publik Sumber Bibliografi baru.

Aspose.Words 24.2 memperluas API Charts, dan manajemen gaya. Versi Aspose.Words ini juga memperkenalkan kemampuan untuk menentukan SvgSaveOptions selama rendering, kontrol yang lebih fleksibel dalam memuat file Markdown, dan bekerja dengan teks referensi untuk catatan kaki dan catatan akhir.

Aspose.Words 24.3 memperkenalkan pembaca/pemutar TIFF baru dan emulasi operasi raster biner untuk metafile WMF. Aspose.Words 24.3 juga terus memperluas API Grafik.

Aspose.Words 24.4 meningkatkan penyimpanan format, beberapa opsi rendering, serta meningkatkan kerja dengan tanda tangan digital.

### Format yang Didukung <sup>24.4</sup>

Format gambar **WebP** modern kini didukung di Aspose.Words untuk .NET Framework 4.6.2 dan yang lebih tinggi. Anda sekarang dapat membaca dan menyisipkan gambar WebP ke dalam dokumen, serta menyimpan gambar dalam format WebP.

Harap dicatat bahwa WebP saat ini hanya tersedia di .NET Standard dan .NET Framework v4.6.2 dan di atasnya.

### Rendering dan Pencetakan

#### Kontrol Warna Goresan <sup>24.1</sup>

Kelas [Stroke](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/) telah diperluas dengan serangkaian properti publik baru yang terkait dengan pengelolaan warna guratan: [fore_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/fore_theme_color/) dan [back_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/back_theme_color/), [fore_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/fore_tint_and_shade/) dan [back_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/back_tint_and_shade/).

#### Ekstensi DrawingML Charts API <sup>24.2 / 24.3 / 24.4</sup>

**DrawingML Charts API** terus diperluas.

#### Menyematkan Font yang Dideklarasikan dalam Aturan @font-face <sup>24.4</sup>

Ditambahkan kemampuan untuk menyematkan font yang dideklarasikan dalam aturan @font-face ke dalam definisi font dokumen yang dihasilkan dengan menambahkan properti baru bernama [support_font_face_rules](https://reference.aspose.com/words/python-net/aspose.words.loading/htmlloadoptions/support_font_face_rules/).

#### Bekerja dengan Format Cahaya dan Pantulan <sup>24.4</sup>

Kemampuan untuk bekerja dengan format cahaya dan pantulan untuk objek gambar telah diimplementasikan.

### Memuat dan Menyimpan Dokumen

#### Tentukan SvgSaveOptions Selama Rendering <sup>24.2</sup>

Kemampuan untuk menentukan [SvgSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/svgsaveoptions/) selama rendering telah ditambahkan menggunakan metode [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/).[save](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/save/#bytesio_svgsaveoptions) dan [OfficeMathRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/officemathrenderer/).[save](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/save/#bytesio_svgsaveoptions).

#### Pertahankan Baris Kosong saat Memuat file Markdown <sup>24.2</sup>

Kemampuan untuk mempertahankan baris kosong saat memuat file Markdown telah ditambahkan.

#### Pembaca/Pemutar TIFF Baru <sup>24.3</sup>

Pembaca/pemutar TIFF baru telah dikembangkan untuk Aspose.Words. Aspose.Words untuk .NET 24.3 menambahkan dukungan untuk membaca gambar TIFF dengan tipe kompresi JPEG dan Old JPEG, dan juga secara signifikan meningkatkan kualitas operasi baca dan tulis.

### Lainnya

* Kemampuan untuk memodifikasi teks kontrol `TextBox` OLE telah diperkenalkan dengan menambahkan properti **Text** baru ke kelas **TextBoxControl** baru. <sup>24.1</sup>
* API publik Sumber Bibliografi diimplementasikan melalui penambahan namespace [Aspose.Words.Bibliography](https://reference.aspose.com/words/python-net/aspose.words.bibliography/) baru dengan kelas dan enumerasi baru, dan melalui penambahan properti [bibliography](https://reference.aspose.com/words/python-net/aspose.words/document/bibliography/) baru ke kelas [Document](https://reference.aspose.com/words/python-net/aspose.words/document/). <sup>24.1</sup>
* Properti publik baru [priority](https://reference.aspose.com/words/python-net/aspose.words/style/priority/), [unhide_when_used](https://reference.aspose.com/words/python-net/aspose.words/style/unhide_when_used/), dan [semi_hidden](https://reference.aspose.com/words/python-net/aspose.words/style/semi_hidden/) untuk manajemen gaya yang ditingkatkan telah ditambahkan ke kelas [Style](https://reference.aspose.com/words/python-net/aspose.words/style/). <sup>24.2</sup>
* Fungsi untuk mengambil teks tanda referensi sebenarnya untuk catatan kaki dan catatan akhir telah ditingkatkan dengan properti [actual_reference_mark](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/actual_reference_mark/) dan metode [update_actual_reference_marks](https://reference.aspose.com/words/python-net/aspose.words/document/update_actual_reference_marks/#default). <sup>24.2</sup>
* Emulasi operasi raster biner untuk metafile WMF telah diimplementasikan. <sup>24.3</sup>
* Kemampuan untuk menentukan opsi tanda tangan untuk dokumen dalam SaveOptions telah diaktifkan dengan menambahkan kelas baru bernama [DigitalSignatureDetails](https://reference.aspose.com/words/python-net/aspose.words.saving/digitalsignaturedetails/) dengan anggota publik baru, serta menambahkan properti baru ke dalam kelas-kelas [OoxmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/), [DocSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/), dan [OdtSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/odtsaveoptions/). <sup>24.4</sup>

{{% alert color="primary" %}}

Pelajari lebih lanjut tentang [Catatan Rilis Aspose.Words untuk Python via .NET 24.1](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-1-release-notes/).

Pelajari lebih lanjut tentang [Catatan Rilis Aspose.Words untuk Python via .NET 24.2](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-2-release-notes/).

Pelajari lebih lanjut tentang [Catatan Rilis Aspose.Words untuk Python via .NET 24.3](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-3-release-notes/).

Pelajari lebih lanjut tentang [Catatan Rilis Aspose.Words untuk Python via .NET 24.4](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-4-release-notes/).

{{% /alert %}}

## Aspose.Words untuk Python via .NET 23.9, 23.10, 23.11, 23.12

Aspose.Words 23.9 memperluas opsi rendering, emulasi rendering metafile, dan opsi penyimpanan markdown.

Aspose.Words 23.10 meningkatkan rendering, memperluas opsi untuk memuat dan menyimpan dokumen, dan memungkinkan pengguna menggabungkan dokumen dengan cara baru.

Aspose.Words 23.11 menyempurnakan pekerjaan dengan revisi, format XLSX, dan font pada legenda bagan dengan opsi tambahan.

Aspose.Words 23.12 memperkenalkan properti dan enumerasi baru untuk bekerja dengan dokumen PDF dan OOXML, serta dukungan untuk gambar WebP.

### Rendering dan Pencetakan

#### Menyesuaikan Judul Sumbu di DrawingML Charts <sup>23.9</sup>

Kemampuan untuk menyesuaikan judul sumbu dalam bagan DrawingML telah diperkenalkan melalui penerapan properti [ChartAxisTitle](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxistitle/) dan [title](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/title/) kelas publik baru.

####  Menentukan Posisi Vertikal Font dalam Paragraf <sup>23.9</sup>

Sekarang dimungkinkan untuk menentukan posisi vertikal font dalam paragraf menggunakan properti [baseline_alignment](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/baseline_alignment/) publik baru dan enumerasi [BaselineAlignment](https://reference.aspose.com/words/python-net/aspose.words/baselinealignment/) baru.

#### Kontrol Warna Latar Depan <sup>23.10</sup>

Kemampuan untuk mengambil warna latar depan tanpa pengubah telah ditambahkan ke kelas [Fill](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/) dan [Stroke](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/) melalui properti **BaseForeColor**.

#### Memperluas Fungsi Grafik <sup>23.10</sup>

Fungsionalitas kelas [ChartDataPointCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapointcollection/), [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/), dan [ChartFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartformat/) telah diperluas dengan metode dan properti baru.

#### Secara Otomatis Menyesuaikan dan Menyesuaikan Gambar ke dalam Bentuk <sup>23.10</sup>

Cara sederhana untuk secara otomatis menyesuaikan dan menyesuaikan gambar dalam bentuk tertentu telah disediakan melalui metode [fit_image_to_shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/imagedata/fit_image_to_shape/#default) baru.

#### Pemformatan Font Default untuk Entri Legenda Bagan DrawingML <sup>23.11</sup>

Kemampuan untuk menentukan format font default untuk entri legenda diagram DrawingML telah ditambahkan melalui properti [font](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartlegend/font/). Fitur ini memfasilitasi tampilan elemen bagan yang lebih ramping dan konsisten, sehingga meningkatkan estetika dokumen secara keseluruhan.

#### Tentukan Tata Letak Halaman saat Membuka PDF di Pembaca <sup>23.12</sup>

Kemampuan untuk menentukan tata letak halaman yang akan digunakan saat membuka dokumen di pembaca PDF telah ditambahkan melalui pengenalan properti [page_layout](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/page_layout/) baru ke kelas [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) dan pengenalan enumerasi [PdfPageLayout](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfpagelayout/) baru.

### Memuat dan Menyimpan Dokumen

#### Menentukan Nama Folder untuk Membuat URI Gambar di Markdown <sup>23.9</sup>

Kelas [MarkdownSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/) telah diperluas dengan menyertakan properti [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder_alias/), yang memungkinkan untuk menentukan nama folder yang digunakan untuk membuat URI gambar yang ditulis ke dalam dokumen Markdown.

#### Kurangi Ukuran Output PDF <sup>23.10</sup>

Berbagai optimasi rendering PDF untuk mengurangi ukuran keluaran saat menggunakan pengaturan [optimize_output](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/optimize_output/) telah diterapkan.

#### Mengenali Hyperlink saat Memuat Dokumen TXT <sup>23.10</sup>

Fitur untuk mengenali hyperlink saat memuat dokumen TXT telah diterapkan dengan menambahkan properti [detect_hyperlinks](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/detect_hyperlinks/) baru.

### Lainnya

- Emulasi rendering metafile untuk menentukan ukuran rasterisasi telah diterapkan, khususnya untuk lebar pena WMF dan lebar pena kosmetik EMF. Untuk mencapai hal ini, properti **ScaleWmfFontsToMetafileSize** diganti dengan properti [emulate_rendering_to_size_on_page](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emulate_rendering_to_size_on_page/) dan properti [emulate_rendering_to_size_on_page_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emulate_rendering_to_size_on_page_resolution/) ditambahkan. <sup>23.9</sup>
- Metode sederhana untuk menyisipkan satu dokumen ke dokumen lain pada posisi kursor saat ini telah diperkenalkan menggunakan metode [insert_document_inline](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document_inline/#document_importformatmode_importformatoptions). <sup>23.10</sup>
- Kemampuan untuk mengakses dan memodifikasi properti gaya telah ditambahkan melalui pengenalan properti [locked](https://reference.aspose.com/words/python-net/aspose.words/style/locked/) baru. <sup>23.10</sup>
- Parameter tipe generik telah ditambahkan ke metode kelas [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/). <sup>23.10</sup>
- Kemampuan untuk menulis semua bagian dokumen ke lembar kerja XLSX yang sama telah disediakan melalui tipe enumerasi [XlsxSectionMode](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsectionmode/) baru dan properti [section_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/section_mode/) baru. <sup>23.11</sup>
* Cara untuk mengontrol bagaimana ekstensi format ZIP64 akan digunakan untuk dokumen OOXML telah diterapkan melalui properti Zip64Mode baru dari kelas `OoxmlSaveOptions` dan enumerasi Zip64Mode baru. <sup>23.12</sup>
* Dukungan untuk gambar WebP telah diperkenalkan. Harap diperhatikan bahwa fitur ini hanya tersedia untuk versi .NetStandart dan .NET6+. <sup>23.12</sup>

{{% alert color="primary" %}}

Pelajari lebih lanjut tentang [Catatan Rilis Aspose.Words untuk Python via .NET 23.9](/words/python-net/aspose-words-for-python-via-dotnet-23-9-release-notes/).

Pelajari lebih lanjut tentang [Catatan Rilis Aspose.Words untuk Python via .NET 23.10](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-10-release-notes/).

Pelajari lebih lanjut tentang [Catatan Rilis Aspose.Words untuk Python via .NET 23.11](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-11-release-notes/).

Pelajari lebih lanjut tentang [Catatan Rilis Aspose.Words untuk .NET 23.12](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-12-release-notes/).

{{% /alert %}}

## Aspose.Words untuk Python via .NET 23.5, 23.6, 23.7, 23.8

Aspose.Words 23.5 meningkatkan kemampuan untuk bekerja dengan data seri bagan dan kemampuan untuk bekerja dengan dokumen ODT, serta meningkatkan header/footer dan pembungkusan teksnya.

Aspose.Words 23.6 memperluas opsi rendering, menambahkan format ekspor baru, meningkatkan pelaporan LINQ dan alat LowCode.

Aspose.Words 23.7 meningkatkan kemampuan pelaporan, menambahkan format ekspor baru, dan memperkenalkan perubahan dalam bekerja dengan tabel dan tanda tangan digital.

Aspose.Words 23.8 memperluas kemampuan berbagai format, meningkatkan rendering, dan menambahkan opsi baru untuk bekerja dengan bidang

### Format yang Didukung

* Mulai versi 23.6, dimungkinkan untuk menyimpan dokumen dalam format XLSX. Sekarang Anda dapat mengonversi dokumen Anda ke format Excel. <sup>23.6</sup>

* Mulai versi 23.7, halaman atau bentuk dokumen dapat disimpan dalam format EPS. <sup>23.7</sup>

### Fitur Format Baru

- Fungsi untuk secara otomatis menghasilkan Daftar Isi (TOC) untuk dokumen MOBI telah diperkenalkan. <sup>23.8</sup>
- Konstruktor [PdfEncryptionDetails](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfencryptiondetails/__init__/#str_str_pdfpermissions) telah diperluas dengan [PdfPermissions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfencryptiondetails/__init__/#str_str_pdfpermissions). <sup>23.8</sup>
- Pembentukan teks vertikal untuk metafile EMF telah diterapkan. <sup>23.8</sup>

### Render

#### Mendapatkan dan Memodifikasi Data Seri Bagan <sup>23.5</sup>

Fitur untuk mendapatkan dan mengubah data rangkaian grafik disediakan dengan menambahkan:

- kelas baru: [ChartXValue](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartxvalue/), [ChartYValue](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartyvalue/), [ChartXValueCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartxvaluecollection/), [ChartYValueCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartyvaluecollection/), [BubbleSizeCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/bubblesizecollection/), [ChartMultilevelValue](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartmultilevelvalue/)
- tipe enum baru: [ChartXValueType](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartxvaluetype/), [ChartYValueType](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartyvaluetype/)

#### Dukungan untuk Tipografi Tingkat Lanjut <sup>23.6</sup>

Dukungan untuk Tipografi Tingkat Lanjut dalam rendering WMF, EMF dan EMF+ telah ditambahkan.

#### Konten Berwarna di Halaman <sup>23.6</sup>

[PageInfo.colored](https://reference.aspose.com/words/python-net/aspose.words.rendering/pageinfo/colored/) milik publik, yang menunjukkan apakah halaman tersebut berwarna atau tidak, telah ditambahkan.

#### Pemformatan Label Data Bagan <sup>23.6</sup>

Kemampuan untuk mengatur format isi, guratan, dan info untuk label data bagan telah diterapkan.

### Mail Merge dan Pelaporan

#### Penyisipan HTML Dinamis untuk Mesin Pelaporan LINQ <sup>23.6</sup>

Cara baru penyisipan HTML dinamis untuk Mesin Pelaporan LINQ telah ditambahkan.

#### Dukungan Tag Mustache <sup>23.7</sup>

Tag Mustache kini didukung dalam metode [MailMerge.GetRegionsHierarchy](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_regions_hierarchy/) dan [MailMerge.GetFieldNamesForRegion](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_field_names_for_region/).

#### Menentukan Ukuran Gambar yang Dirender <sup>23.8</sup>

[image_size](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_size/) milik publik baru untuk menentukan ukuran gambar yang dirender dalam piksel telah diperkenalkan.

#### Pertahankan Spasi untuk Nilai String JSON – LINQ <sup>23.8</sup>

Opsi telah ditambahkan ke Mesin Pelaporan LINQ untuk mempertahankan spasi putih untuk nilai string JSON.

### LowCode <sup>23.6</sup>

Metode LowCode baru yang dimaksudkan untuk menggabungkan berbagai jenis dokumen menjadi satu dokumen keluaran telah ditambahkan.

### Lainnya

- Dukungan untuk pembungkusan teks di header/footer telah diterapkan. <sup>23.5</sup>
- Kemampuan untuk menghapus tanda tangan digital dari dokumen ODT telah ditambahkan melalui metode [RemoveAllSignatures](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignatureutil/remove_all_signatures/#str_str). <sup>23.5</sup>
- [phonetic_guide](https://reference.aspose.com/words/python-net/aspose.words/run/phonetic_guide/) milik publik untuk mendapatkan teks dasar dan rubi dari panduan fonetik [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) telah ditambahkan. <sup>23.5</sup>
- Kemampuan untuk mengambil nilai tanda tangan digital dari dokumen yang ditandatangani secara digital sebagai array byte telah ditambahkan dengan memperkenalkan properti [signature_value](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/signature_value/) baru. <sup>23.7</sup>
- Kelas [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) dan [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) telah diperluas dengan anggota publik baru – [Row.next_row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/next_row/), [Row.previous_row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/previous_row/), [Cell.next_cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/next_cell/), dan [Cell.previous_cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/previous_cell/). <sup>23.7</sup>

{{% alert color="primary" %}}

Pelajari lebih lanjut tentang [Catatan Rilis Aspose.Words untuk Python via .NET 23.5](/words/python-net/aspose-words-for-python-via-dotnet-23-5-release-notes/).

Pelajari lebih lanjut tentang [Catatan Rilis Aspose.Words untuk Python via .NET 23.6](/words/python-net/aspose-words-for-python-via-dotnet-23-6-release-notes/).

Pelajari lebih lanjut tentang [Catatan Rilis Aspose.Words untuk Python via .NET 23.7](/words/python-net/aspose-words-for-python-via-dotnet-23-7-release-notes/).

Pelajari lebih lanjut tentang [Catatan Rilis Aspose.Words untuk Python via .NET 23.8](/words/python-net/aspose-words-for-python-via-dotnet-23-8-release-notes/).

{{% /alert %}}

## Aspose.Words untuk Python via .NET 23.1, 23.2, 23.3, 23.4

Aspose.Words 23.1 meningkatkan kinerja emulasi operasi raster, serta meningkatkan kualitas ekspor dan rendering dokumen.

Aspose.Words 23.2 memperkenalkan penyimpanan dokumen dalam format MOBI, meningkatkan rendering bagan, dan membuat perubahan penting pada detail tampilan dokumen.

Aspose.Words 23.3 meningkatkan impor dan penyimpanan dokumen dengan properti baru, dan juga meningkatkan kualitas pekerjaan dengan warna latar belakang dan latar depan serta gradien radial.

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

Kelas [Fill](https://reference.aspose.com/words/net/aspose.words.drawing/fill/) telah diperluas dengan serangkaian properti publik baru yang terkait dengan warna latar belakang dan latar depan: [fore_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/fore_theme_color/) dan [back_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/back_theme_color/), [fore_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/fore_tint_and_shade/) dan [back_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/back_tint_and_shade/).

#### Gradien Radial dengan `SkiaSharp` Native Shader <sup>23.3</sup>

Rendering gradien radial dengan shader asli `SkiaSharp` untuk .NET Standard telah diterapkan.

#### Jarak Antara Tabel dan Teks di Sekitarnya <sup>23.4</sup>

Kemampuan untuk mengatur jarak antara tabel dan teks di sekitarnya telah ditambahkan dengan memperkenalkan properti baru ke kelas [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/): [distance_left](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_left/), [distance_right](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_right/), [distance_top](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_top/), dan [distance_bottom](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_bottom/).

### Memuat dan Menyimpan Dokumen

#### Hasilkan `TOC` untuk Dokumen AZW3 <sup>23.1</sup>

Kemampuan untuk menghasilkan `TOC` (daftar isi) untuk dokumen AZW3 telah ditambahkan melalui penggunaan properti [epub_navigation_map_level](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/epub_navigation_map_level/).

#### Mengekspor Item Daftar ke Markdown <sup>23.1</sup>

Cara untuk mengontrol ekspor item daftar ke format Markdown telah disediakan dengan menambahkan properti [list_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/list_export_mode/) ke kelas [MarkdownSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/).

#### Pemberitahuan Kemajuan Penyimpanan Dokumen <sup>23.3</sup>

Menyimpan pemberitahuan kemajuan untuk format MOBI dan AZW3 telah diterapkan.

#### Penyesuaian Kalimat dan Spasi Kata <sup>23.3</sup>

Kemampuan untuk menentukan apakah akan menyesuaikan spasi kalimat dan kata secara otomatis saat dokumen diimpor telah ditambahkan dengan memperkenalkan properti [adjust_sentence_and_word_spacing](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/adjust_sentence_and_word_spacing/).

### Lainnya

- Kemampuan untuk menentukan penyesuaian spasi karakter dokumen telah ditambahkan melalui implementasi properti [justification_mode](https://reference.aspose.com/words/python-net/aspose.words/document/justification_mode/) <sup>23.2</sup>
- Cara untuk menginstruksikan Aspose.Words apakah akan menyertakan kotak teks, catatan kaki, dan catatan akhir dalam statistik jumlah kata telah disediakan dengan menambahkan properti [include_textboxes_footnotes_endnotes_in_stat](https://reference.aspose.com/words/python-net/aspose.words/document/include_textboxes_footnotes_endnotes_in_stat/) <sup>23.2</sup>
- Opsi baru untuk gaya dokumen, yang memungkinkan menentukan apakah gaya didefinisikan ulang secara otomatis berdasarkan nilai yang sesuai, telah diperkenalkan melalui properti [automatically_update](https://reference.aspose.com/words/python-net/aspose.words/style/automatically_update/) <sup>23.2</sup>
- Kemampuan untuk menentukan apakah [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) adalah panduan fonetik yang dijalankan telah ditambahkan menggunakan properti [is_phonetic_guide](https://reference.aspose.com/words/python-net/aspose.words/run/is_phonetic_guide/) <sup>23.4</sup>
- Cara sederhana untuk bekerja dengan rangkaian dan sumbu diagram kombo telah diterapkan dengan memperkenalkan kelas [ChartAxisCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxiscollection/) dan menambahkan properti [Chart.axes](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/axes/) <sup>23.4</sup>
- Properti publik baru yang terhubung dengan posisi dan ukuran relatif bentuk telah ditambahkan ke kelas [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) <sup>23.4</sup>
- Akurasi dan kinerja penghitungan kecerahan warna untuk resolusi warna teks otomatis telah ditingkatkan sesuai dengan versi terbaru Microsoft Word <sup>23.4</sup>

{{% alert color="primary" %}}

Pelajari lebih lanjut tentang [Catatan Rilis Aspose.Words untuk Python via .NET 23.1](/words/python-net/aspose-words-for-python-via-dotnet-23-1-release-notes/).

Pelajari lebih lanjut tentang [Catatan Rilis Aspose.Words untuk Python via .NET 23.2](/words/python-net/aspose-words-for-python-via-dotnet-23-2-release-notes/).

Pelajari lebih lanjut tentang [Catatan Rilis Aspose.Words untuk Python via .NET 23.3](/words/python-net/aspose-words-for-python-via-dotnet-23-3-release-notes/).

Pelajari lebih lanjut tentang [Catatan Rilis Aspose.Words untuk Python via .NET 23.4](/words/python-net/aspose-words-for-python-via-dotnet-23-4-release-notes/).

{{% /alert %}}

## Aspose.Words untuk Python via .NET 22.9, 22.10, 22.11, 22.12

Aspose.Words 22.9 memperluas opsi untuk memuat dan menyimpan dokumen serta meningkatkan interaksi dengan beberapa opsi lainnya.

Aspose.Words 22.10 meningkatkan opsi pencarian dan penggantian, menyempurnakan objek OLE, dan memperluas fungsionalitas daftar.

Aspose.Words 22.11 memperluas fungsinya dengan opsi baru untuk pekerjaan yang lebih nyaman dengan objek yang sudah dikenal: OLE dan tag dokumen terstruktur.

Aspose.Words 22.12 meningkatkan kemampuan rendering dan memperkenalkan opsi untuk bekerja dengan margin saat memuat/menyimpan dokumen.

### Peningkatan Kinerja <sup>22.12</sup>

Pengoptimalan yang secara signifikan mengurangi kedalaman sarang status grafis saat merender ke PDF untuk menjaga kepatuhan spesifikasi telah diperkenalkan.

### Rendering dan Pencetakan

#### Properti Rendering Perbatasan Baru <sup>22.12</sup>

Properti publik baru [theme_color](https://reference.aspose.com/words/python-net/aspose.words/border/theme_color/) dan [tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words/border/tint_and_shade/) telah diperkenalkan.

#### Rumus Garis Tren Linier untuk Rendering DrawingML <sup>22.12</sup>

Render rumus garis tren linier untuk grafik DrawingML telah diterapkan.

#### Pengaturan Penggantian Font untuk Font Google Noto <sup>22.12</sup>

Pengaturan penggantian font yang telah ditentukan sebelumnya untuk font Google Noto telah diperbarui.

### Memuat dan Menyimpan Dokumen

#### Bentuk Header atau Footer Cache untuk Memperkecil Ukuran PDF <sup>22.9</sup>

Kemampuan untuk menyimpan cache bentuk header/footer untuk mengurangi ukuran file PDF keluaran telah diterapkan dengan menambahkan properti **CacheHeaderFooterShapes** baru.

#### Deteksi Penomoran Otomatis saat Memuat Dokumen <sup>22.9</sup>

Kemampuan untuk menentukan properti [auto_numbering_detection](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/auto_numbering_detection/) saat memuat teks telah diterapkan melalui kelas [TxtLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/) yang diperluas.

#### Menentukan Tipe Margin Tertentu <sup>22.12</sup>

Kemampuan untuk menentukan tipe **Margin** tertentu untuk bagian tertentu telah diterapkan.

### Cari dan Bandingkan <sup>22.10</sup>

Kemampuan untuk mengabaikan [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) saat opsi temukan dan ganti telah diterapkan dengan menambahkan properti [ignore_structured_document_tags](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/ignore_structured_document_tags/) baru ke kelas [FindReplaceOptions](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/).

### Lainnya

- Fitur baru untuk mendapatkan FieldEQ sebagai OfficeMath telah ditambahkan. <sup>22.9</sup>
- Pembuatan tag dokumen terstruktur tipe Group pada tingkat Baris diperbolehkan. <sup>22.9</sup>
- Objek dan kontrol OLE sekarang diperlakukan sebagai gambar metafile saat mengonversi dokumen ke HTML. <sup>22.10</sup>
- Fitur baru untuk memeriksa apakah daftar tertentu dibuat dari templat yang sama dengan daftar yang dibandingkan telah ditambahkan dengan memperkenalkan metode **HasSameTemplate** baru ke dalam kelas [List](https://reference.aspose.com/words/python-net/aspose.words.lists/list/). <sup>22.10</sup>
- Kemampuan untuk membuat tag dokumen terstruktur baru dari jenis [Citation](https://reference.aspose.com/words/python-net/aspose.words.markup/sdttype/) telah ditambahkan. <sup>22.11</sup>
- Properti **EmbedAttachments** baru yang memungkinkan pengguna untuk menyematkan lampiran OLE dari dokumen sumber ke dalam dokumen PDF keluaran telah diperkenalkan. <sup>22.11</sup>

{{% alert color="primary" %}}

Pelajari lebih lanjut tentang [Catatan Rilis Aspose.Words untuk Python via .NET 22.9](/words/python-net/aspose-words-for-python-via-dotnet-22-9-release-notes/).

Pelajari lebih lanjut tentang [Catatan Rilis Aspose.Words untuk Python via .NET 22.10](/words/python-net/aspose-words-for-python-via-dotnet-22-10-release-notes/).

Pelajari lebih lanjut tentang [Catatan Rilis Aspose.Words untuk Python via .NET 22.11](/words/python-net/aspose-words-for-python-via-dotnet-22-11-release-notes/).

Pelajari lebih lanjut tentang [Catatan Rilis Aspose.Words untuk Python via .NET 22.12](/words/python-net/aspose-words-for-python-via-dotnet-22-12-release-notes/).

{{% /alert %}}

## Lihat juga

{{% alert color="primary" %}}

Halaman ini berisi berita rilis terbaru selama 2 tahun terakhir. Untuk rincian tentang rilis sebelumnya, lihat halaman [Catatan Rilis'](/words/python-net/release-notes/) di bagian yang relevan.

{{% /alert %}}