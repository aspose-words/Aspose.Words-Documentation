---
title: Arbeiten mit Fußnote und Endnote in C#
second_title: Aspose.Words für .NET
articleTitle: Arbeiten mit Fußnote und Endnote
linktitle: Arbeiten mit Fußnote und Endnote
description: "So bearbeiten Sie Fußnoten und Endnoten mit C#."
type: docs
weight: 160
url: /de/net/working-with-footnote-and-endnote/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words stellt außerdem einige Klassen, Methoden und Eigenschaften für die Arbeit mit Fußnoten und Endnoten bereit.

## Fügen Sie eine Endnote ein und legen Sie Nummerierungsoptionen fest

Wenn Sie Fuß- oder Endnoten in ein Word-Dokument einfügen möchten, verwenden Sie bitte die [InsertFootnote](https://reference.aspose.com/words/de/net/aspose.words/documentbuilder/insertfootnote/)-Methode. Diese Methode fügt eine Fußnote oder Endnote in das Dokument ein.

Die Klassen [EndnoteOptions](https://reference.aspose.com/words/de/net/aspose.words.notes/endnoteoptions/) und [FootnoteOptions](https://reference.aspose.com/words/de/net/aspose.words.notes/footnoteoptions/) stellen Nummerierungsoptionen für Fuß- und Endnoten dar.

Das folgende Codebeispiel zeigt, wie eine Endnote in das Dokument eingefügt und die Nummerierungsoptionen festgelegt werden:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithFootnote-SetEndnoteOptions.cs" >}}

## Legen Sie die Anzahl der Fußnoten-Layoutspalten fest

Sie können die Anzahl der Fußnoten-Layoutspalten mithilfe der [Columns](https://reference.aspose.com/words/de/net/aspose.words.notes/footnoteoptions/columns/)-Eigenschaft festlegen. Wenn diese Eigenschaft den Wert 0 hat, wird der Fußnotenbereich mit einer Anzahl von Spalten basierend auf der Anzahl der Spalten auf der angezeigten Seite formatiert.

Das folgende Codebeispiel zeigt, wie Sie die Anzahl der Spalten für das Fußnotenlayout festlegen:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithFootnote-SetFootNoteColumns.cs" >}}

## Legen Sie die Position von Fußnote und Endnote fest

Die Fußnotenposition kann am Ende jeder Seite oder unter dem Text auf jeder Seite liegen. Die Endnotenposition kann am Ende des Abschnitts oder am Ende des Dokuments liegen.

Das folgende Codebeispiel zeigt, wie die Position von Fußnote und Endnote festgelegt wird:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithFootnote-SetFootnoteOptions.cs" >}}
