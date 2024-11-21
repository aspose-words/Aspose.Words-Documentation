---
title: Bekerja dengan Gambar di Python
second_title: Aspose.Words untuk Python via .NET
articleTitle: Bekerja dengan Gambar
linktitle: Bekerja dengan Gambar
description: "Buat dan kelola gambar berbagai format dalam dokumen menggunakan Python."
type: docs
weight: 300
url: /id/python-net/working-with-images/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words memungkinkan pengguna bekerja dengan gambar dengan cara yang sangat fleksibel. Pada artikel ini, Anda hanya dapat menjelajahi beberapa kemungkinan bekerja dengan gambar.

## Memasukkan Gambar

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) menyediakan beberapa kelebihan metode [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) yang memungkinkan Anda menyisipkan gambar sebaris atau mengambang. Jika gambar adalah metafile EMF atau WMF, maka akan dimasukkan ke dalam dokumen dalam format metafile. Semua gambar lainnya akan disimpan dalam format PNG. Metode **masukkan_gambar** dapat menggunakan gambar dari berbagai sumber:

- Dari file atau `URL` dengan meneruskan parameter string
- Dari aliran dengan meneruskan parameter `Stream`
- Dari array byte dengan meneruskan parameter array byte

Untuk masing-masing metode **masukkan_gambar**, ada kelebihan lebih lanjut yang memungkinkan Anda menyisipkan gambar dengan opsi berikut:
- Inline atau floating pada posisi tertentu, misalnya **masukkan_gambar**
- Skala persentase atau ukuran khusus; selanjutnya, metode [DocumentBuilder.insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) mengembalikan objek [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) yang baru saja dibuat dan disisipkan sehingga Anda dapat memodifikasi properti [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) lebih lanjut

### Memasukkan Gambar Sebaris

Berikan satu string yang mewakili file yang berisi gambar ke [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) untuk menyisipkan gambar ke dalam dokumen sebagai grafik sebaris.

Contoh kode berikut menunjukkan cara menyisipkan gambar sebaris pada posisi kursor ke dalam dokumen:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_image(docs_base.images_dir + "Logo.jpg")

doc.save(docs_base.artifacts_dir+"WorkingWithImages.document_builder_insert_inline_image.doc")
{{< /highlight >}}

### Memasukkan Gambar Mengambang (Diposisikan Secara Absolut)

Contoh kode berikut menunjukkan cara menyisipkan gambar mengambang dari file atau `URL` pada posisi dan ukuran tertentu:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_image(docs_base.images_dir + "Logo.jpg",
    aw.drawing.RelativeHorizontalPosition.MARGIN,
    100,
    aw.drawing.RelativeVerticalPosition.MARGIN,
    100,
    200,
    100,
    aw.drawing.WrapType.SQUARE)

doc.save(docs_base.artifacts_dir+"WorkingWithImages.document_builder_insert_floating_image.doc")
{{< /highlight >}}

## Cara Mengekstrak Gambar dari Dokumen

Semua gambar disimpan di dalam node [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) di [Document](https://reference.aspose.com/words/python-net/aspose.words/document/). Untuk mengekstrak semua gambar atau gambar dengan tipe tertentu dari dokumen, ikuti langkah-langkah berikut:

- Gunakan metode [Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) untuk memilih semua node [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/).
- Iterasi melalui koleksi node yang dihasilkan.
- Periksa properti boolean [Shape.has_image](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/has_image/).
- Ekstrak data gambar menggunakan properti [Shape.image_data](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/image_data/).
- Simpan data gambar ke file.

Contoh kode berikut menunjukkan cara mengekstrak gambar dari dokumen dan menyimpannya sebagai file:

Anda dapat mengunduh file template contoh ini dari [Di Sini](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Images.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-ExtractImagesToFiles.py" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file contoh contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Images.docx).

{{% /alert %}}

## Cara Menyisipkan Barcode pada Setiap Halaman Dokumen

Contoh ini menunjukkan Anda untuk menambahkan kode batang yang sama atau berbeda pada semua atau halaman tertentu pada dokumen Word. Tidak ada cara langsung untuk menambahkan barcode pada semua halaman dokumen tetapi Anda dapat menggunakan metode [move_to_section](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_section/), [move_to_header_footer](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_header_footer/) dan [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) untuk berpindah ke bagian atau header/footer mana pun dan menyisipkan gambar barcode seperti yang Anda lihat pada kode berikut.

Contoh kode berikut Menyisipkan gambar barcode pada setiap halaman dokumen.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_images-InsertBarcodeImage.py" >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_images-InsertBarcodeIntoFooter.py" >}}

