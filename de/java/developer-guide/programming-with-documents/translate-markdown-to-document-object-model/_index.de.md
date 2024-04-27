---
title: Übersetzung Markdown bis DOM
second_title: Aspose.Words für Java
articleTitle: Übersetzung Markdown bis Document Object Model (DOM)
linktitle: Übersetzung Markdown bis Document Object Model (DOM)
type: docs
description: "Tarnslate a Markdown Dokument Document Object Model und zurück. So können Sie mit komplexen bestehenden Markdown und programmatisch eine Markdown Dokument von Kratzern mit Java."
weight: 20
url: /de/java/translate-markdown-to-document-object-model/
---

Um den Inhalt und die Formatierung eines Dokuments programmatisch zu lesen, zu manipulieren und zu modifizieren, müssen Sie es in die Aspose.Words Document Object Model (DOM)

Im Gegensatz zu Word-Dokumenten, Markdown nicht mit der DOM in der [Aspose.Words Document Object Model (DOM)](/words/de/java/aspose-words-document-object-model/) Artikel. Allerdings Aspose.Words einen eigenen Mechanismus zur Übersetzung Markdown Dokumente DOM und zurück, so dass wir mit ihren Elementen wie Textformatierung, Tabellen, Header und andere erfolgreich arbeiten können.

Dieser Artikel erklärt, wie die verschiedenen markdown Funktionen können in Aspose.Words DOM und zurück zu Markdown Format.

## Komplexität der Übersetzung Markdown – DOM – Markdown

Die Hauptschwierigkeit dieses Mechanismus ist nicht nur zu übersetzen Markdown bis DOM, aber auch die umgekehrte Transformation zu tun – das Dokument zurück zu speichern Markdown Format mit minimalem Verlust. Es gibt Elemente, wie mehrstufige Zitate, für die die umgekehrte Transformation nicht trivial ist.

Unsere Übersetzungsmaschine ermöglicht es Benutzern nicht nur, mit komplexen Elementen in einem bestehenden zu arbeiten Markdown dokument, aber auch um ein eigenes Dokument zu erstellen Markdown Format mit der ursprünglichen Struktur von Grund auf. Um verschiedene Elemente zu erstellen, müssen Sie Stile mit bestimmten Namen nach bestimmten Regeln verwenden, die später in diesem Artikel beschrieben werden. Solche Stile können programmatisch erstellt werden.

## Englische Übersetzung Grundsätze

Wir verwenden [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) Formatierung für Inline-Blöcke. Wenn es keine direkte Korrespondenz für eine Markdown Funktion in Aspose.Words DOM, wir verwenden einen Charakterstil mit einem Namen, der von einigen speziellen Wörtern beginnt.

Für Containerblöcke verwenden wir Stilerbung, um geschachtelt zu bezeichnen Markdown Merkmale. In diesem Fall, auch wenn es keine geschachtelten Funktionen gibt, verwenden wir auch Paragraph-Stile mit einem Namen, der von einigen speziellen Wörtern beginnt.

Geprägte und bestellte Listen sind Containerblöcke in Markdown auch. Ihr Nest ist in DOM die gleiche Weise wie für alle anderen Containerblöcke mit Stil Erbe. Jedoch zusätzlich Listen in DOM haben die Nummernformatierung in entweder Listenstil oder Absatzformatierung entsprechen.

## Inline-Blöcke

Wir verwenden [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) Formatierung beim Übersetzen **Bold**, *Italic* oder markdown Merkmale.

|  Markdown Funktion |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **Bold**<br/>`{1}` |  `Font.Bold = true`  |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-BoldText.java" >}}  ||
|  **Italic**<br/>`*italic text*` |  `Font.Italic = true`  |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-ItalicText.java" >}}  ||
|  **Strikethrough**<br/>`~Strikethrough text~` |  `Font.StrikeThrough = true`  |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Strikethrough.java" >}}  ||

