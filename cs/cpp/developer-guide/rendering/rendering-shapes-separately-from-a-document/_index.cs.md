---
title: Vykreslování obrazců odděleně od dokumentu
second_title: Aspose.Words pro C++
articleTitle: Vykreslování obrazců odděleně od dokumentu
linktitle: Vykreslování obrazců odděleně od dokumentu
description: "Extrahujte různé grafické objekty, jako jsou obrázky, textové pole obsahující odstavce nebo tvary šipek, při zpracování dokumentu a exportujte je do externího umístění."
type: docs
weight: 40
url: /cs/cpp/rendering-shapes-separately-from-a-document/
timestamp: 2024-01-27-14-07-04
---

Při zpracování dokumentů je běžným úkolem extrahovat všechny obrázky nalezené v dokumentu a exportovat je do externího umístění. Tento úkol se stává jednoduchým pomocí Aspose.Words API, který již poskytuje funkce pro extrahování a ukládání obrazových dat. Někdy však můžete chtít podobně extrahovat jiné typy grafického obsahu, který je reprezentován jiným typem objektu výkresu, například textové pole obsahující odstavce, tvary šipek a malý obrázek. Neexistuje žádný přímý způsob vykreslení tohoto objektu, protože se jedná o kombinaci jednotlivých prvků obsahu. Můžete se také setkat s případem, kdy byl obsah seskupen do objektu, který vypadá jako jeden obrázek.

Aspose.Words poskytuje funkce pro extrahování tohoto typu obsahu stejným způsobem, jakým můžete extrahovat jednoduchý obrázek z tvaru jako vykreslený obsah. Tento článek popisuje, jak využít tuto funkci k vykreslení obrazců nezávisle na dokumentu.

## Typy tvarů v Aspose.Words

