---
title: Markdown vertalen naar Document Object Model (DOM)
second_title: Aspose.Words voor C++
articleTitle: Markdown vertalen naar Document Object Model (DOM)
linktitle: Markdown vertalen naar Document Object Model (DOM)
type: docs
description: "Tarnslate een Markdown document naar Document Object Model en terug met behulp van C++. U kunt dus werken met complexe bestaande Markdown en programmatisch een Markdown - document helemaal opnieuw maken."
weight: 20
url: /nl/cpp/translate-markdown-to-document-object-model/
timestamp: 2024-10-21-11-17-44
---

Als u de inhoud en opmaak van een document programmatisch wilt lezen, bewerken en wijzigen, moet u het vertalen naar het Aspose.Words Document Object Model (DOM).

In tegenstelling tot Word documenten, is Markdown niet in overeenstemming met de DOM beschreven in de [Aspose.Words Document Object Model (DOM)](/words/cpp/aspose-words-document-object-model/) artikel. Aspose.Words biedt echter een eigen mechanisme voor het vertalen van Markdown documenten naar DOM en terug, zodat we met succes kunnen werken met hun elementen zoals tekstopmaak, tabellen, koppen en andere.

In dit artikel wordt uitgelegd hoe de verschillende markdown - functies kunnen worden vertaald in Aspose.Words DOM en terug naar Markdown - indeling.

## Complexiteit van Vertaling Markdown – DOM – Markdown

De grootste moeilijkheid van dit mechanisme is niet alleen om Markdown te vertalen naar DOM, maar ook om de omgekeerde transformatie te doen – om het document terug te slaan naar Markdown - formaat met minimaal verlies. Er zijn elementen, zoals aanhalingstekens op meerdere niveaus, waarvoor de omgekeerde transformatie niet triviaal is.

Onze vertaalmachine stelt gebruikers niet alleen in staat om te werken met complexe elementen in een bestaand Markdown document, maar ook om hun eigen document in Markdown formaat te maken met de originele structuur vanaf nul. Als u verschillende elementen wilt maken, moet u stijlen met specifieke namen gebruiken volgens bepaalde regels die later in dit artikel worden beschreven. Dergelijke stijlen kunnen programmatisch worden gemaakt.

## Gemeenschappelijke Vertaalbeginselen

