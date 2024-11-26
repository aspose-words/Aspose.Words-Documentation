---
title: Praca z obrazami w formacie Python
second_title: Aspose.Words dla Python via .NET
articleTitle: Praca z obrazami
linktitle: Praca z obrazami
description: "Twórz i zarządzaj obrazami w różnych formatach w dokumencie za pomocą Python."
type: docs
weight: 300
url: /pl/python-net/working-with-images/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words pozwala użytkownikom pracować z obrazami w bardzo elastyczny sposób. W tym artykule możesz poznać tylko niektóre możliwości pracy z obrazami.

## Wstawianie obrazu

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) zapewnia kilka przeciążeń metody [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/), które umożliwiają wstawienie obrazu wbudowanego lub pływającego. Jeśli obraz jest metaplikiem EMF lub WMF, zostanie wstawiony do dokumentu w formacie metapliku. Wszystkie pozostałe obrazy będą przechowywane w formacie PNG. Metoda **Umieść obraz** może wykorzystywać obrazy z różnych źródeł:

- Z pliku lub `URL`, przekazując parametr typu string
- Ze strumienia poprzez przekazanie parametru `Stream`
- Z tablicy bajtów poprzez przekazanie parametru tablicy bajtów

Dla każdej z metod **Umieść obraz** istnieją dalsze przeciążenia, które umożliwiają wstawienie obrazu z następującymi opcjami:
- Inline lub pływający w określonej pozycji, na przykład **Umieść obraz**
- Skala procentowa lub rozmiar niestandardowy; ponadto metoda [DocumentBuilder.insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) zwraca obiekt [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/), który właśnie został utworzony i wstawiony, dzięki czemu można dalej modyfikować właściwości [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)

### Wstawianie obrazu wbudowanego

Przekaż pojedynczy ciąg reprezentujący plik zawierający obraz do [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/), aby wstawić obraz do dokumentu jako grafikę wstawioną.

Poniższy przykład kodu pokazuje, jak wstawić obraz osadzony w pozycji kursora do dokumentu:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_image(docs_base.images_dir + "Logo.jpg")

doc.save(docs_base.artifacts_dir+"WorkingWithImages.document_builder_insert_inline_image.doc")
{{< /highlight >}}

### Wstawianie pływającego (całkowicie ustawionego) obrazu

Poniższy przykład kodu pokazuje, jak wstawić pływający obraz z pliku lub `URL` w określonej pozycji i rozmiarze:

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

## Jak wyodrębnić obrazy z dokumentu

Wszystkie obrazy są przechowywane w węzłach [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) w formacie [Document](https://reference.aspose.com/words/python-net/aspose.words/document/). Aby wyodrębnić z dokumentu wszystkie obrazy lub obrazy określonego typu, wykonaj następujące kroki:

- Użyj metody [Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/), aby wybrać wszystkie węzły [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/).
- Iteruj po wynikowych kolekcjach węzłów.
- Sprawdź właściwość logiczną [Shape.has_image](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/has_image/).
- Wyodrębnij dane obrazu za pomocą właściwości [Shape.image_data](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/image_data/).
- Zapisz dane obrazu w pliku.

Poniższy przykład kodu pokazuje, jak wyodrębnić obrazy z dokumentu i zapisać je jako pliki:

Możesz pobrać plik szablonu tego przykładu z [Tutaj](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Images.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-ExtractImagesToFiles.py" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Images.docx).

{{% /alert %}}

## Jak wstawić kod kreskowy na każdej stronie dokumentu

Ten przykład pokazuje, jak dodać te same lub różne kody kreskowe na wszystkich lub określonych stronach dokumentu programu Word. Nie ma bezpośredniego sposobu dodawania kodów kreskowych na wszystkich stronach dokumentu, ale można użyć metod [move_to_section](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_section/), [move_to_header_footer](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_header_footer/) i [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/), aby przejść do dowolnej sekcji lub nagłówka/stopki i wstawić obrazy kodów kreskowych, jak widać w poniższym kodzie.

Poniższy przykład kodu wstawia obraz kodu kreskowego na każdej stronie dokumentu.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_images-InsertBarcodeImage.py" >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_images-InsertBarcodeIntoFooter.py" >}}

## Zablokuj współczynnik proporcji obrazu

Proporcje kształtu geometrycznego to stosunek jego rozmiarów w różnych wymiarach. Możesz zablokować proporcje obrazu za pomocą [aspect_ratio_locked](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/aspect_ratio_locked/). Domyślna wartość współczynnika proporcji kształtu zależy od [ShapeType](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/). Jest to `True` dla [ShapeType.IMAGE](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#image) i `False` dla innych typów kształtów.

Poniższy przykład kodu pokazuje, jak pracować ze współczynnikiem proporcji:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

shape = builder.insert_image(docs_base.images_dir + "Logo.jpg")
shape.aspect_ratio_locked = False

doc.save(docs_base.artifacts_dir+"WorkingWithImages.set_aspect_ratio_locked.doc")
{{< /highlight >}}

## Jak uzyskać rzeczywiste granice kształtu w punktach

Jeśli chcesz, aby rzeczywista ramka ograniczająca kształt była renderowana na stronie, możesz to osiągnąć za pomocą właściwości [bounds_in_points](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/bounds_in_points/).

Poniższy przykład kodu pokazuje, jak używać tej właściwości:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

shape = builder.insert_image(docs_base.images_dir + "Logo.jpg")
shape.aspect_ratio_locked = False

print("\nGets the actual bounds of the shape in points.")
rect = shape.get_shape_renderer().bounds_in_points
print(f"{rect.x}, {rect.y}, {rect.width}, {rect.height}")
{{< /highlight >}}

## Przytnij obrazy

Kadrowanie obrazu zwykle oznacza usunięcie niepożądanych zewnętrznych części obrazu w celu poprawy kadrowania. Służy również do usuwania niektórych części obrazu w celu zwiększenia ostrości na określonym obszarze.

Poniższy przykład kodu pokazuje, jak to osiągnąć za pomocą Aspose.Words API:

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

## Zapisywanie obrazów w formacie WMF

Aspose.Words zapewnia funkcję zapisywania wszystkich dostępnych obrazów w dokumencie do formatu [WMF](https://docs.fileformat.com/image/wmf/) podczas konwersji DOCX do RTF.

Poniższy przykład kodu pokazuje, jak zapisywać obrazy w formacie WMF z opcjami zapisywania w formacie RTF:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_rtf_save_options-SavingImagesAsWmf.py" >}}
