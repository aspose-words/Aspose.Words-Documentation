---
title: Práce s Watermark v Java
second_title: Aspose.Words místo Java
articleTitle: Práce s vodoznakem
linktitle: Práce s vodoznakem
type: docs
description: "Manipulace s vodoznakem pomocí dokumentu Java."
weight: 70
url: /cs/java/working-with-watermark/
timestamp: 2024-01-27-14-07-04
---

Toto téma pojednává o tom, jak pracovat programově s vodoznakem pomocí Aspose.Words. Vodoznak je obrázek pozadí, který se zobrazí za textem v dokumentu. Vodoznak může obsahovat text nebo obraz reprezentovaný [Watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) třída.

{{% alert color="primary" %}}

**Zkuste online**

Tuto funkci můžete zkusit s naší [Zderma online dokument vodoznak](https://products.aspose.app/words/watermark).

{{% /alert %}}

## Přidat vodoznak do dokumentu

In Microsoft Word, vodoznak lze snadno vložit do dokumentu pomocí příkazu Insert Watermark. Aspose.Words poskytuje [watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) třída přidat nebo odstranit vodoznak v dokumentech. Aspose.Words poskytuje [Vodoznak Typ](https://reference.aspose.com/words/java/com.aspose.words/watermarktype/)číslice definující tři možné typy vodoznaků (Text, Image a None) pro práci

### Přidat text vodoznak

Následující příklad kódu ukazuje, jak vložit textový vodoznak do dokumentu definováním [TextWatermarkOptions](https://reference.aspose.com/words/java/com.aspose.words/textwatermarkoptions/) s použitím [SetText](https://reference.aspose.com/words/java/com.aspose.words/watermark/#setText-java.lang.String) metoda:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.java" >}}

### Přidat obrázek vodoznak

Následující příklad kódu ukazuje, jak vložit vodoznak obrázku do dokumentu definováním [ImageWatermarkOptions](https://reference.aspose.com/words/java/com.aspose.words/imagewatermarkoptions/) s použitím [SetImage](https://reference.aspose.com/words/java/com.aspose.words/watermark/#setImage-java.awt.image.BufferedImage) metoda:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.java" >}}

Vodoznak lze také vložit pomocí tvarové třídy. Je velmi snadné vložit jakýkoliv tvar nebo obraz do hlavičky nebo zápatí a vytvořit tak vodoznak jakéhokoliv představitelného typu.

Následující příklad kódu vloží vodoznak do dokumentu Word:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-AddWatermarkToADocument-AddWatermarkToADocument.java" >}}

{{% alert color="primary" %}}

Soubor vzorku tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}


## Odstranit vodoznak z dokumentu

The [Watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) třída poskytuje `Remove` způsob odstranění vodoznaku z dokumentu.

Následující příklady kódů ukazují, jak odstranit vodoznak z dokumentů:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-RemoveWatermarkFromDocument.java" >}}

Pro odstranění vodoznaku z dokumentu musíte při vkládání nastavit pouze název vodoznaku a poté odstranit tvar vodoznaku přiřazeným názvem.

Následující příklad kódu vám ukáže, jak nastavit název tvaru vodoznaku a odstranit jej z dokumentu:

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark.Name("WaterMark");
{{< /highlight >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-RemoveWatermark-RemoveWatermark.java" >}}

## Přidat vodoznak do stolní buňky

Někdy je třeba vložit vodoznak/obraz do buňky stolu a zobrazit jej mimo stůl, můžete použít [IsLayoutInCell](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#isLayoutInCell-boolean) majetek. Tato vlastnost dostane nebo nastaví vlajku udávající, zda je tvar zobrazen uvnitř tabulky nebo mimo ni. Všimněte si, že tato vlastnost funguje pouze při optimalizaci dokumentu pro Microsoft Word 2010 pomocí [OptimizeFor](https://reference.aspose.com/words/java/com.aspose.words/compatibilityoptions/#optimizeFor-int) metoda

Následující příklad kódu ukazuje, jak používat tuto vlastnost:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.java" >}}