We gebruiken [Font](https://reference.aspose.com/words/cpp/aspose.words/font/) opmaak voor inline blokken. Wanneer er geen directe overeenkomst is voor een Markdown functie in Aspose.Words DOM, gebruiken we een tekenstijl met een naam die begint met een aantal speciale woorden.

Voor containerblokken gebruiken we stijlovererving om geneste Markdown - kenmerken aan te geven. In dit geval, zelfs als er geen geneste functies zijn, gebruiken we ook alineastijlen met een naam die begint met een aantal speciale woorden.

Opsommingstekens en geordende lijsten zijn ook containerblokken in Markdown. Hun nesting wordt weergegeven in DOM op dezelfde manier als voor alle andere containerblokken met behulp van stijlovererving. Daarnaast hebben lijsten in DOM echter corresponderende nummeropmaak in lijststijl of alineaopmaak.

## Inline Blokken

We gebruiken [Font](https://reference.aspose.com/words/cpp/aspose.words/font/) opmaak bij het vertalen van **Bold**, *Italic* of ~~Strikethrough~~ inline markdown functies.

| Markdown functie | Aspose.Words |
| ----------------------------- | ------------------ |
| **Bold**<br />`**bold text**` | `get_Font()->set_Bold(true)` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-BoldText.h" >}} |  |
| **Italic**<br />`*italic text*` | `get_Font()->set_Italic(true)` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-ItalicText.h" >}} |  |
| **Strikethrough**<br />`~Strikethrough text~` | `get_Font()->set_StrikeThrough(true)` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Strikethrough.h" >}} |  |

We gebruiken een tekenstijl met een naam die begint met het woord `InlineCode`, gevolgd door een optionele punt `(.)` en een aantal backticks ```(`)``` voor de `InlineCode` functie. Als een aantal backticks wordt gemist, wordt standaard één backtick gebruikt.

| Markdown functie | Aspose.Words |
| ----------------------------- | ------------------ |
| **InlineCode**<br />`**inline code**` | `get_Font()->set_StyleName(u"InlineCode[.][N]")` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-InlineCode.h" >}} |  |
| **Autolink**<br />`<scheme://domain.com>`<br />`<email@domain.com>` | De [FieldHyperlink](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldhyperlink/) Klasse. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Autolink.h" >}} |  |
| **Link**<br />`[link text](url)`<br />`[link text](<url>"title")`<br />`[link text](url 'title')`<br />`[link text](url (title))` | De [FieldHyperlink](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldhyperlink/) Klasse. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Link.h" >}} |  |
| **Image**<br />`![](url)`<br />`![alt text](<url>"title")`<br />`![alt text](url ‘title’)`<br />`![alt text](url (title))` | De [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) Klasse. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Image.h" >}} |  |

## Container Blokken

Een document is een reeks containerblokken zoals koppen, alinea ' s, lijsten, aanhalingstekens en andere. Containerblokken kunnen worden onderverdeeld in 2 klassen: bladblokken en complexe Containers. Bladblokken kunnen alleen inline content bevatten. Complexe containers kunnen op hun beurt andere containerblokken bevatten, waaronder bladblokken.

### Blad Blokken

De onderstaande tabel toont voorbeelden van het gebruik van Markdown bladblokken in Aspose.Words:

| Markdown functie | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **HorizontalRule**<br />`-----` | Dit is een eenvoudige alinea met een overeenkomstige HorizontalRule vorm:<br />`DocumentBuilder::InsertHorizontalRule()` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-HorizontalRule.h" >}} |  |
| **ATX Heading**<br />`# H1, ## H2, ### H3…` | `get_ParagraphFormat()->set_StyleName(u"Heading N")`, Waar (1<= En <= 9).<br />Dit wordt vertaald in een ingebouwde stijl en moet precies van het gespecificeerde patroon zijn (geen achtervoegsels of voorvoegsels zijn toegestaan).<br />Anders is het gewoon een gewone paragraaf met een overeenkomstige stijl. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Heading.h" >}} |  |
| **Setext Heading**<br />`===` (if Heading level 1),<br />`---` (if Heading level 2) | `get_ParagraphFormat->set_StyleName(u"SetextHeading[some suffix]")`, gebaseerd op' Heading N ' stijl.<br />Als (N >= 2), dan wordt 'Heading 2' gebruikt, anders 'Heading 1'.<br />Elk achtervoegsel is toegestaan, maar Aspose.Words importeur gebruikt respectievelijk nummers "1" en "2". |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-SetextHeading.h" >}} |  |
| **Indented Code** | `get_ParagraphFormat->set_StyleName(u"IndentedCode[some suffix]")` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-IndentedCode.h" >}} |  |
| **Fenced Code**<br />{{< highlight csharp >}}``` c#
if ()
then
else
```{{< /highlight >}} | `get_ParagraphFormat()->set_StyleName(u"FencedCode[.][info string]")`<br />de `[.]` en `[info string]` zijn optioneel. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-FencedCode.h" >}} |  |

### Complexe Containers

De onderstaande tabel toont voorbeelden van het gebruik van Markdown complexe Containers in Aspose.Words:

| Markdown functie | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **Quote**<br />`> quote,`<br />`>> nested quote` | `get_ParagraphFormat()->set_StyleName(u"Quote[some suffix]")`<br />het achtervoegsel in stijlnaam is optioneel, maar Aspose.Words importeur gebruikt de geordende nummers 1, 2, 3, .... in het geval van geneste citaten.<br />De nesting wordt gedefinieerd via de erfelijke stijlen. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Quote.h" >}} |  |
| **BulletedList**<br />`- Item 1`<br />`- Item 2`<br />	` - Item 2a`<br />	` - Item 2b` | Lijsten met opsommingstekens worden weergegeven met behulp van paragraafnummering:<br />`get_ListFormat()->ApplyBulletDefault()`<br />Er kunnen 3 soorten lijsten met opsommingstekens zijn. Ze zijn alleen diff in een nummering formaat van het allereerste niveau. Deze zijn: `‘-’`, `‘+’` of `‘*’` respectievelijk. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-BulletedList.h" >}} |  |
| **OrderedList**<br />`1. Item 1`<br />`2. Item 2`<br />	`1) Item 2a`<br />	`2) Item 2b` | Geordende lijsten worden weergegeven met behulp van paragraafnummering:<br />`get_ListFormat()->ApplyNumberDefault()`<br />Er kunnen 2 getalnotatiemarkeringen zijn: ‘.’ en ‘)’. De standaard marker is ‘.’. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-OrderedList.h" >}} |  |

### Tabel

Aspose.Words maakt het ook mogelijk om tabellen te vertalen naar DOM, zoals hieronder getoond:

| Markdown functie | Aspose.Words |
| ---------------------------------------- | ------------------------------------------------------------ |
| `Table`<br />`a|b`<br />`-|-`<br />`c|d` | [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/), [Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/) en [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/) klassen. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Table.h" >}} |  |

## Zie Ook

* [Werken met Markdown Functies](/words/cpp/working-with-markdown-features/)

