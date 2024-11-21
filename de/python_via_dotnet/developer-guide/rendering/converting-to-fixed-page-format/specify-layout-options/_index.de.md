---
title: Legen Sie Layoutoptionen in Python fest
second_title: Aspose.Words für Python via .NET
articleTitle: Legen Sie Layoutoptionen fest
linktitle: Legen Sie Layoutoptionen fest
description: "Legen Sie Layoutoptionen für verschiedene Dokumentlayouts mit Python fest."
type: docs
weight: 10
url: /de/python-net/specify-layout-options/
timestamp: 2024-01-27-14-07-04
---

Mit Aspose.Words können Sie Ausgabedokumente mit verschiedenen Layouts erstellen, abhängig von den in den Eigenschaften der [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/)-Klasse angegebenen Parametern. Einige dieser Eigenschaften ähneln einigen Menüoptionen der Microsoft Word-Benutzeroberfläche – sie werden in diesem Artikel beschrieben.

Eine vollständige Liste von Parametern wie [continuous_section_page_numbering_restart](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/continuous_section_page_numbering_restart/) zum Berechnen von Seitenzahlen in einem fortlaufenden Abschnitt, der die Seitennummerierung neu startet, oder [ignore_printer_metrics](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/ignore_printer_metrics/) zum Ignorieren der Kompatibilitätsoption "Druckermetriken zum Layouten von Dokumenten verwenden" finden Sie auf der [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/)-Klassenseite.

## Formatierungszeichen

Aspose.Words ermöglicht die Verwaltung von Formatierungszeichen mithilfe der folgenden Eigenschaften:

- [show_hidden_text](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_hidden_text/) – ein `Boolean`-Wert, der angibt, ob der ausgeblendete Text gerendert wird.
- [show_paragraph_marks](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_paragraph_marks/) – ein `Boolean`-Wert, der angibt, ob Absatzmarkenzeichen gerendert werden.

Die im Beispiel unten dargestellte Seite enthält drei Absätze. Der zweite ist versteckt. Ein Benutzer kann die [show_hidden_text](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_hidden_text/)-Option ändern, um diesen ausgeblendeten Text auf der Seite anzuzeigen. Außerdem hat jeder Absatz am Ende eine Absatzmarke. Die Absatzmarke ist normalerweise nicht sichtbar, es sei denn, die [show_paragraph_marks](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_paragraph_marks/)-Eigenschaft ist so eingestellt, dass sie dargestellt wird.

![specify-layout-options_1](/words/python-net/specify-layout-options/specify-layout-options-1.png)

In Microsoft Word werden diese Parameter über das Dialogfeld "Datei → Optionen → Anzeige" wie folgt eingestellt:

![specify-layout-options_2](/words/python-net/specify-layout-options/specify-layout-options-2.jpg)

## Kommentare und Überarbeitungen

Mit Aspose.Words können Sie Dokumentkommentare rendern, die genauso aussehen wie in Microsoft Word. Um anzugeben, ob Kommentare gerendert werden, verwenden Sie die [comment_display_mode](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/comment_display_mode/)-Eigenschaft.

In Microsoft Word wird dieser Parameter über das Dialogfeld "Optionen zum Verfolgen von Änderungen" festgelegt, wie unten gezeigt:

![specify-layout-options_3](/words/python-net/specify-layout-options/specify-layout-options-3.jpg)

Außerdem ermöglicht Ihnen Aspose.Words die Anzeige von Revisionen in einem Dokument. Verwenden Sie die [revision_options](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/revision_options/)-Eigenschaft der [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/)-Klasse, um zu definieren, ob die Dokumentrevisionen angezeigt werden. Um ihr Erscheinungsbild zu steuern (Farbe der Revisionshervorhebung, Farbe der Revisionsleiste usw.), verwenden Sie die [RevisionOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/revisionoptions/)-Klasse.

Sie können sich Überarbeitungen auch als Kommentare zum Inhalt anzeigen lassen. Verwenden Sie zu diesem Zweck die [comment_display_mode](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/comment_display_mode/)-Eigenschaft und den [SHOW_IN_BALLOONS](https://reference.aspose.com/words/python-net/aspose.words.layout/commentdisplaymode/#show_in_balloons)-Wert.

Das folgende Codebeispiel zeigt, wie Sie die Revisionsanzeige anpassen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_revisions-ShowRevisionsInBalloons.py" >}}

Das Bild unten zeigt, wie Aspose.Words Kommentare rendert und Revisionen löscht:

<img src="/words/python-net/specify-layout-options/specify-layout-options-4.png" alt="comments_and_revisions_example_aspose_words_net" style="width:800px"/>
