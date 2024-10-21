---
title: Übersetzen Sie Markdown in DOM
second_title: Aspose.Words für .NET
articleTitle: Übersetzen Sie Markdown in Document Object Model (DOM)
linktitle: Übersetzen Sie Markdown in Document Object Model (DOM)
type: docs
description: "Übersetzen Sie ein Markdown-Dokument mithilfe von C# in Document Object Model und zurück. So können Sie mit komplexen vorhandenen Markdown-Dateien arbeiten und programmgesteuert ein Markdown-Dokument von Grund auf erstellen."
weight: 20
url: /de/net/translate-markdown-to-document-object-model/
---

Um den Inhalt und die Formatierung eines Dokuments programmgesteuert zu lesen, zu bearbeiten und zu ändern, müssen Sie es in Aspose.Words Document Object Model (DOM) übersetzen.

Im Gegensatz zu Word-Dokumenten entspricht Markdown nicht dem im [Aspose.Words Document Object Model (DOM)](/words/de/net/aspose-words-document-object-model/)-Artikel beschriebenen DOM. Aspose.Words bietet jedoch einen eigenen Mechanismus zum Übersetzen von Markdown-Dokumenten in DOM und zurück, sodass wir erfolgreich mit ihren Elementen wie Textformatierung, Tabellen, Kopfzeilen und anderen arbeiten können.

In diesem Artikel wird erläutert, wie die verschiedenen markdown-Funktionen in das Aspose.Words-DOM- und zurück in das Markdown-Format übersetzt werden können.

## Komplexität der Übersetzung Markdown – DOM – Markdown

Die Hauptschwierigkeit dieses Mechanismus besteht nicht nur darin, Markdown in DOM zu übersetzen, sondern auch die umgekehrte Transformation durchzuführen – das Dokument mit minimalem Verlust wieder im Markdown-Format zu speichern. Es gibt Elemente, wie z. B. mehrstufige Anführungszeichen, für die die umgekehrte Transformation nicht trivial ist.

Mit unserer Übersetzungs-Engine können Benutzer nicht nur mit komplexen Elementen in einem vorhandenen Markdown-Dokument arbeiten, sondern auch ihr eigenes Dokument im Markdown-Format mit der Originalstruktur von Grund auf erstellen. Um verschiedene Elemente zu erstellen, müssen Sie Stile mit bestimmten Namen gemäß bestimmten Regeln verwenden, die später in diesem Artikel beschrieben werden. Solche Stile können programmgesteuert erstellt werden.

## Gemeinsame Übersetzungsprinzipien

