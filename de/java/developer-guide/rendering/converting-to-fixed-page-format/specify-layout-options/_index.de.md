---
title: Geben Sie Layoutoptionen in Java an
second_title: Aspose.Words für Java
articleTitle: Layoutoptionen angeben
linktitle: Layoutoptionen angeben
description: "Erstellen Sie Ausgabedokumente mit verschiedenen Layouts, abhängig von den im Dokument mit Java angegebenen Parametern."
type: docs
weight: 10
url: /de/java/specify-layout-options/
timestamp: 2024-01-27-14-07-04
---

Mit Aspose.Words können Sie Ausgabedokumente mit verschiedenen Layouts erstellen, abhängig von den Parametern, die in der Eigenschaft [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) von **Document** angegeben sind. Diese Eigenschaft ähnelt einigen der in diesem Artikel beschriebenen Microsoft Word Menüoptionen der Benutzeroberfläche.

Eine vollständige Liste der Parameter, z. B. [ContinuousSectionPageNumberingRestart](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getContinuousSectionPageNumberingRestart) zum Berechnen der Seitenzahlen in einem fortlaufenden Abschnitt, der die Seitennummerierung neu startet, oder [IgnorePrinterMetrics](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getIgnorePrinterMetrics) zum Ignorieren der Kompatibilitätsoption "Druckermetriken zum Layout von Dokumenten verwenden", finden Sie auf der Klassenseite [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/).

## Formatierungszeichen

Aspose.Words ermöglicht die Verwaltung von Formatierungszeichen mit den folgenden Eigenschaften:

- [ShowHiddenText](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getShowHiddenText) - ein `Boolean`-Wert, der angibt, ob der ausgeblendete Text gerendert wird.
- [ShowParagraphMarks](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getShowParagraphMarks) - ein `Boolean`-Wert, der angibt, ob Absatzzeichenzeichen gerendert werden.

Die im folgenden Beispiel dargestellte Seite enthält drei Absätze. Der zweite ist versteckt. Ein Benutzer kann die Option **ShowHiddenText** ändern, um diesen versteckten Text auf der Seite anzuzeigen. Außerdem hat jeder Absatz am Ende eine Absatzmarke. Die Absatzmarke ist normalerweise nicht sichtbar, es sei denn, die Eigenschaft **ShowParagraphMarks** ist so eingestellt, dass sie gerendert wird.

![formatting_marks_example_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-1.png)

In Microsoft Word werden diese Parameter über das Dialogfeld "Datei → Optionen → Anzeige" wie folgt festgelegt:

![formatting_marks_ms_word_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-3.png)

## Kommentare und Überarbeitungen

Mit Aspose.Words können Sie Dokumentkommentare rendern, die genauso aussehen wie in Microsoft Word. Um anzugeben, ob Kommentare gerendert werden, verwenden Sie die Eigenschaft [ShowComments](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/).

In Microsoft Word wird dieser Parameter über das Dialogfeld "Änderungsoptionen nachverfolgen" festgelegt, wie unten gezeigt:

![comments_and_revisions_ms_word_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-4.png)

Außerdem können Sie mit Aspose.Words Revisionen in einem Dokument anzeigen. Verwenden Sie die Eigenschaft [RevisionOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getRevisionOptions) der Klasse **LayoutOptions**, um festzulegen, ob die Dokumentrevisionen angezeigt werden. Um ihr Aussehen zu steuern (Hervorhebungsfarbe der Revision, Farbe der Revisionsleiste usw.).), verwenden Sie die Klasse [RevisonOptions](https://reference.aspose.com/words/java/com.aspose.words/revisionoptions/).

Sie können sich Revisionen auch als Kommentare zum Inhalt anzeigen lassen. Verwenden Sie dazu die Eigenschaft [CommentDisplayMode](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getCommentDisplayMode) und den Wert [ShowInBalloons](https://reference.aspose.com/words/java/com.aspose.words/commentdisplaymode/).

Das folgende Codebeispiel zeigt, wie die Anzeige von Revisionen angepasst wird:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-SetShowInBalloons.java" >}}

Das Bild unten zeigt, wie Aspose.Words Kommentare und die Löschrevisionen rendert:

<img src="/words/java/specify-layout-options/specify-layout-options-2.png" alt="comments_and_revisions_example_aspose_words_java" style="width:800px"/>

## Textformer für fortgeschrittenes Typografie-Rendering

Mit der Eigenschaft [TextShaperFactory](https://reference.aspose.com/words/java/com.aspose.words/itextshaperfactory/) können Sie die Textformungsfunktion sowie die Unterstützung der `OpenType` -Funktionen festlegen.

Verwenden Sie die Textformung für die Dokumentenverarbeitung in den folgenden Hauptfällen:

- Ein Dokument verwendet Kerning, Ziffernformung, Ziffernformen oder Ligaturen.
- Ein Dokument verwendet komplexe Skripte wie Arabisch, Khmer, Thai usw.

{{% alert color="primary" %}}

Die Textformung wird nur aktiviert, wenn ein Dokument nach PDF oder XPS exportiert wird.

{{% /alert %}}
