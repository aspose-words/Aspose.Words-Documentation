---
title: Menangani Metafile Windows
second_title: Aspose.Words untuk Python via .NET
articleTitle: Menangani Metafile Windows
linktitle: Menangani Metafile Windows
description: "Aspose.Words untuk Python via .NET mengimplementasikan pemutar Metafile Windows miliknya sendiri untuk memutar format Metafile di semua platform dan mendukung penanganan fitur metafile dasar dan dapat melakukan fallback ke jenis pemutar metafile yang berbeda."
type: docs
weight: 30
url: /id/python-net/handling-windows-metafiles/
---

Format Windows Metafile adalah format file gambar yang dapat berisi grafik vektor dan raster. Format ini digunakan untuk menyimpan data grafik dalam memori atau file pada disk. Metafile menyimpan daftar pemanggilan fungsi di Windows Graphics Device Interface (GDI) yang harus dijalankan untuk menampilkan gambar di layar. Sistem menafsirkan dan menjalankan perintah ini dalam konteks tampilan.

Sebelumnya, Windows Metafile adalah satu-satunya format gambar vektor yang didukung oleh Microsoft Word. Microsoft Word kini juga mendukung format SVG, namun format metafile masih umum digunakan pada dokumen Word. Selain itu, Metafile dapat menjadi format pertukaran untuk beberapa aplikasi lain, seperti Microsoft Visio. Pada dasarnya, tujuan utama Metafile adalah untuk memastikan pertukaran informasi grafis antar aplikasi Windows.

Ada 3 versi Metafile Windows:

- WMF – menyimpan panggilan ke GDI 16bit.
- EMF – menyimpan panggilan ke Win32/GDI.
- EMF+ Metafile menyimpan panggilan ke GDI+. Metafile EMF+ mungkin juga ganda, menggambarkan grafik yang sama dengan bagian EMF dan EMF+.

Masalah yang ada dengan Windows Metafile adalah tidak didukung oleh sebagian besar format non-Word, yang biasanya menyimpan dokumen. Oleh karena itu, diperlukan konversi format Metafile ke format raster atau vektor lainnya. Sangat mudah untuk mengkonversi Windows Metafile ke gambar raster di .NET hanya dengan meneruskannya ke GDI+, tetapi hal ini tidak mungkin dilakukan pada platform lain karena bahkan GDI+ tidak menyediakan fungsionalitas untuk mengekstrak grafik vektor dari Metafile. Untuk mengatasi masalah ini, Aspose.Words mengimplementasikan pemutar Metafile Windows miliknya sendiri, yang mampu memutar format Metafile baik grafik vektor maupun raster di semua platform.

## Mengontrol Pemutar Metafile Aspose.Words

Kelas [MetafileRenderingOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/) memungkinkan Anda mengontrol pemutar metafile. Misalnya, Anda dapat menentukan bagaimana gambar metafile harus dirender menggunakan properti [rendering_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/rendering_mode/), yang memiliki arti khusus saat mengonversi ke bitmap (lihat juga properti [ImageSaveOptions.metafile_rendering_options](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/metafile_rendering_options/)).

Menyimpan ke bitmap bekerja secara berbeda pada platform selain .NET. Meskipun rendering .NET GDI+ adalah referensi yang bekerja hampir sempurna bahkan untuk format metafile yang paling rumit, pada platform lain hal ini dapat menyebabkan masalah atau tidak didukung sama sekali.

## Mendukung Operasi Raster

Operasi raster adalah fitur metafile kompleks, yang saat ini memiliki dukungan terbatas. Operasi raster tersedia dalam format metafile WMF dan EMF. Format metafile EMF+ tidak menggunakan operasi raster secara langsung tetapi dapat berisi bagian EMF, metafile WMF atau EMF yang tertanam.

Ada operasi raster biner dan ternary:

- Operasi raster biner diterapkan pada perintah menggambar pena, seperti menggambar garis dan kurva. Saat menggambar garis, warna pena digabungkan dengan warna bitmap tujuan (warna piksel terkait pada permukaan perangkat) menggunakan operasi logika bitwise tertentu dengan nilai warna hex. Contoh gambar di bawah mengilustrasikan efek dari 16 operasi raster biner yang diterapkan pada 20 batang warna berbeda. Bilah warna vertikal digambar terlebih dahulu, bilah horizontal digambar setelah setiap operasi raster biner diterapkan. Untuk kasus sederhana, R2_BLACK menggambar hitam, R2_NOT membalikkan warna, R2_NOP tidak mengubah latar belakang, dan R2_WHITE menggambar putih.

