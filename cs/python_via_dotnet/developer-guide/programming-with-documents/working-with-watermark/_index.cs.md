---
title: Práce s Watermark v Python
second_title: Aspose.Words místo Python via .NET
articleTitle: Práce s vodoznakem
linktitle: Práce s vodoznakem
description: "Vytvoření a správa vodoznaků v dokumentu používajícím Python."
type: docs
weight: 340
url: /cs/python-net/working-with-watermark/
---

Toto téma pojednává o tom, jak pracovat programově s vodoznakem pomocí Aspose.Words. Vodoznak je obrázek pozadí, který se zobrazí za textem v dokumentu. Vodoznak může obsahovat text nebo obraz reprezentovaný [Watermark](https://reference.aspose.com/words/python-net/aspose.words/watermark/) třída.

{{% alert color="primary" %}}

**Zkuste online**

Tuto funkci můžete zkusit s naší [Zdarma online dokument vodoznak](https://products.aspose.app/words/watermark).

{{% /alert %}}

## Jak přidat vodoznak do dokumentu

In Microsoft Word, vodoznak lze snadno vložit do dokumentu pomocí příkazu Insert Watermark. Aspose.Words poskytuje [Watermark](https://reference.aspose.com/words/python-net/aspose.words/watermark/) třída přidat nebo odstranit vodoznak v dokumentech. Aspose.Words poskytuje [WatermarkType](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/) vyjmenování definující tři možné druhy vodoznaků ([TEXT](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/#text), [IMAGE](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/#image), a [NONE](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/#none)) pracovat s

### Přidat text vodoznak

Následující příklad kódu ukazuje, jak vložit textový vodoznak do dokumentu definováním [TextWatermarkOptions](https://reference.aspose.com/words/python-net/aspose.words/textwatermarkoptions/) s použitím [set_text](https://reference.aspose.com/words/python-net/aspose.words/watermark/set_text/) metoda.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-AddTextWatermarkWithSpecificOptions.py" >}}

### Přidat obrázek vodoznak

Následující příklad kódu ukazuje, jak vložit vodoznak obrázku do dokumentu definováním [ImageWatermarkOptions](https://reference.aspose.com/words/python-net/aspose.words/imagewatermarkoptions/) s použitím [set_image](https://reference.aspose.com/words/python-net/aspose.words/watermark/set_image/) metoda:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-AddImageWatermarkWithSpecificOptions.py" >}}

Vodoznak lze také vložit pomocí tvarové třídy. Je velmi snadné vložit jakýkoliv tvar nebo obraz do hlavičky nebo zápatí a vytvořit tak vodoznak jakéhokoliv představitelného typu.

Následující příklad kódu vloží vodoznak do dokumentu Word:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-AddWatermark.py" >}}

{{% alert color="primary" %}}

Můžete si stáhnout soubor šablony tohoto příkladu z [Tady](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx)

{{% /alert %}}


## Odstranit vodoznak z dokumentu

• [Watermark](https://reference.aspose.com/words/python-net/aspose.words/watermark/) třída poskytuje metodu odstranění vodoznaku z dokumentu.

Následující příklad kódu ukazuje, jak odstranit vodoznak z dokumentů:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-RemoveWatermarkFromDocument.py" >}}

Pokud jsou vodoznaky přidány pomocí [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) třídní objekt pak odstranit vodoznak z dokumentu musíte nastavit pouze název vodoznaku tvaru při vkládání a poté odstranit tvar vodoznaku přiřazeným názvem.

Následující příklad kódu vám ukáže, jak nastavit název tvaru vodoznaku a odstranit jej z dokumentu:

{{< highlight python >}}
# Set name to be able to remove it afterwards
watermark.name = "WaterMark"
{{< /highlight >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-RemoveWatermark.py" >}}

## Přidat vodoznak v tabulce buňky

Někdy je třeba vložit vodoznak/obraz do buňky stolu a zobrazit jej mimo stůl, můžete použít [is_layout_in_cell](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/is_layout_in_cell/) majetek. Tato vlastnost dostane nebo nastaví vlajku udávající, zda je tvar zobrazen uvnitř tabulky nebo mimo ni. Všimněte si, že tato vlastnost funguje pouze při optimalizaci dokumentu pro Microsoft Word 2010 pomocí [optimize_for](https://reference.aspose.com/words/python-net/aspose.words.settings/compatibilityoptions/optimize_for/) metoda.

Následující příklad kódu ukazuje, jak používat tuto vlastnost:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-LayoutInCell.py" >}}
