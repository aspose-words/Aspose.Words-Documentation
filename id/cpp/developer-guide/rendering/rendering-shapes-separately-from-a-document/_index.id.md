---
title: Merender Bentuk Secara Terpisah dari Dokumen
second_title: Aspose.Words untuk C++
articleTitle: Merender Bentuk Secara Terpisah dari Dokumen
linktitle: Merender Bentuk Secara Terpisah dari Dokumen
description: "Ekstrak berbagai objek grafik, seperti gambar, kotak teks yang berisi paragraf, atau bentuk panah, saat memproses dokumen, dan mengekspornya ke lokasi eksternal."
type: docs
weight: 40
url: /id/cpp/rendering-shapes-separately-from-a-document/
timestamp: 2024-01-27-14-07-04
---

Saat memproses dokumen, tugas umum adalah mengekstrak semua gambar yang ditemukan dalam dokumen dan mengekspornya ke lokasi eksternal. Tugas ini menjadi sederhana dengan Aspose.Words API, yang sudah menyediakan fungsionalitas untuk mengekstrak dan menyimpan data gambar. Namun, terkadang Anda mungkin ingin mengekstrak jenis konten grafik lain yang diwakili oleh jenis objek gambar yang berbeda, misalnya, kotak teks yang berisi paragraf, bentuk panah, dan gambar kecil. Tidak ada cara langsung untuk merender objek ini karena ini adalah kombinasi dari elemen konten individual. Anda juga dapat menemukan kasus ketika konten telah dikelompokkan bersama ke dalam objek yang terlihat seperti satu gambar.

Aspose.Words menyediakan fungsionalitas untuk mengekstrak jenis konten ini dengan cara yang sama seperti Anda dapat mengekstrak gambar sederhana dari bentuk sebagai konten yang dirender. Artikel ini menjelaskan cara memanfaatkan fungsi ini untuk merender bentuk secara terpisah dari dokumen.

## Jenis Bentuk dalam Aspose.Words

