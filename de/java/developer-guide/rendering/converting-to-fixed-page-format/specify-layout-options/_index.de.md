---
title: Layoutoptionen in Java
second_title: Aspose.Words für Java
articleTitle: Layoutoptionen angeben
linktitle: Layoutoptionen angeben
description: "Erstellen Sie Ausgabedokumente mit verschiedenen Layouts, abhängig von den im Dokument angegebenen Parametern Java."
type: docs
weight: 10
url: /de/java/specify-layout-options/
---

Aspose.Words Sie können Ausgabedokumente mit verschiedenen Layouts erstellen, abhängig von den in den [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) Eigentum der **Document**. Diese Eigenschaft ähnelt einigen der Microsoft Word Benutzeroberfläche Menüoptionen in diesem Artikel beschrieben.

Für eine vollständige Liste von Parametern wie [ContinuousSectionPageNumberingRestart](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getContinuousSectionPageNumberingRestart) die Seitennummern in einem kontinuierlichen Abschnitt zu berechnen, der die Seitennummerierung neu startet, oder [IgnorePrinterMetrics](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getIgnorePrinterMetrics) ignorieren Sie die Option "Benutzen Sie Drucker Metriken, um das Dokument zu legen" [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) Klasse Seite.

## Markierungen formatieren

Aspose.Words ermöglicht die Verwaltung von Formatierungsmarken mit folgenden Eigenschaften:

- Ja. [ShowHiddenText](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getShowHiddenText) – a `Boolean` einen Wert, der angibt, ob der versteckte Text wiedergegeben wird.
- Ja. [ShowParagraphMarks](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getShowParagraphMarks) – a `Boolean` Wert, der feststellt, ob die Paragraphenzeichen wiedergegeben werden.

Die im folgenden Beispiel dargestellte Seite enthält drei Absätze. Der zweite ist versteckt. Ein Benutzer kann die **ShowHiddenText** Möglichkeit, diesen versteckten Text auf der Seite anzuzeigen. Außerdem hat jeder Absatz am Ende eine Absatzmarke. Die Absatzmarke ist normalerweise nicht sichtbar, es sei denn, **ShowParagraphMarks** Eigenschaft wird eingestellt, um es zu machen.

![formatting_marks_example_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-1.png)

In Microsoft Word, Diese Parameter werden mit dem Dialogfeld "Datei → Optionen → Anzeige" wie folgt festgelegt:

![formatting_marks_ms_word_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-3.png)

## Kommentare und Revisionen

Mit Aspose.Words, Sie können Dokumentkommentare, die wie in Microsoft Word. Um anzugeben, ob Kommentare abgegeben werden, verwenden Sie die [ShowComments](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) Eigentum.

In Microsoft Word, Dieser Parameter wird mit dem Dialogfeld "Optionen ändern verfolgen" eingestellt, wie unten gezeigt:

![comments_and_revisions_ms_word_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-4.png)

Auch, Aspose.Words Sie können Revisionen in einem Dokument anzeigen. Verwenden Sie die [RevisionOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getRevisionOptions) Eigentum der **LayoutOptions** Klasse zu definieren, ob die Dokumentrevisionen angezeigt werden. Um ihr Aussehen zu kontrollieren (Revision Highlighting Farbe, Revisionsleiste Farbe, etc.), verwenden Sie die [RevisonOptions](https://reference.aspose.com/words/java/com.aspose.words/revisionoptions/) Klasse.

Sie können auch Revisionen als Kommentare zum Inhalt anzeigen lassen. Zu diesem Zweck verwenden Sie die [CommentDisplayMode](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getCommentDisplayMode) Eigentum und [ShowInBalloons](https://reference.aspose.com/words/java/com.aspose.words/commentdisplaymode/) Wert.

Das folgende Codebeispiel zeigt, wie man Revisionenanzeige anpassen kann:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-SetShowInBalloons.java" >}}

Das folgende Bild zeigt, wie Aspose.Words gibt Kommentare und die Revisionen löschen:

<img src="/words/java/specify-layout-options/specify-layout-options-2.png" alt="comments_and_revisions_example_aspose_words_java" style="width:800px"/>

## Textformer für Advanced Typography Rendering

Die [TextShaperFactory](https://reference.aspose.com/words/java/com.aspose.words/itextshaperfactory/) Eigenschaft ermöglicht es Ihnen, die Textformfunktionalität sowie die `OpenType` bietet Unterstützung.

Verwenden Sie Textformung für die Dokumentenverarbeitung in den folgenden Hauptfällen:

- Ein Dokument verwendet Kerning, Numeral Shaping, Numeral Forms, oder Ligatures.
- Ein Dokument verwendet komplexe Schriften, wie Arabisch, Khmer, Thai, etc.

{{% alert color="primary" %}}

Textformung wird nur beim Export eines Dokuments in PDF oder XPS.

{{% /alert %}}
