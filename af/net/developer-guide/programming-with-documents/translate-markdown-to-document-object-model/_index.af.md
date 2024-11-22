---
title: Vertaal Markdown na DOM
second_title: Aspose.Words vir .NET
articleTitle: Vertaal Markdown Na Dokument Objek Model (DOM)
linktitle: Vertaal Markdown Na Dokument Objek Model (DOM)
type: docs
description: "Vertaal'n Markdown dokument Na Dokument Voorwerp Model en terug met behulp van C#. So jy kan werk met komplekse bestaande Markdown en programmaties skep'n Markdown dokument van nuuts af."
weight: 20
url: /af/net/translate-markdown-to-document-object-model/
timestamp: 2024-10-21-11-17-44
---

Om die inhoud en formatering van'n dokument programmaties te lees, te manipuleer en te verander, moet jy dit vertaal na die Aspose.Words Document Object Model (DOM).

In teenstelling met Word-dokumente, voldoen Markdown nie aan die DOM wat in Die [Aspose.Words Dokument Voorwerp Model (DOM)](/words/net/aspose-words-document-object-model/) artikel. Aspose.Words bied egter sy eie meganisme vir die vertaling van Markdown dokumente na DOM en terug, sodat ons suksesvol kan werk met hul elemente soos teks opmaak, tabelle, koptekste, en ander.

Hierdie artikel verduidelik hoe die verskillende markdown kenmerke vertaal kan word in Aspose.Words DOM en terug na Markdown formaat.

## Kompleksiteit Van Vertaling Markdown – DOM – Markdown

Die grootste probleem van hierdie meganisme is nie net om Markdown te vertaal na DOM nie, maar ook om die omgekeerde transformasie te doen om die dokument terug te stoor na Markdown formaat met minimale verlies. Daar is elemente, soos meervlak aanhalingstekens, waarvoor die omgekeerde transformasie nie triviaal is nie.

Ons vertaling enjin kan gebruikers nie net om te werk met komplekse elemente in'n bestaande Markdown dokument, maar ook om hul eie dokument te skep in Markdown formaat met die oorspronklike struktuur van nuuts af. Om verskeie elemente te skep, moet jy style met spesifieke name gebruik volgens sekere reëls wat later in hierdie artikel beskryf word. Sulke style kan programmaties geskep word.

## Algemene Vertaalbeginsels

