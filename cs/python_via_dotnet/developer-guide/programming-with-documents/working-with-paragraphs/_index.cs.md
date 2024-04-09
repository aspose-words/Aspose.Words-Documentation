---
title: Spolupráce s odst. Python
second_title: Aspose.Words místo Python via .NET
articleTitle: Spolupráce s odstavci
linktitle: Spolupráce s odstavci
description: "Vložit odstavec a uvést jeho formátování v dokumentu s použitím Python."
type: docs
weight: 210
url: /cs/python-net/working-with-paragraphs/
---

Odstavec je soubor znaků v kombinaci s logickým blokem a končí speciálním znakem a *bod zlom*. In Aspose.Words, odstavec je zastoupen [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) třída.

## Vložit odstavec

Chcete-li do dokumentu vložit nový odstavec, musíte do něj vložit znak zlomu odstavce. [DocumentBuilder.writeln](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/writeln/) do dokumentu vloží také řetězec textu, ale navíc přidá odstavec zlom.

Aktuální formátování písma je také specifikováno [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/) vlastnost a formátování aktuálního odstavce je určeno [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/) majetek.

Následující příklad kódu ukazuje, jak vložit odstavec do dokumentu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertParagraph.py" >}}

## Formátovací odstavec

Formátování aktuálního odstavce představuje [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/) objekt, který je vrácen [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/) majetek. Tento objekt zapouzdřuje různé vlastnosti formátu odstavce dostupné v Microsoft Word. Můžete jednoduše resetovat formátování odstavce na standardní styl, vlevo zarovnaný, bez odsazení, bez rozestupu, bez hranic a bez stínování voláním [clear_formatting](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/clear_formatting/).

Následující příklad kódu ukazuje, jak nastavit formátování odstavce:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ParagraphFormatting.py" >}}

## Použít odstavec styl

Některé formátující objekty jako [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) nebo [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/) podpůrné styly. Jediný vestavěný nebo uživatelsky definovaný styl je reprezentován [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) objekt, který obsahuje odpovídající styl vlastnosti, jako je název, základní styl, písmo a odstavec formátování stylu, a tak dále.

Kromě toho [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) objekt poskytuje [Style.style_identifier](https://reference.aspose.com/words/python-net/aspose.words/style/style_identifier/) vlastnost, která vrací identifikátor locale-nezávislého stylu zastoupený [StyleIdentifier](https://reference.aspose.com/words/python-net/aspose.words/styleidentifier/) hodnota výčtu. Jde o to, že názvy vestavěných stylů Microsoft Word jsou lokalizovány pro různé jazyky. Pomocí identifikátoru stylu můžete najít správný styl bez ohledu na jazyk dokumentu. Hodnoty výčtu odpovídají Microsoft Word vestavěné styly, jako je normální , okruhu 1 , okruhu 2 atd. Všechny uživatelské styly jsou přiřazeny [StyleIdentifier.USER](https://reference.aspose.com/words/python-net/aspose.words/styleidentifier/#user) hodnota

Následující příklad kódu ukazuje, jak použít odstavec:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ApplyParagraphStyle.py" >}}

## Vložit stylový oddělovač pro různé odstíny

Oddělovač stylu lze přidat na konec odstavce pomocí Ctrl + Alt + Zadejte klávesovou zkratku do MS Word. Tato funkce umožňuje dva různé odstíny používané v jednom logickém tištěném odstavci. Pokud chcete nějaký text od začátku určitého záhlaví, který se objeví v Obsahu, ale nechcete celý nadpis v Obsahu, můžete použít tuto funkci

Následující příklad kódu ukazuje, jak vložit oddělovač stylu pro různé odstíny:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-InsertStyleSeparator.py" >}}

## Identifikační odstavec Oddělovač stylu

Aspose.Words poskytuje veřejný majetek [break_is_style_separator](https://reference.aspose.com/words/python-net/aspose.words/paragraph/break_is_style_separator/) do [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) třída umožňuje identifikaci Style Separator Odstavec, jak je uvedeno v následujícím příkladu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-GetParagraphStyleSeparator.py" >}}

## Použít hranice a stínění na odstavec

Hranice jsou zastoupeny [BorderCollection](https://reference.aspose.com/words/python-net/aspose.words/bordercollection/). Tohle je sbírka [Border](https://reference.aspose.com/words/python-net/aspose.words/border/) objekty, které jsou přístupné podle indexu nebo typu hranice. Typ hranice představuje [BorderType](https://reference.aspose.com/words/python-net/aspose.words/bordertype/) vyjmenování. Některé hodnoty výčtu se vztahují na několik nebo pouze jeden prvek dokumentu. Například: [BorderType.BOTTOM](https://reference.aspose.com/words/python-net/aspose.words/bordertype/#bottom) se vztahuje na odstavec nebo tabulku, zatímco [BorderType.DIAGONALDOWN](https://reference.aspose.com/words/python-net/aspose.words/bordertype/#diagonaldown) určuje diagonální hranici pouze v buňce tabulky.

Sbírka hranic i každá samostatná hranice mají podobné vlastnosti jako barva, styl linie, šířka čáry, vzdálenost od textu a volitelný stín. Jsou reprezentovány vlastnostmi stejného jména. Můžete dosáhnout různých typů hranic kombinací hodnot nemovitostí. Kromě toho oba [BorderCollection](https://reference.aspose.com/words/python-net/aspose.words/bordercollection/) a [Border](https://reference.aspose.com/words/python-net/aspose.words/border/) objekty umožňují resetovat tyto hodnoty výchozí voláním [Border.clear_formatting](https://reference.aspose.com/words/python-net/aspose.words/border/clear_formatting/) metoda.

{{% alert color="primary" %}}

Všimněte si, že když se vlastnosti hranic resetují na jejich výchozí hodnoty, hranice se stane neviditelnou.

{{% /alert %}}

Aspose.Words má také [Shading](https://reference.aspose.com/words/python-net/aspose.words/shading/) třída obsahuje stínovací atributy pro prvky dokumentu. Můžete nastavit požadovanou stínovací strukturu a barvy, které jsou aplikovány na pozadí a popředí prvku.

Shading textura je nastavena na [TextureIndex](https://reference.aspose.com/words/python-net/aspose.words/textureindex/) hodnota výčtu, která umožňuje aplikaci různých vzorů na [Shading](https://reference.aspose.com/words/python-net/aspose.words/shading/) objekt. Například pro nastavení barvy pozadí prvku dokumentu použijte [TextureIndex.TEXTURE_SOLID](https://reference.aspose.com/words/python-net/aspose.words/textureindex/#texture_solid) hodnota a nastavit barvu stínování popředí podle potřeby. Níže uvedený příklad ukazuje, jak uplatnit hranice a stínování na odstavec.

Následující příklad kódu ukazuje, jak použít hranice a stínování na odstavec:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ApplyBordersAndShadingToParagraph.py" >}}
