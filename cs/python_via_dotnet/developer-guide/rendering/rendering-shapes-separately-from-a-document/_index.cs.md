---
title: Tvary oddělené od dokumentu
second_title: Aspose.Words místo Python via .NET
articleTitle: Tvary renderování Samostatně od dokumentu
linktitle: Tvary renderování Samostatně od dokumentu
description: "Extrahovat různé grafické objekty, jako jsou obrázky, textový box obsahující odstavce, nebo tvary šipek, při zpracování dokumentu, a exportovat je do externího umístění pomocí Python."
type: docs
weight: 40
url: /cs/python-net/rendering-shapes-separately-from-a-document/
timestamp: 2024-01-27-14-07-04
---

Při zpracování dokumentů je společným úkolem extrahovat všechny obrázky nalezené v dokumentu a exportovat je na externí místo. Tento úkol se stává jednoduchý s Aspose.Words API, která již poskytuje funkci pro získávání a ukládání obrazových dat. Nicméně, někdy můžete chtít podobně extrahovat jiné typy grafického obsahu, který je reprezentován jiným typem kreslení objektu, například textové pole obsahující odstavce, tvary šipek a malý obrázek. Neexistuje žádný jednoduchý způsob vykreslování tohoto objektu, protože je kombinací jednotlivých prvků obsahu. Můžete se také setkat s případem, kdy obsah byl seskupen do objektu, který vypadá jako jeden obrázek.

Aspose.Words poskytuje funkce pro extrahování tohoto typu obsahu stejným způsobem, jak můžete extrahovat jednoduchý obraz z tvaru kresleného obsahu. Tento článek popisuje, jak využít této funkčnosti k vytvoření tvarů nezávisle na dokumentu.

## Typy tvarů Aspose.Words

Veškerý obsah vrstvy výkresu dokumentu představuje [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) nebo [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) uzel v Aspose.Words Modul objektu dokumentu (DOM). Takovým obsahem mohou být textové schránky, obrázky, AutoShapes, OLE objekty atd. Některá pole jsou také dovážena jako tvary, například `INCLUDEPICTURE` pole.

