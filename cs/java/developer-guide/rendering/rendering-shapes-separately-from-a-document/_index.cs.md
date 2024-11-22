---
title: Obnovovací tvary Samostatně od dokumentu
second_title: Aspose.Words místo Java
articleTitle: Obnovovací tvary Samostatně od dokumentu
linktitle: Obnovovací tvary Samostatně od dokumentu
description: "Extrahovat různé grafické objekty, jako jsou obrázky, textové pole obsahující odstavce, nebo tvary šipek, při zpracování dokumentu, a exportovat je do externího umístění pomocí Java."
type: docs
weight: 40
url: /cs/java/rendering-shapes-separately-from-a-document/
timestamp: 2024-01-27-14-07-04
---

Při zpracování dokumentů je společným úkolem extrahovat všechny obrázky nalezené v dokumentu a exportovat je na vnější místo. Tento úkol se stává jednoduchý s Aspose.Words API, která již poskytuje funkci pro získávání a ukládání obrazových dat. Někdy však můžete chtít podobně extrahovat jiné typy grafického obsahu, které jsou reprezentovány jiným typem kreslícího objektu, například textový rámeček obsahující odstavce, tvary šipek a malý obraz. Neexistuje jednoduchý způsob vykreslování tohoto objektu, protože se jedná o kombinaci jednotlivých prvků obsahu. Můžete se také setkat s případem, kdy obsah byl seskupen do objektu, který vypadá jako jeden obrázek.

Aspose.Words poskytuje funkce pro extrahování tohoto typu obsahu stejným způsobem, jak můžete extrahovat jednoduchý obraz z tvaru kresleného obsahu. Tento článek popisuje, jak využít této funkce k vytvoření tvarů nezávisle na dokumentu.

## Typy tvarů Aspose.Words

Veškerý obsah v kresbě dokumentu představuje [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) nebo [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) uzel v Aspose.Words Modul objektu dokumentu (DOM). Takovým obsahem mohou být textové schránky, obrázky, AutoShapes, OLE objekty atd. Některá pole jsou importována také jako tvary, například `INCLUDEPICTURE` pole.

