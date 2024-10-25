---
title: Konvertieren Sie ein Dokument in Markdown in C++
second_title: Aspose.Words für C++
articleTitle: Konvertieren eines Dokuments in Markdown
linktitle: Konvertieren eines Dokuments in Markdown
type: docs
description: "Konvertieren Sie ein Dokument in einem beliebigen unterstützten Ladeformat in Markdown und umgekehrt mit C++."
keywords: how to convert a document to markdown c++, Convert doc to MD C++, convert DOCX to Markdown C++
weight: 40
url: /de/cpp/convert-a-document-to-markdown/
---

Markdown ist ein beliebtes Format, das zum Markieren von Text und seiner weiteren Konvertierung in verwendet wird HTML, PDF, DOCX, oder andere Formate. Viele Entwickler wählen dieses Format zum Schreiben von Dokumentationen, zum Vorbereiten von Artikeln für die Veröffentlichung in Blogs, zum Beschreiben von Projekten usw.

Markdown ist so beliebt, weil es einfach ist, mit diesem Format zu arbeiten und es ganz einfach in andere Formate konvertiert werden kann. Aus diesem Grund bietet Aspose.Words die Möglichkeit, ein Dokument von [any supported load format](https://reference.aspose.com/words/cpp/aspose.words/) nach Markdown und umgekehrt zu konvertieren – Aspose.Words unterstützt auch das beliebteste [save formats](https://reference.aspose.com/words/cpp/aspose.words/saveformat/).

Jetzt wird die Funktionalität für die Arbeit mit dem Markdown -Format aktiv weiterentwickelt, um Ihnen mehr Möglichkeiten für die bequeme und komfortable Arbeit mit Dokumenten zu bieten.

## Ein Dokument konvertieren

Um ein Dokument in Markdown zu konvertieren, müssen Sie nur ein Dokument in einem beliebigen unterstützten Format laden oder programmgesteuert ein neues erstellen. Dann müssen Sie das Dokument im Format Markdown speichern.

Das folgende Codebeispiel zeigt, wie DOCX in Markdown konvertiert wird:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToMarkdown-SaveAsMD.cpp" >}}

Sie können auch den physischen Ordner angeben, in dem Sie Bilder speichern möchten, wenn Sie ein Dokument in das Format Markdown exportieren. Standardmäßig speichert Aspose.Words Bilder im selben Ordner, in dem die Dokumentdatei gespeichert ist, aber Sie können dieses Verhalten mit der Eigenschaft [ImagesFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_imagesfolder/) überschreiben.

Die Angabe eines Ordners über **ImagesFolder** ist auch nützlich, wenn Sie ein Dokument in einem Stream speichern und Aspose.Words keinen Ordner zum Speichern von Bildern hat.

Wenn die angegebene **ImagesFolder** nicht existiert, wird sie automatisch erstellt.

Das folgende Codebeispiel zeigt, wie Sie beim Speichern eines Dokuments in einem Stream einen Ordner für Bilder angeben:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToMarkdown-SetImagesFolder.cpp" >}}

## Geben Sie beim Konvertieren in Markdown Speicheroptionen an

Aspose.Words bietet die Möglichkeit, die Klasse [MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/) zu verwenden, um mit erweiterten Optionen zu arbeiten, wenn ein Dokument im Format Markdown gespeichert wird. Die meisten Eigenschaften erben oder überladen Eigenschaften, die bereits in anderen [Aspose.Words.Saving](https://reference.aspose.com/words/cpp/aspose.words.saving/) -Namespace-Klassen vorhanden sind. Zusätzlich zu ihnen wurde eine Reihe von Eigenschaften hinzugefügt, die spezifisch für das Markdown -Format sind. Zum Beispiel die Eigenschaft [TableContentAlignment](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_tablecontentalignment/), um die Ausrichtung von Inhalten in Tabellen zu steuern, oder [ImageSavingCallback](https://reference.aspose.com/words/cpp/aspose.words.saving/iimagesavingcallback/) und [ImagesFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_imagesfolder/), um zu steuern, wie Bilder beim Konvertieren eines Dokuments in das Format Markdown gespeichert werden.

## Unterstützte Markdown Funktionen

Aspose.Words unterstützt derzeit die folgenden Markdown -Funktionen, die größtenteils der `CommonMark` -Spezifikation in Aspose.Words API folgen und als geeignete Stile oder direkte Formatierung dargestellt werden:

* Überschriften sind Absätze mit den Stilen Überschrift 1 – Überschrift 6
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

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToMarkdown-SupportedMarkdownFeatures.cpp" >}}

Das Ergebnis dieses Codebeispiels ist unten gezeigt.

![markdown-example-aspose-words-cpp](markdown-example.png)

## Nützliche Tipps

Es gibt verschiedene Nuancen und interessante Fälle, nachdem Sie gelernt haben, dass Sie flexibler und bequemer mit Markdown -Dateien arbeiten können. Zum Beispiel gibt es die Möglichkeit zu verwenden:

* SetextHeading, mit dem Sie mehrzeilige Überschriften in Markdown erstellen können, während reguläre Überschriften in Markdown nur einzeilig sein können. SetextHeading basiert auf einem Stil "Überschrift N" und seine Ebene kann nur 1 oder 2 sein. Wenn N in "Überschrift N" größer oder gleich 2 ist, dann basiert die entsprechende SetextHeading auf "Überschrift 2", ansonsten auf "Überschrift 1".
* Verschiedene Markierungen für die erste Ebene von Aufzählungslisten ("-", "+" oder "*", die Standardmarkierung ist "-".) und verschiedene Arten der Nummerierung für geordnete Listen ("." oder ")", die Standardmarkierung ist ".").
