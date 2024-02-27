---
title: Arbeiten mit Bildern in Python
second_title: Aspose.Words für Python via .NET
articleTitle: Arbeiten mit Bildern
linktitle: Arbeiten mit Bildern
description: "Erstellen und verwalten Sie Bilder verschiedener Formate in einem Dokument mit Python."
type: docs
weight: 300
url: /de/python-net/working-with-images/
---

Aspose.Words ermöglicht Benutzern ein sehr flexibles Arbeiten mit Bildern. In diesem Artikel können Sie nur einige der Möglichkeiten der Arbeit mit Bildern erkunden.

## Ein Bild einfügen

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) bietet mehrere Überladungen der [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/)-Methode, mit denen Sie ein Inline- oder Floating-Bild einfügen können. Wenn es sich bei dem Bild um eine EMF- oder WMF-Metadatei handelt, wird es im Metadateiformat in das Dokument eingefügt. Alle anderen Bilder werden im PNG-Format gespeichert. Die **Bild einfügen**-Methode kann Bilder aus verschiedenen Quellen verwenden:

- Aus einer Datei oder `URL` durch Übergabe eines String-Parameters
- Aus einem Stream durch Übergabe eines `Stream`-Parameters
- Aus einem Byte-Array durch Übergabe eines Byte-Array-Parameters

Für jede der **Bild einfügen**-Methoden gibt es weitere Überladungen, die es Ihnen ermöglichen, ein Bild mit den folgenden Optionen einzufügen:
- Inline oder schwebend an einer bestimmten Position, zum Beispiel **Bild einfügen**
- Prozentskala oder benutzerdefinierte Größe; Darüber hinaus gibt die [DocumentBuilder.insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/)-Methode ein [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)-Objekt zurück, das gerade erstellt und eingefügt wurde, sodass Sie die Eigenschaften des [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) weiter ändern können

### Einfügen eines Inline-Bildes

Übergeben Sie eine einzelne Zeichenfolge, die eine Datei darstellt, die das Bild enthält, an [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/), um das Bild als Inline-Grafik in das Dokument einzufügen.

Das folgende Codebeispiel zeigt, wie man ein Inline-Bild an der Cursorposition in ein Dokument einfügt:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_image(docs_base.images_dir + "Logo.jpg")

doc.save(docs_base.artifacts_dir+"WorkingWithImages.document_builder_insert_inline_image.doc")
{{< /highlight >}}

### Einfügen eines schwebenden (absolut positionierten) Bildes

Das folgende Codebeispiel zeigt, wie man ein schwebendes Bild aus einer Datei oder `URL` an einer angegebenen Position und Größe einfügt:

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

## So extrahieren Sie Bilder aus einem Dokument

Alle Bilder werden in [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)-Knoten in einem [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) gespeichert. Gehen Sie folgendermaßen vor, um alle Bilder oder Bilder mit einem bestimmten Typ aus dem Dokument zu extrahieren:

- Verwenden Sie die [Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/)-Methode, um alle [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)-Knoten auszuwählen.
– Durchlaufen Sie die resultierenden Knotensammlungen.
- Überprüfen Sie die boolesche [Shape.has_image](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/has_image/)-Eigenschaft.
- Extrahieren Sie Bilddaten mithilfe der [Shape.image_data](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/image_data/)-Eigenschaft.
- Bilddaten in einer Datei speichern.

Das folgende Codebeispiel zeigt, wie man Bilder aus einem Dokument extrahiert und als Dateien speichert:

Sie können die Vorlagendatei dieses Beispiels von [Hier](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Images.docx) herunterladen.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-ExtractImagesToFiles.py" >}}

{{% alert color="primary" %}}

Sie können die Beispieldatei dieses Beispiels von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Images.docx) herunterladen.

{{% /alert %}}

## So fügen Sie Barcodes auf jeder Seite eines Dokuments ein

Dieses Beispiel zeigt, wie Sie auf allen oder bestimmten Seiten eines Word-Dokuments dieselben oder unterschiedliche Barcodes hinzufügen. Es gibt keine direkte Möglichkeit, Barcodes auf allen Seiten eines Dokuments hinzuzufügen, aber Sie können die Methoden [move_to_section](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_section/), [move_to_header_footer](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_header_footer/) und [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) verwenden, um zu einem beliebigen Abschnitt oder Kopf-/Fußzeilen zu wechseln und die Barcode-Bilder einzufügen, wie Sie im folgenden Code sehen können.

Das folgende Codebeispiel fügt auf jeder Seite eines Dokuments ein Barcodebild ein.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_images-InsertBarcodeImage.py" >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_images-InsertBarcodeIntoFooter.py" >}}

## Seitenverhältnis des Bildes sperren

Das Seitenverhältnis einer geometrischen Form ist das Verhältnis ihrer Größen in verschiedenen Dimensionen. Sie können das Seitenverhältnis des Bildes mit [aspect_ratio_locked](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/aspect_ratio_locked/) sperren. Der Standardwert des Seitenverhältnisses der Form hängt vom [ShapeType](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/) ab. Es ist `True` für [ShapeType.IMAGE](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#image) und `False` für andere Formtypen.

Das folgende Codebeispiel zeigt, wie mit dem Seitenverhältnis gearbeitet wird:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

shape = builder.insert_image(docs_base.images_dir + "Logo.jpg")
shape.aspect_ratio_locked = False

doc.save(docs_base.artifacts_dir+"WorkingWithImages.set_aspect_ratio_locked.doc")
{{< /highlight >}}

## So erhalten Sie tatsächliche Formgrenzen in Punkten

Wenn Sie möchten, dass der tatsächliche Begrenzungsrahmen der Form auf der Seite gerendert wird, können Sie dies mithilfe der [bounds_in_points](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/bounds_in_points/)-Eigenschaft erreichen.

Das folgende Codebeispiel zeigt, wie diese Eigenschaft verwendet wird:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

shape = builder.insert_image(docs_base.images_dir + "Logo.jpg")
shape.aspect_ratio_locked = False

print("\nGets the actual bounds of the shape in points.")
rect = shape.get_shape_renderer().bounds_in_points
print(f"{rect.x}, {rect.y}, {rect.width}, {rect.height}")
{{< /highlight >}}

## Bilder zuschneiden

Unter dem Zuschneiden eines Bildes versteht man in der Regel das Entfernen unerwünschter äußerer Teile eines Bildes, um den Bildausschnitt zu verbessern. Es wird auch zum Entfernen einiger Teile eines Bildes verwendet, um den Fokus auf einen bestimmten Bereich zu erhöhen.

Das folgende Codebeispiel zeigt, wie dies mit Aspose.Words API erreicht wird:

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

## Bilder als WMF speichern

Aspose.Words bietet Funktionen zum Speichern aller verfügbaren Bilder in einem Dokument im [WMF](https://docs.fileformat.com/image/wmf/)-Format bei der Konvertierung von DOCX in RTF.

Das folgende Codebeispiel zeigt, wie Bilder als WMF mit RTF-Speicheroptionen gespeichert werden:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_rtf_save_options-SavingImagesAsWmf.py" >}}
