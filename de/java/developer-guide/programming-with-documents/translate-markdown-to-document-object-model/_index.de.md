---
title: Markdown in DOM übersetzen
second_title: Aspose.Words für Java
articleTitle: Markdown in Dokumentobjektmodell übersetzen (DOM)
linktitle: Markdown in Dokumentobjektmodell übersetzen (DOM)
type: docs
description: "Tarnen Sie ein Markdown -Dokument in das Dokumentobjektmodell und zurück. So können Sie mit komplexen vorhandenen Markdown arbeiten und mit Java programmgesteuert ein Markdown -Dokument von Grund auf neu erstellen."
weight: 20
url: /de/java/translate-markdown-to-document-object-model/
timestamp: 2024-10-21-11-17-44
---

Um den Inhalt und die Formatierung eines Dokuments programmgesteuert zu lesen, zu bearbeiten und zu ändern, müssen Sie es in das Aspose.Words-Dokumentobjektmodell (DOM) übersetzen.

Im Gegensatz zu Word-Dokumenten entspricht Markdown nicht den DOM, die in der [Aspose.Words Dokumentenobjektmodell (DOM)](/words/java/aspose-words-document-object-model/) Beitrag. Aspose.Words bietet jedoch einen eigenen Mechanismus zum Übersetzen von Markdown -Dokumenten nach DOM und zurück, sodass wir erfolgreich mit ihren Elementen wie Textformatierung, Tabellen, Überschriften und anderen arbeiten können.

In diesem Artikel wird erläutert, wie die verschiedenen markdown-Funktionen in das Aspose.Words DOM- und zurück in das Markdown-Format übersetzt werden können.

## Komplexität der Übersetzung Markdown – DOM – Markdown

Die Hauptschwierigkeit dieses Mechanismus besteht nicht nur darin, Markdown in DOM zu übersetzen, sondern auch die umgekehrte Transformation durchzuführen – das Dokument mit minimalem Verlust wieder im Markdown -Format zu speichern. Es gibt Elemente wie mehrstufige Anführungszeichen, für die die umgekehrte Transformation nicht trivial ist.

Mit unserer Übersetzungsengine können Benutzer nicht nur mit komplexen Elementen in einem vorhandenen Markdown -Dokument arbeiten, sondern auch ihr eigenes Dokument im Markdown -Format mit der ursprünglichen Struktur von Grund auf neu erstellen. Um verschiedene Elemente zu erstellen, müssen Sie Stile mit bestimmten Namen gemäß bestimmten Regeln verwenden, die später in diesem Artikel beschrieben werden. Solche Stile können programmgesteuert erstellt werden.

## Gemeinsame Übersetzungsprinzipien

Wir verwenden [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) Formatierung für Inline-Blöcke. Wenn es keine direkte Entsprechung für ein Markdown-Feature in Aspose.Words DOM gibt, verwenden wir einen Zeichenstil mit einem Namen, der mit einigen speziellen Wörtern beginnt.

Für Containerblöcke verwenden wir die Stilvererbung, um verschachtelte Markdown -Features zu bezeichnen. In diesem Fall verwenden wir auch Absatzformate mit einem Namen, der mit einigen speziellen Wörtern beginnt, auch wenn keine verschachtelten Features vorhanden sind.

Aufzählungslisten und geordnete Listen sind ebenfalls Containerblöcke in Markdown. Ihre Verschachtelung wird in DOM genauso dargestellt wie bei allen anderen Containerblöcken, die Stilvererbung verwenden. Zusätzlich haben Listen in DOM jedoch eine entsprechende Zahlenformatierung entweder im Listenstil oder in der Absatzformatierung.

## Inline-Blöcke

Wir verwenden die [Font](https://reference.aspose.com/words/java/com.aspose.words/font/)-Formatierung bei der Übersetzung von **Bold**-, *Italic*- oder ~~Strikethrough~~-Inline-markdown-Funktionen.

| Markdown Funktion | Aspose.Words |
| ----------------------------- | ------------------ |
| **Bold**<br />`**bold text**` | `Font.Bold = true` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-BoldText.java" >}} |  |
| **Italic**<br />`*italic text*` | `Font.Italic = true` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-ItalicText.java" >}} |  |
| **Strikethrough**<br />`~Strikethrough text~` | `Font.StrikeThrough = true` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Strikethrough.java" >}} |  |

Wir verwenden einen Zeichenstil mit einem Namen, der mit dem Wort `InlineCode` beginnt, gefolgt von einem optionalen Punkt `(.)` und einer Anzahl von Backticks ```(`)``` für die `InlineCode` -Funktion. Wenn eine Anzahl von Backticks fehlt, wird standardmäßig ein Backtick verwendet.

| Markdown Funktion | Aspose.Words |
| ----------------------------- | ------------------ |
| **InlineCode**<br />`**inline code**` | `Font.StyleName = "InlineCode[.][N]"` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-InlineCode.java" >}} |  |
| **Autolink**<br />`<scheme://domain.com>`<br />`<email@domain.com>` | Die [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/) -Klasse. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Autolink.java" >}} |  |
| **Link**<br />`[Linktext](url)`<br />`[Linktext](<url>"title")`<br />`[Linktext](url 'title')`<br />`[Linktext](url (title))` | Die [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/) -Klasse. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Link.java" >}} |  |
| **Image**<br />`![](/words/java/translate-markdown-to-document-object-model/url)`<br />`![alternativer Text](/words/java/translate-markdown-to-document-object-model/<url>"title")`<br />`![alternativer Text](/words/java/translate-markdown-to-document-object-model/url ‘title’)`<br />`![alternativer Text](/words/java/translate-markdown-to-document-object-model/url (title))` | Die [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) -Klasse. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Image.java" >}} |  |

