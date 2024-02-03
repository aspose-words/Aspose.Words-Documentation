---
title: Bentuk Terpisah dari Dokumen
second_title: Aspose.Words untuk Python via .NET
articleTitle: Merender Bentuk Secara Terpisah dari Dokumen
linktitle: Merender Bentuk Secara Terpisah dari Dokumen
description: "Ekstrak berbagai objek grafik, seperti gambar, kotak teks berisi paragraf, atau bentuk panah, saat memproses dokumen, dan ekspor ke lokasi eksternal menggunakan Python."
type: docs
weight: 40
url: /id/python-net/rendering-shapes-separately-from-a-document/
---

Saat memproses dokumen, tugas umumnya adalah mengekstrak semua gambar yang ditemukan dalam dokumen dan mengekspornya ke lokasi eksternal. Tugas ini menjadi sederhana dengan Aspose.Words API, yang sudah menyediakan fungsionalitas untuk mengekstraksi dan menyimpan data gambar. Namun, terkadang Anda mungkin ingin mengekstrak jenis konten grafis lain yang serupa yang diwakili oleh jenis objek gambar berbeda, misalnya, kotak teks yang berisi paragraf, bentuk panah, dan gambar kecil. Tidak ada cara langsung untuk merender objek ini karena ini merupakan kombinasi elemen konten individual. Anda mungkin juga menjumpai kasus ketika konten telah dikelompokkan menjadi satu objek yang tampak seperti satu gambar.

Aspose.Words menyediakan fungsionalitas untuk mengekstrak konten jenis ini dengan cara yang sama seperti Anda mengekstrak gambar sederhana dari bentuk sebagai konten yang dirender. Artikel ini menjelaskan cara memanfaatkan fungsi ini untuk merender bentuk secara independen dari dokumen.

## Jenis Bentuk di Aspose.Words

Semua konten dalam lapisan gambar dokumen diwakili oleh node [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) atau [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) di Aspose.Words Document Object Module (DOM). Konten tersebut dapat berupa kotak teks, gambar, BentukOtomatis, objek OLE, dll. Beberapa bidang juga diimpor sebagai bentuk, misalnya bidang `INCLUDEPICTURE`.

