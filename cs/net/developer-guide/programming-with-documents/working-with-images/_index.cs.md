---
title: Práce s obrázky v C#
second_title: Aspose.Words místo .NET
articleTitle: Práce s obrázky
linktitle: Práce s obrázky
description: "Obrázek tvary v detailech a pokročilé funkce poskytované Aspose.Words místo .NET."
type: docs
weight: 300
url: /cs/net/working-with-images/
timestamp: 2024-05-02-11-51-44
---

Aspose.Words umožňuje uživatelům pracovat s obrazy velmi flexibilním způsobem. V tomto článku můžete prozkoumat pouze některé možnosti práce s obrázky.

## Jak vložit obrázek {#insert-an-image}

[DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) poskytuje několik přetížení [InsertImage](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertimage/) metoda, která umožňuje vložit inline nebo plovoucí obraz. Pokud je obraz EMF nebo WMF metafile, bude vložen do dokumentu ve formátu metafile. Všechny ostatní obrázky budou uloženy ve formátu PNG. • **InsertImage** metoda může použít obrázky z různých zdrojů:

- Ze složky nebo `URL` a `String` parametr [InsertImage](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertimage/)
- Z potoka průchodem `Stream` parametr **InsertImage**
- Z Obrazového objektu zadáním parametru Obrázek **InsertImage**
- Z pole byte zadáním parametru byte pole **InsertImage**

Pro každý z **InsertImage** metody, existují další přetížení, které vám umožní vložit obrázek s těmito možnostmi:
- Inline nebo plovoucí na konkrétní pozici, například, **InsertImage**
- Procentní nebo vlastní velikost, například, **InsertImage**; **InsertImage** metoda vrací a [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) objekt, který byl právě vytvořen a vložen, takže můžete dále upravovat vlastnosti Tvaru

### Jak vložit inline obrázek {#insert-an-inline-image}

Pošlete jeden řetězec představující soubor, který obsahuje obrázek do **InsertImage** vložit obrázek do dokumentu jako inline grafiku

Následující příklad kódu ukazuje, jak vložit inline obrázek na pozici kurzoru do dokumentu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertInlineImage.cs" >}}

### Jak vložit plovoucí obrázek {#insert-a-floating-image}

Následující příklad kódu ukazuje, jak vložit plovoucí obrázek ze souboru nebo `URL` ve stanovené poloze a velikosti:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertFloatingImage.cs" >}}

## Jak extrahovat obrázky z dokumentu {#how-to-extract-images-from-a-document}

Všechny obrázky jsou uloženy uvnitř **Shape** a [Document](https://reference.aspose.com/words/net/aspose.words/document/). Chcete-li získat všechny obrázky nebo obrázky, které mají specifický typ z dokumentu, postupujte podle těchto kroků:

- Použij [GetChildNodes](https://reference.aspose.com/words/net/aspose.words/compositenode/getchildnodes/) metoda výběru všech **Shape** uzly.
- Proniká skrz výsledné kolekce uzlů.
- Zkontroluj to. [HasImage](https://reference.aspose.com/words/net/aspose.words.drawing/shape/hasimage/) Booleanský majetek.
- Extrahování obrazových dat pomocí [ImageData](https://reference.aspose.com/words/net/aspose.words.drawing/shape/imagedata/) majetek.
- Uložit obrazová data do souboru.

Následující příklad kódu ukazuje, jak extrahovat obrázky z dokumentu a uložit je jako soubory:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-ExtractImagesToFiles-ExtractImagesToFiles.cs" >}}

{{% alert color="primary" %}}

Soubor vzorku tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Images.docx).

{{% /alert %}}

## Jak vložit čárový kód na každou stránku dokumentu {#how-to-insert-barcode-on-each-documen-page}

Tento příklad ukazuje, že můžete přidat stejné nebo různé čárové kódy na všechny nebo konkrétní stránky dokumentu Word. Neexistuje žádný přímý způsob, jak přidat čárových kódů na všech stránkách dokumentu, ale můžete použít **MoveToSection**, **MoveToHeaderFooter** a **InsertImage** metody pro přesun do libovolné sekce nebo hlaviček/noha a vložte obrázky čárového kódu, jak je vidět v následujícím kódu.

Následující příklad kódu ukazuje, jak vložit obrázek čárového kódu na každou stránku dokumentu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-InsertBarcodeImage-InsertBarcodeImage.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-InsertBarcodeImage-InsertBarcodeIntoFooter.cs" >}}

## Zamknout Aspect poměr obrázku {#lock-aspect-ratio-of-image}

Poměr stran geometrického tvaru je poměr jeho velikostí v různých rozměrech. Můžete zamknout poměr stran obrazu pomocí [AspectRatioLocked](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/aspectratiolocked/). Výchozí hodnota poměru stran tvaru závisí na [ShapeType](https://reference.aspose.com/words/net/aspose.words.drawing/shapetype/). Je. *true* místo `ShapeType.Image` a *false* pro jiné typy tvarů.

Následující příklad kódu ukazuje, jak pracovat s poměrem stran:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.cs" >}}

## Jak získat skutečné hranice tvaru v bodech {#how-to-get-actual-bounds-of-shape-in-points}

Pokud chcete skutečný ohraničovací box tvaru vykreslený na stránce, můžete toho dosáhnout pomocí [BoundsInPoints](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/boundsinpoints/) majetek.

Následující příklad kódu ukazuje, jak používat tuto vlastnost:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.cs" >}}

## Obrázky plodin {#crop-images}

Ořezání obrazu se obvykle týká odstranění nežádoucích vnějších částí obrazu, které pomohou zlepšit rámování. Používá se také k odstranění některých částí obrazu pro zvýšení zaměření na určitou oblast.

Následující příklad kódu ukazuje, jak toho dosáhnout pomocí Aspose.Words API:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-CropImages-CropImageCall.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-CropImages-CropImage.cs" >}}

## Uložit obrázky jako WMF {#save-images-as-wmf}

Aspose.Words poskytuje funkce pro uložení všech dostupných obrázků v dokumentu do [WMF](https://docs.fileformat.com/image/wmf/)formát při převodu DOCX na RTF.

Následující příklad kódu ukazuje, jak uložit obrázky jako WMF s možností RTF uložení:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.cs" >}}
