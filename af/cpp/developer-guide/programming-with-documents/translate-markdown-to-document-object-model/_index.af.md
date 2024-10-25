---
title: Vertaal Markdown Na Dokument Objek Model (DOM)
second_title: Aspose.Words vir C++
articleTitle: Vertaal Markdown Na Dokument Objek Model (DOM)
linktitle: Vertaal Markdown Na Dokument Objek Model (DOM)
type: docs
description: "Tarnslate'n Markdown dokument Om Voorwerp Model En terug Te Dokumenteer met behulp van C++. So jy kan werk met komplekse bestaande Markdown en programmaties skep'n Markdown dokument van nuuts af."
weight: 20
url: /af/cpp/translate-markdown-to-document-object-model/
---

Om die inhoud en formatering van'n dokument programmaties te lees, te manipuleer en te verander, moet jy dit vertaal na die Aspose.Words Document Object Model (DOM).

In teenstelling met Word-dokumente, voldoen Markdown nie aan die DOM wat in Die [Aspose.Words Dokument Voorwerp Model (DOM)](/words/cpp/aspose-words-document-object-model/) artikel. Aspose.Words bied egter sy eie meganisme vir die vertaling van Markdown dokumente na DOM en terug, sodat ons suksesvol kan werk met hul elemente soos teks opmaak, tabelle, koptekste, en ander.

Hierdie artikel verduidelik hoe die verskillende markdown kenmerke vertaal kan word in Aspose.Words DOM en terug na Markdown formaat.

## Kompleksiteit Van Vertaling Markdown – DOM – Markdown

Die grootste probleem van hierdie meganisme is nie net om Markdown te vertaal na DOM nie, maar ook om die omgekeerde transformasie te doen om die dokument terug te stoor na Markdown formaat met minimale verlies. Daar is elemente, soos meervlak aanhalingstekens, waarvoor die omgekeerde transformasie nie triviaal is nie.

Ons vertaling enjin kan gebruikers nie net om te werk met komplekse elemente in'n bestaande Markdown dokument, maar ook om hul eie dokument te skep in Markdown formaat met die oorspronklike struktuur van nuuts af. Om verskeie elemente te skep, moet jy style met spesifieke name gebruik volgens sekere reëls wat later in hierdie artikel beskryf word. Sulke style kan programmaties geskep word.

## Algemene Vertaalbeginsels

