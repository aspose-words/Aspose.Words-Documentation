---
title: Geben Sie Layoutoptionen in C++ an
second_title: Aspose.Words für C++
articleTitle: Layoutoptionen angeben
linktitle: Layoutoptionen angeben
description: "Geben Sie Layoutoptionen für verschiedene Dokumentlayouts an."
type: docs
weight: 20
url: /de/cpp/specify-layout-options/
timestamp: 2024-01-27-14-07-04
---

Mit Aspose.Words können Sie Ausgabedokumente mit verschiedenen Layouts erstellen, abhängig von den Parametern, die in der Eigenschaft [LayoutOptions](https://reference.aspose.com/words/cpp/class/aspose.words.layout.layout_options) von **Document** angegeben sind. Diese Eigenschaft ähnelt einigen der in diesem Artikel beschriebenen Microsoft Word Menüoptionen der Benutzeroberfläche.

Eine vollständige Liste der Parameter, z. B. [ContinuousSectionPageNumberingRestart](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_continuoussectionpagenumberingrestart/) zum Berechnen der Seitenzahlen in einem fortlaufenden Abschnitt, der die Seitennummerierung neu startet, oder [IgnorePrinterMetrics](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_ignoreprintermetrics/) zum Ignorieren der Kompatibilitätsoption "Druckermetriken zum Layout von Dokumenten verwenden", finden Sie auf der Klassenseite [LayoutOptions](https://reference.aspose.com/words/cpp/class/aspose.words.layout.layout_options).

## Formatierungszeichen

Aspose.Words ermöglicht die Verwaltung von Formatierungszeichen mit den folgenden Eigenschaften:

- [ShowHiddenText](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_showhiddentext/) - ein `Boolean`-Wert, der angibt, ob der ausgeblendete Text gerendert wird.
- [ShowParagraphMarks](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_showparagraphmarks/) - ein `Boolean`-Wert, der angibt, ob Absatzzeichenzeichen gerendert werden.

Die im folgenden Beispiel dargestellte Seite enthält drei Absätze. Der zweite ist versteckt. Ein Benutzer kann die Option **ShowHiddenText** ändern, um diesen versteckten Text auf der Seite anzuzeigen. Außerdem hat jeder Absatz am Ende eine Absatzmarke. Die Absatzmarke ist normalerweise nicht sichtbar, es sei denn, die Eigenschaft **ShowParagraphMarks** ist so eingestellt, dass sie gerendert wird.

![specify-layout-options-aspose-words-cpp-1](specify-layout-options-1.png)

In Microsoft Word werden diese Parameter über das Dialogfeld "Datei → Optionen → Anzeige" wie folgt festgelegt:

![specify-layout-options-aspose-words-cpp-2](specify-layout-options-3.png)

## Kommentare und Überarbeitungen

Mit Aspose.Words können Sie Dokumentkommentare rendern, die genauso aussehen wie in Microsoft Word. Um anzugeben, ob Kommentare gerendert werden, verwenden Sie die Eigenschaft [CommentDisplayMode](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_commentdisplaymode/).

In Microsoft Word wird dieser Parameter über das Dialogfeld "Änderungsoptionen nachverfolgen" festgelegt, wie unten gezeigt:

![specify-layout-options-aspose-words-cpp-3](specify-layout-options-4.png)

Außerdem können Sie mit Aspose.Words Revisionen in einem Dokument anzeigen. Verwenden Sie die Eigenschaft [RevisionOptions](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_revisionoptions/) der Klasse **LayoutOptions**, um festzulegen, ob die Dokumentrevisionen angezeigt werden. Um ihr Aussehen zu steuern (Hervorhebungsfarbe der Revision, Farbe der Revisionsleiste usw.).), verwenden Sie die Klasse [RevisonOptions](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_revisionoptions/).

Sie können sich Revisionen auch als Kommentare zum Inhalt anzeigen lassen. Verwenden Sie dazu die Eigenschaft [CommentDisplayMode](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/set_commentdisplaymode/) und den Wert [ShowInBalloons](https://reference.aspose.com/words/cpp/aspose.words.layout/commentdisplaymode/).

Das folgende Codebeispiel zeigt, wie die Anzeige von Revisionen angepasst wird:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRevisionOptions-SetShowInBalloons.cpp" >}}

Das Bild unten zeigt, wie Aspose.Words Kommentare und die Löschrevisionen rendert:

<img src="specify-layout-options-2.png" alt="comments_and_revisions_example_aspose_words_cpp" style="width:800px"/>

## Textformer für fortgeschrittenes Typografie-Rendering

Mit der Eigenschaft [TextShaperFactory](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_textshaperfactory/) können Sie die Textformungsfunktion sowie die Unterstützung der `OpenType` -Funktionen festlegen.

Verwenden Sie die Textformung für die Dokumentenverarbeitung in den folgenden Hauptfällen:

- Ein Dokument verwendet Kerning, Ziffernformung, Ziffernformen oder Ligaturen.
- Ein Dokument verwendet komplexe Skripte wie Arabisch, Khmer, Thai usw.

{{% alert color="primary" %}}

Die Textformung wird nur aktiviert, wenn ein Dokument nach PDF oder XPS exportiert wird.

{{% /alert %}}
