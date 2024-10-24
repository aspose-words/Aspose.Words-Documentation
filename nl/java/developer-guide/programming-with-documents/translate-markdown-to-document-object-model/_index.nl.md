---
title: Vertalen Markdown tot DOM
second_title: Aspose.Words voor Java
articleTitle: Vertalen Markdown tot Document Object Model (DOM)
linktitle: Vertalen Markdown tot Document Object Model (DOM)
type: docs
description: "Tarnslaat a Markdown document aan Document Object Model En terug. Dus je kunt werken met complexe bestaande Markdown en programmatisch een Markdown document vanaf nul gebruiken Java."
weight: 20
url: /nl/java/translate-markdown-to-document-object-model/
---

Om de inhoud en opmaak van een document programmatisch te kunnen lezen, manipuleren en wijzigen, moet u het vertalen naar de Aspose.Words Document Object Model (DOM).

In tegenstelling tot Word-documenten, Markdown niet in overeenstemming is met de DOM beschreven in de [Aspose.Words Document Object Model (DOM)](/words/nl/java/aspose-words-document-object-model/) artikel. Echter, Aspose.Words biedt een eigen vertaalmechanisme Markdown documenten DOM en terug, zodat we succesvol kunnen werken met hun elementen zoals tekstopmaak, tabellen, headers en anderen.

Dit artikel legt uit hoe de verschillende markdown functies kunnen worden vertaald in Aspose.Words DOM en terug naar Markdown formaat.

## Complexiteit van de vertaling Markdown Wat? DOM Wat? Markdown

Het belangrijkste probleem van dit mechanisme is niet alleen het vertalen van Markdown tot DOM, maar ook om de omgekeerde transformatie doen om het document terug te slaan naar Markdown formaat met minimaal verlies. Er zijn elementen, zoals multilevel citaten, waarvoor de omgekeerde transformatie niet triviaal is.

Onze vertaalmachine laat gebruikers niet alleen werken met complexe elementen in een bestaande Markdown document, maar ook om hun eigen document aan te maken in Markdown formaat met de oorspronkelijke structuur vanaf nul. Om verschillende elementen te creëren, moet je stijlen met specifieke namen gebruiken volgens bepaalde regels die later in dit artikel worden beschreven. Dergelijke stijlen kunnen programmatisch worden gemaakt.

## Algemene vertaling Beginselen

We gebruiken [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) formatteren voor inline blokken. Wanneer er geen directe correspondentie voor een Markdown functie in Aspose.Words DOM, We gebruiken een karakter stijl met een naam die begint met een aantal speciale woorden.

Voor containerblokken gebruiken we stijlovererving om geneste aan te duiden Markdown Eigenschappen. In dit geval, zelfs als er geen geneste functies, gebruiken we ook alineastijlen met een naam die begint met een aantal speciale woorden.

Gekochte en bestelde lijsten zijn containerblokken in Markdown Ook. Hun nest is vertegenwoordigd in DOM op dezelfde manier als voor alle andere container blokken met behulp van stijl erfenis. Bovendien worden in DOM hebben overeenstemmende nummeropmaak in lijststijl of alineaopmaak.

## Inline-blokken

We gebruiken [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) formatteren bij vertalen **Bold**, *Italic* of ~~Strikethrough~~inline markdown Eigenschappen.

|  Markdown functie |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **Bold**<br/>`{1}` |  `Font.Bold = true`  |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-BoldText.java" >}}  |  |
|  **Italic**<br/>`*italic text*` |  `Font.Italic = true`  |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-ItalicText.java" >}}  |  |
|  **Strikethrough**<br/>`~Strikethrough text~` |  `Font.StrikeThrough = true`  |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Strikethrough.java" >}}  |  |

