---
title: Legen Sie Layoutoptionen in C# fest
second_title: Aspose.Words für .NET
articleTitle: Legen Sie Layoutoptionen fest
linktitle: Legen Sie Layoutoptionen fest
description: "Legen Sie Layoutoptionen für verschiedene Dokumentlayouts mit C# fest."
type: docs
weight: 10
url: /de/net/specify-layout-options/
---

Mit Aspose.Words können Sie Ausgabedokumente mit verschiedenen Layouts erstellen, abhängig von den in den Eigenschaften der [LayoutOptions](https://reference.aspose.com/words/de/net/aspose.words.layout/layoutoptions/)-Klasse angegebenen Parametern. Einige dieser Eigenschaften ähneln einigen Menüoptionen der Microsoft Word-Benutzeroberfläche – sie werden in diesem Artikel beschrieben.

Eine vollständige Liste von Parametern wie [ContinuousSectionPageNumberingRestart](https://reference.aspose.com/words/de/net/aspose.words.layout/layoutoptions/continuoussectionpagenumberingrestart/) zum Berechnen von Seitenzahlen in einem fortlaufenden Abschnitt, der die Seitennummerierung neu startet, oder [IgnorePrinterMetrics](https://reference.aspose.com/words/de/net/aspose.words.layout/layoutoptions/ignoreprintermetrics/) zum Ignorieren der Kompatibilitätsoption "Druckermetriken zum Layouten von Dokumenten verwenden" finden Sie auf der [LayoutOptions](https://reference.aspose.com/words/de/net/aspose.words.layout/layoutoptions/)-Klassenseite.

## Formatierungszeichen

Aspose.Words ermöglicht die Verwaltung von Formatierungszeichen mithilfe der folgenden Eigenschaften:

- [ShowHiddenText](https://reference.aspose.com/words/de/net/aspose.words.layout/layoutoptions/showhiddentext/) – ein `Boolean`-Wert, der angibt, ob der ausgeblendete Text gerendert wird.
- [ShowParagraphMarks](https://reference.aspose.com/words/de/net/aspose.words.layout/layoutoptions/showparagraphmarks/) – ein `Boolean`-Wert, der angibt, ob Absatzmarkenzeichen gerendert werden.

Die im Beispiel unten dargestellte Seite enthält drei Absätze. Der zweite ist versteckt. Ein Benutzer kann die **ShowHiddenText**-Option ändern, um diesen ausgeblendeten Text auf der Seite anzuzeigen. Außerdem hat jeder Absatz am Ende eine Absatzmarke. Die Absatzmarke ist normalerweise nicht sichtbar, es sei denn, die **ShowParagraphMarks**-Eigenschaft ist so eingestellt, dass sie dargestellt wird.

![specify-layout-options_1](/words/net/specify-layout-options/specify-layout-options-1.png)

In Microsoft Word werden diese Parameter über das Dialogfeld "Datei → Optionen → Anzeige" wie folgt eingestellt:

![specify-layout-options_2](/words/net/specify-layout-options/specify-layout-options-2.jpg)

## Kommentare und Überarbeitungen

Mit Aspose.Words können Sie Dokumentkommentare rendern, die genauso aussehen wie in Microsoft Word. Um anzugeben, ob Kommentare gerendert werden, verwenden Sie die [CommentDisplayMode](https://reference.aspose.com/words/de/net/aspose.words.layout/layoutoptions/commentdisplaymode/)-Eigenschaft.

In Microsoft Word wird dieser Parameter über das Dialogfeld "Optionen zum Verfolgen von Änderungen" festgelegt, wie unten gezeigt:

![specify-layout-options_3](/words/net/specify-layout-options/specify-layout-options-3.jpg)

Außerdem ermöglicht Ihnen Aspose.Words die Anzeige von Revisionen in einem Dokument. Verwenden Sie die [RevisionOptions](https://reference.aspose.com/words/de/net/aspose.words.layout/layoutoptions/revisionoptions/)-Eigenschaft der **LayoutOptions**-Klasse, um zu definieren, ob die Dokumentrevisionen angezeigt werden. Um ihr Erscheinungsbild zu steuern (Farbe der Revisionshervorhebung, Farbe der Revisionsleiste usw.), verwenden Sie die [RevisonOptions](https://reference.aspose.com/words/de/net/aspose.words.layout/revisionoptions/)-Klasse.

Sie können sich Überarbeitungen auch als Kommentare zum Inhalt anzeigen lassen. Verwenden Sie zu diesem Zweck die [CommentDisplayMode](https://reference.aspose.com/words/de/net/aspose.words.layout/layoutoptions/commentdisplaymode/)-Eigenschaft und den [ShowInBalloons](https://reference.aspose.com/words/de/net/aspose.words.layout/commentdisplaymode/)-Wert.

Das folgende Codebeispiel zeigt, wie Sie die Revisionsanzeige anpassen:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Revisions-ShowRevisionsInBalloons.cs" >}}

Das Bild unten zeigt, wie Aspose.Words Kommentare rendert und Revisionen löscht:

<img src="/words/net/specify-layout-options/specify-layout-options-4.png" alt="comments_and_revisions_example_aspose_words_net" style="width:800px"/>

## Textformer für erweitertes Typografie-Rendering

Mit der [TextShaperFactory](https://reference.aspose.com/words/de/net/aspose.words.layout/layoutoptions/textshaperfactory/)-Eigenschaft können Sie die Textformungsfunktionalität sowie die Unterstützung von `OpenType`-Funktionen festlegen.

Verwenden Sie Textformung für die Dokumentenverarbeitung in den folgenden Hauptfällen:

- Ein Dokument verwendet Kerning, Numeral Shaping, Numeral Forms oder Ligaturen.
- Ein Dokument verwendet komplexe Schriften wie Arabisch, Khmer, Thai usw.

{{% alert color="primary" %}}

Die Textformung wird nur aktiviert, wenn ein Dokument in PDF oder XPS exportiert wird.

{{% /alert %}}
