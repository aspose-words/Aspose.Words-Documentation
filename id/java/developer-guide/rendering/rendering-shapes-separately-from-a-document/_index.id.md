---
title: Bentuk rendering Secara terpisah dari Dokumen
second_title: Aspose.Words Sitemap Java
articleTitle: Bentuk rendering Secara terpisah dari Dokumen
linktitle: Bentuk rendering Secara terpisah dari Dokumen
description: "Ekstrak berbagai objek grafis, seperti gambar, kotak teks yang mengandung paragraf, atau bentuk panah, ketika memproses dokumen, dan mengekspornya ke lokasi eksternal menggunakan JavaSitemap"
type: docs
weight: 40
url: /id/java/rendering-shapes-separately-from-a-document/
timestamp: 2024-01-27-14-07-04
---

Ketika memproses dokumen, tugas umum adalah untuk mengekstrak semua gambar yang ditemukan dalam dokumen dan mengekspornya ke lokasi eksternal. Tugas ini menjadi sederhana dengan Meme it Aspose.Words API, yang sudah menyediakan fungsi untuk mengekstrak dan menyimpan data gambar. Namun, kadang-kadang Anda mungkin ingin mengekstrak jenis konten grafis lain yang diwakili oleh berbagai jenis objek gambar, misalnya, kotak teks yang mengandung paragraf, bentuk panah, dan gambar kecil. Tidak ada cara mudah rendering objek ini karena merupakan kombinasi dari elemen konten individu. Anda juga dapat menemukan kasus ketika konten telah dikelompokkan bersama ke dalam objek yang terlihat seperti gambar tunggal.

Aspose.Words menyediakan fungsi untuk mengekstrak jenis konten ini dengan cara yang sama Anda dapat mengekstrak gambar sederhana dari bentuk sebagai konten yang diberikan. Artikel ini menjelaskan bagaimana memanfaatkan fungsi ini untuk membuat bentuk secara independen dari dokumen.

## Jenis Bentuk dalam Aspose.Words

Semua konten dalam layer gambar dokumen diwakili oleh [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) Sitemap [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) Login Aspose.Words Modul Objek Dokumen (Modul)DOMSitemap Konten seperti itu dapat kotak teks, gambar, AutoShapes, OLE objek, dll. Beberapa bidang juga diimpor sebagai bentuk, misalnya, `INCLUDEPICTURE` Login