We gebruiken een karakterstijl met een naam die begint met het woord <span notrans="<span notrans=" `InlineCode`"=""></span>,"> gevolgd door een optionele stip `(.)` en een aantal backticks ```(`)``` voor de `InlineCode` feature. Als een aantal backticks wordt gemist, wordt standaard één backtick gebruikt.

|  Markdown functie |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **InlineCode**<br/>`{1}` |  `Font.StyleName = “InlineCode[.][N]”`  |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-InlineCode.java" >}}  |  |
|  **Autolink**<br/>`<scheme://domain.com>`<br/>`<email@domain.com>` |  De [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/) Klasse |
|     {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Autolink.java" >}}  |  |
|  **Link**<br/>`{1}`<br/>`{2}`<br/>`{3}`<br/>`{4})` |  De [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/) Klasse |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Link.java" >}}  |  |
|  **Image**<br/>`{1}`<br/>`{2}`<br/>`{3}`<br/>`{4})` |  De [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) Klasse |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Image.java" >}}  |  |

## Containerblokken

Een document is een reeks containerblokken zoals rubrieken, paragrafen, lijsten, citaten en andere. Containerblokken kunnen in 2 klassen worden onderverdeeld: Bladblokken en complexe containers. Bladblokken kunnen alleen inline-inhoud bevatten. Complexe containers kunnen op hun beurt andere containerblokken bevatten, waaronder bladblokken.

### Bladblokken

De onderstaande tabel toont voorbeelden van gebruik Markdown Bladblokken in Aspose.Words:

|  Markdown functie |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **HorizontalRule**<br/>`-----` |  Dit is een eenvoudige paragraaf met een overeenkomstige horizontale regel vorm:<br/>`DocumentBuilder.InsertHorizontalRule()` |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-HorizontalRule.java" >}}  |                                                                |
|  **ATX Heading**<br/>`# H1, ## H2, ### H3…` |  `ParagraphFormat.StyleName = “Heading N”`, waarbij (1< = N <= 9).<br/>Dit wordt vertaald in een ingebouwde stijl en moet precies van het opgegeven patroon zijn (er zijn geen achtervoegsels of voorvoegsels toegestaan).<br/>Anders wordt het gewoon een gewone paragraaf met een overeenkomstige stijl |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Heading.java" >}}  |                                                                |
|  **Setext Heading**<br/>`===` (voor rubriek 1),<br/>`---` (als rubriek 2) |  `ParagraphFormat.StyleName = “SetextHeading[some suffix]”`, gebaseerd op `“Heading N”` stijl.<br/>Als (N >= 2), dan `“Heading 2”` zal worden gebruikt, anders `“Heading 1”`.<br/>Elk achtervoegsel is toegestaan, maar Aspose.Words De importeur gebruikt respectievelijk de nummers |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SetextHeading.java" >}}  |                                                                |
|   **Indented Code**                                             |  `ParagraphFormat.StyleName = “IndentedCode[some suffix]”`     |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-IndentedCode.java" >}}  |                                                                |
|  **Fenced Code**<br/>{{< highlight java >}}``` java
if ()
then
else
```{{< /highlight >}} |  `ParagraphFormat.StyleName = “FencedCode[.][info string]”`<br/>De `[.]` en `[info string]` zijn facultatief |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-FencedCode.java" >}}   |                                                                |

### Complexe containers

De onderstaande tabel toont voorbeelden van gebruik Markdown Complexe containers in Aspose.Words:

|  Markdown functie |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **Quote**<br/>`> quote,`<br/>`>> nested quote` |  `ParagraphFormat.StyleName = “Quote[some suffix]”`<br/>Het achtervoegsel in stijlnaam is optioneel, maar Aspose.Words importeur gebruikt de bestelde nummers 1, 2, 3, .... in het geval van geneste citaten.<br/>Het nest wordt gedefinieerd via de geërfde stijlen |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Quote.java" >}}  |                                                                |
|  **BulletedList**<br/>`- Item 1`<br/>`- Item 2`<br/> `   - Item 2a`<br/> `   - Item 2b` |  Gestichte lijsten zijn weergegeven met behulp van paragraafnummering:<br/>`ListFormat.ApplyBulletDefault()`<br/>Er kunnen drie soorten kogels zijn. Ze zijn slechts diff in een nummering formaat van het eerste niveau. Dit zijn: `‘-’`, `‘+’` of `‘*’` respectievelijk |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-BulletedList.java" >}}  |                                                                |
|  **OrderedList**<br/>`1. Item 1`<br/>`2. Item 2`<br/> `1) Item 2a`<br/> `2) Item 2b` |  Geordende lijsten worden weergegeven aan de hand van paragraafnummering:<br/>`ListFormat.ApplyNumberDefault()`<br/>Er kunnen 2 nummer formaat markers zijn: De standaard marker is.. |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-OrderedList.java" >}}  |                                                                |

### Tabellen

Aspose.Words maakt het ook mogelijk om tabellen te vertalen naar DOM, zoals hieronder aangegeven:

|  Markdown functie |   Aspose.Words                                                  |
|  ----------------------------------------  |  ------------------------------------------------------------  |
|  `Table`<br/> | b`<br />`-|-`<br />`c|d Wat? |  [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) en [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) lessen |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Table.java" >}}  |                                                                |

## Zie ook

* [Werken met Markdown Kenmerken](/words/nl/java/working-with-markdown-features/)

