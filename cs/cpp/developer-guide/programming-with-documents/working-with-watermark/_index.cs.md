---
title: Práce s vodoznakem v C++
second_title: Aspose.Words pro C++
articleTitle: Práce s vodoznakem
linktitle: Práce s vodoznakem
type: docs
description: "Manipulace s vodoznakem dokumentu pomocí C++."
weight: 340
url: /cs/cpp/working-with-watermark/
timestamp: 2024-01-30-16-22-34
---

Toto téma pojednává o tom, jak programově pracovat s vodoznakem pomocí Aspose.Words. Vodoznak je obrázek na pozadí, který se zobrazuje za textem v dokumentu. Vodoznak může obsahovat text nebo obrázek reprezentovaný třídou [Watermark](https://reference.aspose.com/words/cpp/aspose.words/watermark/).

## Přidání vodoznaku do dokumentu

V Microsoft Word lze vodoznak snadno vložit do dokumentu pomocí příkazu Vložit vodoznak. Aspose.Words poskytuje třídu [watermark](https://reference.aspose.com/words/cpp/aspose.words/watermark/) pro přidání nebo odebrání vodoznaku v dokumentech. Aspose.Words poskytuje výčet [WatermarkType ](https://reference.aspose.com/words/cpp/aspose.words/)definující tři možné typy vodoznaků (Text, obrázek a žádný), se kterými lze pracovat.

### Přidat Vodoznak Textu

Následující příklad kódu ukazuje, jak vložit textový vodoznak do dokumentu definováním [TextWatermarkOptions](https://reference.aspose.com/words/cpp/aspose.words/textwatermarkoptions/) pomocí metody [SetText](https://reference.aspose.com/words/cpp/aspose.words/watermark/settext/).

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.cpp" >}}

### Přidat Vodoznak Obrázku

Následující příklad kódu ukazuje, jak vložit vodoznak obrázku do dokumentu definováním [ImageWatermarkOptions](https://reference.aspose.com/words/cpp/aspose.words/imagewatermarkoptions/) pomocí metody [SetImage](https://reference.aspose.com/words/cpp/aspose.words/watermark/setimage/).

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.cpp" >}}

Vodoznak lze také vložit pomocí třídy tvarů. Je velmi snadné vložit jakýkoli tvar nebo obrázek do záhlaví nebo zápatí a vytvořit tak vodoznak jakéhokoli představitelného typu. Následující příklad kódu vloží vodoznak do dokumentu Word.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Images-AddWatermark-AddWatermark.cpp" >}}

{{% alert color="primary" %}}

Soubor šablony tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}


## Odstranění vodoznaku z dokumentu

Třída [Watermark](https://reference.aspose.com/words/cpp/aspose.words/watermark/) poskytuje metodu remove pro odstranění vodoznaku z dokumentu.

Následující příklad kódu ukazuje, jak odstranit vodoznak z dokumentů:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkWithWatermark-RemoveWatermarkFromDocument.cpp" >}}

Pokud jsou vodoznaky přidány pomocí objektu třídy [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/), pak pro odstranění vodoznaku z dokumentu musíte během vkládání nastavit pouze název tvaru vodoznaku a poté odstranit tvar vodoznaku přiřazeným názvem.

Následující příklad kódu ukazuje, jak nastavit název tvaru vodoznaku a odstranit jej z dokumentu:

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark->set_Name(u"WaterMark");
{{< /highlight >}}


{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Images-RemoveWatermark-RemoveWatermark.cpp" >}}

## Přidání vodoznaku do buňky tabulky

Někdy je třeba vložit vodoznak / obrázek do buňky tabulky a zobrazit jej mimo tabulku, můžete použít vlastnost [IsLayoutInCell](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_islayoutincell/). Tato vlastnost získá nebo nastaví příznak označující, zda je obrazec zobrazen uvnitř tabulky nebo mimo ni. Všimněte si, že tato vlastnost funguje pouze při optimalizaci dokumentu pro Microsoft Word 2010 pomocí metody [OptimizeFor](https://reference.aspose.com/words/cpp/aspose.words.settings/compatibilityoptions/optimizefor/).

Následující příklad kódu ukazuje, jak tuto vlastnost používat:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cpp" >}}
