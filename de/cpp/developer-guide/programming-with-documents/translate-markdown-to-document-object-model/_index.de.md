---
title: Markdown in Dokumentobjektmodell übersetzen (DOM)
second_title: Aspose.Words für C++
articleTitle: Markdown in Dokumentobjektmodell übersetzen (DOM)
linktitle: Markdown in Dokumentobjektmodell übersetzen (DOM)
type: docs
description: "Tarnen Sie ein Markdown -Dokument mit C++ in das Dokumentobjektmodell und zurück. So können Sie mit komplexen vorhandenen Markdown arbeiten und programmgesteuert ein Markdown -Dokument von Grund auf neu erstellen."
weight: 20
url: /de/cpp/translate-markdown-to-document-object-model/
---

Um den Inhalt und die Formatierung eines Dokuments programmgesteuert zu lesen, zu bearbeiten und zu ändern, müssen Sie es in das Aspose.Words-Dokumentobjektmodell (DOM) übersetzen.

Im Gegensatz zu Word-Dokumenten entspricht Markdown nicht den DOM, die in der [Aspose.Words Dokumentobjektmodell (DOM)](/words/cpp/aspose-words-document-object-model/) Beitrag. Aspose.Words bietet jedoch einen eigenen Mechanismus zum Übersetzen von Markdown -Dokumenten nach DOM und zurück, sodass wir erfolgreich mit ihren Elementen wie Textformatierung, Tabellen, Überschriften und anderen arbeiten können.

In diesem Artikel wird erläutert, wie die verschiedenen markdown-Funktionen in das Aspose.Words DOM- und zurück in das Markdown-Format übersetzt werden können.

## Komplexität der Übersetzung Markdown – DOM – Markdown

Die Hauptschwierigkeit dieses Mechanismus besteht nicht nur darin, Markdown in DOM zu übersetzen, sondern auch die umgekehrte Transformation durchzuführen – das Dokument mit minimalem Verlust wieder im Markdown -Format zu speichern. Es gibt Elemente wie mehrstufige Anführungszeichen, für die die umgekehrte Transformation nicht trivial ist.

Mit unserer Übersetzungsengine können Benutzer nicht nur mit komplexen Elementen in einem vorhandenen Markdown -Dokument arbeiten, sondern auch ihr eigenes Dokument im Markdown -Format mit der ursprünglichen Struktur von Grund auf neu erstellen. Um verschiedene Elemente zu erstellen, müssen Sie Stile mit bestimmten Namen gemäß bestimmten Regeln verwenden, die später in diesem Artikel beschrieben werden. Solche Stile können programmgesteuert erstellt werden.

## Gemeinsame Übersetzungsprinzipien