Wir verwenden [Font](https://reference.aspose.com/words/de/net/aspose.words/font/)-Formatierung für Inline-Blöcke. Wenn es keine direkte Entsprechung für eine Markdown-Funktion in Aspose.Words-DOM gibt, verwenden wir einen Zeichenstil mit einem Namen, der mit einigen speziellen Wörtern beginnt.

Für Containerblöcke verwenden wir Stilvererbung, um verschachtelte Markdown-Funktionen zu kennzeichnen. In diesem Fall verwenden wir auch dann Absatzstile, deren Namen mit einigen speziellen Wörtern beginnen, selbst wenn keine verschachtelten Funktionen vorhanden sind.

Aufzählungslisten und geordnete Listen sind in Markdown ebenfalls Containerblöcke. Ihre Verschachtelung wird in DOM auf die gleiche Weise wie bei allen anderen Containerblöcken mithilfe der Stilvererbung dargestellt. Darüber hinaus verfügen Listen in DOM jedoch über eine entsprechende Zahlenformatierung entweder im Listenstil oder in der Absatzformatierung.

## Inline-Blöcke

Bei der Übersetzung von **Bold**-, *Italic*- oder ~~Durchgestrichenen~~-Inline-markdown-Funktionen verwenden wir die [Font](https://reference.aspose.com/words/de/net/aspose.words/font/)-Formatierung.

|  Markdown-Funktion |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **Bold**<br /> `{1}` |  `Font.Bold = true`  |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-BoldText.cs" >}}  |  |
|  **Italic**<br /> `*italic text*` |  `Font.Italic = true`  |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-ItalicText.cs" >}}  |  |
|  **Strikethrough**<br /> `~Strikethrough text~` |  `Font.StrikeThrough = true`  |
|  {{< highlight csharp >}}// Use a document builder to add content to the document.
DocumentBuilder builder = new DocumentBuilder();

// Make the text Strikethrough.
builder.Font.Strikethrough = true;
builder.Writeln("This text will be Strikethrough");{{< /highlight >}} |  |

Wir verwenden einen Zeichenstil mit einem Namen, der mit dem Wort `InlineCode` beginnt, gefolgt von einem optionalen Punkt `(.)` und einer Reihe von Backticks ```(`)``` für die `InlineCode`-Funktion. Wenn mehrere Backticks fehlen, wird standardmäßig ein Backtick verwendet.

|  Markdown-Funktion |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **InlineCode**<br /> `{1}` |  `Font.StyleName = “InlineCode[.][N]”`  |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-InlineCode.cs" >}}  |  |
|  **Autolink**<br /> `<scheme://domain.com>`<br /> `<email@domain.com>` |  Die [FieldHyperlink](https://reference.aspose.com/words/de/net/aspose.words.fields/fieldhyperlink/)-Klasse |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Autolink.cs" >}}  |  |
|  **Link**<br /> `{1}`<br /> `{2}`<br /> `{3}`<br /> `{4})` |  Die [FieldHyperlink](https://reference.aspose.com/words/de/net/aspose.words.fields/fieldhyperlink/)-Klasse |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Link.cs" >}}  |  |
|  **Image**<br /> `{1}`<br /> `{2}`<br /> `{3}`<br /> `{4})` |  Die [Shape](https://reference.aspose.com/words/de/net/aspose.words.drawing/shape/)-Klasse |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Image.cs" >}}  |  |

## Containerblöcke

Ein Dokument ist eine Folge von Containerblöcken wie Überschriften, Absätzen, Listen, Zitaten und anderen. Containerblöcke können in zwei Klassen unterteilt werden: Leaf-Blöcke und komplexe Container. Blattblöcke können nur Inline-Inhalte enthalten. Komplexe Container wiederum können andere Containerblöcke enthalten, einschließlich Leaf-Blöcken.

### Blattblöcke

Die folgende Tabelle zeigt Beispiele für die Verwendung von Markdown-Leaf-Blöcken in Aspose.Words:

|  Markdown-Funktion |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **HorizontalRule**<br /> `-----` |  Dies ist ein einfacher Absatz mit einer entsprechenden HorizontalRule-Form:<br /> `DocumentBuilder.InsertHorizontalRule()` |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-HorizontalRule.cs" >}}  |                                                                |
|  **ATX Heading**<br /> `# H1, ## H2, ### H3…` |  `ParagraphFormat.StyleName = “Heading N”`, wobei (1&lt;= N &lt;= 9).<br /> Dies wird in einen integrierten Stil übersetzt und sollte genau dem angegebenen Muster entsprechen (es sind keine Suffixe oder Präfixe zulässig).<br /> Andernfalls handelt es sich nur um einen normalen Absatz mit einem entsprechenden Stil |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Heading.cs" >}}  |                                                                |
|  **Setext Heading**<br /> `===` (wenn Überschriftenebene 1),<br /> `---` (wenn Überschriftenebene 2) |  `ParagraphFormat.StyleName = “SetextHeading[some suffix]”`, basierend auf dem `“Heading N”`-Stil.<br /> Wenn (N &gt;= 2), wird `“Heading 2”` verwendet, andernfalls `“Heading 1”`.<br /> Jedes Suffix ist zulässig, aber der Aspose.Words-Importer verwendet die Zahlen "1" bzw. "2" |
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
|  **Fenced Code**<br /> {{< highlight csharp >}}``` c#
if ()
then
else
```{{< /highlight >}} |  `ParagraphFormat.StyleName = “FencedCode[.][info string]”`<br /> `[.]` und `[info string]` sind optional |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-FencedCode.cs" >}}   |                                                                |

### Komplexe Container

Die folgende Tabelle zeigt Beispiele für die Verwendung komplexer Markdown-Container in Aspose.Words:

|  Markdown-Funktion |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **Quote**<br /> `> quote,`<br /> `>> nested quote` |  `ParagraphFormat.StyleName = “Quote[some suffix]”`<br /> Das Suffix im Stilnamen ist optional, aber der Aspose.Words-Importer verwendet die geordneten Nummern 1, 2, 3, …. bei verschachtelten Anführungszeichen.<br /> Die Verschachtelung wird über die geerbten Stile definiert |
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
|  **BulletedList**<br /> `- Item 1`<br /> `- Item 2`<br /> `   - Item 2a`<br /> `   - Item 2b` |  Listen mit Aufzählungszeichen werden durch Absatznummerierung dargestellt:<br /> `ListFormat.ApplyBulletDefault()`<br /> Es gibt drei Arten von Listen mit Aufzählungszeichen. Sie unterscheiden sich nur im Nummerierungsformat der allerersten Ebene. Dies sind: `‘-’`, `‘+’` bzw. `‘*’` |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-BulletedList.cs" >}}  |                                                                |
|  **OrderedList**<br /> `1. Item 1`<br /> `2. Item 2`<br /> `1) Item 2a`<br /> `2) Item 2b` |  Geordnete Listen werden durch Absatznummerierung dargestellt:<br /> `ListFormat.ApplyNumberDefault()`<br /> Es können zwei Zahlenformatmarkierungen vorhanden sein: "." Und ')'. Der Standardmarker ist "." |
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

### Tische

Aspose.Words ermöglicht auch die Übersetzung von Tabellen in DOM, wie unten gezeigt:

|  Markdown-Funktion |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  `Table`<br /> `a|b`<br />`-|-`<br />`c|d` |  [Table](https://reference.aspose.com/words/de/net/aspose.words.tables/table/)-, [Row](https://reference.aspose.com/words/de/net/aspose.words.tables/row/)- und [Cell](https://reference.aspose.com/words/de/net/aspose.words.tables/cell/)-Klassen |
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

## Siehe auch

* [Arbeiten mit Markdown-Funktionen](/words/de/net/working-with-markdown-features/)