<img src="/words/python-net/handling-windows-metafiles/handling-windows-metafiles-1.png" alt="menangani-windows-metafiles-aspose-words-net-1" style="width:650px"/>

- Operasi raster ternary diterapkan saat menggambar gambar bitmap. Mereka menggabungkan warna piksel gambar bitmap yang sesuai, kuas, dan bitmap tujuan dengan menggunakan operasi logika bitwise dengan nilai warna hex yang ditentukan. Salah satu tujuan paling umum menggunakan operasi raster ternary adalah untuk meniru transparansi. Gambar yang diberikan pada contoh di bawah ini menunjukkan bagaimana transparansi ikon dapat ditiru. Ada dua jenis bitmap: bitmap b/w mask dan bitmap warna. Pertama, bitmap mask digambar dengan operasi raster SRCAND. Ini mengubah wilayah ikon buram menjadi hitam dan putih, membiarkan wilayah transparan tidak berubah. Kemudian bitmap kedua digambar dengan operasi raster SRCINVERT. Ini menampilkan piksel warna pada wilayah hitam, membiarkan wilayah transparan tidak berubah.

<img src="/words/python-net/handling-windows-metafiles/handling-windows-metafiles-2.png" alt="menangani-windows-metafiles-aspose-words-net-2" style="width:650px"/>

Operasi raster tidak dapat diubah menjadi grafik vektor secara langsung. Aspose.Words mengemulasi operasi raster dengan meraster sebagian permukaan perangkat yang terpengaruh oleh operasi raster. Untuk tujuan ini, properti [emulate_raster_operations](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emulate_raster_operations/) digunakan.

{{% alert color="primary" %}}

Meskipun operasi raster biner saat ini tidak didukung dan operasi raster ternary dalam jumlah terbatas didukung oleh Aspose.Words, Aspose.Words dapat menangani kasus dasar konversi ke grafik vektor secara langsung, misalnya, R2_BLACK, R2_WHITE, R2_NOP. Selain itu, rasterisasi permukaan perangkat secara signifikan mempengaruhi kinerja, terutama bila melibatkan sejumlah besar catatan operasi raster.

{{% /alert %}}

Contoh yang ditunjukkan di bawah ini menunjukkan bagaimana Aspose.Words merender metafile menjadi bitmap ketika beberapa rekaman metafile tidak dapat dirender dengan benar ke grafik vektor:

{{< highlight python >}}
# Load the document from disk.
doc = aw.Document(docs_base.my_dir +  "Rendering.docx")

metafileRenderingOptions = aw.saving.MetafileRenderingOptions()
metafileRenderingOptions.emulate_raster_operations = False
metafileRenderingOptions.rendering_mode = aw.saving.MetafileRenderingMode.VECTOR_WITH_FALLBACK

saveOptions = aw.saving.PdfSaveOptions()
saveOptions.metafile_rendering_options = metafileRenderingOptions

doc.save(docs_base.artifacts_dir +"PdfSaveOptions.HandleRasterWarnings.pdf", saveOptions)
{{< /highlight >}}

## Pengaturan Penggantian Metafile

Aspose.Words tidak mendukung sejumlah fitur metafile yang paling kompleks atau langka. Dalam hal ini Aspose.Words dapat melakukan fallback ke jenis pemutar metafile yang berbeda

Pertama, Aspose.Words melakukan fallback dari pemutar metafile vektor ke raster, yang dikontrol oleh properti [rendering_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/rendering_mode/). Jika fitur fallback dinonaktifkan, Aspose.Words mencoba merender beberapa grafik substitusi alih-alih fitur yang tidak didukung.

Aspose.Words berhasil memutar metafile ke raster menggunakan GDI+ di .NET, yang membuat opsi panggilan balik ini aman.

Kedua, ada opsi untuk metafile EMF+ Ganda untuk mundur dari memainkan bagian EMF+ ke bagian EMF. Itu dikendalikan oleh [emf_plus_dual_rendering_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emf_plus_dual_rendering_mode/). Jika ada masalah yang terjadi saat memainkan bagian EMF, maka fallback ke raster juga dapat dilakukan.

Sedangkan untuk operasi raster, jika [emulate_raster_operations](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emulate_raster_operations/) dinonaktifkan, maka operasi raster dianggap tidak didukung, yang memicu fallback ke pemutar metafile bitmap jika diaktifkan. Oleh karena itu, jika Anda memiliki metafile dengan operasi raster, tetapi Anda tidak ingin menggunakan emulasi operasi raster namun ingin mendapatkan keluaran vektor dengan grafik substitusi, pilih [MetafileRenderingMode.VECTOR](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingmode/#vector).