Wir verwenden [Font](https://reference.aspose.com/words/cpp/aspose.words/font/) Formatierung für Inline-Blöcke. Wenn es keine direkte Entsprechung für ein Markdown-Feature in Aspose.Words DOM gibt, verwenden wir einen Zeichenstil mit einem Namen, der mit einigen speziellen Wörtern beginnt.

Für Containerblöcke verwenden wir die Stilvererbung, um verschachtelte Markdown -Features zu bezeichnen. In diesem Fall verwenden wir auch Absatzformate mit einem Namen, der mit einigen speziellen Wörtern beginnt, auch wenn keine verschachtelten Features vorhanden sind.

Aufzählungslisten und geordnete Listen sind ebenfalls Containerblöcke in Markdown. Ihre Verschachtelung wird in DOM genauso dargestellt wie bei allen anderen Containerblöcken, die Stilvererbung verwenden. Zusätzlich haben Listen in DOM jedoch eine entsprechende Zahlenformatierung entweder im Listenstil oder in der Absatzformatierung.

## Inline-Blöcke

Wir verwenden die [Font](https://reference.aspose.com/words/cpp/aspose.words/font/)-Formatierung bei der Übersetzung von **Bold**-, *Italic*- oder ~~Strikethrough~~-Inline-markdown-Funktionen.

| Markdown Funktion | Aspose.Words |
| ----------------------------- | ------------------ |
| **Bold**<br />`**bold text**` | `get_Font()->set_Bold(true)` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-BoldText.h" >}} |  |
| **Italic**<br />`*italic text*` | `get_Font()->set_Italic(true)` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-ItalicText.h" >}} |  |
| **Strikethrough**<br />`~Strikethrough text~` | `get_Font()->set_StrikeThrough(true)` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Strikethrough.h" >}} |  |

Wir verwenden einen Zeichenstil mit einem Namen, der mit dem Wort `InlineCode` beginnt, gefolgt von einem optionalen Punkt `(.)` und einer Anzahl von Backticks ```(`)``` für die Funktion `InlineCode`. Wenn eine Anzahl von Backticks fehlt, wird standardmäßig ein Backtick verwendet.

| Markdown Funktion | Aspose.Words |
| ----------------------------- | ------------------ |
| **InlineCode**<br />`**inline code**` | `get_Font()->set_StyleName(u"InlineCode[.][N]")` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-InlineCode.h" >}} |  |
| **Autolink**<br />`<scheme://domain.com>`<br />`<email@domain.com>` | Die [FieldHyperlink](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldhyperlink/) -Klasse. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Autolink.h" >}} |  |
| **Link**<br />`[link text](url)`<br />`[link text](<url>"title")`<br />`[link text](url 'title')`<br />`[link text](url (title))` | Die [FieldHyperlink](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldhyperlink/) -Klasse. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Link.h" >}} |  |
| **Image**<br />`![](url)`<br />`![alt text](<url>"title")`<br />`![alt text](url ‘title’)`<br />`![alt text](url (title))` | Die [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) -Klasse. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Image.h" >}} |  |

## Containerblöcke

Ein Dokument ist eine Folge von Containerblöcken wie Überschriften, Absätzen, Listen, Anführungszeichen und anderen. Containerblöcke können in 2 -Klassen unterteilt werden: Blattblöcke und komplexe Container. Blattblöcke können nur Inline-Inhalte enthalten. Komplexe Container können wiederum andere Containerblöcke enthalten, einschließlich Blattblöcke.

### Blattblöcke

Die folgende Tabelle zeigt Beispiele für die Verwendung von Markdown-Blattblöcken in Aspose.Words:

| Markdown Funktion | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **HorizontalRule**<br />`-----` | Dies ist ein einfacher Absatz mit einer entsprechenden HorizontalRule -Form:<br />`DocumentBuilder::InsertHorizontalRule()` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-HorizontalRule.h" >}} |  |
| **ATX Heading**<br />`# H1, ## H2, ### H3…` | `get_ParagraphFormat()->set_StyleName(u"Heading N")`, wobei (1<= Und <= 9).<br />Dies wird in einen integrierten Stil übersetzt und sollte genau dem angegebenen Muster entsprechen (keine Suffixe oder Präfixe sind erlaubt).<br />Andernfalls handelt es sich nur um einen regulären Absatz mit einem entsprechenden Stil. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Heading.h" >}} |  |
| **Setext Heading**<br />`===` (if Heading level 1),<br />`---` (if Heading level 2) | `get_ParagraphFormat->set_StyleName(u"SetextHeading[some suffix]")`, basierend auf `"Heading N"` Stil.<br />Wenn (N >= 2), dann wird `"Heading 2"` verwendet, sonst `"Heading 1"`.<br />Jedes Suffix ist erlaubt, aber Aspose.Words Importer verwendet die Nummern "1" und "2". |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-SetextHeading.h" >}} |  |
| **Indented Code** | `get_ParagraphFormat->set_StyleName(u"IndentedCode[some suffix]")` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-IndentedCode.h" >}} |  |
| **Fenced Code**<br />{{< highlight csharp >}}``` c#
if ()
then
else
```{{< /highlight >}} | `get_ParagraphFormat()->set_StyleName(u"FencedCode[.][info string]")`<br />Die `[.]` und `[info string]` sind optional. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-FencedCode.h" >}} |  |

### Komplexe Behälter

Die folgende Tabelle zeigt Beispiele für die Verwendung von Markdown komplexen Containern in Aspose.Words:

| Markdown Funktion | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **Quote**<br />`> quote,`<br />`>> nested quote` | `get_ParagraphFormat()->set_StyleName(u"Quote[some suffix]")`<br />Das Suffix im Stilnamen ist optional, aber Aspose.Words importer verwendet die sortierten Nummern 1, 2, 3, .... bei verschachtelten Anführungszeichen.<br />Die Verschachtelung wird über die geerbten Stile definiert. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Quote.h" >}} |  |
| **BulletedList**<br />`- Item 1`<br />`- Item 2`<br />	` - Item 2a`<br />	` - Item 2b` | Aufzählungen werden mit Absatznummerierung dargestellt:<br />`get_ListFormat()->ApplyBulletDefault()`<br />Es kann 3 Arten von Aufzählungslisten geben. Sie unterscheiden sich nur in einem Nummerierungsformat der allerersten Ebene. Dies sind: `‘-’`, `‘+’` oder `‘*’`. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-BulletedList.h" >}} |  |
| **OrderedList**<br />`1. Item 1`<br />`2. Item 2`<br />	`1) Item 2a`<br />	`2) Item 2b` | Geordnete Listen werden mit Absatznummerierung dargestellt:<br />`get_ListFormat()->ApplyNumberDefault()`<br />Es können 2 Zahlenformatmarkierungen vorhanden sein: ‘.’ und ‘)’. Der Standardmarker ist ‘.’. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-OrderedList.h" >}} |  |

### Tables

Aspose.Words ermöglicht auch die Übersetzung von Tabellen in DOM, wie unten gezeigt:

| Markdown Funktion | Aspose.Words |
| ---------------------------------------- | ------------------------------------------------------------ |
| `Table`<br />`a|b`<br />`-|-`<br />`c|d` | [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/), [Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/) und [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/) Klassen. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Table.h" >}} |  |

## Siehe auch

* [Arbeiten mit Markdown-Funktionen](/words/cpp/working-with-markdown-features/)

