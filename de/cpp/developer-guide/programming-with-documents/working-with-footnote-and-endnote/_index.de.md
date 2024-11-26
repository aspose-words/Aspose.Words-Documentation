---
title: Arbeiten mit Fußnote und Endnote in C++
second_title: Aspose.Words für C++
articleTitle: Arbeiten mit Fußnote und Endnote
linktitle: Arbeiten mit Fußnote und Endnote
description: "Wie man Fußnoten und Endnoten mit C++ manipuliert."
type: docs
weight: 160
url: /de/cpp/working-with-footnote-and-endnote/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words bietet auch einige Klassen, Methoden und Eigenschaften für die Arbeit mit Fußnoten und Endnoten.

## Endnote einfügen und Nummerierungsoptionen festlegen

Wenn Sie eine Fußnote oder Endnote in ein Word-Dokument einfügen möchten, verwenden Sie bitte die [InsertFootnote](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfootnote/)-Methode. Diese Methode fügt eine Fußnote oder Endnote in das Dokument ein.

Die Klassen [EndnoteOptions](https://reference.aspose.com/words/cpp/aspose.words.notes/endnoteoptions/) und [FootnoteOptions](https://reference.aspose.com/words/cpp/aspose.words.notes/footnoteoptions/) stellen Nummerierungsoptionen für Fußnoten und Endnoten dar.

Das folgende Codebeispiel zeigt, wie Sie Endnote in das Dokument einfügen und seine Nummerierungsoptionen festlegen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithFootnote-SetEndnoteOptions.cpp" >}}

## Anzahl der Spalten für das Fußnotenlayout festlegen

Sie können die Anzahl der Spalten für das Fußnotenlayout mit der Eigenschaft [Columns](https://reference.aspose.com/words/cpp/aspose.words.notes/footnoteoptions/get_columns/) festlegen. Wenn diese Eigenschaft den Wert 0 hat, wird der Fußnotenbereich mit einer Anzahl von Spalten formatiert, die auf der Anzahl der Spalten auf der angezeigten Seite basiert.

Das folgende Codebeispiel zeigt, wie Sie die Anzahl der Spalten für das Fußnotenlayout festlegen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithFootnote-SetFootNoteColumns.cpp" >}}

## Setze die Position von Fußnote und EndNote

Die Fußnotenposition kann sich am Ende jeder Seite oder unter dem Text auf jeder Seite befinden. Die Endnotenposition kann sich am Ende des Abschnitts oder am Ende des Dokuments befinden.

Das folgende Codebeispiel zeigt, wie die Position von Fußnote und Endnote festgelegt wird:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithFootnote-SetFootnoteAndEndNotePosition.cpp" >}}
