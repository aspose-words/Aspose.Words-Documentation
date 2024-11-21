---
title: Práce s obrázky v Java
second_title: Aspose.Words místo Java
articleTitle: Práce s obrázky
linktitle: Práce s obrázky
type: docs
description: "Obrázek tvary v detailech a pokročilé funkce poskytované Aspose.Words místo Java."
weight: 300
url: /cs/java/working-with-images/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words umožňuje uživatelům pracovat s obrázky velmi flexibilním způsobem. V tomto článku můžete prozkoumat pouze některé možnosti práce s obrázky.

## Jak extrahovat obrázky z dokumentu {#how-to-extract-images-from-a-document}

Všechny obrázky jsou uloženy uvnitř **Shape** uzly v dokumentu. Pro získání všech obrázků nebo obrázků, které mají konkrétní typ z dokumentu, postupujte podle těchto kroků:

- Použij [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/shape/#getChildNodes) metoda výběru všech tvarových uzlů.
- Projde skrz výsledné uzel sbírky.
- Zkontroluj to. [hasImage](https://reference.aspose.com/words/java/com.aspose.words/shape/#hasImage) Booleanský majetek.
- Extrahování obrazových dat pomocí [ImageData](https://reference.aspose.com/words/java/com.aspose.words/shape/#getImageData) majetek.
- Uložit obrazová data do souboru.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-ExtractImagesToFiles-ExtractImagesToFiles.java" >}}

## Jak vložit čárový kód na každou stránku dokumentu {#how-to-insert-barcode-on-each-documen-page}

Tento příklad vám umožní přidat stejné nebo různé čárové kódy na všechny nebo konkrétní stránky dokumentu Word. Neexistuje žádný přímý způsob, jak přidat čárových kódů na všech stránkách dokumentu, ale můžete použít [moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int), [moveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int) a [insertImage](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder#insertImage(byte[])) metody pro přesun do kterékoli sekce nebo hlavičky/noha a vložte obrázky čárového kódu, jak je vidět v následujícím kódu

Následující příklad kódu ukazuje, jak vložit obrázek čárového kódu na každou stránku dokumentu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-InsertBarcodeImage-InsertBarcodeImage.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-InsertBarcodeImage-InsertBarcodeIntoFooter.java" >}}

## Zamknout Aspect poměr obrazu {#lock-aspect-ratio-of-image}

Poměr stran geometrického tvaru je poměr jeho velikostí v různých rozměrech. Můžete zamknout poměr stran obrazu pomocí [AspectRatioLocked](https://reference.aspose.com/words/java/com.aspose.words/shape/#getAspectRatioLocked). Výchozí hodnota poměru stran tvaru závisí na [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/). Je. true místo `ShapeType.Image` a false pro jiné typy tvarů.

Následující příklad kódu ukazuje, jak pracovat s poměrem stran:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetImageAspectRatioLocked-DocumentBuilderSetImageAspectRatioLocked.java" >}}

## Jak získat skutečné hranice tvaru v bodech {#how-to-get-actual-bounds-of-shape-in-points}

Pokud chcete skutečný ohraničovací box tvaru vykreslený na stránce, můžete toho dosáhnout pomocí [BoundsInPoints](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getBoundsInPoints) majetek.

Následující příklad kódu ukazuje, jak používat tuto vlastnost:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.java" >}}

## Obrázky plodin

Ořezání obrazu obvykle odkazuje na odstranění nežádoucích vnějších částí obrazu, které pomáhají zlepšit rámování. Používá se také k odstranění některých částí obrazu pro zvýšení zaměření na určitou oblast.

Následující příklad kódu ukazuje, jak toho dosáhnout pomocí Aspose.Words API:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-CropImages-CropImageCall.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-CropImages-CropImage.java" >}}

## Ukládání obrázků jako WMF

Aspose.Words poskytuje funkce pro uložení všech dostupných obrázků v dokumentu do [WMF](https://docs.fileformat.com/image/wmf/)formát při převodu DOCX na RTF.

Následující příklad kódu ukazuje, jak uložit obrázky jako WMF s možností RTF uložit:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.java" >}}