## Containerblöcke

Ein Dokument ist eine Folge von Containerblöcken wie Überschriften, Absätzen, Listen, Anführungszeichen und anderen. Containerblöcke können in 2 Klassen unterteilt werden: Blattblöcke und komplexe Container. Blattblöcke können nur Inline-Inhalte enthalten. Komplexe Container können wiederum andere Containerblöcke enthalten, einschließlich Blattblöcke.

### Blattblöcke

Die folgende Tabelle zeigt Beispiele für die Verwendung von Markdown-Blattblöcken in Aspose.Words:

| Markdown Funktion | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **HorizontalRule**<br />`-----` | Dies ist ein einfacher Absatz mit einer entsprechenden HorizontalRule -Form:<br />`DocumentBuilder.InsertHorizontalRule()` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-HorizontalRule.java" >}} |  |
| **ATX Heading**<br />`# H1, ## H2, ### H3…` | `ParagraphFormat.StyleName = "Heading N"`, wobei (1<= Und <= 9).<br />Dies wird in einen integrierten Stil übersetzt und sollte genau dem angegebenen Muster entsprechen (keine Suffixe oder Präfixe sind erlaubt).<br />Andernfalls handelt es sich nur um einen regulären Absatz mit einem entsprechenden Stil. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Heading.java" >}} |  |
| **Setext Heading**<br />`===` (if Heading level 1),<br />`---` (if Heading level 2) | `ParagraphFormat.StyleName = "SetextHeading[some suffix]"`, basierend auf dem Stil 'Überschrift N'.<br />Wenn (N >= 2), dann wird 'Heading 2' verwendet, sonst 'Heading 1'.<br />Jedes Suffix ist erlaubt, aber Aspose.Words Importer verwendet die Nummern "1" und "2". |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SetextHeading.java" >}} |  |
| **Indented Code**<br>{{< highlight java >}}<br/>if ()<br/>then<br/>else<br/>```{{< /highlight >}} | `ParagraphFormat.StyleName = "IndentedCode[some suffix]"` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-FencedCode.java" >}} |  |
### Komplexe Behälter

Die folgende Tabelle zeigt Beispiele für die Verwendung von Markdown komplexen Containern in Aspose.Words:

| Markdown Funktion | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **Quote**<br />`> quote,`<br />`>> nested quote` | `ParagraphFormat.StyleName = "Quote[some suffix]"`<br />Das Suffix im Stilnamen ist optional, aber Aspose.Words Importer verwendet die sortierten Nummern 1, 2, 3, .... bei verschachtelten Anführungszeichen.<br />Die Verschachtelung wird über die geerbten Stile definiert. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Quote.java" >}} |  |
| **BulletedList**<br />`- Item 1`<br />`- Item 2`<br />	` - Item 2a`<br />	` - Item 2b` | Aufzählungen werden mit Absatznummerierung dargestellt:<br />`ListFormat.ApplyBulletDefault()`<br />Es kann 3 Arten von Aufzählungslisten geben. Sie unterscheiden sich nur in einem Nummerierungsformat der allerersten Ebene. Dies sind: `‘-’`, `‘+’` oder `‘*’`. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-BulletedList.java" >}} |  |
| **OrderedList**<br />`1. Item 1`<br />`2. Item 2`<br />	`1) Item 2a`<br />	`2) Item 2b` | Geordnete Listen werden mit Absatznummerierung dargestellt:<br />`ListFormat.ApplyNumberDefault()`<br />Es können 2 Zahlenformatmarkierungen vorhanden sein: ‘.’ und ‘)’. Der Standardmarker ist ‘.’. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-OrderedList.java" >}} |  |

### Tables

Aspose.Words ermöglicht auch die Übersetzung von Tabellen in DOM, wie unten gezeigt:

| Markdown Funktion | Aspose.Words |
| ---------------------------------------- | ------------------------------------------------------------ |
| `Table`<br />`a|b`<br />`-|-`<br />`c|d` | [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) und [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) Klassen. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Table.java" >}} |  |

## Siehe auch

* [Arbeiten mit Markdown-Funktionen](/words/java/working-with-markdown-features/)

