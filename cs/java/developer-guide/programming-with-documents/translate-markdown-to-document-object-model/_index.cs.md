---
title: Přeložit Markdown až DOM
second_title: Aspose.Words místo Java
articleTitle: Přeložit Markdown až Document Object Model (DOM)
linktitle: Přeložit Markdown až Document Object Model (DOM)
type: docs
description: "Tarnslát a Markdown dokument k Document Object Model a zpátky. Takže můžete pracovat se složitými existujícími Markdown a programově vytvořit Markdown dokument od nuly pomocí Java."
weight: 20
url: /cs/java/translate-markdown-to-document-object-model/
timestamp: 2024-10-21-11-17-44
---

Chcete-li programově číst, manipulovat a upravovat obsah a formátování dokumentu, musíte jej přeložit do Aspose.Words Document Object Model (DOM).

Na rozdíl od dokumentů Word, Markdown neodpovídá DOM popsané v [Aspose.Words Document Object Model (DOM)](/words/cs/java/aspose-words-document-object-model/) článek. Nicméně, Aspose.Words poskytuje svůj vlastní mechanismus pro překlad Markdown doklady k DOM a zpět, abychom mohli úspěšně pracovat s jejich prvky, jako je formátování textu, tabulky, hlavičky, a další.

Tento článek vysvětluje, jak různé markdown funkce lze přeložit do Aspose.Words DOM a zpět k Markdown formát.

## Složitost překladu Markdown? DOM? Markdown

Hlavní obtížností tohoto mechanismu je nejen překládat Markdown až DOM, ale také k provedení reverzní transformace, aby byl dokument uložen zpět Markdown formát s minimální ztrátou. Existují prvky, jako jsou víceúrovňové citace, pro které reverzní transformace není triviální.

Náš překladatelský motor umožňuje uživatelům nejen pracovat se složitými prvky v existující Markdown dokument, ale také vytvořit svůj vlastní dokument v Markdown formát s původní strukturou od nuly. Chcete-li vytvořit různé prvky, musíte použít styly s konkrétními názvy podle některých pravidel popsaných později v tomto článku. Takové styly lze vytvořit programově.

## Společný překlad Zásady

Používáme [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) formátování pro inline bloky. Pokud neexistuje přímá korespondence pro Markdown funkce v Aspose.Words DOM, používáme charakterový styl se jménem, který začíná z některých speciálních slov.

Pro kontejnerové bloky používáme styl dědictví k označení hnízda Markdown funkce. V tomto případě, i když tam nejsou žádné vnořené rysy, používáme také odstavce styly s názvem, který začíná z některých zvláštních slov.

Kulky a objednané seznamy jsou kontejnerové bloky v Markdown Taky. Jejich hnízdění je zastoupeno v DOM stejně jako u všech ostatních kontejnerových bloků za použití stylu dědictví. Avšak kromě toho seznam DOM odpovídají formátování čísel buď ve stylu seznamu, nebo ve formátu odstavce.

## Inline bloky

Používáme [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) formátování při překladu **Bold**, *Italic* nebo ~~Strikethrough~~ inline markdown funkce.

|  Markdown funkce |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **Bold**<br/>`{1}` |  `Font.Bold = true`  |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-BoldText.java" >}}  |  |
|  **Italic**<br/>`*italic text*` |  `Font.Italic = true`  |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-ItalicText.java" >}}  |  |
|  **Strikethrough**<br/>`~Strikethrough text~` |  `Font.StrikeThrough = true`  |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Strikethrough.java" >}}  |  |