Wir verwenden einen Charakterstil mit einem Namen, der von dem Wort abgeht <span notrans="<span notrans=" `InlineCode`"=""></span>,"> gefolgt von einem optionalen Punkt `(.)` und eine Reihe von Backticks ```(`)``` für die `InlineCode` Funktion. Wird eine Anzahl von Backticks verpasst, wird standardmäßig ein Backtick verwendet.

|  Markdown Funktion |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **InlineCode**<br/>`{1}` |  `Font.StyleName = “InlineCode[.][N]”`  |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-InlineCode.java" >}}  ||
|  **Autolink**<br/>`<scheme://domain.com>`<br/>`<email@domain.com>` |  Die [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/) Klasse |
|     {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Autolink.java" >}}  ||
|  **Link**<br/>`{1}`<br/>`{2}`<br/>`{3}`<br/>`{4})` |  Die [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/) Klasse |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Link.java" >}}  ||
|  **Image**<br/>`{1}`<br/>`{2}`<br/>`{3}`<br/>`{4})` |  Die [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) Klasse |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Image.java" >}}  ||

## Containerblöcke

Ein Dokument ist eine Folge von Containerblöcken wie Überschriften, Absätze, Listen, Zitate und andere. Containerblöcke können in 2 Klassen unterteilt werden: Blattblöcke und komplexe Container. Blattblöcke können nur Inline-Inhalte enthalten. Komplexe Behälter können wiederum andere Containerblöcke enthalten, einschließlich Blattblöcke.

### Blattblöcke

Die folgende Tabelle zeigt Beispiele für die Verwendung Markdown Blattblöcke Aspose.Words:

|  Markdown Funktion |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **HorizontalRule**<br/>`-----` |  Dies ist ein einfacher Absatz mit einer entsprechenden HorizontalRule-Form:<br/>`DocumentBuilder.InsertHorizontalRule()` |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-HorizontalRule.java" >}}  |                                                                |
|  **ATX Heading**<br/>`# H1, ## H2, ### H3…` |  `ParagraphFormat.StyleName = “Heading N”`, wobei (1<= N <= 9)<br/>Dies wird in einen eingebauten Stil übersetzt und sollte genau vom angegebenen Muster sein (keine Suffixes oder Präfixe sind erlaubt).<br/>Andernfalls wird es nur ein regelmäßiger Absatz mit einem entsprechenden Stil sein |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Heading.java" >}}  |                                                                |
|  **Setext Heading**<br/>`===` (wenn Rubrik 1)<br/>`---` (wenn Rubrik 2) |  `ParagraphFormat.StyleName = “SetextHeading[some suffix]”`, basierend auf `“Heading N”` Stil.<br/>Wenn (N >= 2), dann `“Heading 2”` wird verwendet, ansonsten `“Heading 1”`.<br/>Jeder Suffix ist erlaubt, aber Aspose.Words Einführer verwendet die Nummern "1" bzw. "2" |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SetextHeading.java" >}}  |                                                                |
|   **Indented Code**                                             |  `ParagraphFormat.StyleName = “IndentedCode[some suffix]”`     |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-IndentedCode.java" >}}  |                                                                |
|  **Fenced Code**<br/>{{< highlight java >}}``` java
if ()
then
else
```{{< /highlight >}} |  `ParagraphFormat.StyleName = “FencedCode[.][info string]”`<br/>Die `[.]` und `[info string]` sind optional |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-FencedCode.java" >}}   |                                                                |

### Komplexe Container

Die folgende Tabelle zeigt Beispiele für die Verwendung Markdown Komplexe Container in Aspose.Words:

|  Markdown Funktion |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **Quote**<br/>`> quote,`<br/>`>> nested quote` |  `ParagraphFormat.StyleName = “Quote[some suffix]”`<br/>Der Suffix im Stil ist optional, aber Aspose.Words Einführer verwendet die bestellten Nummern 1, 2, 3, ... bei geschachtelten Angeboten.<br/>Das Nesting wird über die geerbten Stile definiert |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Quote.java" >}}  |                                                                |
|  **BulletedList**<br/>`- Item 1`<br/>`- Item 2`<br/> `   - Item 2a`<br/> `   - Item 2b` |  Geringe Listen werden mit Absatznummerierung dargestellt:<br/>`ListFormat.ApplyBulletDefault()`<br/>Es gibt 3 Arten von geschossenen Listen. Sie sind nur in einem nummerierenden Format der ersten Ebene diff. Das sind: `‘-’`, `‘+’` oder `‘*’` bzw |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-BulletedList.java" >}}  |                                                                |
|  **OrderedList**<br/>`1. Item 1`<br/>`2. Item 2`<br/> `1) Item 2a`<br/> `2) Item 2b` |  Die bestellten Listen werden mit Absatznummerierung dargestellt:<br/>`ListFormat.ApplyNumberDefault()`<br/>Es können 2 Nummernformatmarker vorhanden sein: "." und "). Der Standardmarker ist "." |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-OrderedList.java" >}}  |                                                                |

### Tabellen

Aspose.Words ermöglicht auch Tabellen in DOM, wie unten gezeigt:

|  Markdown Funktion |   Aspose.Words                                                  |
|  ----------------------------------------  |  ------------------------------------------------------------  |
|  `Table`<br/>`a | B.`<br />`- Ja | - Ja.`<br />`c) | dgl. ` |  [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) und [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) Klassen |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Table.java" >}}  |                                                                |

## Siehe auch

* [Arbeiten mit Markdown Eigenschaften](/words/de/java/working-with-markdown-features/)

