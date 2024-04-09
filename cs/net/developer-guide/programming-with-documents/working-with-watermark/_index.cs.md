---
title: Práce s Watermark v C#
second_title: Aspose.Words místo .NET
articleTitle: Práce s vodoznakem
linktitle: Práce s vodoznakem
description: "Dokument vodoznak manipulace pomocí C#."
type: docs
weight: 340
url: /cs/net/working-with-watermark/
---

Toto téma pojednává o tom, jak pracovat programově s vodoznakem pomocí Aspose.Words. Vodoznak je obrázek pozadí, který se zobrazí za textem v dokumentu. Vodoznak může obsahovat text nebo obraz reprezentovaný [Watermark](https://reference.aspose.com/words/net/aspose.words/watermark/) třída.

{{% alert color="primary" %}}

**Zkuste online**

Tuto funkci můžete zkusit s naší [Zdarma online dokument vodoznak](https://products.aspose.app/words/watermark).

{{% /alert %}}

## Přidat vodoznak do dokumentu

In Microsoft Word, vodoznak lze snadno vložit do dokumentu pomocí příkazu Insert Watermark. Aspose.Words poskytuje [watermark](https://reference.aspose.com/words/net/aspose.words/watermark/) třída přidat nebo odstranit vodoznak v dokumentech. Aspose.Words poskytuje [Vodoznak Typ](https://reference.aspose.com/words/net/aspose.words/watermark/type/)číslice definující tři možné typy vodoznaků (Text, Image a None) pro práci

### Přidat text vodoznak

Následující příklad kódu ukazuje, jak vložit textový vodoznak do dokumentu definováním [TextWatermarkOptions](https://reference.aspose.com/words/net/aspose.words/textwatermarkoptions/) s použitím [SetText](https://reference.aspose.com/words/net/aspose.words/watermark/settext/#settext) metoda:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.cs" >}}

### Přidat obrázek vodoznak

Následující příklad kódu ukazuje, jak vložit vodoznak obrázku do dokumentu definováním [ImageWatermarkOptions](https://reference.aspose.com/words/net/aspose.words/imagewatermarkoptions/) s použitím [SetImage](https://reference.aspose.com/words/net/aspose.words/watermark/setimage/#setimage) metoda:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.cs" >}}

Vodoznak lze také vložit pomocí tvarové třídy. Je velmi snadné vložit jakýkoliv tvar nebo obraz do hlavičky nebo zápatí a vytvořit tak vodoznak jakéhokoliv představitelného typu.

Následující příklad kódu vloží vodoznak do dokumentu Word:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Images-AddWatermark-AddWatermark.cs" >}}

{{% alert color="primary" %}}

Soubor vzorku tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}


## Odstranit vodoznak z dokumentu

• [Watermark](https://reference.aspose.com/words/net/aspose.words/watermark/) třída poskytuje metodu odstranění vodoznaku z dokumentu.

Následující příklad kódu ukazuje, jak odstranit vodoznak z dokumentů:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkWithWatermark-RemoveWatermarkFromDocument.cs" >}}

Pokud jsou vodoznaky přidány pomocí [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) třídní objekt pak odstranit vodoznak z dokumentu musíte nastavit pouze název vodoznaku tvaru při vkládání a poté odstranit tvar vodoznaku přiřazeným názvem.

Následující příklad kódu vám ukáže, jak nastavit název tvaru vodoznaku a odstranit jej z dokumentu:

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark.Name("WaterMark");
{{< /highlight >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-RemoveWatermark-RemoveWatermark.cs" >}}

## Přidat vodoznak do stolní buňky

Někdy je třeba vložit vodoznak/obraz do buňky stolu a zobrazit jej mimo stůl, můžete použít [IsLayoutInCell](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/islayoutincell/) majetek. Tato vlastnost dostane nebo nastaví vlajku udávající, zda je tvar zobrazen uvnitř tabulky nebo mimo ni. Všimněte si, že tato vlastnost funguje pouze při optimalizaci dokumentu pro Microsoft Word 2010 pomocí [OptimizeFor](https://reference.aspose.com/words/net/aspose.words.settings/compatibilityoptions/optimizefor/) metoda.

Následující příklad kódu ukazuje, jak používat tuto vlastnost:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cs" >}}
