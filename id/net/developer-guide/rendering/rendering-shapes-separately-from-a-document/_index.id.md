---
title: Merender Bentuk Secara Terpisah dari Dokumen
second_title: Aspose.Words untuk .NET
articleTitle: Merender Bentuk Secara Terpisah dari Dokumen
linktitle: Merender Bentuk Secara Terpisah dari Dokumen
description: "Ekstrak berbagai objek grafik, seperti gambar, kotak teks berisi paragraf, atau bentuk panah, saat memproses dokumen, dan ekspor ke lokasi eksternal menggunakan C#."
type: docs
weight: 40
url: /id/net/rendering-shapes-separately-from-a-document/
---

Saat memproses dokumen, tugas umumnya adalah mengekstrak semua gambar yang ditemukan dalam dokumen dan mengekspornya ke lokasi eksternal. Tugas ini menjadi sederhana dengan Aspose.Words API, yang sudah menyediakan fungsionalitas untuk mengekstraksi dan menyimpan data gambar. Namun, terkadang Anda mungkin ingin mengekstrak jenis konten grafis lain yang serupa yang diwakili oleh jenis objek gambar berbeda, misalnya, kotak teks yang berisi paragraf, bentuk panah, dan gambar kecil. Tidak ada cara langsung untuk merender objek ini karena ini merupakan kombinasi elemen konten individual. Anda mungkin juga menjumpai kasus ketika konten telah dikelompokkan menjadi satu objek yang tampak seperti satu gambar.

Aspose.Words menyediakan fungsionalitas untuk mengekstrak konten jenis ini dengan cara yang sama seperti Anda mengekstrak gambar sederhana dari bentuk sebagai konten yang dirender. Artikel ini menjelaskan cara memanfaatkan fungsi ini untuk merender bentuk secara independen dari dokumen.

## Jenis Bentuk di Aspose.Words

Semua konten dalam lapisan gambar dokumen diwakili oleh node [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) atau [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/) di Aspose.Words Document Object Module (DOM). Konten tersebut dapat berupa kotak teks, gambar, BentukOtomatis, objek OLE, dll. Beberapa bidang juga diimpor sebagai bentuk, misalnya bidang `INCLUDEPICTURE`.