Ons gebruik [Font](https://reference.aspose.com/words/cpp/aspose.words/font/) formatering vir inline blokke. Wanneer daar geen direkte ooreenstemming is vir'n Markdown kenmerk in Aspose.Words DOM nie, gebruik ons'n karakterstyl met'n naam wat begin met'n paar spesiale woorde.

Vir houerblokke gebruik ons styl oorerwing om geneste Markdown kenmerke aan te dui. In hierdie geval, selfs wanneer daar geen geneste kenmerke is nie, gebruik ons ook paragraafstyle met'n naam wat van'n paar spesiale woorde begin.

Bullet en bestel lyste is houer blokke in Markdown sowel. Hul nes is verteenwoordig in DOM op dieselfde manier as vir alle ander houer blokke met behulp van styl erfenis. Daarbenewens het lyste in DOM egter ooreenstemmende nommeropmaak in lysstyl of paragraafopmaak.

## Inlyn Blokke

Ons gebruik [Font](https://reference.aspose.com/words/cpp/aspose.words/font/) formatering wanneer ons **Bold**, *Italic* of ~~Strikethrough~~ inline markdown funksies vertaal.

| Markdown kenmerk | Aspose.Words |
| ----------------------------- | ------------------ |
| **Bold**<br />`**bold text**` | `get_Font()->set_Bold(true)` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-BoldText.h" >}} |  |
| **Italic**<br />`*italic text*` | `get_Font()->set_Italic(true)` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-ItalicText.h" >}} |  |
| **Strikethrough**<br />`~Strikethrough text~` | `get_Font()->set_StrikeThrough(true)` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Strikethrough.h" >}} |  |

Ons gebruik'n karakter styl met'n naam wat begin van die woord `InlineCode`, gevolg deur'n opsionele punt `(.)` en'n aantal backticks ```(`)``` vir die `InlineCode` funksie. As'n aantal backticks gemis word, dan sal een backtick gebruik word by verstek.

| Markdown kenmerk | Aspose.Words |
| ----------------------------- | ------------------ |
| **InlineCode**<br />`**inline code**` | `get_Font()->set_StyleName(u"InlineCode[.][N]")` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-InlineCode.h" >}} |  |
| **Autolink**<br />`<scheme://domain.com>`<br />`<email@domain.com>` | Die [FieldHyperlink](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldhyperlink/) klas. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Autolink.h" >}} |  |
| **Link**<br />`[link text](url)`<br />`[link text](<url>"title")`<br />`[link text](url 'title')`<br />`[link text](url (title))` | Die [FieldHyperlink](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldhyperlink/) klas. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Link.h" >}} |  |
| **Image**<br />`![](url)`<br />`![alt text](<url>"title")`<br />`![alt text](url ‘title’)`<br />`![alt text](url (title))` | Die [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) klas. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Image.h" >}} |  |

## Houerblokke

'n dokument is'n reeks houerblokke soos opskrifte, paragrawe, lyste, aanhalings en ander. Container blokke kan verdeel word in 2 klasse: Blaar blokke en Komplekse Houers. Blaarblokke kan slegs inline inhoud bevat. Komplekse houers kan op hul beurt ander houerblokke bevat, insluitend Blaarblokke.

### Blaarblokke

Die tabel hieronder toon voorbeelde van die gebruik van Markdown Blaarblokke in Aspose.Words:

| Markdown kenmerk | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **HorizontalRule**<br />`-----` | Dit is'n eenvoudige paragraaf met'n ooreenstemmende HorizontalRule vorm:<br />`DocumentBuilder::InsertHorizontalRule()` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-HorizontalRule.h" >}} |  |
| **ATX Heading**<br />`# H1, ## H2, ### H3…` | `get_ParagraphFormat()->set_StyleName(u"Heading N")`, waar (1<= N <= 9).<br />Dit word in'n ingeboude styl vertaal en moet presies van die gespesifiseerde patroon wees (geen agtervoegsels of voorvoegsels word toegelaat nie).<br />Andersins sal dit net'n gewone paragraaf met'n ooreenstemmende styl wees. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Heading.h" >}} |  |
| **Setext Heading**<br />`===` (if Heading level 1),<br />`---` (if Heading level 2) | `get_ParagraphFormat->set_StyleName(u"SetextHeading[some suffix]")`, gebaseer op `"Heading N"` styl.<br />As (n >= 2), dan sal `"Heading 2"` gebruik word, anders sal `"Heading 1"`.<br />Enige agtervoegsel word toegelaat, maar Aspose.Words invoerder gebruik getalle "1" en "2" onderskeidelik. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-SetextHeading.h" >}} |  |
| **Indented Code** | `get_ParagraphFormat->set_StyleName(u"IndentedCode[some suffix]")` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-IndentedCode.h" >}} |  |
| **Fenced Code**<br />{{< highlight csharp >}}``` c#
if ()
then
else
```{{< /highlight >}} | `get_ParagraphFormat()->set_StyleName(u"FencedCode[.][info string]")`<br />Die `[.]` en `[info string]` is opsioneel. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-FencedCode.h" >}} |  |

### Komplekse Houers

Die tabel hieronder toon voorbeelde van die gebruik van Markdown Komplekse Houers in Aspose.Words:

| Markdown kenmerk | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **Quote**<br />`> quote,`<br />`>> nested quote` | `get_ParagraphFormat()->set_StyleName(u"Quote[some suffix]")`<br />Die agtervoegsel in stylnaam is opsioneel, maar Aspose.Words invoerder gebruik die geordende nommers 1, 2, 3, .... in die geval van geneste aanhalings.<br />Die nes word gedefinieer deur die oorgeërfde style. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Quote.h" >}} |  |
| **BulletedList**<br />`- Item 1`<br />`- Item 2`<br />	` - Item 2a`<br />	` - Item 2b` | Bullet lyste word verteenwoordig met behulp van paragraaf nommering:<br />`get_ListFormat()->ApplyBulletDefault()`<br />Daar kan 3 tipes van koeëllyste wees. Hulle is slegs diff in'n nommering formaat van die heel eerste vlak. Dit is: `‘-’`, `‘+’` of `‘*’` onderskeidelik. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-BulletedList.h" >}} |  |
| **OrderedList**<br />`1. Item 1`<br />`2. Item 2`<br />	`1) Item 2a`<br />	`2) Item 2b` | Geordende lyste word verteenwoordig deur paragraafnommering te gebruik:<br />`get_ListFormat()->ApplyNumberDefault()`<br />Daar kan 2 nommer formaat merkers wees: ‘.’ en ‘)’. Die standaard merker is ‘.’. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-OrderedList.h" >}} |  |

### Tabelle

Aspose.Words laat ook toe om tabelle te vertaal in DOM, soos hieronder getoon:

| Markdown kenmerk | Aspose.Words |
| ---------------------------------------- | ------------------------------------------------------------ |
| `Table`<br />`a|b`<br />`-|-`<br />`c|d` | [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/), [Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/) en [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/) klasse. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Table.h" >}} |  |

## Sien Ook

* [Werk met Markdown Funksies](/words/cpp/working-with-markdown-features/)

