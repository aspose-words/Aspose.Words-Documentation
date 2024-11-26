---
title: Translate Markdown to Document Object Model (DOM)
second_title: Aspose.Words pro C++
articleTitle: Translate Markdown to Document Object Model (DOM)
linktitle: Translate Markdown to Document Object Model (DOM)
type: docs
description: "Tarnslate Markdown dokument dokumentovat objektový Model a zpět pomocí C++. Takže můžete pracovat s komplexními existujícími Markdown a programově vytvářet Markdown dokument od nuly."
weight: 20
url: /cs/cpp/translate-markdown-to-document-object-model/
timestamp: 2024-10-21-11-17-44
---

Chcete-li programově číst, manipulovat a upravovat obsah a formátování dokumentu, musíte jej přeložit do Aspose.Words objektového modelu dokumentu (DOM).

Na rozdíl od Word dokumentů Markdown neodpovídá DOM popsanému v [Aspose.Words Model Objektu Dokumentu (DOM)](/words/cpp/aspose-words-document-object-model/) článek. Aspose.Words však poskytuje svůj vlastní mechanismus pro překlad dokumentů Markdown do DOM a zpět, abychom mohli úspěšně pracovat s jejich prvky, jako je formátování textu, tabulky, záhlaví a další.

Tento článek vysvětluje, jak lze různé funkce markdown přeložit do Aspose.Words DOM a zpět do formátu Markdown.

## Složitost překladu Markdown – DOM – Markdown

Hlavním problémem tohoto mechanismu je nejen přeložit Markdown na DOM, ale také provést reverzní transformaci – uložit dokument zpět do formátu Markdown s minimální ztrátou. Existují prvky, jako jsou víceúrovňové uvozovky, pro které není reverzní transformace triviální.

Náš překladový modul umožňuje uživatelům nejen pracovat se složitými prvky v existujícím dokumentu Markdown, ale také vytvářet vlastní dokument ve formátu Markdown s původní strukturou od nuly. Chcete-li vytvořit různé prvky, musíte použít styly se specifickými názvy podle určitých pravidel popsaných dále v tomto článku. Takové styly lze vytvářet programově.

## Společné Principy Překladu

