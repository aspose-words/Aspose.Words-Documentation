---
title: Arbeiten mit Markdown-Funktionen
second_title: Aspose.Words für Python via .NET
articleTitle: Arbeiten mit Markdown-Funktionen
linktitle: Arbeiten mit Markdown-Funktionen
description: "So implementieren Sie Markdown-Funktionen mithilfe von Python. Alle Funktionen werden als entsprechende Stile oder direkte Formatierung dargestellt."
type: docs
weight: 420
url: /de/python-net/working-with-markdown-features/
---

In diesem Thema wird erläutert, wie Markdown-Funktionen mithilfe von Aspose.Words implementiert werden. Markdown ist eine einfache Möglichkeit, einfachen Text zu formatieren, der leicht in HTML konvertiert werden kann. Aspose.Words unterstützt die folgenden Markdown-Funktionen:

- Überschriften
- Block Zitate
- Horizontale Regeln
- Fette Betonung
- Kursive Hervorhebung

Die Markdown-Funktionsimplementierung folgt größtenteils der `CommonMark`-Spezifikation in Aspose.Words API und alle Funktionen werden als entsprechende Stile oder direkte Formatierung dargestellt. Was bedeutet, dass

- Fett und Kursiv werden als [Font.bold](https://reference.aspose.com/words/python-net/aspose.words/font/bold/) und [Font.Italic](https://reference.aspose.com/words/python-net/aspose.words/font/italic/) dargestellt
- Überschriften sind Absätze mit den Stilen Überschrift 1 - Überschrift 6
- Zitate sind Absätze mit "Zitat" im Stilnamen
- HorizontalRule ist ein Absatz mit der Form "HorizontalRule".

{{% alert color="primary" %}}

Es gibt Nuancen bei der Übersetzung von Markdown in Aspose.Words Document Object Model (DOM), die im Artikel [Übersetzen Sie Markdown in Document Object Model (DOM)](/words/de/python-net/translate-markdown-to-document-object-model/) beschrieben werden.

{{% /alert %}}

## Markdown-Dokument mit Schwerpunkten

In diesem Abschnitt erfahren Sie, wie Sie ein markdown-Dokument mit den folgenden Schwerpunkten erstellen:

{{< highlight csharp >}}
Markdown treats asterisks (*) and underscores (_) as indicators of emphasis.
You can write **bold** or *italic* text. 
You can also write ***BoldItalic*** text.
{{< /highlight >}}

Mit dem folgenden Codeausschnitt kann das oben angegebene markdown-Dokument erstellt werden.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-Emphases.py" >}}

## Markdown-Dokument mit Überschriften

In diesem Abschnitt erfahren Sie, wie Sie ein markdown-Dokument mit den folgenden Überschriften erstellen:

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

Mit dem folgenden Codeausschnitt kann das oben angegebene markdown-Dokument erstellt werden.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-Headings.py" >}}

## Markdown-Dokument mit Blockzitaten

In diesem Abschnitt erfahren Sie, wie Sie ein markdown-Dokument mit Anführungszeichen wie unten angegeben erstellen:

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

Mit dem folgenden Codeausschnitt kann das oben angegebene markdown-Dokument erstellt werden.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-BlockQuotes.py" >}}

## Markdown-Dokument mit horizontaler Regel

In diesem Abschnitt erfahren Sie, wie Sie ein markdown-Dokument mit der horizontalen Regel wie folgt erstellen:

{{< highlight csharp >}}
We support Horizontal rules (Thematic breaks) in Markdown:
-----

{{< /highlight >}}

Mit dem folgenden Codeausschnitt kann das oben angegebene markdown-Dokument erstellt werden.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-HorizontalRule.py" >}}

## Ein Markdown-Dokument lesen

Der folgende Codeausschnitt zeigt Ihnen, wie Sie ein markdown-Dokument lesen.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-ReadMarkdownDocument.py" >}}

## Geben Sie Markdown-Speicheroptionen an

Aspose.Words API bietet eine [MarkdownSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/)-Klasse zur Angabe zusätzlicher Optionen beim Speichern eines Dokuments im Markdown-Format.

Im folgenden Codebeispiel wurde gezeigt, wie verschiedene Markdown-Speicheroptionen angegeben werden.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-SaveToMarkdownDocument.py" >}}

## So richten Sie Inhalte innerhalb der Tabelle beim Exportieren in Markdown aus

Aspose.Words API bietet eine [TableContentAlignment](https://reference.aspose.com/words/python-net/aspose.words.saving/tablecontentalignment/)-Aufzählung, die Ausrichtungsrichtungen definiert, um Inhalte in Tabellen beim Exportieren in das Markdown-Dokument auszurichten. Das folgende Codebeispiel zeigt, wie Inhalte innerhalb der Tabelle ausgerichtet werden.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_markdown_save_options-ExportIntoMarkdownWithTableContentAlignment.py" >}}
