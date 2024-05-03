---
title: Spolupráce s odst. Java
second_title: Aspose.Words místo Java
articleTitle: Spolupráce s odstavci
linktitle: Spolupráce s odstavci
description: "Manipulační postupy podle odstavce uzel Java."
type: docs
weight: 210
url: /cs/java/working-with-paragraphs/
---

Odstavec je soubor znaků spojených s logickým blokem a končícím speciálním znakem a *bodovým zlomem*. In Aspose.Words, odstavec představuje [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) třída.

## Vložení odstavce

Chcete-li do dokumentu vložit nový odstavec, musíte do něj vložit znak odstavce. [DocumentBuilder.Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln) do dokumentu vloží nejen řetězec textu, ale také přidá odstavec zlom.

Aktuální formátování písma je také specifikováno [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) vlastnost a formátování aktuálního odstavce je určeno [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getParagraphFormat) majetek. V další sekci se budeme podrobněji zabývat formátováním odstavců.

Následující příklad kódu ukazuje, jak vložit odstavec do dokumentu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}


## Formátovací odstavec

Formátování aktuálního odstavce představuje [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) objekt, který je vrácen [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getParagraphFormat) majetek. Tento objekt zapouzdřuje různé parametry formátování dostupné v Microsoft Word. Můžete snadno resetovat paragraf formátování na jeho výchozí normální styl, levá-zařazeno, žádné odsazení, žádné rozestupy, žádné hranice, žádné stínování? [ClearFormatting](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#clearFormatting).

Následující příklad kódu ukazuje, jak nastavit formátování odstavců:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderSetParagraphFormatting.java" >}}

## Použít styl odstavce

Některé formátování objektů, jako je písmo nebo odstavecFormat podpůrné styly. Jediný vestavěný nebo uživatelsky definovaný styl představuje [Style](https://reference.aspose.com/words/java/com.aspose.words/style/) objekt, který obsahuje odpovídající styl vlastnosti jako jméno, základní styl, písmo a paragraf formátování stylu, a tak dále.

Kromě toho **Style** objekt poskytuje [StyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/style/#getStyleIdentifier) Vlastnost, která vrací identifikátor locale-nezávislého stylu zastoupený **StyleIdentifier** hodnota výčtu. Jde o to, že názvy vestavěných stylů Microsoft Word jsou lokalizovány pro různé jazyky. Pomocí identifikátoru stylu můžete najít správný styl bez ohledu na jazyk dokumentu. Hodnoty výčtu odpovídají Microsoft Word vestavěné styly, jako jsou *Normal*, *Míří 1*, *Míří 2*, atd. Všechny uživatelské styly jsou přiřazeny **StyleIdentifier. Uživatelská hodnota**.

Následující příklad kódu ukazuje, jak použít odstavec:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyParagraphStyle.java" >}}

## Vložit stylový oddělovač pro různé odstíny

Oddělovač stylu lze přidat na konec odstavce pomocí klávesové zkratky Ctrl + Alt + Enter do MS Word. Tato funkce umožňuje dva různé odstíny používané v jednom logickém tištěném odstavci. Pokud chcete nějaký text od začátku určitého čísla, který se objeví v Obsahu, ale nechcete celý nadpis v Obsahu, můžete použít tuto funkci.

Následující příklad kódu ukazuje, jak vložit oddělovač stylu, aby vyhovoval různým stylům odstavce:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ParagraphInsertStyleSeparator.java" >}}


## Použít hranice a stínění na odstavec

Hranice v Aspose.Words jsou zastoupeny [BorderCollection](https://reference.aspose.com/words/java/com.aspose.words/bordercollection/) třída [Border](https://reference.aspose.com/words/java/com.aspose.words/border/) objekty, které jsou přístupné podle indexu nebo typu hranice. The `Border` typ představuje [BorderType](https://reference.aspose.com/words/java/com.aspose.words/bordertype/) výčtu. Některé hodnoty výčtu se vztahují na několik nebo pouze jeden prvek dokumentu. Například, **BorderType.Bottom** je použitelná pro odstavec nebo tabulku, zatímco **BorderType.DiagonalDown** určuje diagonální hranici pouze v buňce tabulky.

Sbírka hranic i každá samostatná hranice mají podobné atributy jako barva, styl čáry, šířka čáry, vzdálenost od textu a volitelný stín. Jsou reprezentovány vlastnostmi stejného jména. Můžete dosáhnout různých typů hranic kombinací hodnot nemovitostí. Kromě toho obojí **BorderCollection** a **Border** objekty umožňují resetovat tyto hodnoty výchozí voláním [ClearFormatting](https://reference.aspose.com/words/java/com.aspose.words/border/#clearFormatting) metoda.

{{% alert color="primary" %}}

Všimněte si, že když jsou vlastnosti hranic resetovány na výchozí hodnoty, hranice je neviditelná.

{{% /alert %}}

Aspose.Words má také [Shading](https://reference.aspose.com/words/java/com.aspose.words/shading/) třída obsahuje stínovací atributy pro prvky dokumentu. Můžete nastavit požadovanou stínovací strukturu a barvy, které jsou aplikovány na pozadí a popředí prvku.

Šikmá textura je nastavena na [TextureIndex](https://reference.aspose.com/words/java/com.aspose.words/textureindex/) hodnota výčtu, která umožňuje aplikaci různých vzorů na **Shading** objekt. Například pro nastavení barvy pozadí prvku dokumentu použijte `TextureIndex.TextureSolid` hodnota a nastavit barvu stínování popředí podle potřeby. Příklad kódu uvedený níže ukazuje, jak použít hranice a stínování na odstavec.

Následující příklad kódu ukazuje, jak použít hranice a stínování na odstavec:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyBordersAndShadingToParagraph.java" >}}
