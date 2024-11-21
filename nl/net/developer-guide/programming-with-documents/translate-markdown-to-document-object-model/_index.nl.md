---
title: Vertalen Markdown tot DOM
second_title: Aspose.Words voor .NET
articleTitle: Vertalen Markdown tot Document Object Model (DOM)
linktitle: Vertalen Markdown tot Document Object Model (DOM)
type: docs
description: "Vertaal a Markdown document aan Document Object Model en terug gebruiken C#. Dus je kunt werken met complexe bestaande Markdown en programmatisch een Markdown document vanaf nul."
weight: 20
url: /nl/net/translate-markdown-to-document-object-model/
timestamp: 2024-10-21-11-17-44
---

Om de inhoud en opmaak van een document programmatisch te kunnen lezen, manipuleren en wijzigen, moet u het vertalen naar de Aspose.Words Document Object Model (DOM).

In tegenstelling tot Word-documenten, Markdown niet in overeenstemming is met de DOM beschreven in de [Aspose.Words Document Object Model (DOM)](/words/nl/net/aspose-words-document-object-model/) artikel. Echter, Aspose.Words biedt een eigen vertaalmechanisme Markdown documenten aan DOM en terug, zodat we succesvol kunnen werken met hun elementen zoals tekstopmaak, tabellen, headers en anderen.

Dit artikel legt uit hoe de verschillende markdown functies kunnen worden vertaald in Aspose.Words DOM en terug naar Markdown formaat.

## Complexiteit van de vertaling Markdown Wat? DOM Wat? Markdown

De belangrijkste moeilijkheid van dit mechanisme is niet alleen het vertalen van Markdown tot DOM, maar ook om de omgekeerde transformatie te doen om het document terug te slaan naar Markdown formaat met minimaal verlies. Er zijn elementen, zoals multilevel citaten, waarvoor de omgekeerde transformatie niet triviaal is.

Onze vertaalmachine laat gebruikers niet alleen werken met complexe elementen in een bestaande Markdown document, maar ook om hun eigen document aan te maken in Markdown formaat met de oorspronkelijke structuur vanaf nul. Om verschillende elementen te creëren, moet je stijlen met specifieke namen gebruiken volgens bepaalde regels die later in dit artikel worden beschreven. Dergelijke stijlen kunnen programmatisch worden gemaakt.

## Algemene vertaling Beginselen

We gebruiken [Font](https://reference.aspose.com/words/net/aspose.words/font/) formatteren voor inline blokken. Wanneer er geen directe correspondentie voor een Markdown functie in Aspose.Words DOM, We gebruiken een karakter stijl met een naam die begint met een aantal speciale woorden.

Voor containerblokken gebruiken we stijlovererving om geneste aan te duiden Markdown Eigenschappen. In dit geval, zelfs als er geen geneste functies, gebruiken we ook paragraafstijlen met een naam die begint met een aantal speciale woorden.

Gekochte en bestelde lijsten zijn containerblokken in Markdown Ook. Hun nest is vertegenwoordigd in DOM op dezelfde manier als voor alle andere container blokken met behulp van stijl erfenis. Bovendien worden de DOM hebben overeenstemmende nummeropmaak in lijststijl of alineaopmaak.

## Inline-blokken

We gebruiken [Font](https://reference.aspose.com/words/net/aspose.words/font/) formatteren bij vertalen **Bold**, *Italic* of ~~Strikethrough~~inline markdown Eigenschappen.

|  Markdown functie |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **Bold**<br/>`{1}` |  `Font.Bold = true`  |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-BoldText.cs" >}}  |  |
|  **Italic**<br/>`*italic text*` |  `Font.Italic = true`  |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-ItalicText.cs" >}}  |  |
|  **Strikethrough**<br/>`~Strikethrough text~` |  `Font.StrikeThrough = true`  |
|  {{< highlight csharp >}}// Use a document builder to add content to the document.
DocumentBuilder builder = new DocumentBuilder();

// Make the text Strikethrough.
builder.Font.Strikethrough = true;
builder.Writeln("This text will be Strikethrough");{{< /highlight >}} |  |

We gebruiken een karakterstijl met een naam die begint vanaf het woord <span notrans="<span notrans=" `InlineCode`"=""></span>,"> gevolgd door een optionele stip `(.)` en een aantal backticks ```(`)``` voor de `InlineCode` feature. Als een aantal backticks wordt gemist, wordt standaard één backtick gebruikt.

|  Markdown functie |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **InlineCode**<br/>`{1}` |  `Font.StyleName = “InlineCode[.][N]”`  |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-InlineCode.cs" >}}  |  |
|  **Autolink**<br/>`<scheme://domain.com>`<br/>`<email@domain.com>` |  De [FieldHyperlink](https://reference.aspose.com/words/net/aspose.words.fields/fieldhyperlink/) Klasse |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Autolink.cs" >}}  |  |
|  **Link**<br/>`{1}`<br/>`{2}`<br/>`{3}`<br/>`{4})` |  De [FieldHyperlink](https://reference.aspose.com/words/net/aspose.words.fields/fieldhyperlink/) Klasse |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Link.cs" >}}  |  |
|  **Image**<br/>`{1}`<br/>`{2}`<br/>`{3}`<br/>`{4})` |  De [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) Klasse |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Image.cs" >}}  |  |

## Containerblokken

Een document is een reeks containerblokken zoals rubrieken, paragrafen, lijsten, citaten en andere. Containerblokken kunnen in 2 klassen worden onderverdeeld: Bladblokken en complexe containers. Bladblokken kunnen alleen inline-inhoud bevatten. Complexe containers kunnen op hun beurt andere containerblokken bevatten, waaronder bladblokken.

### Bladblokken

De tabel hieronder toont voorbeelden van gebruik Markdown Bladblokken in Aspose.Words:

|  Markdown functie |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **HorizontalRule**<br/>`-----` |  Dit is een eenvoudige paragraaf met een overeenkomstige horizontale regel vorm:<br/>`DocumentBuilder.InsertHorizontalRule()` |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-HorizontalRule.cs" >}}  |                                                                |
|  **ATX Heading**<br/>`# H1, ## H2, ### H3…` |  `ParagraphFormat.StyleName = “Heading N”`, waarbij (1< = N <= 9).<br/>Dit wordt vertaald in een ingebouwde stijl en moet precies van het opgegeven patroon zijn (er zijn geen achtervoegsels of voorvoegsels toegestaan).<br/>Anders wordt het gewoon een gewone paragraaf met een overeenkomstige stijl |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Heading.cs" >}}  |                                                                |
|  **Setext Heading**<br/>`===` (voor rubriek 1),<br/>`---` (als rubriek 2) |  `ParagraphFormat.StyleName = “SetextHeading[some suffix]”`, gebaseerd op `“Heading N”` stijl.<br/>Indien (N >= 2), dan `“Heading 2”` zal worden gebruikt, anders `“Heading 1”`.<br/>Elk achtervoegsel is toegestaan, maar Aspose.Words De importeur gebruikt respectievelijk de nummers |
|  {{< highlight csharp >}}// Use a document builder to add content to the document.
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
builder.Writeln("Setext Heading level 2");{{< /highlight >}} |
|   **Indented Code**                                             |  `ParagraphFormat.StyleName = “IndentedCode[some suffix]”`     |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-IndentedCode.cs" >}}  |                                                                |
|  **Fenced Code**<br/>{{< highlight csharp >}}``` c#
if ()
then
else
```{{< /highlight >}} |  `ParagraphFormat.StyleName = “FencedCode[.][info string]”`<br/>De `[.]` en `[info string]` zijn facultatief |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-FencedCode.cs" >}}   |                                                                |

### Complexe containers

De tabel hieronder toont voorbeelden van gebruik Markdown Complexe containers in Aspose.Words:

|  Markdown functie |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **Quote**<br/>`> quote,`<br/>`>> nested quote` |  `ParagraphFormat.StyleName = “Quote[some suffix]”`<br/>Het achtervoegsel in stijlnaam is optioneel, maar Aspose.Words importeur gebruikt de bestelde nummers 1, 2, 3, .... in het geval van geneste citaten.<br/>Het nest wordt gedefinieerd via de geërfde stijlen |
|  {{< highlight csharp >}}// Use a document builder to add content to the document.
DocumentBuilder builder = new DocumentBuilder();

// By default a document stores blockquote style for the first level.
builder.ParagraphFormat.StyleName = "Quote";
builder.Writeln("Blockquote");

// Create styles for nested levels through style inheritance.
Style quoteLevel2 = builder.Document.Styles.Add(StyleType.Paragraph, "Quote1");
builder.ParagraphFormat.Style = quoteLevel2;
builder.Document.Styles["Quote1"].BaseStyleName = "Quote";
builder.Writeln("1. Nested blockquote");{{< /highlight >}} |
|  **BulletedList**<br/>`- Item 1`<br/>`- Item 2`<br/> `   - Item 2a`<br/> `   - Item 2b` |  De Bullet-lijsten worden weergegeven aan de hand van paragraafnummering:<br/>`ListFormat.ApplyBulletDefault()`<br/>Er kunnen drie soorten kogels zijn. Ze zijn alleen diff in een nummering formaat van het eerste niveau. Dit zijn: `‘-’`, `‘+’` of `‘*’` respectievelijk |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-BulletedList.cs" >}}  |                                                                |
|  **OrderedList**<br/>`1. Item 1`<br/>`2. Item 2`<br/> `1) Item 2a`<br/> `2) Item 2b` |  Geordende lijsten worden weergegeven aan de hand van paragraafnummering:<br/>`ListFormat.ApplyNumberDefault()`<br/>Er kunnen 2 nummer formaat markers zijn: De standaard marker is.. |
|  {{< highlight csharp >}}Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

builder.ListFormat.ApplyBulletDefault();
builder.ListFormat.List.ListLevels[0].NumberFormat = $"{(char) 0}.";
builder.ListFormat.List.ListLevels[1].NumberFormat = $"{(char) 1}.";

builder.Writeln("Item 1");
builder.Writeln("Item 2");

builder.ListFormat.ListIndent();

builder.Writeln("Item 2a");
builder.Writeln("Item 2b");{{< /highlight >}} |                                                                |

### Tabellen

Aspose.Words ook kunt vertalen tabellen in DOM, zoals hieronder aangegeven:

|  Markdown functie |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  `Table`<br/> | b`<br />`-|-`<br />`c|d Wat? |  [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/), [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) en [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/) lessen |
|  {{< highlight csharp >}}// Use a document builder to add content to the document.
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
builder.Writeln("d");{{< /highlight >}} |                                                                |

## Zie ook

* [Werken met Markdown Kenmerken](/words/nl/net/working-with-markdown-features/)

