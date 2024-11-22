---
title: Přeložit Markdown až DOM
second_title: Aspose.Words místo .NET
articleTitle: Přeložit Markdown až Document Object Model (DOM)
linktitle: Přeložit Markdown až Document Object Model (DOM)
type: docs
description: "Přeložit a Markdown doklad k Document Object Model a zpětné použití C#. Takže můžete pracovat se složitými existujícími Markdown a programově vytvořit Markdown Dokument od začátku."
weight: 20
url: /cs/net/translate-markdown-to-document-object-model/
timestamp: 2024-10-21-11-17-44
---

Chcete-li programově číst, manipulovat a upravovat obsah a formátování dokumentu, musíte jej přeložit do Aspose.Words Document Object Model (DOM).

Na rozdíl od dokumentů Word, Markdown neodpovídá DOM popsané v [Aspose.Words Document Object Model (DOM)](/words/cs/net/aspose-words-document-object-model/) článek. Nicméně, Aspose.Words poskytuje svůj vlastní mechanismus pro překlad Markdown doklady k DOM a zpět, abychom mohli úspěšně pracovat s jejich prvky, jako je formátování textu, tabulky, hlavičky, a další.

Tento článek vysvětluje, jak různé markdown funkce mohou být přeloženy do Aspose.Words DOM a zpět k Markdown formát.

## Složitost překladu Markdown - Co? DOM - Co? Markdown

Hlavním problémem tohoto mechanismu je nejen překládat Markdown až DOM, ale také k provedení reverzní transformace, aby byl dokument uložen zpět na Markdown formát s minimální ztrátou. Existují prvky, jako jsou multilevel citace, pro které reverzní transformace není triviální.

Náš překladatelský motor umožňuje uživatelům nejen pracovat se složitými prvky ve stávající Markdown dokument, ale také vytvořit svůj vlastní dokument v Markdown formát s původní strukturou od nuly. Chcete-li vytvořit různé prvky, musíte použít styly s konkrétními názvy podle některých pravidel popsaných později v tomto článku. Takové styly lze vytvořit programově.

## Společný překlad Zásady