Ons gebruik [Font](https://reference.aspose.com/words/net/aspose.words/font/) formatering vir inline blokke. Wanneer daar geen direkte ooreenstemming is vir'n Markdown kenmerk in Aspose.Words DOM nie, gebruik ons'n karakterstyl met'n naam wat begin met'n paar spesiale woorde.

Vir houerblokke gebruik ons styl oorerwing om geneste Markdown kenmerke aan te dui. In hierdie geval, selfs wanneer daar geen geneste kenmerke is nie, gebruik ons ook paragraafstyle met'n naam wat van'n paar spesiale woorde begin.

Bullet en bestel lyste is houer blokke in Markdown sowel. Hul nes is verteenwoordig in DOM op dieselfde manier as vir alle ander houer blokke met behulp van styl erfenis. Daarbenewens het lyste in DOM egter ooreenstemmende nommeropmaak in lysstyl of paragraafopmaak.

## Inlyn Blokke

Ons gebruik [Font](https://reference.aspose.com/words/net/aspose.words/font/) formatering wanneer ons **Bold**, *Italic* of ~~Strikethrough~~ inline markdown funksies vertaal.

| Markdown kenmerk | Aspose.Words |
| ----------------------------- | ------------------ |
| **Bold**<br />`**bold text**` | `Font.Bold = true` |
| {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-BoldText.cs" >}} |  |
| **Italic**<br />`*italic text*` | `Font.Italic = true` |
| {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-ItalicText.cs" >}} |  |
| **Strikethrough**<br />`~Strikethrough text~` | `Font.StrikeThrough = true` |
| {{< highlight csharp >}} // Use a document builder to add content to the document.
DocumentBuilder builder = new DocumentBuilder();

// Make the text Strikethrough.
builder.Font.Strikethrough = true;
builder.Writeln("This text will be Strikethrough");{{< /highlight >}} |  |

Ons gebruik'n karakter styl met'n naam wat begin van die woord `InlineCode`, gevolg deur'n opsionele punt `(.)` en'n aantal backticks ```(`)``` vir die `InlineCode` funksie. As'n aantal backticks gemis word, dan sal een backtick gebruik word by verstek.

| Markdown kenmerk | Aspose.Words |
| ----------------------------- | ------------------ |
| **InlineCode**<br />`**inline code**` | `Font.StyleName = "InlineCode[.][N]"` |
| {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-InlineCode.cs" >}} |  |
| **Autolink**<br />`<scheme://domain.com>`<br />`<email@domain.com>` | Die [FieldHyperlink](https://reference.aspose.com/words/net/aspose.words.fields/fieldhyperlink/) klas. |
| {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Autolink.cs" >}} |  |
| **Link**<br />`[link text](url)`<br />`[link text](<url>"title")`<br />`[link text](url 'title')`<br />`[link text](url (title))` | Die [FieldHyperlink](https://reference.aspose.com/words/net/aspose.words.fields/fieldhyperlink/) klas. |
| {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Link.cs" >}} |  |
| **Image**<br />`![](url)`<br />`![alt text](<url>"title")`<br />`![alt text](url ‘title’)`<br />`![alt text](url (title))` | Die [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) klas. |
| {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Image.cs" >}} |  |

## Houerblokke

'n dokument is'n reeks houerblokke soos opskrifte, paragrawe, lyste, aanhalings en ander. Container blokke kan verdeel word in 2 klasse: Blaar blokke en Komplekse Houers. Blaarblokke kan slegs inline inhoud bevat. Komplekse houers kan op hul beurt ander houerblokke bevat, insluitend Blaarblokke.

### Blaarblokke

Die tabel hieronder toon voorbeelde van die gebruik van Markdown Blaarblokke in Aspose.Words:

| Markdown kenmerk | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **HorizontalRule**<br />`-----` | Dit is'n eenvoudige paragraaf met'n ooreenstemmende HorizontalRule vorm:<br />`DocumentBuilder.InsertHorizontalRule()` |
| {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-HorizontalRule.cs" >}} |  |
| **ATX Heading**<br />`# H1, ## H2, ### H3…` | `ParagraphFormat.StyleName = "Heading N"`, waar (1<= N <= 9).<br />Dit word in'n ingeboude styl vertaal en moet presies van die gespesifiseerde patroon wees (geen agtervoegsels of voorvoegsels word toegelaat nie).<br />Andersins sal dit net'n gewone paragraaf met'n ooreenstemmende styl wees. |
| {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Heading.cs" >}} |  |
| **Setext Heading**<br />`===` (if Heading level 1),<br />`---` (if Heading level 2) | `ParagraphFormat.StyleName = "SetextHeading[some suffix]"`, gebaseer op `"Heading N"` styl.<br />As (n >= 2), dan sal `"Heading 2"` gebruik word, anders sal `"Heading 1"`.<br />Enige agtervoegsel word toegelaat, maar Aspose.Words invoerder gebruik getalle "1" en "2" onderskeidelik. |
| {{< highlight csharp >}} // Use a document builder to add content to the document.
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
| **Indented Code** | `ParagraphFormat.StyleName = "IndentedCode[some suffix]"` |
| {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-IndentedCode.cs" >}} |  |
| **Fenced Code**<br />{{< highlight csharp >}}``` c#
if ()
then
else
```{{< /highlight >}} | `ParagraphFormat.StyleName = "FencedCode[.][info string]"`<br />die `[.]` en `[info string]` is opsioneel. |
| {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-FencedCode.cs" >}} |  |

### Komplekse Houers

Die tabel hieronder toon voorbeelde van die gebruik van Markdown Komplekse Houers in Aspose.Words:

| Markdown kenmerk | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **Quote**<br />`> quote,`<br />`>> nested quote` | `ParagraphFormat.StyleName = "Quote[some suffix]"`<br />die agtervoegsel in styl naam is opsioneel, maar Aspose.Words invoerder gebruik die geordende getalle 1, 2, 3, .... in die geval van geneste aanhalings.<br />Die nes word gedefinieer deur die oorgeërfde style. |
| {{< highlight csharp >}} // Use a document builder to add content to the document.
DocumentBuilder builder = new DocumentBuilder();

// By default a document stores blockquote style for the first level.
builder.ParagraphFormat.StyleName = "Quote";
builder.Writeln("Blockquote");

// Create styles for nested levels through style inheritance.
Style quoteLevel2 = builder.Document.Styles.Add(StyleType.Paragraph, "Quote1");
builder.ParagraphFormat.Style = quoteLevel2;
builder.Document.Styles["Quote1"].BaseStyleName = "Quote";
builder.Writeln("1. Nested blockquote");{{< /highlight >}} |
| **BulletedList**<br />`- Item 1`<br />`- Item 2`<br />	` - Item 2a`<br />	` - Item 2b` | Bullet lyste word verteenwoordig met behulp van paragraaf nommering:<br />`ListFormat.ApplyBulletDefault()`<br />Daar kan 3 tipes van koeëllyste wees. Hulle is slegs diff in'n nommering formaat van die heel eerste vlak. Dit is: `‘-’`, `‘+’` of `‘*’` onderskeidelik. |
| {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-BulletedList.cs" >}} |  |
| **OrderedList**<br />`1. Item 1`<br />`2. Item 2`<br />	`1) Item 2a`<br />	`2) Item 2b` | Geordende lyste word verteenwoordig deur paragraafnommering te gebruik:<br />`ListFormat.ApplyNumberDefault()`<br />Daar kan 2 getal formaat merkers wees: ‘.’ en ‘)’. Die standaard merker is ‘.’. |
| {{< highlight csharp >}}Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

builder.ListFormat.ApplyBulletDefault();
builder.ListFormat.List.ListLevels[0].NumberFormat = $"{(char) 0}.";
builder.ListFormat.List.ListLevels[1].NumberFormat = $"{(char) 1}.";

builder.Writeln("Item 1");
builder.Writeln("Item 2");

builder.ListFormat.ListIndent();

builder.Writeln("Item 2a");
builder.Writeln("Item 2b");{{< /highlight >}} |  |

### Tabelle

Aspose.Words laat ook toe om tabelle te vertaal in DOM, soos hieronder getoon:

| Markdown kenmerk | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| `Table`<br />`a|b`<br />`-|-`<br />`c|d` | [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/), [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) en [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/) klasse. |
| {{< highlight csharp >}} // Use a document builder to add content to the document.
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
builder.Writeln("d");{{< /highlight >}} |  |

## Sien Ook

* [Werk met Markdown Funksies](/words/net/working-with-markdown-features/)