Jednoduchý obrázek představuje [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) uzel [ShapeType.IMAGE](https://reference.aspose.com/words/python-net/aspose.words.drawing/shadowtype/#image). Tento tvar uzel nemá dětské uzly, ale obrazové údaje obsažené v tomto tvaru uzlu lze získat pomocí [Shape.image_data](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/image_data/) majetek. Naproti tomu tvar může být také tvořen mnoha dětskými uzly. Například tvar textového pole, který představuje [ShapeType.TEXT_BOX](https://reference.aspose.com/words/python-net/aspose.words.drawing/shadowtype/#text_box) majetek, může být tvořen z mnoha uzlů, jako je [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) a [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/). Většina tvarů může zahrnovat [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) a [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) blokové uzly. Jsou to stejné uzly jako ty, které se objevují v hlavním těle. Tvary jsou vždy součástí některého odstavce, buď přímo inline nebo ukotvené na [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), ale pluje všude na stránce dokumentu.

![rendering-shapes-separately-from-a-document_1](/words/python-net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-1.png)

Dokument může také obsahovat tvary, které jsou seskupeny dohromady. Grouping může být povolen Microsoft Word výběrem více objektů a kliknutím na tlačítkoGroupV pravém menu.

![rendering-shapes-separately-from-a-document_2](/words/python-net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-2.png)

In Aspose.Words, Tyto skupiny tvarů jsou zastoupeny [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) Uzel. Lze je také použít stejným způsobem, aby celá skupina byla image.

![rendering-shapes-separately-from-a-document_3](/words/python-net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-3.png)

Formát DOCX může obsahovat speciální typy obrázků, jako jsou diagramy nebo grafy. Tyto tvary jsou také zastoupeny prostřednictvím [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) uzel Aspose.Words, která také poskytuje podobnou metodu pro jejich zobrazování jako obrázky. Podle návrhu nemůže tvar obsahovat jako dítě jiný tvar, pokud tento tvar není obrazem ([ShapeType.IMAGE](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#image)). Například: Microsoft Word nedovoluje vám vložit textové pole do jiného textového pole.

Výše popsané typy tvarů poskytují zvláštní metodu pro zobrazení tvarů prostřednictvím [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) třída. Instance [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) třída se získává pro [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) nebo [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) prostřednictvím [get_shape_renderer](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/get_shape_renderer/) způsob nebo předáním [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) konstruktorovi [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) třída. Tato třída poskytuje přístup k členům, které umožňují vykreslit tvar:

- Soubor na disku
- Stream

{{% alert color="primary" %}}

Při zobrazování [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/),? musí být součástí hierarchie dokumentů. Pokud [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) není součástí stromu dokumentu, pak bude vykreslený výstup prázdný po vyvolání [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) metody.

{{% /alert %}}

## Předkládání souboru nebo proudu

• [save](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/save/) metoda poskytuje přetížení, které vytváří tvar přímo do souboru nebo proudu. Oba přetížení přijmout případ [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) třída, která umožňuje definovat možnosti pro vykreslení tvaru. To funguje stejně jako [Document.save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) metoda. I když je tento parametr vyžadován, můžete předat nulovou hodnotu, s uvedením, že neexistují žádné vlastní možnosti.

Tvar lze exportovat v jakémkoli formátu obrázku uvedeném v [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) vyjmenování. Například obraz může být přeložen jako rastrový obraz, jako je JPEG, a to upřesněním [SaveFormat.JPEG](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#jpeg) počet nebo jako vektorový obraz, jako například EMF upřesněním [SaveFormat.EMF](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#emf).

Příklad kódu níže ilustruje vykreslování tvaru EMF obrazu odděleně od dokumentu a uložení na disk:

{{< highlight python >}}
r = shape.get_shape_renderer()

# Define custom options which control how the image is rendered. Render the shape to the JPEG raster format.
imageOptions = aw.saving.ImageSaveOptions(aw.SaveFormat.EMF)
imageOptions.scale = 1.5
        
# Save the rendered image to disk.
r.save(docs_base.artifacts_dir + "TestFile.RenderToDisk_out.emf", imageOptions)
{{< /highlight >}}

Příklad kódu níže ilustruje vykreslení tvaru obrazu JPEG odděleně od dokumentu a uložení do streamu:

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

• [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) třída vám umožňuje určit různé možnosti, které kontrolují, jak je obraz vykreslen. Výše popsané funkce lze aplikovat stejným způsobem na [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) a [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) uzly.

## Opravovat tvarový obrázek

• [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) třída představuje objekty v kresbové vrstvě, jako je AutoShape, textový box, freeform, OLE objekt, ActiveX ovládání, nebo obrázek. Použití [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) třída, můžete vytvořit nebo upravit tvary v Microsoft Word dokument. Důležitá vlastnost tvaru je jeho [shape_type](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/shape_type/). Tvary různých typů mohou mít různé schopnosti v dokumentu Word. Například pouze obraz a tvary OLE mohou mít obrázky uvnitř sebe, zatímco většina tvarů může mít pouze text.

Následující příklad ukazuje, jak vykreslit obraz Shape do obrazu JPEG odděleně od dokumentu a uložit jej na disk:

{{< highlight python >}}
# Save the rendered image to disk.
shape.get_shape_renderer().save(docs_base.artifacts_dir + "TestFile.RenderShapeImage.jpeg", None)
{{< /highlight >}}

## Získávání velikosti tvaru

• [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) třída také poskytuje funkčnost pro získání velikosti tvaru v pixelech prostřednictvím [get_size_in_pixels](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/get_size_in_pixels/) metoda. Tato metoda akceptuje dva float (Single) parametry, tj. stupnici a DPI, které se používají při výpočtu velikosti tvaru při překreslení tvaru. Metoda vrací **Size** objekt, který obsahuje šířku a výšku vypočtené velikosti. To je užitečné, pokud je požadováno znát velikost vykresleného tvaru předem. • [size_in_points](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/size_in_points/) vlastnost vrací velikost tvaru měřená v bodech. Výsledkem je **SizeF** objekt obsahující šířku a výšku. Také můžete použít [bounds_in_points](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/bounds_in_points/) majetek získat skutečné hranice tvaru.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-GetActualShapeBoundsPoints.py" >}}


