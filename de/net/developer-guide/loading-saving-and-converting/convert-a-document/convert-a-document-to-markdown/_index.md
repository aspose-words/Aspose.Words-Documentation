---
title: Konvertieren Sie ein Dokument in Markdown in C#
second_title: Aspose.Words für .NET
articleTitle: Konvertieren Sie ein Dokument in Markdown
linktitle: Konvertieren Sie ein Dokument in Markdown
type: docs
description: "Konvertieren Sie ein Dokument in einem beliebigen unterstützten Ladeformat mit C# in Markdown und umgekehrt."
keywords: how to convert a document to markdown c#
weight: 40
url: /de/net/convert-a-document-to-markdown/
---

Markdown ist ein beliebtes Format zum Markieren von Text und seiner weiteren Konvertierung in HTML, PDF, DOCX oder andere Formate. Viele Entwickler wählen dieses Format zum Schreiben von Dokumentationen, zum Vorbereiten von Artikeln für die Veröffentlichung in Blogs, zum Beschreiben von Projekten usw.

Markdown ist so beliebt, weil es einfach mit diesem Format zu arbeiten ist und sich ganz einfach in andere Formate konvertieren lässt. Aus diesem Grund bietet Aspose.Words die Möglichkeit, ein Dokument von [jedes unterstützte Ladeformat](https://reference.aspose.com/words/net/aspose.words/loadformat/) in Markdown und umgekehrt zu konvertieren – Aspose.Words unterstützt auch das gängigste [Formate speichern](https://reference.aspose.com/words/net/aspose.words/saveformat/).

Jetzt wird die Funktionalität für die Arbeit mit dem Markdown-Format aktiv weiterentwickelt, um Ihnen mehr Möglichkeiten für eine bequeme und komfortable Arbeit mit Dokumenten zu bieten.

## Konvertieren Sie ein Dokument

Um ein Dokument in Markdown zu konvertieren, müssen Sie lediglich ein Dokument in einem beliebigen unterstützten Format laden oder programmgesteuert ein neues erstellen. Anschließend müssen Sie das Dokument im Markdown-Format speichern.

Das folgende Codebeispiel zeigt, wie DOCX in Markdown konvertiert wird:

**.NET**
{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToMarkdown-SaveAsMD.cs" >}}

Sie können auch den physischen Ordner angeben, in dem Sie Bilder speichern möchten, wenn Sie ein Dokument in das Markdown-Format exportieren. Standardmäßig speichert Aspose.Words Bilder im selben Ordner, in dem die Dokumentdatei gespeichert ist. Sie können dieses Verhalten jedoch mithilfe der [ImagesFolder](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/imagesfolder/)-Eigenschaft außer Kraft setzen.

Die Angabe eines Ordners über **ImagesFolder** ist auch nützlich, wenn Sie ein Dokument in einem Stream speichern und Aspose.Words keinen Ordner zum Speichern von Bildern hat.

Wenn das angegebene **ImagesFolder** nicht existiert, wird es automatisch erstellt.

Das folgende Codebeispiel zeigt, wie Sie beim Speichern eines Dokuments in einem Stream einen Ordner für Bilder angeben:

**.NET**
{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToMarkdown-SetImagesFolder.cs" >}}

## Geben Sie beim Konvertieren in Markdown Speicheroptionen an

Aspose.Words bietet die Möglichkeit, die [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/)-Klasse zu verwenden, um beim Speichern eines Dokuments im Markdown-Format mit erweiterten Optionen zu arbeiten. Die meisten Eigenschaften erben oder überladen Eigenschaften, die bereits in anderen [Aspose.Words.Saving](https://reference.aspose.com/words/net/aspose.words.saving/)-Namespace-Klassen vorhanden sind. Darüber hinaus wurden einige Eigenschaften hinzugefügt, die speziell für das Markdown-Format gelten. Beispielsweise die [TableContentAlignment](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/tablecontentalignment/)-Eigenschaft, um die Ausrichtung von Inhalten in Tabellen zu steuern, oder [ImageSavingCallback](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/imagesavingcallback/) und [ImagesFolder](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/imagesfolder/), um zu steuern, wie Bilder beim Konvertieren eines Dokuments in das Markdown-Format gespeichert werden.

## Unterstützte Markdown-Funktionen

Aspose.Words unterstützt derzeit die folgenden Markdown-Funktionen, die größtenteils der `CommonMark`-Spezifikation im Aspose.Words-API folgen und als entsprechende Stile oder direkte Formatierung dargestellt werden:

* Überschriften sind Absätze mit den Stilen Überschrift 1 – Überschrift 6
* Blockzitate sind Absätze mit "Zitat" im Stilnamen
* IndentedCode sind Absätze mit "IndentedCode" im Stilnamen
* FencedCode sind Absätze mit "FencedCode" im Stilnamen
* InlineCode wird mit "InlineCode" im `Font`-Stilnamen ausgeführt
* Horizontale Linien sind Absätze mit der `HorizontalRule`-Form
* Fette Hervorhebung
* Kursive Hervorhebung
* StrikeThrough-Formatierung
* Listen sind nummerierte oder mit Aufzählungszeichen versehene Absätze
* Tabellen werden mit der `Table`-Klasse dargestellt
* Links werden als `FieldHyperlink`-Klasse dargestellt

Das folgende Beispiel zeigt, wie man ein Dokument mit einigen Stilen erstellt und es im Markdown-Format speichert:

**.NET**
{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToMarkdown-SupportedMarkdownFeatures.cs" >}}

Das Ergebnis dieses Codebeispiels ist unten dargestellt.

![markdown-example-aspose-words-net](/words/net/convert-a-document-to-markdown/markdown-example.png)

## Nützliche Tipps

Es gibt mehrere Nuancen und interessante Fälle, mit denen Sie flexibler und bequemer mit Markdown-Dateien arbeiten können. Beispielsweise besteht die Möglichkeit zur Nutzung von:

* SetextHeading, mit dem Sie mehrzeilige Überschriften in Markdown erstellen können, während normale Überschriften in Markdown nur einzeilig sein können. SetextHeading basiert auf einem "Heading N"-Stil und seine Ebene kann nur 1 oder 2 sein. Wenn N in "Heading N" größer oder gleich 2 ist, dann basiert das entsprechende SetextHeading auf "Heading 2", andernfalls auf "Überschrift 1".
* Unterschiedliche Markierungen für die erste Ebene von Listen mit Aufzählungszeichen ("-", "+" oder "*", die Standardmarkierung ist "-".) und unterschiedliche Arten der Nummerierung für geordnete Listen ("." oder ")", die Die Standardmarkierung ist ".").
