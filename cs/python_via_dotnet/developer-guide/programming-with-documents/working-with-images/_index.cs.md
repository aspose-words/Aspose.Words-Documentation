---
title: Práce s obrázky v Python
second_title: Aspose.Words místo Python via .NET
articleTitle: Práce s obrázky
linktitle: Práce s obrázky
description: "Vytvoření a správa obrázků různých formátů v dokumentu pomocí Python."
type: docs
weight: 300
url: /cs/python-net/working-with-images/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words umožňuje uživatelům pracovat s obrazy velmi flexibilním způsobem. V tomto článku můžete prozkoumat pouze některé možnosti práce s obrázky.

## Vkládání obrázku

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) poskytuje několik přetížení [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) metoda, která umožňuje vložit inline nebo plovoucí obraz. Pokud je obraz EMF nebo WMF metafile, bude vložen do dokumentu ve formátu metafile. Všechny ostatní obrázky budou uloženy ve formátu PNG. • **insert_image** metoda může použít obrázky z různých zdrojů:

- Ze složky nebo `URL` průchodem parametru řetězce
- Z potoka průchodem `Stream` parametr
- Z pole byte zadáním parametru byte pole

Pro každý z **insert_image** metody, existují další přetížení, které vám umožní vložit obrázek s těmito možnostmi:
- Inline nebo plovoucí na konkrétní pozici, například, **insert_image**
- Procentní stupnice nebo vlastní velikost, dále [DocumentBuilder.insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) metoda vrací a [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) objekt, který byl právě vytvořen a vložen, takže můžete dále upravovat vlastnosti [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)

### Vložení inline obrazu

Pošlete jeden řetězec představující soubor, který obsahuje obrázek do [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) vložit obrázek do dokumentu jako inline grafiku.

Následující příklad kódu ukazuje, jak vložit inline obrázek na pozici kurzoru do dokumentu:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_image(docs_base.images_dir + "Logo.jpg")

doc.save(docs_base.artifacts_dir+"WorkingWithImages.document_builder_insert_inline_image.doc")
{{< /highlight >}}

### Vkládání plovoucího (Rozhodně umístěného) obrazu

Následující příklad kódu ukazuje, jak vložit plovoucí obrázek ze souboru nebo `URL` ve stanovené poloze a velikosti:

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

## Jak extrahovat obrázky z dokumentu

Všechny obrázky jsou uloženy uvnitř [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) a [Document](https://reference.aspose.com/words/python-net/aspose.words/document/). Chcete-li získat všechny obrázky nebo obrázky, které mají specifický typ z dokumentu, postupujte podle těchto kroků:

- Použij [Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) metoda výběru všech [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) uzly.
- Proniká skrz výsledné kolekce uzlů.
- Zkontroluj to. [Shape.has_image](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/has_image/) Booleanský majetek.
- Extrahování obrazových dat pomocí [Shape.image_data](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/image_data/) majetek.
- Uložit obrazová data do souboru.

Následující příklad kódu ukazuje, jak extrahovat obrázky z dokumentu a uložit je jako soubory:

Můžete si stáhnout soubor šablony tohoto příkladu z [Tady](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Images.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-ExtractImagesToFiles.py" >}}

{{% alert color="primary" %}}

Soubor vzorku tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Images.docx).

{{% /alert %}}

## Jak vložit čárový kód na každou stránku dokumentu

Tento příklad ukazuje, že můžete přidat stejné nebo různé čárové kódy na všechny nebo konkrétní stránky dokumentu Word. Neexistuje žádný přímý způsob, jak přidat čárových kódů na všech stránkách dokumentu, ale můžete použít [move_to_section](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_section/), [move_to_header_footer](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_header_footer/) a [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) metody pro přesun do libovolné sekce nebo hlaviček/noha a vložte obrázky čárového kódu, jak je vidět v následujícím kódu.

Následující příklad kódu Vloží obrázek čárového kódu na každou stránku dokumentu.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_images-InsertBarcodeImage.py" >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_images-InsertBarcodeIntoFooter.py" >}}

## Zamknout Aspect poměr obrázku

Poměr stran geometrického tvaru je poměr jeho velikostí v různých rozměrech. Můžete zamknout poměr stran obrazu pomocí [aspect_ratio_locked](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/aspect_ratio_locked/). Výchozí hodnota poměru stran tvaru závisí na [ShapeType](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/). Je. `True` místo [ShapeType.IMAGE](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#image) a `False` pro jiné typy tvarů.

Následující příklad kódu ukazuje, jak pracovat s poměrem stran:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

shape = builder.insert_image(docs_base.images_dir + "Logo.jpg")
shape.aspect_ratio_locked = False

doc.save(docs_base.artifacts_dir+"WorkingWithImages.set_aspect_ratio_locked.doc")
{{< /highlight >}}

## Jak získat skutečné hranice tvaru v bodech

Pokud chcete skutečný ohraničovací box tvaru vykreslený na stránce, můžete toho dosáhnout pomocí [bounds_in_points](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/bounds_in_points/) majetek.

Následující příklad kódu ukazuje, jak používat tuto vlastnost:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

shape = builder.insert_image(docs_base.images_dir + "Logo.jpg")
shape.aspect_ratio_locked = False

print("\nGets the actual bounds of the shape in points.")
rect = shape.get_shape_renderer().bounds_in_points
print(f"{rect.x}, {rect.y}, {rect.width}, {rect.height}")
{{< /highlight >}}

## Obrázky plodin

Ořezání obrazu se obvykle týká odstranění nežádoucích vnějších částí obrazu, které pomohou zlepšit rámování. Používá se také k odstranění některých částí obrazu pro zvýšení zaměření na určitou oblast.

Následující příklad kódu ukazuje, jak toho dosáhnout pomocí Aspose.Words API:

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

## Ukládání obrázků jako WMF

Aspose.Words poskytuje funkce pro uložení všech dostupných obrázků v dokumentu do [WMF](https://docs.fileformat.com/image/wmf/) formát při převodu DOCX na RTF.

Následující příklad kódu ukazuje, jak uložit obrázky jako WMF s možností RTF uložení:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_rtf_save_options-SavingImagesAsWmf.py" >}}