Veškerý obsah ve vrstvě výkresu dokumentu je reprezentován uzlem [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) nebo [GroupShape](https://reference.aspose.com/words/cpp/aspose.words.drawing/groupshape/) v modulu Aspose.Words Document Object (DOM). Takovým obsahem mohou být textová pole, obrázky, objekty AutoShapes, OLE atd. Některá pole jsou také importována jako tvary, například pole `INCLUDEPICTURE`.

Jednoduchý obrázek je reprezentován **Shape** uzlem [ShapeType.Image](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapetype/). Tento uzel obrazce nemá žádné podřízené uzly, ale k obrazovým datům obsaženým v tomto uzlu obrazce lze přistupovat pomocí vlastnosti [Shape.ImageData](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_imagedata/). Na druhou stranu může být tvar také tvořen mnoha podřízenými uzly. Například tvar textového pole, který je reprezentován vlastností [ShapeType.TextBox](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapetype/), může být tvořen mnoha uzly, například [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/) a [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/). Většina tvarů může zahrnovat uzly na úrovni bloku **Paragraph** a **Table**. Jedná se o stejné uzly jako ty, které se objevují v hlavním těle. Tvary jsou vždy součástí nějakého odstavce, buď přímo Vložené nebo ukotvené k **Paragraph,**, ale "plovoucí" kdekoli na stránce dokumentu.

![rendering-shapes-separately-from-a-document-aspose-words-cpp-1](rendering-shapes-separately-from-a-document-1.png)

Dokument může také obsahovat tvary, které jsou seskupeny. Seskupení lze povolit v Microsoft Word výběrem více objektů a kliknutím na" skupina " v nabídce pravým tlačítkem.

![rendering-shapes-separately-from-a-document-aspose-words-cpp-2](rendering-shapes-separately-from-a-document-2.png)

V Aspose.Words jsou tyto skupiny tvarů reprezentovány uzlem `GroupShape`. Ty lze také vyvolat stejným způsobem, aby se do obrázku vykreslila celá skupina.

![rendering-shapes-separately-from-a-document-aspose-words-cpp-3](rendering-shapes-separately-from-a-document-3.png)

Formát DOCX může obsahovat speciální typy obrázků, jako jsou diagramy nebo grafy. Tyto tvary jsou také reprezentovány prostřednictvím uzlu **Shape** v Aspose.Words, který také poskytuje podobnou metodu pro jejich vykreslení jako obrázků. Podle návrhu nemůže tvar obsahovat jiný tvar jako dítě, pokud tento tvar není obrázek (**ShapeType.Image**). Například Microsoft Word neumožňuje vložit textové pole do jiného textového pole.

Výše popsané typy tvarů poskytují speciální metodu pro vykreslení tvarů pomocí třídy [ShapeRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/shaperenderer/). Instance třídy **ShapeRenderer** se načte pro **Shape** nebo **GroupShape** metodou **GetShapeRenderer** nebo předáním **Shape** konstruktoru třídy **ShapeRenderer**. Tato třída poskytuje přístup k členům, které umožňují vykreslení obrazce na následující:

- Soubor na disku pomocí metody [Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/) přetížení
- Stream pomocí metody [Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/) přetížení
- Objekt `Graphics` pomocí metod [RenderToSize](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertosize/) a [RenderToScale](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertoscale/)

{{% alert color="primary" %}}

Při vykreslování **Shape** musí být součástí hierarchie dokumentů. Pokud **Shape** není součástí stromu dokumentů, vykreslený výstup bude po vyvolání **ShapeRenderer** metod prázdný.

{{% /alert %}}

## Vykreslování do souboru nebo streamu

Metoda [Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/) poskytuje přetížení, které vykreslí tvar přímo do souboru nebo streamu. Obě přetížení přijímají instanci třídy [ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/), která umožňuje definovat možnosti pro vykreslení tvaru. Funguje to stejným způsobem jako metoda [Document.Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/). I když je tento parametr vyžadován, můžete předat hodnotu null s uvedením, že neexistují žádné vlastní možnosti.

Obrazec lze exportovat v libovolném formátu obrázku určeném ve výčtu [SaveFormat](https://reference.aspose.com/words/cpp/aspose.words/saveformat/). Obrázek lze například vykreslit jako rastrový obrázek, například JPEG zadáním výčtu `SaveFormat.Jpeg`, nebo jako vektorový obrázek, například EMF zadáním `SaveFormat.Emf`.

Příklad kódu níže ilustruje vykreslení obrazce na obrázek EMF odděleně od dokumentu a uložení na disk:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-RenderShapeToDisk.cpp" >}}

Příklad kódu níže ilustruje vykreslení obrazce na obrázek JPEG odděleně od dokumentu a uložení do streamu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-RenderShapeToStream.cpp" >}}

Třída **ImageSaveOptions** umožňuje určit různé možnosti, které určují, jak je obrázek vykreslen. Výše popsaná funkce může být použita stejným způsobem na uzly **GroupShape** a **Shape**.

## Vykreslování do grafického objektu .NET

Vykreslování přímo do objektu **Graphics** umožňuje definovat vlastní nastavení a stav objektu **Graphics**. Běžný scénář zahrnuje vykreslení tvaru přímo do objektu **Graphics** načteného z formuláře Windows nebo bitmapy. Když je uzel **Shape** vykreslen, nastavení ovlivní vzhled tvaru. Můžete například otočit nebo změnit měřítko tvaru pomocí metod **RotateTransform** nebo **ScaleTransform** pro objekt **Graphics**.

Níže uvedený příklad ukazuje, jak vykreslit tvar na a .**NET Graphics** objekt odděleně od dokumentu a použít rotaci na vykreslený obrázek:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-RenderShapeToGraphics.cpp" >}}

Podobně jako u metody [RenderToSize](https://reference.aspose.com/words/cpp/aspose.words/document/rendertosize/) je metoda [RenderToSize ](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertosize/)zděděná z [NodeRendererBase](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/) užitečná pro vytváření miniatur obsahu dokumentu. Velikost tvaru je zadána pomocí konstruktoru. Metoda **RenderToSize** přijímá objekt **Graphics**, souřadnice X a Y polohy obrázku a velikost obrázku (šířka a výška), který bude nakreslen na objekt **Graphics**.

**Shape** lze vykreslit do určitého měřítka pomocí metody [ShapeRenderer.RenderToScale](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertoscale/) zděděné z třídy [NodeRendererBase](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/). To je podobné metodě [Document.RenderToScale](https://reference.aspose.com/words/cpp/aspose.words/document/rendertoscale/), která přijímá stejné hlavní parametry. Rozdíl mezi těmito dvěma metodami spočívá v tom, že u metody **ShapeRenderer.RenderToScale** místo doslovné velikosti zvolíte plovoucí hodnotu, která během Vykreslování změní měřítko tvaru. Pokud se hodnota float rovná 1.0, způsobí vykreslení tvaru na 100% jeho původní velikosti. Hodnota float 0.5 zmenší velikost obrázku o polovinu.

## Vykreslení obrazce tvaru

Třída [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) představuje objekty ve vrstvě výkresu, například AutoShape, textové pole, volný tvar, objekt OLE, ovládací prvek ActiveX nebo obrázek. Pomocí třídy **Shape** můžete vytvářet nebo upravovat tvary v dokumentu Microsoft Word. Důležitou vlastností tvaru je jeho [ShapeType](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapetype/). Tvary různých typů mohou mít různé možnosti v Word dokumentu. Například pouze obrázky a tvary OLE mohou mít obrázky uvnitř, zatímco většina tvarů může mít pouze text.

Následující příklad ukazuje, jak vykreslit obrazec do obrázku JPEG odděleně od dokumentu a uložit jej na disk:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-RenderShapeImage.cpp" >}}

## Získání velikosti tvaru

Třída [ShapeRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/shaperenderer/) také poskytuje funkce pro Načtení velikosti tvaru v pixelech pomocí metody [GetSizeInPixels](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/getsizeinpixels/). Tato metoda přijímá dva parametry typu float (Single) - měřítko a DPI, které se používají při výpočtu velikosti tvaru při vykreslení tvaru. Metoda vrací objekt `Size`, který obsahuje šířku a výšku vypočtené velikosti. To je užitečné, když je nutné předem znát velikost vykresleného tvaru, například při vytváření nové bitmapy z vykresleného výstupu.

Níže uvedený příklad ukazuje, jak vytvořit nový Bitmapový a grafický objekt se šířkou a výškou obrazce, který má být vykreslen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-FindShapeSizes.cpp" >}}

Při použití metod **RenderToSize** nebo **RenderToScale** se v objektu [SizeF](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertoscale/) vrátí také vykreslená velikost obrazu. To lze přiřadit proměnné a v případě potřeby použít.

Vlastnost **SizeInPoints** vrací velikost tvaru měřenou v bodech (viz [ShapeRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/shaperenderer/). Výsledkem je objekt `SizeF` obsahující šířku a výšku.