Gambar sederhana diwakili oleh node [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) dari [ShapeType.IMAGE](https://reference.aspose.com/words/python-net/aspose.words.drawing/shadowtype/#image). Node bentuk ini tidak memiliki node anak tetapi data gambar yang terdapat dalam node bentuk ini dapat diakses oleh properti [Shape.image_data](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/image_data/). Di sisi lain, suatu bentuk juga dapat terdiri dari banyak node anak. Misalnya, bentuk kotak teks, yang diwakili oleh properti [ShapeType.TEXT_BOX](https://reference.aspose.com/words/python-net/aspose.words.drawing/shadowtype/#text_box), dapat terdiri dari banyak node, seperti [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) dan [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/). Sebagian besar bentuk dapat menyertakan node tingkat blok [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) dan [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/). Ini adalah node yang sama dengan yang muncul di badan utama. Bentuk selalu menjadi bagian dari beberapa paragraf, baik disertakan secara langsung sebaris atau ditambatkan ke [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), namun "mengambang" di mana saja di halaman dokumen.

![rendering-shapes-separately-from-a-document_1](/words/python-net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-1.png)

Dokumen juga bisa berisi bentuk yang dikelompokkan bersama. Grouping dapat diaktifkan di Microsoft Word dengan memilih beberapa objek dan mengklik "Group" di menu klik kanan.

![rendering-shapes-separately-from-a-document_2](/words/python-net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-2.png)

Di Aspose.Words, kelompok bentuk ini diwakili oleh node [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/). Ini juga dapat dipanggil dengan cara yang sama untuk merender seluruh grup menjadi gambar.

![rendering-shapes-separately-from-a-document_3](/words/python-net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-3.png)

Format DOCX dapat berisi jenis gambar khusus, seperti diagram atau bagan. Bentuk-bentuk ini juga direpresentasikan melalui node [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) dalam Aspose.Words, yang juga menyediakan metode serupa untuk merendernya sebagai gambar. Secara desain, suatu bentuk tidak dapat memuat bentuk lain sebagai anak, kecuali bentuk tersebut adalah gambar ([ShapeType.IMAGE](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#image)). Misalnya, Microsoft Word tidak mengizinkan Anda menyisipkan kotak teks ke dalam kotak teks lain.

Tipe bentuk yang dijelaskan di atas menyediakan metode khusus untuk merender bentuk melalui kelas [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/). Sebuah instance dari kelas [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) diambil untuk [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) atau [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) melalui metode [get_shape_renderer](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/get_shape_renderer/) atau dengan meneruskan [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) ke konstruktor kelas [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/). Kelas ini menyediakan akses ke anggota, yang memungkinkan rendering bentuk sebagai berikut:

- File di disk
- Sungai kecil

{{% alert color="primary" %}}

Saat merender [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/), [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) harus menjadi bagian dari hierarki dokumen. Jika [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) bukan bagian dari pohon dokumen maka keluaran yang diberikan akan kosong setelah menjalankan metode [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/).

{{% /alert %}}

## Merender ke File atau Stream

Metode [save](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/save/) menyediakan kelebihan beban yang merender bentuk secara langsung ke file atau aliran. Kedua kelebihan tersebut menerima turunan dari kelas [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/), yang memungkinkan untuk menentukan opsi untuk merender bentuk. Ini bekerja dengan cara yang sama seperti metode [Document.save](https://reference.aspose.com/words/python-net/aspose.words/document/save/). Meskipun parameter ini diperlukan, Anda dapat memberikan nilai null, yang menentukan bahwa tidak ada opsi khusus.

Bentuknya dapat diekspor dalam format gambar apa pun yang ditentukan dalam enumerasi [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/). Misalnya, gambar dapat dirender sebagai gambar raster, seperti JPEG dengan menentukan enumerasi [SaveFormat.JPEG](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#jpeg), atau sebagai gambar vektor, seperti EMF dengan menentukan [SaveFormat.EMF](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#emf).

Contoh kode di bawah mengilustrasikan rendering bentuk ke gambar EMF secara terpisah dari dokumen, dan menyimpannya ke disk:

{{< highlight python >}}
r = shape.get_shape_renderer()

# Define custom options which control how the image is rendered. Render the shape to the JPEG raster format.
imageOptions = aw.saving.ImageSaveOptions(aw.SaveFormat.EMF)
imageOptions.scale = 1.5
        
# Save the rendered image to disk.
r.save(docs_base.artifacts_dir + "TestFile.RenderToDisk_out.emf", imageOptions)
{{< /highlight >}}

Contoh kode di bawah mengilustrasikan rendering bentuk ke gambar JPEG secara terpisah dari dokumen, dan menyimpannya ke aliran:

{{< highlight python >}}
r = shape.get_shape_renderer()

# Define custom options which control how the image is rendered. Render the shape to the vector format EMF.
imageOptions = aw.saving.ImageSaveOptions(aw.SaveFormat.JPEG)
        
# Output the image in gray scale
imageOptions.image_color_mode = aw.saving.ImageColorMode.GRAYSCALE

# Reduce the brightness a bit (default is 0.5f).
imageOptions.image_brightness = 0.45
        
stream =  io.FileIO(docs_base.artifacts_dir + "TestFile.RenderToStream_out.jpg", "w+b")

# Save the rendered image to the stream using different options.
r.save(stream, imageOptions)

# Close the stream
stream.close()
{{< /highlight >}}

Kelas [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) memungkinkan Anda menentukan berbagai opsi yang mengontrol cara gambar dirender. Fungsionalitas yang dijelaskan di atas dapat diterapkan dengan cara yang sama pada node [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) dan [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/).

## Merender Gambar Bentuk

Kelas [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) mewakili objek di lapisan gambar, seperti BentukOtomatis, kotak teks, bentuk bebas, objek OLE, kontrol ActiveX, atau gambar. Menggunakan kelas [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/), Anda bisa membuat atau memodifikasi bentuk dalam dokumen Microsoft Word. Properti penting dari suatu bentuk adalah [shape_type](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/shape_type/)-nya. Bentuk dari tipe yang berbeda dapat memiliki kemampuan berbeda dalam dokumen Word. Misalnya, hanya bentuk gambar dan OLE yang dapat memiliki gambar di dalamnya, sedangkan sebagian besar bentuk hanya dapat berisi teks.

Contoh berikut menunjukkan cara merender gambar Bentuk menjadi gambar JPEG secara terpisah dari dokumen dan menyimpannya ke disk:

{{< highlight python >}}
# Save the rendered image to disk.
shape.get_shape_renderer().save(docs_base.artifacts_dir + "TestFile.RenderShapeImage.jpeg", None)
{{< /highlight >}}

## Mengambil Ukuran Bentuk

Kelas [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) juga menyediakan fungsionalitas untuk mengambil ukuran bentuk dalam piksel melalui metode [get_size_in_pixels](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/get_size_in_pixels/). Metode ini menerima dua parameter float (Tunggal) – skala dan DPI, yang digunakan dalam penghitungan ukuran bentuk saat bentuk dirender. Metode ini mengembalikan objek **Size**, yang berisi lebar dan tinggi ukuran yang dihitung. Hal ini berguna ketika diperlukan untuk mengetahui ukuran bentuk yang dirender terlebih dahulu. Properti [size_in_points](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/size_in_points/) mengembalikan ukuran Bentuk yang diukur dalam poin. Hasilnya adalah objek **SizeF** yang berisi lebar dan tinggi. Anda juga dapat menggunakan properti [bounds_in_points](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/bounds_in_points/) untuk mendapatkan batas sebenarnya dari bentuk tersebut.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-GetActualShapeBoundsPoints.py" >}}