## Kunci Rasio Aspek Gambar

Rasio aspek suatu bentuk geometris adalah rasio ukurannya dalam dimensi yang berbeda. Anda dapat mengunci rasio aspek gambar menggunakan [aspect_ratio_locked](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/aspect_ratio_locked/). Nilai default rasio aspek bentuk bergantung pada [ShapeType](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/). Ini adalah `True` untuk [ShapeType.IMAGE](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#image) dan `False` untuk tipe bentuk lainnya.

Contoh kode berikut menunjukkan cara bekerja dengan rasio aspek:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

shape = builder.insert_image(docs_base.images_dir + "Logo.jpg")
shape.aspect_ratio_locked = False

doc.save(docs_base.artifacts_dir+"WorkingWithImages.set_aspect_ratio_locked.doc")
{{< /highlight >}}

## Bagaimana Mendapatkan Batasan Bentuk Sebenarnya dalam Poin

Jika Anda menginginkan kotak pembatas sebenarnya dari bentuk seperti yang dirender pada halaman, Anda dapat mencapainya dengan menggunakan properti [bounds_in_points](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/bounds_in_points/).

Contoh kode berikut menunjukkan cara menggunakan properti ini:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

shape = builder.insert_image(docs_base.images_dir + "Logo.jpg")
shape.aspect_ratio_locked = False

print("\nGets the actual bounds of the shape in points.")
rect = shape.get_shape_renderer().bounds_in_points
print(f"{rect.x}, {rect.y}, {rect.width}, {rect.height}")
{{< /highlight >}}

## Pangkas Gambar

Pemotongan gambar biasanya mengacu pada penghapusan bagian luar gambar yang tidak diinginkan untuk membantu menyempurnakan pembingkaian. Ini juga digunakan untuk menghilangkan beberapa bagian gambar guna meningkatkan fokus pada area tertentu.

Contoh kode berikut menunjukkan cara mencapai hal ini menggunakan Aspose.Words API:

{{< highlight python >}}
# The path to the documents directory.
inputPath = docs_base.images_dir + "Logo.jpg"
outputPath = docs_base.artifacts_dir + "cropped_logo.jpg"

self.crop_image(inputPath,outputPath, 100, 90, 200, 200)
{{< /highlight >}}

{{< highlight python >}}
@staticmethod
def crop_image(inPath : str, outPath : str, left : int, top : int, width : int, height : int) :
    
    doc = aw.Document();
    builder = aw.DocumentBuilder(doc)
    
    croppedImage = builder.insert_image(inPath)
    
    src_width_points = croppedImage.width
    src_height_points = croppedImage.height
    
    croppedImage.width = aw.ConvertUtil.pixel_to_point(width)
    croppedImage.height = aw.ConvertUtil.pixel_to_point(height)
    
    widthRatio = croppedImage.width / src_width_points
    heightRatio = croppedImage.height / src_height_points
    
    if (widthRatio< 1) :
        croppedImage.image_data.crop_right = 1 - widthRatio
    
    if (heightRatio< 1) :
        croppedImage.image_data.crop_bottom = 1 - heightRatio
    
    leftToWidth = aw.ConvertUtil.pixel_to_point(left) / src_width_points
    topToHeight = aw.ConvertUtil.pixel_to_point(top) / src_height_points
    
    croppedImage.image_data.crop_left = leftToWidth
    croppedImage.image_data.crop_right = croppedImage.image_data.crop_right - leftToWidth
    
    croppedImage.image_data.crop_top = topToHeight
    croppedImage.image_data.crop_bottom = croppedImage.image_data.crop_bottom - topToHeight
    
    croppedImage.get_shape_renderer().save(outPath, aw.saving.ImageSaveOptions(aw.SaveFormat.JPEG))
{{< /highlight >}}

## Menyimpan Gambar sebagai WMF

Aspose.Words menyediakan fungsionalitas untuk menyimpan semua gambar yang tersedia dalam dokumen ke format [WMF](https://docs.fileformat.com/image/wmf/) sambil mengonversi DOCX ke RTF.

Contoh kode berikut menunjukkan cara menyimpan gambar sebagai WMF dengan opsi penyimpanan RTF:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_rtf_save_options-SavingImagesAsWmf.py" >}}