Používáme styl postavy se jménem, který začíná od slova `InlineCode`, následuje volitelná tečka `(.)` a řada odplat ```(`)``` pro `InlineCode` bonus. Pokud se vynechá řada backticks, pak jeden backtick bude použit ve výchozím nastavení.

|  Markdown funkce |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **InlineCode**<br/>`{1}` |  `Font.StyleName = “InlineCode[.][N]”`  |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-InlineCode.java" >}}  |  |
|  **Autolink**<br/>`<scheme://domain.com>`<br/>`<email@domain.com>` |  The [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/) třída |
|     {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Autolink.java" >}}  |  |
|  **Link**<br/>`{1}`<br/>`{2}`<br/>`{3}`<br/>`{4})` |  The [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/) třída |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Link.java" >}}  |  |
|  **Image**<br/>`{1}`<br/>`{2}`<br/>`{3}`<br/>`{4})` |  The [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) třída |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Image.java" >}}  |  |

## Bloky kontejnerů

Dokument je posloupnost kontejnerových bloků, jako jsou nadpisy, odstavce, seznamy, uvozovky a další. Kontejnerové bloky lze rozdělit do dvou tříd: Listové bloky a komplexní kontejnery. Listové bloky mohou obsahovat pouze inline obsah. Komplexní kontejnery zase mohou obsahovat další kontejnerové bloky, včetně Leaf bloků.

### Listové bloky

Níže uvedená tabulka uvádí příklady použití Markdown Listové bloky v Aspose.Words:

|  Markdown funkce |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **HorizontalRule**<br/>`-----` |  Jedná se o jednoduchý odstavec s odpovídajícím tvarem horizontálního pravidla:<br/>`DocumentBuilder.InsertHorizontalRule()` |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-HorizontalRule.java" >}}  |                                                                |
|  **ATX Heading**<br/>`# H1, ## H2, ### H3…` |  `ParagraphFormat.StyleName = "Heading N"`, 1 písm. c) nařízení o kapitálových požadavcích.<br/>To je přeloženo do vestavěného stylu a mělo by být přesně zadaného vzoru (nejsou povoleny žádné přípony nebo předpony).<br/>Jinak to bude jen pravidelný odstavec s odpovídajícím stylem |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Heading.java" >}}  |                                                                |
|  **Setext Heading**<br/>`===` (pokud úroveň názvu 1),<br/>`---` (je-li položka úrovně 2) |  `ParagraphFormat.StyleName = “SetextHeading[some suffix]”`, na základě 'Heading N' Styl.<br/>Pokud (N < 2), pak 'Heading 2' bude použito jinak 'Heading 1'.<br/>Každá přípona je povolena, ale Aspose.Words dovozce používá čísla 1,0% a 2,0% |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SetextHeading.java" >}}  |                                                                |
|   **Indented Code**                                             |  `ParagraphFormat.StyleName = “IndentedCode[some suffix]”`     |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-IndentedCode.java" >}}  |                                                                |
|  **Fenced Code**<br/>{{< highlight java >}}``` java
if ()
then
else
```{{< /highlight >}} |  `ParagraphFormat.StyleName = “FencedCode[.][info string]”`<br/>The `[.]` a `[info string]` jsou nepovinné |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-FencedCode.java" >}}   |                                                                |

### Komplexní kontejnery

Níže uvedená tabulka uvádí příklady použití Markdown Komplexní kontejnery v Aspose.Words:

|  Markdown funkce |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **Quote**<br/>`> quote,`<br/>`>> nested quote` |  `ParagraphFormat.StyleName = “Quote[some suffix]”`<br/>Přípona ve stylu je volitelná, ale Aspose.Words dovozce používá objednaná čísla 1, 2, 3, .... v případě hnízdě kotací.<br/>Hnízdo je definováno prostřednictvím dědičných stylů |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Quote.java" >}}  |                                                                |
|  **BulletedList**<br/>`- Item 1`<br/>`- Item 2`<br/> `   - Item 2a`<br/> `   - Item 2b` |  Seznamy s kulkou jsou zastoupeny číslováním odstavce:<br/>`ListFormat.ApplyBulletDefault()`<br/>Můžou tu být tři druhy zastřelených seznamů. Jsou pouze rozdíl v číslování formátu úplně první úrovně. Jedná se o: `‘-’`, `‘+’` nebo `‘*’` resp |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-BulletedList.java" >}}  |                                                                |
|  **OrderedList**<br/>`1. Item 1`<br/>`2. Item 2`<br/> `1) Item 2a`<br/> `2) Item 2b` |  Objednané seznamy jsou zastoupeny podle číslování odstavce:<br/>`ListFormat.ApplyNumberDefault()`<br/>Mohou existovat 2 znaky formátů čísel: Výchozím ukazatelem je: |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-OrderedList.java" >}}  |                                                                |

### Tabulky

Aspose.Words také umožňuje překládat tabulky do DOM, jak je uvedeno níže:

|  Markdown funkce |   Aspose.Words                                                  |
|  ----------------------------------------  |  ------------------------------------------------------------  |
|  `Table`<br/>a|b`<br />`-|-`<br />`c|d? |  [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) a [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) třídy |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Table.java" >}}  |                                                                |

## Viz také

* [Práce s Markdown Vlastnosti](/words/cs/java/working-with-markdown-features/)