Používáme [Font](https://reference.aspose.com/words/net/aspose.words/font/) formátování pro inline bloky. Pokud neexistuje přímá korespondence pro Markdown funkce v Aspose.Words DOM, používáme charakterový styl se jménem, který začíná z některých speciálních slov.

Pro kontejnerové bloky používáme styl dědictví k označení hnízda Markdown funkce. V tomto případě, i když nejsou žádné vnořené rysy, používáme také odstíny s názvem, který začíná z některých zvláštních slov.

Kulky a objednané seznamy jsou kontejnerové bloky v Markdown Taky. Jejich hnízdění je zastoupeno v DOM stejně jako u všech ostatních kontejnerových bloků za použití stylu dědictví. Avšak kromě toho seznam DOM odpovídají formátování čísel buď ve stylu seznamu, nebo ve formátu odstavce.

## Inline bloky

Používáme [Font](https://reference.aspose.com/words/net/aspose.words/font/) formátování při překladu **Bold**, *Italic* nebo ~~Strikethrough~~ inline markdown funkce.

|  Markdown funkce |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **Bold**<br/>`{1}` |  `Font.Bold = true`  |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-BoldText.cs" >}}  |  |
|  **Italic**<br/>`*italic text*` |  `Font.Italic = true`  |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-ItalicText.cs" >}}  |  |
|  **Strikethrough**<br/>`~Strikethrough text~` |  `Font.StrikeThrough = true`  |
|  {{< highlight csharp >}} // Use a document builder to add content to the document.
DocumentBuilder builder = new DocumentBuilder();

// Make the text Strikethrough.
builder.Font.Strikethrough = true;
builder.Writeln("This text will be Strikethrough"); {{< /highlight >}} |  |

Používáme charakterový styl se jménem, který začíná slovem `InlineCode`,? následuje volitelná tečka `(.)` a řada odplat ```(`)``` pro `InlineCode` bonus. Je-li chybět několik backticks, pak jeden backtick bude použit ve výchozím nastavení.

|  Markdown funkce |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **InlineCode**<br/>`{1}` |  `Font.StyleName = “InlineCode[.][N]”`  |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-InlineCode.cs" >}}  |  |
|  **Autolink**<br/>`<scheme://domain.com>`<br/>`<email@domain.com>` |  • [FieldHyperlink](https://reference.aspose.com/words/net/aspose.words.fields/fieldhyperlink/) třída |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Autolink.cs" >}}  |  |
|  **Link**<br/>`{1}`<br/>`{2}`<br/>`{3}`<br/>`{4})` |  • [FieldHyperlink](https://reference.aspose.com/words/net/aspose.words.fields/fieldhyperlink/) třída |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Link.cs" >}}  |  |
|  **Image**<br/>`{1}`<br/>`{2}`<br/>`{3}`<br/>`{4})` |  • [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) třída |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Image.cs" >}}  |  |

## Bloky kontejnerů

Dokument je posloupnost kontejnerových bloků, jako jsou nadpisy, odstavce, seznamy, citace a další. Kontejnerové bloky lze rozdělit do dvou tříd: Listové bloky a komplexní kontejnery. Listové bloky mohou obsahovat pouze inline obsah. Komplexní kontejnery zase mohou obsahovat jiné kontejnerové bloky, včetně Leaf bloků.

### Listové bloky

Níže uvedená tabulka uvádí příklady použití Markdown Listové bloky v Aspose.Words:

|  Markdown funkce |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **HorizontalRule**<br/>`-----` |  Jedná se o jednoduchý odstavec s odpovídajícím tvarem horizontálního pravidla:<br/>`DocumentBuilder.InsertHorizontalRule()` |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-HorizontalRule.cs" >}}  |                                                                |
|  **ATX Heading**<br/>`# H1, ## H2, ### H3…` |  `ParagraphFormat.StyleName = “Heading N”`, kde (1 <= N ≤ 9).<br/>To je přeloženo do vestavěného stylu a mělo by být přesně zadaného vzoru (nejsou povoleny žádné přípony nebo předpony).<br/>Jinak to bude jen pravidelný odstavec s odpovídajícím stylem |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Heading.cs" >}}  |                                                                |
|  **Setext Heading**<br/>`===` (pokud úroveň čísla 1),<br/>`---` (jestliže číslo 2) |  `ParagraphFormat.StyleName = “SetextHeading[some suffix]”`, na základě `“Heading N”` Styl.<br/>Pokud: `“Heading 2”` bude použito jinak `“Heading 1”`.<br/>Každá přípona je povolena, ale Aspose.Words dovozce používá čísla КАКА a КАКА |
|  {{< highlight csharp >}} // Use a document builder to add content to the document.
DocumentBuilder builder = new DocumentBuilder();

builder.ParagraphFormat.StyleName = "Heading 1";
builder.Writeln("This is an H1 tag");

// Reset styles from the previous paragraph to not combine styles between paragraphs.
builder.Font.Bold = false;
builder.Font.Italic = false;

Style setexHeading1 = builder.Document.Styles.Add(StyleType.Paragraph, "SetextHeading1");
builder.ParagraphFormat.Style = setexHeading1;
builder.Document.Styles["SetextHeading1"].BaseStyleName = "Heading 1";
builder.Writeln("Setext Heading level 1");

builder.ParagraphFormat.Style = builder.Document.Styles["Heading 3"];
builder.Writeln("This is an H3 tag");

// Reset styles from the previous paragraph to not combine styles between paragraphs.
builder.Font.Bold = false;
builder.Font.Italic = false;

Style setexHeading2 = builder.Document.Styles.Add(StyleType.Paragraph, "SetextHeading2");
builder.ParagraphFormat.Style = setexHeading2;
builder.Document.Styles["SetextHeading2"].BaseStyleName = "Heading 3";

// Setex heading level will be reset to 2 if the base paragraph has a Heading level greater than 2.
builder.Writeln("Setext Heading level 2"); {{< /highlight >}} |
|   **Indented Code**                                             |  `ParagraphFormat.StyleName = “IndentedCode[some suffix]”`     |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-IndentedCode.cs" >}}  |                                                                |
|  **Fenced Code**<br/>{{< highlight csharp >}}``` c#
if ()
then
else
```{{< /highlight >}} |  `ParagraphFormat.StyleName = “FencedCode[.][info string]”`<br/>• `[.]` a `[info string]` jsou nepovinné |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-FencedCode.cs" >}}   |                                                                |

### Komplexní kontejnery

Níže uvedená tabulka uvádí příklady použití Markdown Komplexní kontejnery v Aspose.Words:

|  Markdown funkce |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **Quote**<br/>`> quote,`<br/>`>> nested quote` |  `ParagraphFormat.StyleName = “Quote[some suffix]”`<br/>Přípona ve stylu je volitelná, ale Aspose.Words dovozce používá objednaná čísla 1, 2, 3, .... v případě hnízdě kotací.<br/>Hnízdo je definováno prostřednictvím dědičných stylů |
|  {{< highlight csharp >}} // Use a document builder to add content to the document.
DocumentBuilder builder = new DocumentBuilder();

// By default a document stores blockquote style for the first level.
builder.ParagraphFormat.StyleName = "Quote";
builder.Writeln("Blockquote");

// Create styles for nested levels through style inheritance.
Style quoteLevel2 = builder.Document.Styles.Add(StyleType.Paragraph, "Quote1");
builder.ParagraphFormat.Style = quoteLevel2;
builder.Document.Styles["Quote1"].BaseStyleName = "Quote";
builder.Writeln("1. Nested blockquote"); {{< /highlight >}} |
|  **BulletedList**<br/>`- Item 1`<br/>`- Item 2`<br/> `   - Item 2a`<br/> `   - Item 2b` |  Výbušné seznamy jsou zastoupeny číslováním odstavce:<br/>`ListFormat.ApplyBulletDefault()`<br/>Můžou být tři typy zastřelených seznamů. Jsou jen rozdíl v číslování formátu úplně první úrovně. Jedná se o: `‘-’`, `‘+’` nebo `‘*’` resp |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-BulletedList.cs" >}}  |                                                                |
|  **OrderedList**<br/>`1. Item 1`<br/>`2. Item 2`<br/> `1) Item 2a`<br/> `2) Item 2b` |  Objednané seznamy jsou zastoupeny podle číslování odstavce:<br/>`ListFormat.ApplyNumberDefault()`<br/>Mohou existovat 2 znaky formátů čísel: Výchozím ukazatelem je: |
|  {{< highlight csharp >}}Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

builder.ListFormat.ApplyBulletDefault();
builder.ListFormat.List.ListLevels[0].NumberFormat = $"{(char) 0}.";
builder.ListFormat.List.ListLevels[1].NumberFormat = $"{(char) 1}.";

builder.Writeln("Item 1");
builder.Writeln("Item 2");

builder.ListFormat.ListIndent();

builder.Writeln("Item 2a");
builder.Writeln("Item 2b"); {{< /highlight >}} |                                                                |

### Tabulky

Aspose.Words také umožňuje přeložit tabulky do DOM, jak je uvedeno níže:

|  Markdown funkce |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  `Table`<br/>a|b`<br />`-|-`<br />`c|d - Co? |  [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/), [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) a [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/) třídy |
|  {{< highlight csharp >}} // Use a document builder to add content to the document.
DocumentBuilder builder = new DocumentBuilder();

// Add the first row.
builder.InsertCell();
builder.Writeln("a");
builder.InsertCell();
builder.Writeln("b");

// Add the second row.
builder.InsertCell();
builder.Writeln("c");
builder.InsertCell();
builder.Writeln("d"); {{< /highlight >}} |                                                                |

## Viz také

* [Práce s Markdown Vlastnosti](/words/cs/net/working-with-markdown-features/)

