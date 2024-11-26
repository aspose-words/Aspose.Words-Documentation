---
title: Konvertieren Sie ein Dokument in Markdown in Java
second_title: Aspose.Words für Java
articleTitle: Konvertieren eines Dokuments in Markdown
linktitle: Konvertieren eines Dokuments in Markdown
type: docs
description: "Konvertieren Sie ein Dokument in einem beliebigen unterstützten Ladeformat in Markdown und umgekehrt mit Java."
keywords: how to convert a document to markdown Java, save as MD, DOCX to MD
weight: 33
url: /de/java/convert-a-document-to-markdown/
timestamp: 2024-01-27-14-07-04
---

Markdown ist ein beliebtes Format zum Markieren von Text und wird weiter konvertiert in HTML, PDF, DOCX, oder andere Formate. Viele Entwickler wählen dieses Format zum Schreiben von Dokumentationen, zum Vorbereiten von Artikeln für die Veröffentlichung in Blogs, zum Beschreiben von Projekten usw.

Markdown ist so beliebt, weil es einfach ist, mit diesem Format zu arbeiten und es ganz einfach in andere Formate konvertiert werden kann. Aus diesem Grund bietet Aspose.Words die Möglichkeit, ein Dokument von [jedes unterstützte Ladeformat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) nach Markdown und umgekehrt zu konvertieren – Aspose.Words unterstützt auch das beliebteste [formate speichern](https://reference.aspose.com/words/java/com.aspose.words/saveformat/).

Jetzt wird die Funktionalität für die Arbeit mit dem Markdown -Format aktiv weiterentwickelt, um Ihnen mehr Möglichkeiten für die bequeme und komfortable Arbeit mit Dokumenten zu bieten.

## Konvertieren eines Dokuments in Markdown

Um ein Dokument in Markdown zu konvertieren, müssen Sie nur ein Dokument in einem beliebigen unterstützten Format laden oder programmgesteuert ein neues erstellen. Dann müssen Sie das Dokument im Format Markdown speichern.

Das folgende Codebeispiel zeigt, wie DOCX in Markdown konvertiert wird:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SaveAsMD.java" >}}


## Geben Sie beim Konvertieren in Markdown Speicheroptionen an

Aspose.Words bietet die Möglichkeit, die Klasse [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) zu verwenden, um mit erweiterten Optionen zu arbeiten, wenn ein Dokument im Format Markdown gespeichert wird. Zusätzlich zu anderen Eigenschaften, die erben oder überladen, wurde auch eine Reihe von Eigenschaften hinzugefügt, die spezifisch für das Markdown-Format sind. Zum Beispiel die Eigenschaft [TableContentAlignment](https://reference.aspose.com/words/java/com.aspose.words/tablecontentalignment/), um die Ausrichtung von Inhalten in Tabellen zu steuern, oder [ImageSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImageSavingCallback) und [ImagesFolder](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImagesFolder), um zu steuern, wie Bilder beim Konvertieren eines Dokuments in das Format Markdown gespeichert werden.

## Unterstützte Markdown Funktionen

Aspose.Words unterstützt derzeit die folgenden Markdown -Funktionen, die größtenteils der `CommonMark` -Spezifikation in Aspose.Words API folgen und als geeignete Stile oder direkte Formatierung dargestellt werden:

* Überschriften sind Absätze mit Heading 1 – Heading 6 Stilen
* Blockzitate sind Absätze mit "Zitat" im Stilnamen
* IndentedCode sind Absätze mit "IndentedCode" im Stilnamen
* FencedCode sind Absätze mit "FencedCode" im Stilnamen
* InlineCode werden mit "InlineCode" im `Font` -Stilnamen ausgeführt
* Horizontale Regeln sind Absätze mit der Form `HorizontalRule`
* Kräftige Betonung
* Kursive Hervorhebung
* StrikeThrough Formatierung
* Listen sind nummerierte oder mit Aufzählungszeichen versehene Absätze
* Tabellen werden mit der Klasse `Table` dargestellt
* Links werden als `FieldHyperlink` -Klasse dargestellt

Das folgende Beispiel zeigt, wie Sie ein Dokument mit einigen Stilen erstellen und unter Markdown speichern:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SupportedMarkdownFeatures.java" >}}

Das Ergebnis dieses Codebeispiels ist unten gezeigt.

![markdown-example-aspose-words-java](/words/java/convert-a-document-to-markdown/markdown-example.png)

## Nützliche Tipps

Es gibt verschiedene Nuancen und interessante Fälle, nachdem Sie gelernt haben, dass Sie flexibler und bequemer mit Markdown -Dateien arbeiten können. Zum Beispiel gibt es die Möglichkeit zu verwenden:

* SetextHeading, mit dem Sie mehrzeilige Überschriften in Markdown erstellen können, während reguläre Überschriften in Markdown nur einzeilig sein können. SetextHeading basiert auf einem Stil "Überschrift N" und seine Ebene kann nur 1 oder 2 sein. Wenn N in "Überschrift N" größer oder gleich 2 ist, dann basiert die entsprechende SetextHeading auf "Heading 2", ansonsten auf "Heading 1".
* Verschiedene Markierungen für die erste Ebene von Aufzählungslisten ("-", "+" oder "*", die Standardmarkierung ist "-".) und verschiedene Arten der Nummerierung für geordnete Listen ("." oder ")", die Standardmarkierung ist ".").
