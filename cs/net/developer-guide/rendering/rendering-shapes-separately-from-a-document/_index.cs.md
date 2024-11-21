---
title: Tvary renderování Samostatně od dokumentu
second_title: Aspose.Words místo .NET
articleTitle: Tvary renderování Samostatně od dokumentu
linktitle: Tvary renderování Samostatně od dokumentu
description: "Extrahovat různé grafické objekty, jako jsou obrázky, textový box obsahující odstavce, nebo tvary šipek, při zpracování dokumentu, a exportovat je do externího umístění pomocí C#."
type: docs
weight: 40
url: /cs/net/rendering-shapes-separately-from-a-document/
timestamp: 2024-07-10-14-38-57
---

Při zpracování dokumentů je společným úkolem extrahovat všechny obrázky nalezené v dokumentu a exportovat je na externí místo. Tento úkol se stává jednoduchý s Aspose.Words API, která již poskytuje funkci pro získávání a ukládání obrazových dat. Nicméně, někdy můžete chtít podobně extrahovat jiné typy grafického obsahu, který je reprezentován jiným typem kreslení objektu, například textové pole obsahující odstavce, tvary šipek a malý obrázek. Neexistuje žádný jednoduchý způsob vykreslování tohoto objektu, protože je kombinací jednotlivých prvků obsahu. Můžete se také setkat s případem, kdy obsah byl seskupen do objektu, který vypadá jako jeden obrázek.

Aspose.Words poskytuje funkce pro extrahování tohoto typu obsahu stejným způsobem, jak můžete extrahovat jednoduchý obraz z tvaru kresleného obsahu. Tento článek popisuje, jak využít této funkčnosti k vytvoření tvarů nezávisle na dokumentu.

## Typy tvarů Aspose.Words

Veškerý obsah vrstvy výkresu dokumentu představuje [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) nebo [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/) uzel v Aspose.Words Modul objektu dokumentu (DOM). Takovým obsahem mohou být textové schránky, obrázky, AutoShapes, OLE objekty atd. Některá pole jsou také dovážena jako tvary, například `INCLUDEPICTURE` pole.