Gambar sederhana diwakili oleh node **Shape** dari [ShapeType.Image](https://reference.aspose.com/words/net/aspose.words.drawing/shapetype/). Node bentuk ini tidak memiliki node anak tetapi data gambar yang terdapat dalam node bentuk ini dapat diakses oleh properti [Shape.ImageData](https://reference.aspose.com/words/net/aspose.words.drawing/shape/imagedata/). Di sisi lain, suatu bentuk juga dapat terdiri dari banyak node anak. Misalnya, bentuk kotak teks, yang diwakili oleh properti [ShapeType.TextBox](https://reference.aspose.com/words/net/aspose.words.drawing/shapetype/), dapat terdiri dari banyak node, seperti [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/) dan [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/). Sebagian besar bentuk dapat menyertakan node tingkat blok **Paragraph** dan **Table**. Ini adalah node yang sama dengan yang muncul di badan utama. Bentuk selalu menjadi bagian dari beberapa paragraf, baik dimasukkan secara langsung sebaris atau ditambatkan ke **Gugus kalimat,** tetapi "mengambang" di mana saja di halaman dokumen.

![rendering-shapes-separately-from-a-document_1](/words/net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-1.png)

Dokumen juga bisa berisi bentuk yang dikelompokkan bersama. Grouping dapat diaktifkan di Microsoft Word dengan memilih beberapa objek dan mengklik "Group" di menu klik kanan.

![rendering-shapes-separately-from-a-document_2](/words/net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-2.png)

Di Aspose.Words, kelompok bentuk ini diwakili oleh node [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/). Ini juga dapat dipanggil dengan cara yang sama untuk merender seluruh grup menjadi gambar.

![rendering-shapes-separately-from-a-document_3](/words/net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-3.png)

Format DOCX dapat berisi jenis gambar khusus, seperti diagram atau bagan. Bentuk-bentuk ini juga direpresentasikan melalui node **Shape** dalam Aspose.Words, yang juga menyediakan metode serupa untuk merendernya sebagai gambar. Secara desain, suatu bentuk tidak dapat memuat bentuk lain sebagai anak, kecuali bentuk tersebut adalah gambar (**ShapeType.Image**). Misalnya, Microsoft Word tidak mengizinkan Anda menyisipkan kotak teks ke dalam kotak teks lain.

Tipe bentuk yang dijelaskan di atas menyediakan metode khusus untuk merender bentuk melalui kelas [ShapeRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/shaperenderer/). Sebuah instance dari kelas **ShapeRenderer** diambil untuk **Shape** atau **GroupShape** melalui metode **GetShapeRenderer** atau dengan meneruskan **Shape** ke konstruktor kelas **ShapeRenderer**. Kelas ini menyediakan akses ke anggota, yang memungkinkan rendering bentuk sebagai berikut:

- File pada disk menggunakan metode [Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/) yang berlebihan
- Streaming menggunakan metode [Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/) yang berlebihan
- Objek Grafik .NET dengan menggunakan metode [RenderToSize](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertosize/) dan [RenderToScale](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertoscale/)

{{% alert color="primary" %}}

Saat merender **Shape**, **Shape** harus menjadi bagian dari hierarki dokumen. Jika **Shape** bukan bagian dari pohon dokumen maka keluaran yang diberikan akan kosong setelah menjalankan metode **ShapeRenderer**.

{{% /alert %}}

## Merender ke File atau Stream

Metode [Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/) menyediakan kelebihan beban yang merender bentuk secara langsung ke file atau aliran. Kedua kelebihan tersebut menerima turunan dari kelas [ImageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/), yang memungkinkan untuk menentukan opsi untuk merender bentuk. Ini bekerja dengan cara yang sama seperti metode [Document.Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save). Meskipun parameter ini diperlukan, Anda dapat memberikan nilai null, yang menentukan bahwa tidak ada opsi khusus.

Bentuknya dapat diekspor dalam format gambar apa pun yang ditentukan dalam enumerasi [SaveFormat](https://reference.aspose.com/words/net/aspose.words/saveformat/). Misalnya, gambar dapat dirender sebagai gambar raster, seperti JPEG dengan menentukan enumerasi [SaveFormat.Jpeg](https://reference.aspose.com/words/net/aspose.words/saveformat/), atau sebagai gambar vektor, seperti EMF dengan menentukan [SaveFormat.Emf](https://reference.aspose.com/words/net/aspose.words/saveformat/).

Contoh kode di bawah mengilustrasikan rendering bentuk ke gambar EMF secara terpisah dari dokumen, dan menyimpannya ke disk:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeToDisk.cs" >}}

Contoh kode di bawah mengilustrasikan rendering bentuk ke gambar JPEG secara terpisah dari dokumen, dan menyimpannya ke aliran:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeToStream.cs" >}}

Kelas **ImageSaveOptions** memungkinkan Anda menentukan berbagai opsi yang mengontrol cara gambar dirender. Fungsionalitas yang dijelaskan di atas dapat diterapkan dengan cara yang sama pada node **GroupShape** dan **Shape**.

## Merender ke Objek Grafik .NET

Merender langsung ke objek **Graphics** memungkinkan Anda menentukan pengaturan dan status objek **Graphics** Anda sendiri. Skenario umum melibatkan rendering bentuk langsung ke objek **Graphics** yang diambil dari Formulir Windows atau Bitmap. Saat node **Shape** dirender, pengaturannya akan memengaruhi tampilan bentuk. Misalnya, Anda bisa memutar atau menskalakan bentuk dengan menggunakan metode **RotateTransform** atau **ScaleTransform** untuk objek **Graphics**.

Contoh di bawah ini menunjukkan cara merender bentuk ke objek .**NET Graphics** secara terpisah dari dokumen dan menerapkan rotasi pada gambar yang dirender:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeToGraphics.cs" >}}

Sama halnya dengan metode [RenderToSize](https://reference.aspose.com/words/net/aspose.words/document/rendertosize/), metode [RenderToSize](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertosize/) yang diwarisi dari [NodeRendererBase](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/) berguna untuk membuat thumbnail dari suatu konten dokumen. Ukuran bentuk ditentukan melalui konstruktor. Metode **RenderToSize** menerima objek **Graphics**, koordinat X dan Y posisi gambar, serta ukuran gambar (lebar dan tinggi) yang akan digambar ke objek **Graphics**.

**Shape** dapat dirender ke skala tertentu menggunakan metode [ShapeRenderer.RenderToScale](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertoscale/) yang diwarisi dari kelas [NodeRendererBase](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/). Hal ini mirip dengan metode [Document.RenderToScale](https://reference.aspose.com/words/net/aspose.words/document/rendertoscale/) yang menerima parameter utama yang sama. Perbedaan antara kedua metode ini adalah dengan metode **ShapeRenderer.RenderToScale**, alih-alih ukuran literal, Anda memilih nilai float yang menskalakan bentuk selama renderingnya. Jika nilai float sama dengan 1.0 menyebabkan bentuk dirender 100% dari ukuran aslinya. Nilai float 0,5 akan memperkecil ukuran gambar hingga setengahnya.

## Merender Gambar Bentuk

Kelas [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) mewakili objek di lapisan gambar, seperti BentukOtomatis, kotak teks, bentuk bebas, objek OLE, kontrol ActiveX, atau gambar. Menggunakan kelas **Shape**, Anda bisa membuat atau memodifikasi bentuk dalam dokumen Microsoft Word. Properti penting dari suatu bentuk adalah [ShapeType](https://reference.aspose.com/words/net/aspose.words.drawing/shape/base/properties/shapetype)-nya. Bentuk dari tipe yang berbeda dapat memiliki kemampuan berbeda dalam dokumen Word. Misalnya, hanya bentuk gambar dan OLE yang dapat memiliki gambar di dalamnya, sedangkan sebagian besar bentuk hanya dapat berisi teks.

Contoh berikut menunjukkan cara merender gambar Bentuk menjadi gambar JPEG secara terpisah dari dokumen dan menyimpannya ke disk:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeImage.cs" >}}

## Mengambil Ukuran Bentuk

Kelas [ShapeRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/shaperenderer/) juga menyediakan fungsionalitas untuk mengambil ukuran bentuk dalam piksel melalui metode [GetSizeInPixels](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/getsizeinpixels/). Metode ini menerima dua parameter float (Tunggal) – skala dan DPI, yang digunakan dalam penghitungan ukuran bentuk saat bentuk dirender. Metode ini mengembalikan objek [Size](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/getsizeinpixels/), yang berisi lebar dan tinggi ukuran yang dihitung. Hal ini berguna ketika diperlukan untuk mengetahui ukuran bentuk yang dirender terlebih dahulu, misalnya saat membuat Bitmap baru dari output yang dirender.

Contoh di bawah ini menunjukkan cara membuat objek Bitmap dan Grafik baru dengan lebar dan tinggi bentuk yang akan dirender:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-FindShapeSizes.cs" >}}

Saat menggunakan metode **RenderToSize** atau **RenderToScale**, ukuran gambar yang dirender juga dikembalikan dalam objek [SizeF](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertoscale/). Ini dapat ditugaskan ke variabel dan digunakan jika diperlukan.

Properti **SizeInPoints** mengembalikan ukuran Bentuk yang diukur dalam poin (lihat [ShapeRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/shaperenderer/). Hasilnya adalah objek `SizeF` yang berisi lebar dan tinggi.
