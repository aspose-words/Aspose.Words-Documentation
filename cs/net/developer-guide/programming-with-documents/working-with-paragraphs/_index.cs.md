---
title: Spolupráce s odst. C#
second_title: Aspose.Words místo .NET
articleTitle: Spolupráce s odstavci
linktitle: Spolupráce s odstavci
description: "Vložit odstavec do dokumentu C#. Nastavit styl odstavce C#. Práce s oddělovačem odstínu C#. Manipulovat uzel odstavce pomocí C#."
type: docs
weight: 210
url: /cs/net/working-with-paragraphs/
---

Odstavec je soubor znaků v kombinaci s logickým blokem a končí speciálním znakem a *bod zlom*. In Aspose.Words, odstavec je zastoupen [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/) třída.

## Vložit odstavec

Chcete-li do dokumentu vložit nový odstavec, musíte do něj vložit znak zlomu odstavce. [DocumentBuilder.Writeln](https://reference.aspose.com/words/net/aspose.words/documentbuilder/writeln/) do dokumentu vloží nejen řetězec textu, ale také přidá odstavec zlom.

Aktuální formátování písma je také specifikováno [Font](https://reference.aspose.com/words/net/aspose.words/documentbuilder/font/) vlastnost a formátování aktuálního odstavce je určeno [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/paragraphformat/) majetek. V další části se budeme podrobněji zabývat formátováním odstavců.

Následující příklad kódu ukazuje, jak vložit odstavec do dokumentu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cs" >}}

## Formátovací odstavec

Formátování aktuálního odstavce představuje [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) objekt, který je vrácen [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/paragraphformat/) majetek. Tento objekt zapouzdřuje různé vlastnosti formátu odstavce dostupné v Microsoft Word. Můžete jednoduše resetovat formátování odstavce na jeho výchozí normální styl, levicový, bez odsazení, bez rozestupu, bez hranic, bez stínování, voláním [ClearFormatting](https://reference.aspose.com/words/net/aspose.words/paragraphformat/clearformatting/).

Následující příklad kódu ukazuje, jak nastavit formátování odstavce:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetParagraphFormatting.cs" >}}

## Použít odstavec styl

Některé formátující objekty, jako například **Font** nebo **ParagraphFormat**, podpůrné styly. Jeden vestavěný nebo uživatelsky definovaný styl představuje [Style](https://reference.aspose.com/words/net/aspose.words/style/) objekt, který obsahuje odpovídající styl vlastnosti, jako je název, základní styl, písmo, styl odstavce formátování, a tak dále.

Kromě toho **Style** objekt odhalí [StyleIdentifier](https://reference.aspose.com/words/net/aspose.words/style/styleidentifier/) Vlastnost, která vrací identifikátor locale-nezávislý styl zastoupený [StyleIdentifier](https://reference.aspose.com/words/net/aspose.words/styleidentifier/) hodnota výčtu. Faktem je, že názvy vestavěných stylů v Microsoft Word jsou lokalizovány pro různé jazyky. Pomocí identifikátoru stylu můžete najít správný styl bez ohledu na jazyk dokumentu. Hodnoty výčtu odpovídají vestavěným hodnotám Microsoft Word styly jako *Normal*, *Mířím 1*,**Mířím 2* a tak dále. Všechny uživatelské styly jsou nastaveny na **StyleIdentifier.User** hodnota výčtu.

Následující příklad kódu ukazuje, jak použít odstavec:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyParagraphStyle.cs" >}}

### Vložit stylový oddělovač pro různé odstíny

Na konec odstavce lze přidat oddělovač stylu pomocí klávesnice Ctrl+Alt+Enter Microsoft Word. Tato funkce umožňuje použít dva různé odstíny ve stejném logickém tištěném odstavci. Pokud chcete nějaký text od začátku určitého záhlaví, který se objeví v tabulce obsahu, ale nechcete, aby se celé záhlaví zobrazovalo v tabulce obsahu, můžete tuto funkci použít.

Následující příklad kódu ukazuje, jak vložit oddělovač stylu pro různé odstíny:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-InsertStyleSeparator-ParagraphInsertStyleSeparator.cs" >}}

### Identifikační odstavec Oddělovač stylu

Aspose.Words vystavuje [BreakIsStyleSeparator](https://reference.aspose.com/words/net/aspose.words/paragraph/breakisstyleseparator/) veřejný majetek `Paragraph` třída pro identifikaci odstavce se oddělovačem stylu, jak je znázorněno v následujícím příkladu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-ParagraphStyleSeparator-ParagraphStyleSeparator.cs" >}}

## Použít hranice a stínění na odstavec

Hranice Aspose.Words jsou zastoupeny [BorderCollection](https://reference.aspose.com/words/net/aspose.words/bordercollection/) třído. [Border](https://reference.aspose.com/words/net/aspose.words/border/) objekty, které jsou přístupné podle indexu nebo typu hranice. Typ hranice je pak reprezentován [BorderType](https://reference.aspose.com/words/net/aspose.words/bordertype/) vyjmenování. Některé hodnoty se vztahují na více nebo pouze jeden prvek dokumentu. Například: **BorderType.Bottom** platí pro odstavec nebo tabulku, zatímco **BorderType.DiagonalDown** určuje diagonální hranici pouze v buňce tabulky.

Sbírka hranic i každá samostatná hranice mají podobné vlastnosti, jako je barva, styl linie, šířka čáry, vzdálenost od textu a volitelný stín. Jsou reprezentovány vlastnostmi stejného jména. Můžete získat různé typy hranic kombinací hodnot nemovitostí. Kromě toho **BorderCollection** a **Border** objekty umožňují resetovat tyto hodnoty na jejich výchozí hodnoty voláním [ClearFormatting](https://reference.aspose.com/words/net/aspose.words/border/clearformatting/) metoda.

{{% alert color="primary" %}}

Všimněte si, že když se vlastnosti hranic resetují na jejich výchozí hodnoty, hranice se stane neviditelnou.

{{% /alert %}}

Aspose.Words má také [Shading](https://reference.aspose.com/words/net/aspose.words/shading/) třída, která obsahuje znaky stínování prvků dokumentu. Můžete nastavit požadovanou stínovací strukturu a barvy, které jsou aplikovány na pozadí a popředí prvku pomocí [TextureIndex](https://reference.aspose.com/words/net/aspose.words/textureindex/) hodnota výčtu. **TextureIndex** také umožňuje aplikovat různé vzory na **Shading** objekt. Například pro nastavení barvy pozadí prvku dokumentu použijte **TextureIndex.TextureSolid** hodnota a nastavit barvu stínování popředí podle potřeby.

Následující příklad kódu ukazuje, jak použít hranice a stínování na odstavec:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyBordersAndShadingToParagraph.cs" >}}

## Počítejte paragrafy

Pokud chcete počítat počet řádků v odstavci pro jakýkoli dokument Word, lze použít tento vzorek kódu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-CountLinesInParagraphs-CountLinesInParagraph.cs" >}}