Gambar sederhana diwakili oleh **Shape** Login [ShapeType.Image](https://reference.aspose.com/words/java/com.aspose.words/shapetype/#IMAGE)Sitemap Node bentuk ini tidak memiliki node anak tetapi data gambar yang terkandung dalam node bentuk ini dapat diakses oleh [Shape.ImageData](https://reference.aspose.com/words/java/com.aspose.words/shape/#getImageData) Login Di sisi lain, bentuk juga dapat dibuat dari banyak node anak. Misalnya, bentuk kotak teks, yang diwakili oleh [ShapeType.TextBox](https://reference.aspose.com/words/java/com.aspose.words/shapetype/#TEXT-BOX) properti, dapat terdiri dari banyak node, seperti [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) Login [Table](https://reference.aspose.com/words/java/com.aspose.words/table/)Sitemap Kebanyakan bentuk dapat mencakup **Paragraph** Login **Table** node level blok. Ini adalah node yang sama seperti yang muncul di tubuh utama. Bentuk selalu bagian dari beberapa paragraf, baik disertakan secara langsung inline atau berlabuh ke **Paragraf,** tetapi "mengambang" di mana saja di halaman dokumen.

![rendering-shapes-separately-from-a-document-aspose-words-java-1](/words/java/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-1.png)

Dokumen juga dapat mengandung bentuk yang dikelompokkan bersama. Groupbisa diaktifkan Microsoft Word dengan memilih beberapa objek dan mengklik "Group" di menu klik kanan.

![rendering-shapes-separately-from-a-document-aspose-words-java-2](/words/java/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-2.png)

Sitemap Aspose.Words, kelompok bentuk ini diwakili oleh [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) Login Ini juga dapat diinjak dengan cara yang sama untuk membuat seluruh kelompok ke gambar.

![rendering-shapes-separately-from-a-document-aspose-words-java-3](/words/java/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-3.png)

Format DOCX dapat berisi jenis gambar khusus, seperti diagram atau grafik. Bentuk-bentuk ini juga diwakili melalui **Shape** Login Aspose.Words, yang juga menyediakan metode serupa untuk rendering mereka sebagai gambar. Dengan desain, bentuk tidak dapat mengandung bentuk lain sebagai anak, kecuali bentuk itu adalah gambar (**ShapeType.Image**Sitemap Sitemap Microsoft Word tidak memungkinkan Anda untuk memasukkan kotak teks di dalam kotak teks lain.

Jenis bentuk yang dijelaskan di atas memberikan metode khusus untuk membuat bentuk melalui [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/) Sitemap Contoh **ShapeRenderer** kelas diambil untuk **Shape** Sitemap **GroupShape** Sitemap **GetShapeRenderer** metode atau dengan melewati **Shape** ke konstruktor **ShapeRenderer** Sitemap Kelas ini memberikan akses kepada anggota, yang memungkinkan rendering bentuk berikut:

- File pada disk menggunakan [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.lang.String-com.aspose.words.ImageSaveOptions) metode kelebihan beban
- Streaming menggunakan [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.io.OutputStream-com.aspose.words.ImageSaveOptions) metode kelebihan beban
- Grafik Objek dengan menggunakan [RenderToSize](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToSize-java.awt.Graphics2D-float-float-float-float) Login [RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float) Login

{{% alert color="primary" %}}

Saat membuat **Shape**Sitemap itu harus menjadi bagian dari hierarki dokumen. Sitemap **Shape** bukan bagian dari pohon dokumen maka output yang diberikan akan kosong setelah panggilan **ShapeRenderer** Login

{{% /alert %}}

## Mengirim ke File atau Streaming

Login [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.lang.String-com.aspose.words.ImageSaveOptions) metode menyediakan kelebihan beban yang membuat bentuk langsung ke file atau aliran. Kedua kelebihan beban menerima contoh [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) kelas, yang memungkinkan menentukan pilihan untuk rendering bentuk. Ini bekerja dengan cara yang sama seperti Meme it [Document.Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) Login Meskipun parameter ini diperlukan, Anda dapat lulus nilai null, menentukan bahwa tidak ada opsi kustom.

Bentuknya dapat diekspor dalam format gambar yang ditentukan dalam format gambar [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) Sitemap Misalnya, gambar dapat diberikan sebagai gambar raster, seperti JPEG dengan menentukan [SaveFormat.Jpeg](https://reference.aspose.com/words/java/com.aspose.words/saveformat/#JPEG) enumerasi, atau sebagai gambar vektor, seperti EMF dengan menentukan [SaveFormat.Emf](https://reference.aspose.com/words/java/com.aspose.words/saveformat/#EMF)Sitemap

Contoh kode di bawah ini mengilustrasikan bentuk ke gambar EMF secara terpisah dari dokumen, dan menyimpan ke disk:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToDisk.java" >}}

Contoh kode di bawah ini mengilustrasikan bentuk ke gambar JPEG secara terpisah dari dokumen, dan menyimpan ke aliran:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToStream.java" >}}

Login **ImageSaveOptions** kelas memungkinkan Anda untuk menentukan berbagai pilihan yang mengontrol bagaimana gambar diberikan. Fungsi yang dijelaskan di atas dapat diterapkan dengan cara yang sama dengan **GroupShape** Login **Shape** Login

## Pengirim ke `Graphics` Sitemap

Pengirim langsung ke **Graphics** objek memungkinkan Anda untuk menentukan pengaturan Anda sendiri dan keadaan untuk **Graphics** Sitemap skenario umum melibatkan rendering bentuk langsung ke dalam **Graphics** objek yang diambil dari Windows Form atau Bitmap. Sitemap **Shape** node diberikan, pengaturan akan mempengaruhi penampilan bentuk. Misalnya, Anda dapat memutar atau mengukur bentuk dengan menggunakan **RotateTransform** Sitemap **ScaleTransform** metode untuk **Graphics** Sitemap

Contoh di bawah ini menunjukkan bagaimana untuk membuat bentuk menjadi **Graphics** objek secara terpisah dari dokumen dan menerapkan rotasi ke gambar yang diberikan:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToGraphics.java" >}}

Demikian pula, dengan [RenderToSize](https://reference.aspose.com/words/java/com.aspose.words/document/#renderToSize-int-java.awt.Graphics2D-float-float-float-float) metode, [Login](https://reference.aspose.com/words/java/com.aspose.words/document/#renderToSize-int-java.awt.Graphics2D-float-float-float-float)metode yang diwarisi dari [NodeRendererBase](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/) berguna untuk membuat thumbnails konten dokumen. Ukuran bentuk ditentukan melalui konstruktor. Login **RenderToSize** metode menerima **Graphics** objek, X dan Y mengkoordinasikan posisi gambar, dan ukuran gambar (lebar dan tinggi) yang akan ditarik ke **Graphics** Sitemap

Login **Shape** dapat diberikan ke skala tertentu menggunakan [ShapeRenderer.RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float) metode yang diwarisi dari [NodeRendererBase](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/) Sitemap Ini mirip dengan [Document.RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float) metode yang menerima parameter utama yang sama. Perbedaan antara kedua metode ini adalah bahwa dengan **ShapeRenderer.RenderToScale** metode, bukan ukuran literal, Anda memilih nilai float yang meningkatkan bentuk selama renderingnya. Jika nilai float sama 1.0 menyebabkan bentuk untuk diberikan pada 100% dari ukuran aslinya. Nilai float 0,5 akan mengurangi ukuran gambar sebesar setengah.

## Mengirimkan Gambar Bentuk

Login [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) kelas mewakili benda dalam lapisan gambar, seperti AutoShape, kotak teks, bentuk bebas, objek OLE, kontrol ActiveX, atau gambar. Menggunakan **Shape** kelas, Anda dapat membuat atau memodifikasi bentuk dalam Microsoft Word Sitemap Sifat penting dari bentuk adalah [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/)Sitemap Bentuk berbagai jenis dapat memiliki kemampuan yang berbeda dalam dokumen Word. Misalnya, hanya gambar dan bentuk OLE dapat memiliki gambar di dalamnya sementara sebagian besar bentuk dapat memiliki teks hanya.

Contoh berikut menunjukkan cara membuat gambar bentuk ke gambar JPEG secara terpisah dari dokumen dan menyimpannya ke disk:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeImage.java" >}}

## Meningkatkan Ukuran Bentuk

Login [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/) kelas juga menyediakan fungsi untuk mengambil ukuran bentuk dalam pixel melalui [GetSizeInPixels](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getSizeInPixels-float-float) Login Metode ini menerima dua parameter float (Single) - skala dan DPI, yang digunakan dalam perhitungan ukuran bentuk ketika bentuk diberikan. Metode mengembalikan [Size](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getSizeInPixels-float-float) objek, yang mengandung lebar dan tinggi dari ukuran yang dihitung. Ini berguna ketika diperlukan untuk mengetahui ukuran bentuk yang diberikan sebelumnya, misalnya ketika membuat Bitmap baru dari output yang diberikan.

Contoh di bawah ini menunjukkan bagaimana menciptakan objek Bitmap dan Grafik baru dengan lebar dan tinggi bentuk yang akan diberikan:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-FindShapeSizes.java" >}}

Saat menggunakan **RenderToSize** Sitemap **RenderToScale** metode, ukuran gambar yang diberikan juga dikembalikan dalam [SizeF](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#renderToScale-java.awt.Graphics2D-float-float-float) Sitemap Ini dapat ditugaskan ke variabel dan digunakan jika perlu.

Login **SizeInPoints** properti kembali ukuran bentuk yang diukur dalam poin (lihat [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/)Sitemap Hasilnya adalah `SizeF` objek yang mengandung lebar dan tinggi.
