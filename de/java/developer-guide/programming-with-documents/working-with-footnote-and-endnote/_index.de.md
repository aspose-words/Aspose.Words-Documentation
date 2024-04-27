---
title: Arbeiten mit Fußnote und Endnote Java
second_title: Aspose.Words für Java
articleTitle: Arbeiten mit Fußnote und Endnote
linktitle: Arbeiten mit Fußnote und Endnote
description: "Wie man Fußnoten und Endnoten manipuliert Java."
type: docs
weight: 160
url: /de/java/working-with-footnote-and-endnote/
---

Aspose.Words bietet auch einige Klassen, Methoden und Eigenschaften für die Arbeit mit Fußnoten und Endnoten.

## Endnote einfügen und Nummerierungsoptionen festlegen

Wenn Sie eine Fußnote oder eine Endnote in einem Word-Dokument einfügen möchten, verwenden Sie bitte [InsertFootnote](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertFootnote-int-java.lang.String) Methode. Dieses Verfahren setzt eine Fußnote oder eine Endnote in das Dokument ein.

[EndnoteOptions](https://reference.aspose.com/words/java/com.aspose.words/endnoteoptions/) und [FootnoteOptions](https://reference.aspose.com/words/java/com.aspose.words/footnoteoptions/) Klassen stellen Nummerierungsoptionen für Fußnote und Endnote dar.

Das folgende Codebeispiel zeigt, wie man Endnote in das Dokument einfügen und seine Nummerierungsoptionen festlegen kann:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetEndnoteOptions.java" >}}

## Anzahl der Fußnoten Layoutsäulen

Sie können die Anzahl der Fußnoten-Layout-Spalten mit [Columns](https://reference.aspose.com/words/java/com.aspose.words/footnoteoptions/#getColumns) Eigentum. Hat diese Eigenschaft den Wert von 0, wird der Fußnotenbereich mit einer Anzahl von Spalten basierend auf der Anzahl der Spalten auf der angezeigten Seite formatiert.

Das folgende Codebeispiel zeigt, wie die Anzahl der Spalten für die Fußnote-Layout festgelegt wird:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetFootNoteColumns.java" >}}

## Legen Sie die Position von Fußnote und EndNote fest

Die Fußnotenposition kann auf jeder Seite unten oder unter dem Text liegen. Die Endnoteposition kann am Ende des Abschnitts oder am Ende des Dokuments liegen.

Das folgende Codebeispiel zeigt, wie die Position von Fußnote und Endnote festgelegt werden kann:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetFootnoteAndEndNotePosition.java" >}}
