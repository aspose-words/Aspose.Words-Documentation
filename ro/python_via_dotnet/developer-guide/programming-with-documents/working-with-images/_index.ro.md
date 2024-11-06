---
title: Lucrul cu imagini în Python
second_title: Aspose.Words pentru Python via .NET
articleTitle: Lucrul cu imagini
linktitle: Lucrul cu imagini
description: "Creați și gestionați imagini de diferite formate într-un document folosind Python."
type: docs
weight: 300
url: /ro/python-net/working-with-images/
---

Aspose.Words permite utilizatorilor să lucreze cu imagini într-un mod foarte flexibil. În acest articol, puteți explora doar câteva dintre posibilitățile de lucru cu imagini.

## Inserarea unei imagini

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) oferă mai multe supraîncărcări ale metodei [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) care vă permite să inserați o imagine inline sau plutitoare. Dacă imaginea este un metafișier EMF sau WMF, aceasta va fi inserată în document în format metafișier. Toate celelalte imagini vor fi stocate în format PNG. Metoda **insert_image** poate utiliza imagini din diferite surse:

- Dintr-un fișier sau `URL` prin trecerea unui parametru șir
- Dintr-un flux prin trecerea unui parametru `Stream`
- Dintr-o matrice de octeți prin trecerea unui parametru de matrice de octeți

Pentru fiecare dintre metodele **insert_image**, există supraîncărcări suplimentare care vă permit să inserați o imagine cu următoarele opțiuni:
- În linie sau plutind într-o anumită poziție, de exemplu, **insert_image**
- Scară procentuală sau dimensiune personalizată; în plus, metoda [DocumentBuilder.insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) returnează un obiect [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) care tocmai a fost creat și inserat, astfel încât să puteți modifica în continuare proprietățile [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)

### Inserarea unei imagini Inline

Treceți un singur șir reprezentând un fișier care conține imaginea la [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) pentru a insera imaginea în document ca grafic în linie.

Următorul exemplu de cod arată cum să inserați o imagine în linie în poziția cursorului într-un document:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_image(docs_base.images_dir + "Logo.jpg")

doc.save(docs_base.artifacts_dir+"WorkingWithImages.document_builder_insert_inline_image.doc")
{{< /highlight >}}

### Introducerea unei imagini Plutitoare (poziționate absolut)

Următorul exemplu de cod arată cum să inserați o imagine plutitoare dintr-un fișier sau `URL` la o poziție și dimensiune specificate:

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

## Cum să extrageți imagini dintr-un Document

Toate imaginile sunt stocate în interiorul [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) noduri într-un [Document](https://reference.aspose.com/words/python-net/aspose.words/document/). Pentru a extrage din document toate imaginile sau imaginile cu un anumit tip, urmați acești pași:

- Utilizați metoda [Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) pentru a selecta toate nodurile [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/).
- Iterați prin colecțiile de noduri rezultate.
- Verificați proprietatea booleană [Shape.has_image](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/has_image/).
- Extrageți datele imaginii folosind proprietatea [Shape.image_data](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/image_data/).
- Salvați datele imaginii într-un fișier.

Următorul exemplu de cod arată cum să extrageți imagini dintr-un document și să le salvați ca fișiere:

Puteți descărca fișierul șablon al acestui exemplu din [aici](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Images.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-ExtractImagesToFiles.py" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul eșantion al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Images.docx).

{{% /alert %}}

## Cum se introduce codul de bare pe fiecare pagină a unui Document

Acest exemplu vă demonstrează să adăugați aceleași sau diferite coduri de bare pe toate sau anumite pagini ale unui document Word. Nu există o modalitate directă de a adăuga coduri de bare pe toate paginile unui document, dar puteți utiliza metodele [move_to_section](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_section/), [move_to_header_footer](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_header_footer/) și [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) pentru a vă deplasa la orice secțiune sau anteturi/subsoluri și introduceți imaginile codului de bare după cum puteți vedea în următorul cod.

Următorul exemplu de cod introduce o imagine de cod de bare pe fiecare pagină a unui document.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_images-InsertBarcodeImage.py" >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_images-InsertBarcodeIntoFooter.py" >}}

## Blocați raportul de Aspect al imaginii

Raportul de aspect al unei forme geometrice este raportul dintre dimensiunile sale în diferite dimensiuni. Puteți bloca raportul de aspect al imaginii folosind [aspect_ratio_locked](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/aspect_ratio_locked/). Valoarea implicită a raportului de aspect al formei depinde de [ShapeType](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/). Este `True` pentru [ShapeType.IMAGE](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#image) și `False` pentru alte tipuri de forme.

Următorul exemplu de cod arată cum să lucrați cu raportul de aspect:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

shape = builder.insert_image(docs_base.images_dir + "Logo.jpg")
shape.aspect_ratio_locked = False

doc.save(docs_base.artifacts_dir+"WorkingWithImages.set_aspect_ratio_locked.doc")
{{< /highlight >}}

## Cum să obțineți limitele reale ale formei în puncte

Dacă doriți caseta de delimitare reală a formei așa cum este redată pe pagină, puteți realiza acest lucru utilizând proprietatea [bounds_in_points](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/bounds_in_points/).

Următorul exemplu de cod arată cum să utilizați această proprietate:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

shape = builder.insert_image(docs_base.images_dir + "Logo.jpg")
shape.aspect_ratio_locked = False

print("\nGets the actual bounds of the shape in points.")
rect = shape.get_shape_renderer().bounds_in_points
print(f"{rect.x}, {rect.y}, {rect.width}, {rect.height}")
{{< /highlight >}}

## Decupați Imagini

Decuparea unei imagini se referă de obicei la îndepărtarea părților exterioare nedorite ale unei imagini pentru a ajuta la îmbunătățirea încadrării. Este, de asemenea, utilizat pentru eliminarea unora dintre porțiunile unei imagini pentru a crește focalizarea pe o anumită zonă.

Următorul exemplu de cod arată cum se poate realiza acest lucru folosind Aspose.Words API:

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

## Salvarea imaginilor ca WMF

Aspose.Words oferă funcționalitate pentru a salva toate imaginile disponibile într - un document [WMF](https://docs.fileformat.com/image/wmf/) formatați în timp ce convertiți DOCX în RTF.

Următorul exemplu de cod arată cum să salvați imaginile ca WMF cu RTF opțiuni de salvare:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_rtf_save_options-SavingImagesAsWmf.py" >}}