Jednoduchý obrázek představuje **Shape** uzel [ShapeType.Image](https://reference.aspose.com/words/net/aspose.words.drawing/shapetype/). Tento tvar uzel nemá dětské uzly, ale obrazové údaje obsažené v tomto tvaru uzlu lze získat pomocí [Shape.ImageData](https://reference.aspose.com/words/net/aspose.words.drawing/shape/imagedata/) majetek. Naproti tomu tvar může být také tvořen mnoha dětskými uzly. Například tvar textového pole, který představuje [ShapeType.TextBox](https://reference.aspose.com/words/net/aspose.words.drawing/shapetype/) majetek, může být tvořen z mnoha uzlů, jako je [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/) a [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/). Většina tvarů může zahrnovat **Paragraph** a **Table** blokové uzly. Jsou to stejné uzly jako ty, které se objevují v hlavním těle. Tvary jsou vždy součástí některého odstavce, buď přímo inline nebo ukotvené na **Odstavec,** ale všude na stránce dokumentu.

![rendering-shapes-separately-from-a-document_1](/words/net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-1.png)

Dokument může také obsahovat tvary, které jsou seskupeny dohromady. Grouping může být povolen Microsoft Word výběrem více objektů a kliknutím na tlačítkoGroupV pravém menu.

![rendering-shapes-separately-from-a-document_2](/words/net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-2.png)

In Aspose.Words, Tyto skupiny tvarů jsou zastoupeny [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/) Uzel. Lze je také použít stejným způsobem, aby celá skupina byla image.

![rendering-shapes-separately-from-a-document_3](/words/net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-3.png)

Formát DOCX může obsahovat speciální typy obrázků, jako jsou diagramy nebo grafy. Tyto tvary jsou také zastoupeny prostřednictvím **Shape** uzel Aspose.Words, která také poskytuje podobnou metodu pro jejich zobrazování jako obrázky. Podle návrhu nemůže tvar obsahovat jako dítě jiný tvar, pokud tento tvar není obrazem (**ShapeType.Image**). Například: Microsoft Word nedovoluje vám vložit textové pole do jiného textového pole.

Výše popsané typy tvarů poskytují zvláštní metodu pro zobrazení tvarů prostřednictvím [ShapeRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/shaperenderer/) třída. Instance **ShapeRenderer** třída se získává pro **Shape** nebo **GroupShape** prostřednictvím **GetShapeRenderer** způsob nebo předáním **Shape** konstruktorovi **ShapeRenderer** třída. Tato třída poskytuje přístup k členům, které umožňují vykreslit tvar:

- Soubor na disku pomocí [Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/) metoda přetížení
- Stream pomocí [Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/) metoda přetížení
- .NET Grafika Objekt pomocí [RenderToSize](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertosize/) a [RenderToScale](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertoscale/) metody

{{% alert color="primary" %}}

Při zobrazování <span notrans="<span notrans=" **Shape**"=""></span>,? musí být součástí hierarchie dokumentů. Pokud **Shape** není součástí stromu dokumentu, pak bude vykreslený výstup prázdný po vyvolání **ShapeRenderer** metody.

{{% /alert %}}

## Předkládání souboru nebo proudu

• [Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/) metoda poskytuje přetížení, které vytváří tvar přímo do souboru nebo proudu. Oba přetížení přijmout případ [ImageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/) třída, která umožňuje definovat možnosti pro vykreslení tvaru. To funguje stejně jako [Document.Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save) metoda. I když je tento parametr vyžadován, můžete předat nulovou hodnotu, s uvedením, že neexistují žádné vlastní možnosti.

Tvar lze exportovat v jakémkoli formátu obrázku uvedeném v [SaveFormat](https://reference.aspose.com/words/net/aspose.words/saveformat/) vyjmenování. Například obraz může být přeložen jako rastrový obraz, jako je JPEG, a to upřesněním [SaveFormat.Jpeg](https://reference.aspose.com/words/net/aspose.words/saveformat/) počet nebo jako vektorový obraz, jako například EMF upřesněním [SaveFormat.Emf](https://reference.aspose.com/words/net/aspose.words/saveformat/).

Příklad kódu níže ilustruje vykreslování tvaru EMF obrazu odděleně od dokumentu a uložení na disk:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeToDisk.cs" >}}

Příklad kódu níže ilustruje vykreslení tvaru obrazu JPEG odděleně od dokumentu a uložení do streamu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeToStream.cs" >}}

• **ImageSaveOptions** třída vám umožňuje určit různé možnosti, které kontrolují, jak je obraz vykreslen. Výše popsané funkce lze aplikovat stejným způsobem na **GroupShape** a **Shape** uzly.

## Předávám .NET Grafický objekt

Rendering přímo na **Graphics** objekt umožňuje definovat vlastní nastavení a stav **Graphics** objekt. Společný scénář zahrnuje vytvoření tvaru přímo do **Graphics** objekt získaný z Windows Forma nebo Bitmap. Když **Shape** Uzel je vykreslen, nastavení ovlivní vzhled tvaru. Například můžete otočit nebo zvětšit tvar pomocí **RotateTransform** nebo **ScaleTransform** metody pro **Graphics** objekt.

Příklad níže ukazuje, jak vytvořit tvar na .**NET Graphics** Objekt odděleně od dokumentu a aplikovat rotaci na vykreslený obrázek:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeToGraphics.cs" >}}

Podobně, jako [RenderToSize](https://reference.aspose.com/words/net/aspose.words/document/rendertosize/) metoda, [RenderToSize](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertosize/)metoda dědičná po [NodeRendererBase](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/) je užitečné pro vytváření náhledů obsahu dokumentu. Velikost tvaru je určena konstruktorem. • **RenderToSize** metoda přijímá **Graphics** objekt, souřadnice X a Y polohy obrazu a velikost obrazu (šířka a výška), které budou kresleny na **Graphics** objekt.

• **Shape** může být do určitého rozsahu přeložena pomocí [ShapeRenderer.RenderToScale](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertoscale/) metoda dědičná po [NodeRendererBase](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/) třída. To je podobné jako [Document.RenderToScale](https://reference.aspose.com/words/net/aspose.words/document/rendertoscale/) metoda, která přijímá stejné hlavní parametry. Rozdíl mezi těmito dvěma metodami je, že s **ShapeRenderer.RenderToScale** metoda, místo doslovné velikosti, zvolíte float hodnotu, která měří tvar během jeho vykreslování. Pokud se hodnota plováku rovná 1.0 způsobí, že tvar bude vykreslen na 100% původní velikosti. Hodnota plováku 0,5 sníží velikost obrazu o polovinu.

## Opravovat tvarový obrázek

• [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) třída představuje objekty v kresbové vrstvě, jako je AutoShape, textový box, freeform, OLE objekt, ActiveX ovládání, nebo obrázek. Použití **Shape** třída, můžete vytvořit nebo upravit tvary v Microsoft Word dokument. Důležitá vlastnost tvaru je jeho [ShapeType](https://reference.aspose.com/words/net/aspose.words.drawing/shape/base/properties/shapetype). Tvary různých typů mohou mít různé schopnosti v dokumentu Word. Například pouze obraz a tvary OLE mohou mít obrázky uvnitř sebe, zatímco většina tvarů může mít pouze text.

Následující příklad ukazuje, jak vykreslit obraz Shape do obrazu JPEG odděleně od dokumentu a uložit jej na disk:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeImage.cs" >}}

## Získávání velikosti tvaru

• [ShapeRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/shaperenderer/) třída také poskytuje funkčnost pro získání velikosti tvaru v pixelech prostřednictvím [GetSizeInPixels](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/getsizeinpixels/) metoda. Tato metoda akceptuje dva float (Single) parametry, tj. stupnici a DPI, které se používají při výpočtu velikosti tvaru při překreslení tvaru. Metoda vrací [Size](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/getsizeinpixels/) objekt, který obsahuje šířku a výšku vypočtené velikosti. To je užitečné, když je třeba předem znát velikost vykresleného tvaru, například při vytváření nového Bitmapu z vykresleného výstupu.

Níže uvedený příklad ukazuje, jak vytvořit nový objekt Bitmap a Graphics s šířkou a výškou tvaru, který má být přeložen:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-FindShapeSizes.cs" >}}

Při použití **RenderToSize** nebo **RenderToScale** metody, vykreslené velikosti obrazu se vrací také v [SizeF](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertoscale/) objekt. To může být přiřazeno proměnné a v případě potřeby použito.

• **SizeInPoints** vlastnost vrací velikost tvaru měřená v bodech (viz [ShapeRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/shaperenderer/). Výsledkem je `SizeF` objekt obsahující šířku a výšku.
