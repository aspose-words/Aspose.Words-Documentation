---
title: Werken met afbeeldingen in Python
second_title: Aspose.Words voor Python via .NET
articleTitle: Werken met afbeeldingen
linktitle: Werken met afbeeldingen
description: "Afbeeldingen van verschillende formaten aanmaken en beheren in een document met behulp van Python."
type: docs
weight: 300
url: /nl/python-net/working-with-images/
---

Aspose.Words stelt gebruikers in staat om met beelden te werken op een zeer flexibele manier. In dit artikel kunt u slechts enkele mogelijkheden verkennen om met beelden te werken.

## Een afbeelding invoegen

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) zorgt voor meerdere overbelasting van de [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) methode waarmee u een inline of zwevend beeld kunt invoegen. Als de afbeelding een EMF- of WMF-metafile is, wordt deze in het document in metafile formaat ingevoegd. Alle andere afbeeldingen worden opgeslagen in PNG-formaat. De **afbeelding invoegen** methode kan afbeeldingen uit verschillende bronnen gebruiken:

- Van een bestand of `URL` door een tekenreeksparameter door te geven
- Van een stroom door een `Stream` parameter
- Van een bytearray door een bytearray parameter door te geven

Voor elk van de **afbeelding invoegen** methoden, er zijn verdere overbelastingen die u toelaten om een afbeelding met de volgende opties:
- Inline of drijvend op een specifieke positie, bijvoorbeeld, **afbeelding invoegen**
- Procentuele schaal of aangepaste grootte; [DocumentBuilder.insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) methode geeft a [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) object dat net is aangemaakt en ingevoegd zodat u de eigenschappen van de [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)

### Een afbeelding invoegen

Geef een enkele tekenreeks door die een bestand weergeeft dat de afbeelding bevat [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) de afbeelding in het document in te voegen als inline grafisch.

Het volgende voorbeeld van code laat zien hoe je een inline afbeelding op de cursorpositie in een document invoegt:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_image(docs_base.images_dir + "Logo.jpg")

doc.save(docs_base.artifacts_dir+"WorkingWithImages.document_builder_insert_inline_image.doc")
{{< /highlight >}}

### Een drijvende afbeelding invoegen (Absoluut gepositioneerd)

Het volgende voorbeeld van code laat zien hoe u een zwevende afbeelding van een bestand of `URL` op een bepaalde positie en grootte:

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

## Afbeeldingen uit een document halen

Alle afbeeldingen worden binnen opgeslagen [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) nodes in a [Document](https://reference.aspose.com/words/python-net/aspose.words/document/). Volg deze stappen om alle afbeeldingen of afbeeldingen met een specifiek type uit het document te halen:

- Gebruik de [Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) methode om alles te selecteren [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) knooppunten.
- Iterate door resulterende node collecties.
- Controleer de [Shape.has_image](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/has_image/) Booleaans eigendom.
- Uitpakken afbeelding gegevens met behulp van de [Shape.image_data](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/image_data/) eigendom.
- Afbeeldingsgegevens opslaan in een bestand.

Het volgende voorbeeld van code laat zien hoe je afbeeldingen uit een document haalt en ze opslaat als bestanden:

U kunt het sjabloonbestand van dit voorbeeld downloaden van [Hier](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Images.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-ExtractImagesToFiles.py" >}}

{{% alert color="primary" %}}

U kunt het voorbeeldbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Images.docx).

{{% /alert %}}

## Barcode op elke pagina van een document invoegen

Dit voorbeeld toont aan dat u dezelfde of verschillende barcodes toevoegt op alle of specifieke pagina's van een Word-document. Er is geen directe manier om barcodes toe te voegen op alle pagina's van een document, maar u kunt de [move_to_section](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_section/), [move_to_header_footer](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_header_footer/) en [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) methoden om te verplaatsen naar een sectie of headers/voeters en voeg de barcode afbeeldingen zoals je kunt zien in de volgende code.

Het volgende codevoorbeeld Voegt een barcode afbeelding toe op elke pagina van een document.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_images-InsertBarcodeImage.py" >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_images-InsertBarcodeIntoFooter.py" >}}

## Beeldverhouding vergrendelen

De beeldverhouding van een geometrische vorm is de verhouding van zijn afmetingen in verschillende afmetingen. U kunt de beeldverhouding vergrendelen met behulp van [aspect_ratio_locked](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/aspect_ratio_locked/). De standaardwaarde van de beeldverhouding van de vorm hangt af van de [ShapeType](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/). Het is `True` voor [ShapeType.IMAGE](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#image) en `False` voor andere vormen.

Het volgende voorbeeld van code laat zien hoe te werken met aspect ratio:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

shape = builder.insert_image(docs_base.images_dir + "Logo.jpg")
shape.aspect_ratio_locked = False

doc.save(docs_base.artifacts_dir+"WorkingWithImages.set_aspect_ratio_locked.doc")
{{< /highlight >}}

## Hoe feitelijke grenzen van vorm in punten te krijgen

Als u wilt dat de werkelijke gebonden doos van de vorm zoals weergegeven op de pagina, kunt u dit bereiken met behulp van de [bounds_in_points](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/bounds_in_points/) eigendom.

Het volgende voorbeeld van code laat zien hoe deze eigenschap te gebruiken:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

shape = builder.insert_image(docs_base.images_dir + "Logo.jpg")
shape.aspect_ratio_locked = False

print("\nGets the actual bounds of the shape in points.")
rect = shape.get_shape_renderer().bounds_in_points
print(f"{rect.x}, {rect.y}, {rect.width}, {rect.height}")
{{< /highlight >}}

## Afbeeldingen bijsnijden

Het verzamelen van een afbeelding verwijst meestal naar het verwijderen van de ongewenste buitendelen van een afbeelding om te helpen bij het verbeteren van de lijst. Het wordt ook gebruikt voor het verwijderen van sommige delen van een afbeelding om de focus op een bepaald gebied te verhogen.

Het volgende voorbeeld toont hoe dit te bereiken met behulp van Aspose.Words API:

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

## Afbeeldingen opslaan als WMF

Aspose.Words biedt functionaliteit om alle beschikbare afbeeldingen op te slaan in een document aan [WMF](https://docs.fileformat.com/image/wmf/) formaat tijdens het omzetten van DOCX naar RTF.

Het volgende voorbeeld van code laat zien hoe u afbeeldingen als WMF kunt opslaan met RTF-opslaanopties:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_rtf_save_options-SavingImagesAsWmf.py" >}}
