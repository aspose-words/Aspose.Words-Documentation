---
title: Arbeiten mit Markdown Eigenschaften in Java
second_title: Aspose.Words für Java
articleTitle: Arbeiten mit Markdown Eigenschaften
linktitle: Arbeiten mit Markdown Eigenschaften
description: "Wie zu implementieren Markdown Funktionen Java. Alle Merkmale sind als entsprechende Stile oder direkte Formatierung dargestellt."
type: docs
weight: 420
url: /de/java/working-with-markdown-features/
---

Dieses Thema diskutiert, wie man implementiert Markdown Funktionen Aspose.Words. Markdown ist eine einfache Möglichkeit, einfachen Text zu formatieren, der leicht in HTML umgewandelt werden kann. Aspose.Words unterstützt: Markdown Merkmale:

- Rubriken
- Blockquoten
- Horizontale Regeln
- Bold Betonung
- Schwerpunkt

Die Markdown Die Implementierung der Funktion folgt meist `CommonMark` Spezifikation Aspose.Words API und alle Merkmale sind als entsprechende Stile oder direkte Formatierung dargestellt. Was bedeutet, dass

- Bold und Italic sind als `Font.Bold` und `Font.Italic`
- Rubriken sind Absätze mit Rubrik 1 - Rubrik 6 Stile
- Zitate sind Absätze mit "Quote" im Stilnamen
- HorizontalRule ist ein Absatz mit `HorizontalRule` Form.

{{% alert color="primary" %}}

Es gibt Nuancen der Übersetzung Markdown in der Aspose.Words Document Object Model (DOM), beschrieben in dem Artikel [Übersetzung Markdown Bis Document Object Model (DOM)](/words/de/java/translate-markdown-to-document-object-model/).

{{% /alert %}}


## Markdown Dokument mit Emphases

Dieser Abschnitt zeigt Ihnen, wie Sie eine markdown Dokument mit emphases wie unten angegeben:

{{< highlight csharp >}}
Markdown treats asterisks (*) and underscores (_) as indicators of emphasis.
You can write **bold** or *italic* text. 
You can also write ***BoldItalic***text.
{{< /highlight >}}

Der folgende Code-Snippet kann verwendet werden, um die oben angegebenen markdown Dokument.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithEmphases.java" >}}


## Markdown Dokument mit Rubriken

Dieser Abschnitt zeigt Ihnen, wie Sie eine markdown Dokument mit folgenden Überschriften:

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

Der folgende Code-Snippet kann verwendet werden, um die oben angegebene markdown Dokument.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithHeadings.java" >}}

## Markdown Dokument mit Block Zitate

Dieser Abschnitt zeigt Ihnen, wie Sie eine markdown Dokument mit Block-Zitaten wie unten angegeben:

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

Der folgende Code-Snippet kann verwendet werden, um die oben angegebene markdown Dokument.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithBlockQuotes.java" >}}

## Markdown Dokument mit horizontaler Regel

Dieser Abschnitt zeigt Ihnen, wie Sie eine markdown Dokument mit Horizontal Regel wie unten angegeben:

{{< highlight csharp >}}
We support Horizontal rules (Thematic breaks) in Markdown:
-----

{{< /highlight >}}

Der folgende Code-Snippet kann verwendet werden, um die oben angegebenen markdown Dokument.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithHorizontalRule.java" >}}

## Lesen eines Markdown Dokument

Der folgende Code-Snippet zeigt Ihnen, wie Sie eine markdown Dokument.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-ReadMarkdownDocument.java" >}}

## Angabe Markdown Optionen speichern

Aspose.Words API bietet [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) Klasse, um zusätzliche Optionen anzugeben, während ein Dokument in die Markdown Format.

Das folgende Codebeispiel zeigt, wie man verschiedene Markdown Optionen speichern.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-SaveAsMD.java" >}}

## Wie man Inhalte innerhalb der Tabelle bei der Ausfuhr in Markdown

Aspose.Words API bietet [TableContentAlignment](https://reference.aspose.com/words/java/com.aspose.words/tablecontentalignment/) Aufzählung, die Ausrichtungsrichtungen definiert, um Inhalte in Tabellen auszurichten, während sie in die Markdown Dokument. Das folgende Codebeispiel zeigt, wie Inhalte innerhalb der Tabelle ausgerichtet werden können.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-ExportIntoMarkdownWithTableContentAlignment.java" >}}