Pro vložené bloky používáme formátování [Font](https://reference.aspose.com/words/cpp/aspose.words/font/). Pokud neexistuje přímá korespondence pro funkci Markdown v Aspose.Words DOM, použijeme znakový styl s názvem, který začíná některými speciálními slovy.

U kontejnerových bloků používáme dědičnost stylů k označení vnořených funkcí Markdown. V tomto případě, i když neexistují žádné vnořené funkce, používáme také styly odstavců s názvem, který začíná některými speciálními slovy.

Seznamy s odrážkami a seřazené seznamy jsou také bloky kontejnerů v Markdown. Jejich vnoření je reprezentováno v DOM stejným způsobem jako u všech ostatních kontejnerových bloků pomocí dědičnosti stylů. Seznamy v DOM však navíc odpovídaly formátování čísel buď ve stylu seznamu, nebo ve formátování odstavců.

## Inline Bloky

Při překladu funkcí **Bold**, *Italic* nebo ~~Strikethrough~~ inline markdown používáme formátování [Font](https://reference.aspose.com/words/cpp/aspose.words/font/).

| Markdown funkce | Aspose.Words |
| ----------------------------- | ------------------ |
| **Bold**<br />`**bold text**` | `get_Font()->set_Bold(true)` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-BoldText.h" >}} |  |
| **Italic**<br />`*italic text*` | `get_Font()->set_Italic(true)` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-ItalicText.h" >}} |  |
| **Strikethrough**<br />`~Strikethrough text~` | `get_Font()->set_StrikeThrough(true)` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Strikethrough.h" >}} |  |

Používáme znakový styl s názvem, který začíná od slova `InlineCode`, následovaný volitelnou tečkou `(.)` a řadou zpětných tlačítek ```(`)``` pro funkci `InlineCode`. Pokud je vynechán počet backticků, bude ve výchozím nastavení použit jeden backtick.

| Markdown funkce | Aspose.Words |
| ----------------------------- | ------------------ |
| **InlineCode**<br />`**inline code**` | `get_Font()->set_StyleName(u"InlineCode[.][N]")` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-InlineCode.h" >}} |  |
| **Autolink**<br />`<scheme://domain.com>`<br />`<email@domain.com>` | Třída [FieldHyperlink](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldhyperlink/). |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Autolink.h" >}} |  |
| **Link**<br />`[link text](url)`<br />`[link text](<url>"title")`<br />`[link text](url 'title')`<br />`[link text](url (title))` | Třída [FieldHyperlink](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldhyperlink/). |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Link.h" >}} |  |
| **Image**<br />`![](url)`<br />`![alt text](<url>"title")`<br />`![alt text](url ‘title’)`<br />`![alt text](url (title))` | Třída [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/). |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Image.h" >}} |  |

## Kontejnerové Bloky

Dokument je posloupnost kontejnerových bloků, jako jsou nadpisy, odstavce, seznamy, uvozovky a další. Kontejnerové bloky lze rozdělit do 2 tříd: listové bloky a složité kontejnery. Listové bloky mohou obsahovat pouze vložený obsah. Složité kontejnery zase mohou obsahovat další kontejnerové bloky, včetně listových bloků.

### Listové Bloky

Níže uvedená tabulka ukazuje příklady použití Markdown listových bloků v Aspose.Words:

| Markdown funkce | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **HorizontalRule**<br />`-----` | Jedná se o jednoduchý odstavec s odpovídajícím tvarem HorizontalRule:<br />`DocumentBuilder::InsertHorizontalRule()` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-HorizontalRule.h" >}} |  |
| **ATX Heading**<br />`# H1, ## H2, ### H3…` | `get_ParagraphFormat()->set_StyleName(u"Heading N")`, kde (1<= N <= 9).<br />To je přeloženo do vestavěného stylu a mělo by být přesně zadaného vzoru (nejsou povoleny žádné přípony ani předpony).<br />Jinak to bude jen běžný odstavec s odpovídajícím stylem. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Heading.h" >}} |  |
| **Setext Heading**<br />`===` (if Heading level 1),<br />`---` (if Heading level 2) | `get_ParagraphFormat->set_StyleName(u"SetextHeading[some suffix]")`, na základě stylu' Nadpis N'.<br />Pokud (N >= 2), použije se 'Heading 2', jinak 'Heading 1'.<br />Jakákoli Přípona je povolena ,ale Aspose.Words dovozce používá čísla "1" a "2". |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-SetextHeading.h" >}} |  |
| **Indented Code** | `get_ParagraphFormat->set_StyleName(u"IndentedCode[some suffix]")` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-IndentedCode.h" >}} |  |
| **Fenced Code**<br />{{< highlight csharp >}}``` c#
if ()
then
else
```{{< /highlight >}} | `get_ParagraphFormat()->set_StyleName(u"FencedCode[.][info string]")`<br /> `[.]` a `[info string]` jsou volitelné. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-FencedCode.h" >}} |  |

### Komplexní Kontejnery

Níže uvedená tabulka ukazuje příklady použití Markdown komplexních kontejnerů v Aspose.Words:

| Markdown funkce | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **Quote**<br />`> quote,`<br />`>> nested quote` | `get_ParagraphFormat()->set_StyleName(u"Quote[some suffix]")`<br />přípona v názvu stylu je volitelná ,ale Aspose.Words dovozce používá seřazená čísla 1, 2, 3, .... v případě vnořených uvozovek.<br />Vnoření je definováno pomocí zděděných stylů. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Quote.h" >}} |  |
| **BulletedList**<br />`- Item 1`<br />`- Item 2`<br />	` - Item 2a`<br />	` - Item 2b` | Seznamy s odrážkami jsou reprezentovány pomocí číslování odstavců:<br />`get_ListFormat()->ApplyBulletDefault()`<br />mohou existovat 3 typy seznamů s odrážkami. Liší se pouze ve formátu číslování úplně první úrovně. Jsou to: `‘-’`, `‘+’` nebo `‘*’`. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-BulletedList.h" >}} |  |
| **OrderedList**<br />`1. Item 1`<br />`2. Item 2`<br />	`1) Item 2a`<br />	`2) Item 2b` | Uspořádané seznamy jsou reprezentovány pomocí číslování odstavců:<br />`get_ListFormat()->ApplyNumberDefault()`<br />mohou existovat 2 značky formátu čísel: ‘.’ a ‘)’. Výchozí značka je ‘.’. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-OrderedList.h" >}} |  |

### Tabulka

Aspose.Words také umožňuje překládat tabulky do DOM, Jak je uvedeno níže:

| Markdown funkce | Aspose.Words |
| ---------------------------------------- | ------------------------------------------------------------ |
| `Table`<br />`a|b`<br />`-|-`<br />`c|d` | [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/), [Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/) a [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/) třídy. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Table.h" >}} |  |

## Vidět

* [Práce s funkcemi Markdown ](/words/cpp/working-with-markdown-features/)

