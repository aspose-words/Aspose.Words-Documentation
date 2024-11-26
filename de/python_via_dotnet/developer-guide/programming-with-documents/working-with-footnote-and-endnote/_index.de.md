---
title: Arbeiten mit Fußnote und Endnote
second_title: Aspose.Words für Python via .NET
articleTitle: Arbeiten mit Fußnote und Endnote
linktitle: Arbeiten mit Fußnote und Endnote
description: "Fügen Sie Fußnoten oder Endnoten in ein Dokument ein und legen Sie dessen Optionen mit Python fest."
type: docs
weight: 160
url: /de/python-net/working-with-footnote-and-endnote/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words stellt außerdem einige Klassen, Methoden und Eigenschaften für die Arbeit mit Fußnoten und Endnoten bereit.

## Endnote einfügen und Nummerierungsoptionen festlegen

Wenn Sie Fuß- oder Endnoten in ein Word-Dokument einfügen möchten, verwenden Sie bitte die [insert_footnote](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_footnote/)-Methode. Diese Methode fügt eine Fußnote oder Endnote in das Dokument ein.

Die Klassen [EndnoteOptions](https://reference.aspose.com/words/python-net/aspose.words.notes/endnoteoptions/) und [FootnoteOptions](https://reference.aspose.com/words/python-net/aspose.words.notes/footnoteoptions/) stellen Nummerierungsoptionen für Fuß- und Endnoten dar.

Das folgende Codebeispiel zeigt, wie eine Endnote in das Dokument eingefügt und die Nummerierungsoptionen festgelegt werden:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_footnote_and_endnote-SetEndnoteOptions.py" >}}

## Legen Sie die Anzahl der Fußnoten-Layoutspalten fest

Sie können die Anzahl der Fußnoten-Layoutspalten mithilfe der [columns](https://reference.aspose.com/words/python-net/aspose.words.notes/footnoteoptions/columns/)-Eigenschaft festlegen. Wenn diese Eigenschaft den Wert 0 hat, wird der Fußnotenbereich mit einer Anzahl von Spalten basierend auf der Anzahl der Spalten auf der angezeigten Seite formatiert.

Das folgende Codebeispiel zeigt, wie Sie die Anzahl der Spalten für das Fußnotenlayout festlegen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_footnote_and_endnote-SetFootNoteColumns.py" >}}

## Legen Sie die Position von Fußnote und Endnote fest

Die Fußnotenposition kann am Ende jeder Seite oder unter dem Text auf jeder Seite liegen. Die Endnotenposition kann am Ende des Abschnitts oder am Ende des Dokuments liegen.

Das folgende Codebeispiel zeigt, wie die Position von Fußnote und Endnote festgelegt wird:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_footnote_and_endnote-SetFootnoteAndEndNotePosition.py" >}}
