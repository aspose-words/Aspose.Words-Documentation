---
title: Arbeiten mit Markdown-Funktionen in Java
second_title: Aspose.Words für Java
articleTitle: Arbeiten mit Markdown-Funktionen
linktitle: Arbeiten mit Markdown-Funktionen
description: "So implementieren Sie Markdown -Funktionen mit Java. Alle Funktionen werden als entsprechende Stile oder direkte Formatierung dargestellt."
type: docs
weight: 420
url: /de/java/working-with-markdown-features/
timestamp: 2024-01-31-14-23-37
---

In diesem Thema wird erläutert, wie Markdown-Funktionen mit Aspose.Words implementiert werden. Markdown ist eine einfache Möglichkeit, einfachen Text zu formatieren, der leicht in HTML konvertiert werden kann. Aspose.Words unterstützt die folgenden Markdown Funktionen:

- Spaltenüberschriften
- Blockzitate
- Horizontale Regeln
- Kräftige Betonung
- Kursive Hervorhebung

Die Markdown -Feature-Implementierung folgt größtenteils der `CommonMark` -Spezifikation in Aspose.Words API und alle Features werden als entsprechende Stile oder direkte Formatierung dargestellt. Was bedeutet, dass

- Fett und kursiv werden als `Font.Bold` und `Font.Italic` dargestellt.
- Überschriften sind Absätze mit den Stilen Heading 1 - Heading 6.
- Anführungszeichen sind Absätze mit "Zitat" im Stilnamen.
- HorizontalRule ist ein Absatz mit der Form `HorizontalRule`.

{{% alert color="primary" %}}

Es gibt Nuancen bei der Übersetzung von Markdown in das Aspose.Words -Dokumentobjektmodell (DOM), die im Artikel beschrieben werden [Markdown im Dokumentobjektmodell übersetzen (DOM)](/words/java/translate-markdown-to-document-object-model/).

{{% /alert %}}


## Markdown Dokument mit Hervorhebungen

In diesem Abschnitt wird gezeigt, wie Sie ein markdown-Dokument mit den unten angegebenen Hervorhebungen erstellen:

{{< highlight csharp >}}
Markdown treats asterisks (*) and underscores (_) as indicators of emphasis.
You can write **bold** or *italic* text. 
You can also write ***BoldItalic***text.
{{< /highlight >}}

Der folgende Codeausschnitt kann verwendet werden, um das oben angegebene markdown -Dokument zu erstellen.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithEmphases.java" >}}


## Markdown Dokument mit Überschriften

In diesem Abschnitt wird gezeigt, wie Sie ein markdown -Dokument mit den unten angegebenen Überschriften erstellen:

{{< highlight csharp >}}
The following produces headings:
# Heading1
## Heading2
### Heading3
#### Heading4
##### Heading5
###### Heading6
# **Bold Heading1**
{{< /highlight >}}

Der folgende Codeausschnitt kann verwendet werden, um das oben angegebene markdown -Dokument zu erstellen.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithHeadings.java" >}}

## Markdown Dokument mit Blockzitaten

In diesem Abschnitt wird gezeigt, wie Sie ein markdown -Dokument mit Blockzitaten wie unten angegeben erstellen:

{{< highlight csharp >}}
We support blockquotes in Markdown:
>*Lorem*
>*ipsum*
>The quotes can be of any level and can be nested:
>>>Quote level 3
>>>
>>>>Nested quote level 4
>
>*Back to first level*
>### Headings are allowed inside Quotes
>{{< /highlight >}}

Der folgende Codeausschnitt kann verwendet werden, um das oben angegebene markdown -Dokument zu erstellen.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithBlockQuotes.java" >}}

## Markdown Dokument mit horizontalem Strich

In diesem Abschnitt wird gezeigt, wie Sie ein markdown -Dokument mit horizontaler Linie wie unten angegeben erstellen:

{{< highlight csharp >}}
We support Horizontal rules (Thematic breaks) in Markdown:
-----

{{< /highlight >}}

Der folgende Codeausschnitt kann verwendet werden, um das oben angegebene markdown -Dokument zu erstellen.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithHorizontalRule.java" >}}

## Lesen eines Markdown-Dokuments

Der folgende Codeausschnitt zeigt Ihnen, wie Sie ein markdown -Dokument lesen.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-ReadMarkdownDocument.java" >}}

## Geben Sie Markdown Speicheroptionen an

Aspose.Words API stellt die [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/)-Klasse bereit, um zusätzliche Optionen beim Speichern eines Dokuments im Markdown-Format anzugeben.

Das folgende Codebeispiel zeigt, wie verschiedene Markdown-Speicheroptionen angegeben werden.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-SaveAsMD.java" >}}

## So richten Sie Inhalte innerhalb der Tabelle beim Exportieren nach Markdown aus

Aspose.Words API bietet eine [TableContentAlignment](https://reference.aspose.com/words/java/com.aspose.words/tablecontentalignment/)-Aufzählung, die Ausrichtungsrichtungen definiert, um Inhalte in Tabellen beim Exportieren in das Markdown-Dokument auszurichten. Das folgende Codebeispiel veranschaulicht, wie Inhalte in der Tabelle ausgerichtet werden.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-ExportIntoMarkdownWithTableContentAlignment.java" >}}