Jednoduchý obrázek představuje **Shape** uzel [ShapeType.Image](https://reference.aspose.com/words/java/com.aspose.words/shapetype/#IMAGE). Tento tvar uzel nemá dětské uzly, ale obrazové údaje obsažené v tomto tvaru uzlu lze získat pomocí [Shape.ImageData](https://reference.aspose.com/words/java/com.aspose.words/shape/#getImageData) majetek. Naproti tomu tvar může být také tvořen mnoha dětskými uzly. Například tvar textového pole, který představuje [ShapeType.TextBox](https://reference.aspose.com/words/java/com.aspose.words/shapetype/#TEXT-BOX) majetek, může být tvořen z mnoha uzlů, jako je [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) a [Table](https://reference.aspose.com/words/java/com.aspose.words/table/). Většina tvarů může zahrnovat **Paragraph** a **Table** blokové uzly. Jsou to stejné uzly jako ty, které se objevují v hlavním těle. Tvary jsou vždy součástí některého odstavce, buď přímo inline nebo ukotvené na **Odstavec,** ale všude na stránce dokumentu.

![rendering-shapes-separately-from-a-document-aspose-words-java-1](/words/java/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-1.png)

Dokument může také obsahovat tvary, které jsou seskupeny dohromady. Grouping může být povolen Microsoft Word výběrem více objektů a kliknutím na tlačítko?GroupV pravém menu.

![rendering-shapes-separately-from-a-document-aspose-words-java-2](/words/java/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-2.png)

In Aspose.Words, Tyto skupiny tvarů jsou zastoupeny [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) Uzel. Lze je také použít stejným způsobem, aby se celá skupina dostala k obrazu.

![rendering-shapes-separately-from-a-document-aspose-words-java-3](/words/java/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-3.png)

Formát DOCX může obsahovat speciální typy obrázků, jako jsou diagramy nebo grafy. Tyto tvary jsou také zastoupeny prostřednictvím **Shape** uzel Aspose.Words, která také poskytuje podobnou metodu pro jejich zobrazování jako obrázky. Podle návrhu nemůže tvar obsahovat jako dítě jiný tvar, pokud tento tvar není obrazem (**ShapeType.Image**). Například, Microsoft Word nedovoluje vám vložit textové pole do jiného textového pole.

Výše popsané typy tvarů poskytují speciální metodu, jak tvary vykreslit [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/) třída. Instance **ShapeRenderer** třída se získává pro **Shape** nebo **GroupShape** skrze **GetShapeRenderer** metoda nebo předáním **Shape** Konstruktorovi **ShapeRenderer** třída. Tato třída poskytuje přístup k členům, které umožňují vykreslit následující tvar:

- Soubor na disku pomocí [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.lang.String-com.aspose.words.ImageSaveOptions) metoda přetížení
- Stream pomocí [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.io.OutputStream-com.aspose.words.ImageSaveOptions) metoda přetížení
- Grafika Objekt pomocí [RenderToSize](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToSize-java.awt.Graphics2D-float-float-float-float) a [RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float) metody

{{% alert color="primary" %}}

Při zobrazování **Shape**, musí být součástí hierarchie dokumentů. Pokud **Shape** není součástí stromu dokumentu, pak bude vykreslený výstup prázdný po vyvolání **ShapeRenderer** metody.

{{% /alert %}}

## Předání souboru nebo streamu

The [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.lang.String-com.aspose.words.ImageSaveOptions) metoda poskytuje přetížení, které vytváří tvar přímo do souboru nebo proudu. Oba přetížení přijmout případ [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) třída, která umožňuje definovat možnosti pro vykreslení tvaru. To funguje stejně jako [Document.Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) metoda. I když je tento parametr vyžadován, můžete předat nulovou hodnotu, která stanoví, že neexistují žádné vlastní možnosti.

Tvar lze exportovat v jakémkoli formátu obrázku uvedeném v [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) výčtu. Například obraz může být přeložen jako rastrový obraz, jako je JPEG zadáním [SaveFormat.Jpeg](https://reference.aspose.com/words/java/com.aspose.words/saveformat/#JPEG) počet nebo jako vektorový obraz, jako je EMF upřesněním [SaveFormat.Emf](https://reference.aspose.com/words/java/com.aspose.words/saveformat/#EMF).

Příklad kódu níže ilustruje vykreslování tvaru do EMF obrazu odděleně od dokumentu a uložení na disk:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToDisk.java" >}}

Příklad kódu níže ilustruje vykreslení tvaru obrazu JPEG odděleně od dokumentu a uložení do streamu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToStream.java" >}}

The **ImageSaveOptions** třída umožňuje určit různé možnosti, které kontrolují, jak je obraz vykreslen. Výše popsané funkce lze aplikovat stejným způsobem na **GroupShape** a **Shape** uzly.

## Předávám `Graphics` Předmět

Předávám přímo **Graphics** objekt umožňuje definovat vlastní nastavení a stav pro **Graphics** objekt. Společný scénář zahrnuje vytvoření tvaru přímo do **Graphics** objekt získaný z a Windows Forma nebo Bitmap. Když **Shape** Uzel je vykreslen, nastavení ovlivní vzhled tvaru. Například můžete otočit nebo zvětšit tvar pomocí **RotateTransform** nebo **ScaleTransform** metody **Graphics** objekt.

Následující příklad ukazuje, jak vytvořit tvar na **Graphics** objekt odděleně od dokumentu a použít rotaci na vykreslený obrázek:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToGraphics.java" >}}

Podobně jako [RenderToSize](https://reference.aspose.com/words/java/com.aspose.words/document/#renderToSize-int-java.awt.Graphics2D-float-float-float-float) metoda, [RenderToSize](https://reference.aspose.com/words/java/com.aspose.words/document/#renderToSize-int-java.awt.Graphics2D-float-float-float-float)metoda dědičná po [NodeRendererBase](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/) je užitečný pro tvorbu náhledů obsahu dokumentu. Velikost tvaru je určena konstruktorem. The **RenderToSize** metoda přijímá **Graphics** objekt, souřadnice X a Y polohy obrazu a velikost obrazu (šířka a výška), které budou nakresleny na **Graphics** objekt.

The **Shape** může být přeložen do určitého rozsahu pomocí [ShapeRenderer.RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float) metoda dědičná po [NodeRendererBase](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/) třída. Je to podobné jako u [Document.RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float) metoda, která přijímá stejné hlavní parametry. Rozdíl mezi těmito dvěma metodami je, že s **ShapeRenderer.RenderToScale** metoda, místo doslovné velikosti, zvolíte float hodnotu, která měří tvar během jeho vykreslování. Pokud hodnota plováku rovná 1.0 způsobí, že tvar bude vykreslen na 100% původní velikosti. Hodnota plováku 0,5 sníží velikost obrazu o polovinu.

## Obnovit tvarový obrázek

The [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) třída představuje objekty v kresbové vrstvě, jako je AutoShape, textový box, freeform, OLE objekt, ActiveX ovládání, nebo obrázek. Použití **Shape** třída, můžete vytvořit nebo upravit tvary v Microsoft Word dokument. Důležitá vlastnost tvaru je jeho [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/). Tvary různých typů mohou mít různé schopnosti v dokumentu Word. Například pouze obrázky a tvary OLE mohou mít obrázky uvnitř sebe, zatímco většina tvarů může mít pouze text.

Následující příklad ukazuje, jak vykreslit obraz Tvar na obraz JPEG odděleně od dokumentu a uložit jej na disk:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeImage.java" >}}

## Získávání velikosti tvaru

The [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/) třída také poskytuje funkčnost pro získání velikosti tvaru v pixelech prostřednictvím [GetSizeInPixels](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getSizeInPixels-float-float) metoda. Tato metoda akceptuje dva float (Single) parametry: Metoda vrací [Size](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getSizeInPixels-float-float) objekt, který obsahuje šířku a výšku vypočtené velikosti. To je užitečné, když je třeba předem znát velikost vykresleného tvaru, například při vytváření nového Bitmapu z vykresleného výstupu.

Níže uvedený příklad ukazuje, jak vytvořit nový objekt Bitmap a Graphics s šířkou a výškou tvaru, který má být přeložen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-FindShapeSizes.java" >}}

Při použití **RenderToSize** nebo **RenderToScale** metody, vykreslené velikosti obrazu se vrací také v [SizeF](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#renderToScale-java.awt.Graphics2D-float-float-float) objekt. To může být přiřazeno proměnné a v případě potřeby použito.

The **SizeInPoints** vlastnost vrací velikost tvaru naměřená v bodech (viz [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/)). Výsledkem je: `SizeF` objekt obsahující šířku a výšku.
