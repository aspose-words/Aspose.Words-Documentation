---
title: Werk Met Beelde in Python
second_title: Aspose.Words vir Python via .NET
articleTitle: Werk Met Beelde
linktitle: Werk Met Beelde
description: "Skep en bestuur beelde van verskillende formate in'n dokument met behulp van Python."
type: docs
weight: 300
url: /af/python-net/working-with-images/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words laat gebruikers toe om op'n baie buigsame manier met beelde te werk. In hierdie artikel kan jy slegs sommige van die moontlikhede van werk met beelde verken.

## Voeg'n Prent in

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) bied verskeie oorladings van die die [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) metode wat jou toelaat om'n inlyn of drywende beeld in te voeg. As die beeld'n EMF of WMF metafile is, sal dit in die dokument in metafile-formaat ingevoeg word. Alle ander beelde sal in PNG formaat gestoor word. Die **insert_image** metode kan beelde van verskillende bronne gebruik:

- Van'n lêer of `URL` deur'n string parameter
- Van'n stroom deur'n `Stream` parameter te slaag
- Van'n byte skikking deur'n byte skikking parameter

Vir elk van die **insert_image** metodes, is daar verdere oorladings wat jou toelaat om'n beeld met die volgende opsies in te voeg:
- Inlyn of swaai op'n spesifieke posisie, byvoorbeeld, **insert_image**
- Persentasieskaal of pasgemaakte grootte; verder gee die [DocumentBuilder.insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) - metode'n [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) - voorwerp terug wat pas geskep en ingevoeg is, sodat u die eienskappe van die [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)verder kan verander

### Voeg'n Inlynbeeld in

Gee'n enkele string wat'n lêer verteenwoordig wat die beeld bevat na [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) om die beeld in die dokument as'n inlyngrafiek in te voeg.

Die volgende kode voorbeeld toon hoe om'n inline beeld by die wyser posisie in'n dokument in te voeg:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_image(docs_base.images_dir + "Logo.jpg")

doc.save(docs_base.artifacts_dir+"WorkingWithImages.document_builder_insert_inline_image.doc")
{{< /highlight >}}

### Voeg'n Drywende (Absoluut Geposisioneer) Beeld in

Die volgende kode voorbeeld toon hoe om'n drywende beeld van'n lêer of `URL` in'n gespesifiseerde posisie en grootte in te voeg:

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

## Hoe Om Foto's Uit'n Dokument Te Neem

Alle beelde word gestoor binne [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) nodes in a [Document](https://reference.aspose.com/words/python-net/aspose.words/document/). Volg hierdie stappe om alle beelde of beelde met spesifieke tipe uit die dokument te onttrek:

- Gebruik die [Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) metode om alle [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) nodes te kies.
- Iterate deur die gevolglike node versamelings.
- Gaan die [Shape.has_image](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/has_image/) booleaanse eienskap na.
- Onttrek beelddata met behulp van die [Shape.image_data](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/image_data/) eienskap.
- Stoor beelddata na'n lêer.

Die volgende kode voorbeeld toon hoe om beelde uit'n dokument te onttrek en stoor hulle as lêers:

Jy kan die sjabloon lêer van hierdie voorbeeld aflaai van [hier is](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Images.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-ExtractImagesToFiles.py" >}}

{{% alert color="primary" %}}

U kan die voorbeeldlêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Images.docx).

{{% /alert %}}

## Hoe Om Strepieskode Op elke Bladsy Van'n Dokument In Te Voeg

Hierdie voorbeeld toon dat jy dieselfde of verskillende strepieskode op alle of spesifieke bladsye van'n Word-dokument moet byvoeg. Daar is geen direkte manier om strepieskode op alle bladsye van'n dokument by te voeg nie, maar jy kan die [move_to_section](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_section/), [move_to_header_footer](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_header_footer/) en [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) metodes gebruik om na enige afdeling of koptekste/voetskrifte te beweeg en die strepieskode-beelde in te voeg soos jy in die volgende kode kan sien.

Die volgende kode voorbeeld Voeg'n barcode beeld op elke bladsy van'n dokument.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_images-InsertBarcodeImage.py" >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_images-InsertBarcodeIntoFooter.py" >}}

## Sluit Aspekverhouding Van Beeld

Die aspekverhouding van'n meetkundige vorm is die verhouding van sy groottes in verskillende dimensies. U kan die beeldverhouding met [aspect_ratio_locked](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/aspect_ratio_locked/) sluit. Die standaard waarde van die vorm se aspek verhouding hang af van die [ShapeType](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/). Dit is `True` vir [ShapeType.IMAGE](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#image) en `False` vir ander vorm tipes.

Die volgende kode voorbeeld toon hoe om te werk met aspek verhouding:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

shape = builder.insert_image(docs_base.images_dir + "Logo.jpg")
shape.aspect_ratio_locked = False

doc.save(docs_base.artifacts_dir+"WorkingWithImages.set_aspect_ratio_locked.doc")
{{< /highlight >}}

## Hoe Om Werklike Grense Van Vorm In Punte Te Kry

As jy die werklike grens boks van die vorm wil hê soos op die bladsy weergegee, kan jy dit bereik deur die [bounds_in_points](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/bounds_in_points/) eienskap te gebruik.

Die volgende kode voorbeeld toon hoe om hierdie eiendom te gebruik:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

shape = builder.insert_image(docs_base.images_dir + "Logo.jpg")
shape.aspect_ratio_locked = False

print("\nGets the actual bounds of the shape in points.")
rect = shape.get_shape_renderer().bounds_in_points
print(f"{rect.x}, {rect.y}, {rect.width}, {rect.height}")
{{< /highlight >}}

## Sny Beelde

Die sny van'n beeld verwys gewoonlik na die verwydering van die ongewenste buitenste dele van'n beeld om die raamwerk te verbeter. Dit word ook gebruik vir die verwydering van sommige van die dele van'n beeld om die fokus op'n spesifieke gebied te verhoog.

Die volgende kode voorbeeld toon hoe om dit te bereik met behulp van Aspose.Words API:

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

## Stoor Beelde as WMF

Aspose.Words bied funksionaliteit om al die beskikbare beelde in'n dokument te stoor [WMF](https://docs.fileformat.com/image/wmf/) formaat terwyl die omskakeling van DOCX na RTF.

Die volgende kode voorbeeld toon hoe om beelde te stoor as WMF met RTF stoor opsies:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_rtf_save_options-SavingImagesAsWmf.py" >}}
