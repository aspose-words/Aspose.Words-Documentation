---
title: Dokument umrechnen Markdown in Java
second_title: Aspose.Words für Java
articleTitle: Dokument umrechnen Markdown
linktitle: Dokument umrechnen Markdown
type: docs
description: "Konvertieren Sie ein Dokument in jedem unterstützten Lastformat Markdown und umgekehrt Java."
keywords: how to convert a document to markdown Java, save as MD, DOCX to MD
weight: 33
url: /de/java/convert-a-document-to-markdown/
timestamp: 2024-01-27-14-07-04
---

Markdown ist ein beliebtes Format, das verwendet wird, um Text zu markup und es wird weiter in HTML, PDF, DOCX oder andere Formate konvertieren. Viele Entwickler wählen dieses Format für die Dokumentation zu schreiben, Artikel für die Veröffentlichung auf Blogs vorzubereiten, Projekte zu beschreiben und so weiter.

Markdown ist so beliebt, weil es einfach ist, mit diesem Format zu arbeiten, und es kann ganz einfach in andere Formate umgewandelt werden. Aus diesem Grund Aspose.Words bietet die Möglichkeit, ein Dokument in [Alle unterstützten Letztes Jahr](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) bis Markdown und umgekehrt – Aspose.Words auch unterstützt die beliebtesten [Format für die](https://reference.aspose.com/words/java/com.aspose.words/saveformat/).

Jetzt die Funktionalität für die Arbeit mit dem Markdown Format wird aktiv entwickelt, um Ihnen mehr Möglichkeiten zur bequemen und komfortablen Arbeit mit Dokumenten zu bieten.

## Dokument umrechnen Markdown

Um ein Dokument zu konvertieren Markdown Sie müssen nur ein Dokument in jedem unterstützten Format laden oder ein neues Programm erstellen. Dann müssen Sie das Dokument speichern, Markdown Format.

Das folgende Codebeispiel zeigt, wie man DOCX in Markdown:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SaveAsMD.java" >}}


## Speicheroptionen beim Konvertieren in Markdown

Aspose.Words bietet die Möglichkeit, die [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) Klasse, um mit erweiterten Optionen zu arbeiten, wenn Sie ein Dokument speichern, Markdown Format. Neben anderen erb- oder überlastenden Eigenschaften sind eine Reihe von Eigenschaften, die für Markdown Format wurde ebenfalls hinzugefügt. Zum Beispiel die [TableContentAlignment](https://reference.aspose.com/words/java/com.aspose.words/tablecontentalignment/) Eigenschaft, die Ausrichtung von Inhalten in Tabellen zu steuern, oder [ImageSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImageSavingCallback) und [ImagesFolder](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImagesFolder) um zu kontrollieren, wie Bilder beim Umwandeln eines Dokuments gespeichert werden Markdown Format.

## Unterstützt Markdown Eigenschaften

Aspose.Words derzeit unterstützt folgendes Markdown Merkmale, die meist den `CommonMark` Spezifikation in der Aspose.Words API und sind als geeignete Stile oder direkte Formatierung dargestellt:

* Rubriken sind Absätze mit Rubrik 1 – Rubrik 6 Stile
* Blockquoten sind Absätze mit "Quote" im Stilnamen
* IndentedCode sind Absätze mit "IndentedCode" im Stilnamen
* Fenced Code sind Absätze mit "FencedCode" im Stilnamen
* InlineCode läuft mit "InlineCode" im `Font` Name des Stils
* Horizontale Regeln sind Absätze mit `HorizontalRule` Form
* Bold betont
* Schwerpunkt
* StrikeThrough Formatierung
* Listen sind nummeriert oder geschossene Absätze
* Die Tabellen sind mit `Table` Klasse
* Links sind als `FieldHyperlink` Klasse

Das folgende Beispiel zeigt, wie man ein Dokument mit einigen Stilen erstellt und speichert, Markdown:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SupportedMarkdownFeatures.java" >}}

Das Ergebnis dieses Codebeispiels ist unten dargestellt.

![markdown-example-aspose-words-java](/words/java/convert-a-document-to-markdown/markdown-example.png)

## Nützliche Tipps

Es gibt mehrere Nuancen und interessante Fälle, haben gelernt, mit denen Sie arbeiten können Markdown Dateien flexibler und bequemer. Zum Beispiel gibt es die Möglichkeit zu verwenden:

* SetextHeading, mit dem Sie Multi-Line-Überschriften in Markdown während reguläre Rubriken in Markdown kann nur einzeilig sein. SetextHeading basiert auf einem "Heading N"-Stil, und seine Ebene kann nur 1 oder 2 sein. Ist N in "Heading N" größer oder gleich 2, so basiert das entsprechende Setext-Heading auf "Heading 2", ansonsten auf "Heading 1".
* Unterschiedliche Marker für die erste Ebene der geschossenen Listen ("-", "+" oder "*", der Standardmarker ist "-".) und verschiedene Arten der Nummerierung für geordnete Listen ("." oder "), der Standardmarker ist ".