Semua konten dalam lapisan gambar dokumen diwakili oleh simpul [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) atau [GroupShape](https://reference.aspose.com/words/cpp/aspose.words.drawing/groupshape/) dalam Modul Objek Dokumen Aspose.Words (DOM). Konten tersebut dapat berupa kotak teks, gambar, objek AutoShapes, OLE, dll. Beberapa bidang juga diimpor sebagai bentuk, misalnya bidang `INCLUDEPICTURE`.

Sebuah gambar sederhana diwakili oleh simpul **Shape** dari [ShapeType.Image](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapetype/). Simpul bentuk ini tidak memiliki simpul turunan tetapi data gambar yang terkandung di dalam simpul bentuk ini dapat diakses oleh properti [Shape.ImageData](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_imagedata/). Di sisi lain, sebuah bentuk juga dapat terdiri dari banyak simpul turunan. Misalnya, bentuk kotak teks, yang diwakili oleh properti [ShapeType.TextBox](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapetype/), dapat terdiri dari banyak simpul, seperti [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/) dan [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/). Sebagian besar bentuk dapat menyertakan simpul tingkat blok **Paragraph** dan **Table**. Ini adalah simpul yang sama dengan yang muncul di badan utama. Bentuk selalu merupakan bagian dari beberapa paragraf, baik disertakan langsung sebaris atau ditambatkan ke **Paragraph,** tetapi "mengambang" di mana saja di halaman dokumen.

![rendering-shapes-separately-from-a-document-aspose-words-cpp-1](rendering-shapes-separately-from-a-document-1.png)

Dokumen juga dapat berisi bentuk yang dikelompokkan menjadi satu. Pengelompokan dapat diaktifkan di Microsoft Word dengan memilih beberapa objek dan mengklik "Grup" di menu klik kanan.

![rendering-shapes-separately-from-a-document-aspose-words-cpp-2](rendering-shapes-separately-from-a-document-2.png)

Dalam Aspose.Words, kelompok bentuk ini diwakili oleh simpul `GroupShape`. Ini juga dapat dipanggil dengan cara yang sama untuk merender seluruh grup ke gambar.

![rendering-shapes-separately-from-a-document-aspose-words-cpp-3](rendering-shapes-separately-from-a-document-3.png)

Format DOCX dapat berisi jenis gambar khusus, seperti diagram atau bagan. Bentuk-bentuk ini juga direpresentasikan melalui simpul **Shape** dalam Aspose.Words, yang juga menyediakan metode serupa untuk merendernya sebagai gambar. Secara desain, bentuk tidak dapat berisi bentuk lain sebagai anak, kecuali bentuk tersebut adalah gambar (**ShapeType.Image**). Misalnya, Microsoft Word tidak mengizinkan Anda menyisipkan kotak teks di dalam kotak teks lain.

Jenis bentuk yang dijelaskan di atas menyediakan metode khusus untuk merender bentuk melalui kelas [ShapeRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/shaperenderer/). Sebuah instance dari kelas **ShapeRenderer** diambil untuk **Shape** atau **GroupShape** melalui metode **GetShapeRenderer** atau dengan meneruskan **Shape** ke konstruktor kelas **ShapeRenderer**. Kelas ini menyediakan akses ke anggota, yang memungkinkan rendering bentuk sebagai berikut:

- File pada disk menggunakan metode [Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/) kelebihan beban
- Streaming menggunakan kelebihan metode [Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/)
- Objek `Graphics` dengan menggunakan metode [RenderToSize](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertosize/) dan [RenderToScale](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertoscale/)

{{% alert color="primary" %}}

Saat merender **Shape**, itu harus menjadi bagian dari hierarki dokumen. Jika **Shape** bukan bagian dari pohon dokumen, maka keluaran yang dirender akan kosong setelah menjalankan metode **ShapeRenderer**.

{{% /alert %}}

## Merender ke File atau Streaming

Metode [Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/) menyediakan kelebihan beban yang merender bentuk langsung ke file atau aliran. Kedua kelebihan beban menerima instance dari kelas [ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/), yang memungkinkan menentukan opsi untuk merender bentuk. Ini bekerja dengan cara yang sama seperti metode [Document.Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/). Meskipun parameter ini diperlukan, Anda dapat meneruskan nilai nol, dengan menetapkan bahwa tidak ada opsi khusus.

Bentuk dapat diekspor dalam format gambar apa pun yang ditentukan dalam pencacahan [SaveFormat](https://reference.aspose.com/words/cpp/aspose.words/saveformat/). Misalnya, gambar dapat dirender sebagai gambar raster, seperti JPEG dengan menentukan pencacahan `SaveFormat.Jpeg`, atau sebagai gambar vektor, seperti EMF dengan menentukan `SaveFormat.Emf`.

Contoh kode di bawah ini mengilustrasikan rendering bentuk ke gambar EMF secara terpisah dari dokumen, dan menyimpannya ke disk:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-RenderShapeToDisk.cpp" >}}

Contoh kode di bawah ini mengilustrasikan rendering bentuk ke gambar JPEG secara terpisah dari dokumen, dan menyimpannya ke aliran:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-RenderShapeToStream.cpp" >}}

Kelas **ImageSaveOptions** memungkinkan Anda menentukan berbagai opsi yang mengontrol bagaimana gambar dirender. Fungsionalitas yang dijelaskan di atas dapat diterapkan dengan cara yang sama pada simpul **GroupShape** dan **Shape**.

## Merender ke Objek Grafik .NET

Merender langsung ke objek **Graphics** memungkinkan Anda menentukan pengaturan dan status Anda sendiri untuk objek **Graphics**. Skenario umum melibatkan rendering bentuk langsung ke objek **Graphics** yang diambil dari Bentuk Windows atau Bitmap. Saat simpul **Shape** dirender, pengaturan akan memengaruhi tampilan bentuk. Misalnya, Anda dapat memutar atau menskalakan bentuk dengan menggunakan metode **RotateTransform** atau **ScaleTransform** untuk objek **Graphics**.

Contoh di bawah ini menunjukkan cara merender bentuk ke a .**NET Graphics** objek secara terpisah dari dokumen dan menerapkan rotasi ke gambar yang dirender:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-RenderShapeToGraphics.cpp" >}}

Demikian pula, untuk metode [RenderToSize](https://reference.aspose.com/words/cpp/aspose.words/document/rendertosize/), metode [RenderToSize ](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertosize/)yang diwarisi dari [NodeRendererBase](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/) berguna untuk membuat gambar mini konten dokumen. Ukuran bentuk ditentukan melalui konstruktor. Metode **RenderToSize** menerima objek **Graphics**, koordinat X dan Y dari posisi gambar, dan ukuran gambar (lebar dan tinggi) yang akan digambar ke objek **Graphics**.

**Shape** dapat dirender ke skala tertentu menggunakan metode [ShapeRenderer.RenderToScale](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertoscale/) yang diwarisi dari kelas [NodeRendererBase](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/). Ini mirip dengan metode [Document.RenderToScale](https://reference.aspose.com/words/cpp/aspose.words/document/rendertoscale/) yang menerima parameter utama yang sama. Perbedaan antara kedua metode ini adalah bahwa dengan metode **ShapeRenderer.RenderToScale**, alih-alih ukuran literal, Anda memilih nilai float yang menskalakan bentuk selama perenderannya. Jika nilai float sama dengan 1.0 menyebabkan bentuk dirender pada 100% dari ukuran aslinya. Nilai float 0.5 akan mengurangi ukuran gambar hingga setengahnya.

## Merender Gambar Bentuk

Kelas [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) merepresentasikan objek dalam lapisan gambar, seperti objek AutoShape, kotak teks, bentuk bebas, OLE, kontrol ActiveX, atau gambar. Dengan menggunakan kelas **Shape**, Anda dapat membuat atau memodifikasi bentuk dalam dokumen Microsoft Word. Properti penting dari suatu bentuk adalah [ShapeType](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapetype/). Bentuk dari berbagai jenis dapat memiliki kemampuan yang berbeda dalam dokumen Word. Misalnya, hanya gambar dan bentuk OLE yang dapat memiliki gambar di dalamnya sedangkan sebagian besar bentuk hanya dapat memiliki teks.

Contoh berikut menunjukkan cara merender gambar Bentuk ke gambar JPEG secara terpisah dari dokumen dan menyimpannya ke disk:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-RenderShapeImage.cpp" >}}

## Mengambil Ukuran Bentuk

Kelas [ShapeRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/shaperenderer/) juga menyediakan fungsionalitas untuk mengambil ukuran bentuk dalam piksel melalui metode [GetSizeInPixels](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/getsizeinpixels/). Metode ini menerima dua parameter tipe float (Tunggal) - skala dan DPI, yang digunakan dalam perhitungan ukuran bentuk saat bentuk dirender. Metode mengembalikan objek `Size`, yang berisi lebar dan tinggi ukuran yang dihitung. Ini berguna ketika diperlukan untuk mengetahui ukuran bentuk yang dirender sebelumnya, misalnya saat membuat Bitmap baru dari keluaran yang dirender.

Contoh di bawah ini menunjukkan cara membuat objek Bitmap dan Grafik baru dengan lebar dan tinggi bentuk yang akan dirender:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-FindShapeSizes.cpp" >}}

Saat menggunakan metode **RenderToSize** atau **RenderToScale**, ukuran gambar yang dirender juga dikembalikan dalam objek [SizeF](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertoscale/). Ini dapat ditetapkan ke variabel dan digunakan jika perlu.

Properti **SizeInPoints** mengembalikan ukuran Bentuk yang diukur dalam poin (lihat [ShapeRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/shaperenderer/). Hasilnya adalah objek `SizeF` yang berisi lebar dan tinggi.