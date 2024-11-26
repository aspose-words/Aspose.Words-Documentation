---
title: Práce s odstavci v C++
second_title: Aspose.Words pro C++
articleTitle: Práce s odstavci
linktitle: Práce s odstavci
description: "Postupy manipulace s odstavcovým uzlem pomocí C++."
type: docs
weight: 210
url: /cs/cpp/working-with-paragraphs/
timestamp: 2024-01-30-16-22-34
---

Odstavec je sada znaků kombinovaná do logického bloku a končící speciálním znakem - *paragraph break*. V Aspose.Words je odstavec reprezentován třídou [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/).

## Vložit odstavec

Chcete-li do dokumentu vložit nový odstavec, musíte do něj vložit znak přerušení odstavce. [DocumentBuilder.Writeln](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/writeln/) vloží do dokumentu nejen řetězec textu, ale také přidá konec odstavce.

Aktuální formátování písma je také určeno vlastností [Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/) a aktuální formátování odstavce je určeno vlastností [ParagraphFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_paragraphformat/). V další části se podíváme podrobněji na formátování odstavců.

Následující příklad kódu ukazuje, jak vložit odstavec do dokumentu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cpp" >}}

## Formát Odstavce

Formátování aktuálního odstavce je reprezentováno objektem **ParagraphFormat**, který je vrácen vlastností **ParagraphFormat**. Tento objekt zapouzdřuje různé vlastnosti formátování odstavců dostupné v Microsoft Word. Můžete snadno resetovat formátování odstavce na výchozí na normální styl, zarovnané doleva bez odsazení, bez mezer, bez ohraničení a bez stínování voláním [ClearFormatting](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/clearformatting/).

Následující příklad kódu ukazuje, jak nastavit formátování odstavců:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetParagraphFormatting.cpp" >}}

## Použít Styl Odstavce

Některé formátovací objekty, jako je Písmo nebo ParagraphFormat, podporují styly. Jeden vestavěný nebo uživatelem definovaný styl je reprezentován `Style` objektem, který obsahuje odpovídající vlastnosti stylu, jako je název, základní styl, formátování písma a odstavců stylu atd.

Objekt **Style** dále poskytuje vlastnost [StyleIdentifier](https://reference.aspose.com/words/cpp/aspose.words/style/get_styleidentifier/), která vrací identifikátor stylu nezávislý na národním prostředí představovaný hodnotou výčtu **StyleIdentifier**. Jde o to, že názvy vestavěných stylů v Microsoft Word jsou lokalizovány pro různé jazyky. Pomocí identifikátoru stylu můžete najít správný styl Bez ohledu na Jazyk dokumentu. Hodnoty výčtu odpovídají Microsoft Word vestavěným stylům ,jako jsou *Normal*, *Heading 1*, *Heading 2* atd. Všem uživatelem definovaným stylům je přiřazena hodnota **StyleIdentifier.User**.

Následující příklad kódu ukazuje, jak použít styl odstavce:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyParagraphStyle.cpp" >}}

## Vložte oddělovač stylů a vložte různé styly odstavců

Oddělovač stylů lze přidat na konec odstavce pomocí klávesové zkratky Ctrl + Alt + Enter do MS Word. Tato funkce umožňuje dva různé styly odstavců používané v jednom logickém tištěném odstavci. Pokud chcete, aby se nějaký text od začátku konkrétního nadpisu zobrazoval v obsahu, ale nechcete, aby se v obsahu zobrazoval celý Nadpis, můžete tuto funkci použít.

Následující příklad kódu ukazuje, jak vložit oddělovač stylů tak, aby vyhovoval různým stylům odstavců:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-InsertStyleSeparator-ParagraphInsertStyleSeparator.cpp" >}}

## Identifikujte Oddělovač Stylu Odstavce

` `Aspose.Words poskytuje veřejnou vlastnost [BreakIsStyleSeparator](https://reference.aspose.com/words/cpp/aspose.words/paragraph/get_breakisstyleseparator/) do třídy `Paragraph` umožňuje identifikaci odstavce oddělovače stylů, jak je znázorněno v příkladu uvedeném níže:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-ParagraphStyleSeparator-ParagraphStyleSeparator.cpp" >}}

## Použití ohraničení a stínování na odstavec

Hranice v Aspose.Words jsou reprezentovány třídou [BorderCollection](https://reference.aspose.com/words/cpp/aspose.words/bordercollection/) - toto je kolekce objektů [Border](https://reference.aspose.com/words/cpp/aspose.words/border/), ke kterým se přistupuje indexem nebo typem ohraničení. Typ ohraničení je reprezentován výčtem `BorderType`. Některé hodnoty výčtu jsou použitelné pro několik nebo pouze jeden prvek dokumentu. Například **BorderType.Bottom** je použitelný pro buňku odstavce nebo tabulky, zatímco **BorderType.DiagonalDown** určuje diagonální okraj pouze v buňce tabulky.

Kolekce ohraničení i každé samostatné ohraničení mají podobné atributy, jako je barva, styl čáry, šířka čáry, vzdálenost od textu a volitelný stín. Jsou reprezentovány vlastnostmi stejného jména. Kombinací hodnot vlastností můžete dosáhnout různých typů ohraničení. Objekty **BorderCollection** I **Border** navíc umožňují resetovat tyto hodnoty na výchozí voláním metody [ClearFormatting](https://reference.aspose.com/words/cpp/aspose.words/border/clearformatting/).

{{% alert color="primary" %}}

Všimněte si, že když jsou vlastnosti ohraničení resetovány na výchozí hodnoty, ohraničení se stane neviditelným.

{{% /alert %}}

Aspose.Words má také třídu [Shading](https://reference.aspose.com/words/cpp/aspose.words/shading/) obsahuje atributy stínování pro prvky dokumentu. Můžete nastavit požadovanou texturu stínování a barvy, které se použijí na pozadí a popředí prvku.

Textura stínování je nastavena s hodnotou výčtu [TextureIndex](https://reference.aspose.com/words/cpp/aspose.words/textureindex/), která umožňuje aplikaci různých vzorů na objekt **Shading**. Chcete-li například nastavit barvu pozadí pro prvek dokumentu, použijte hodnotu [TextureIndex.TextureSolid](https://reference.aspose.com/words/cpp/aspose.words/textureindex/) a podle potřeby nastavte barvu stínování popředí.

Následující příklad kódu ukazuje, jak použít ohraničení a stínování na odstavec:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyBordersAndShadingToParagraph.cpp" >}}
