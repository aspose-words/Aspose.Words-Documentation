---
title: Tabellenzellen zusammenführen
second_title: Aspose.Words für Python via .NET
articleTitle: Tabellenzellen zusammenführen
linktitle: Tabellenzellen zusammenführen
description: "So führen Sie Tabellenzellen in Python zusammen. Überprüfen Sie, ob Zellen in einer Tabelle mit Python zusammengeführt werden."
type: docs
weight: 40
url: /de/python-net/working-with-merged-cells/
---

Manchmal erfordern bestimmte Zeilen in einer Tabelle eine Überschrift oder große Textblöcke, die die gesamte Breite der Tabelle einnehmen. Zur ordnungsgemäßen Gestaltung der Tabelle kann der Benutzer mehrere Tabellenzellen zu einer zusammenfassen. Aspose.Words unterstützt zusammengeführte Zellen bei der Arbeit mit allen Eingabeformaten, einschließlich des Imports von HTML-Inhalten.

## So führen Sie Tabellenzellen zusammen

In Aspose.Words werden zusammengeführte Zellen durch die folgenden Eigenschaften der [CellFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/)-Klasse dargestellt:

- [HorizontalMerge](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/horizontal_merge/), das beschreibt, ob die Zelle Teil einer horizontalen Zellverschmelzung ist
- [VerticalMerge](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/vertical_merge/), das beschreibt, ob die Zelle Teil einer vertikalen Zellverschmelzung ist

Die Werte dieser Eigenschaften bestimmen das Zusammenführungsverhalten von Zellen:

– Die erste Zelle in einer Folge zusammengeführter Zellen verfügt über [CellMerge.First](https://reference.aspose.com/words/python-net/aspose.words.tables/cellmerge/#first)
- Alle später zusammengeführten Zellen verfügen über [CellMerge.Previous](https://reference.aspose.com/words/python-net/aspose.words.tables/cellmerge/#previous)
- Eine nicht zusammengeführte Zelle verfügt über [CellMerge.None](https://reference.aspose.com/words/python-net/aspose.words.tables/cellmerge/#none)

{{% alert color="primary" %}}

Beim Laden vorhandener Dokumentzellen in einer Tabelle werden diese manchmal zusammengeführt angezeigt. Allerdings kann es tatsächlich eine einzige lange Zelle sein – manchmal exportiert Microsoft Word zusammengeführte Zellen auf diese Weise. Dies kann verwirrend sein, wenn man versucht, mit einzelnen Zellen zu arbeiten, aber es scheint kein bestimmtes Muster zu geben, wann dies geschieht.

{{% /alert %}}

## Überprüfen Sie, ob die Zelle zusammengeführt ist

Um zu überprüfen, ob eine Zelle Teil einer Folge zusammengeführter Zellen ist, überprüfen wir einfach die Eigenschaften **HorizontalMerge** und **VerticalMerge**.

Das folgende Codebeispiel zeigt, wie der horizontale und vertikale Zellzusammenführungstyp gedruckt wird:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "check-cells-merged.py" >}}

{{% alert color="primary" %}}

Sie können die Beispieldatei dieses Beispiels von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx) herunterladen.

{{% /alert %}}

## Tabellenzellen bei Verwendung von DocumentBuilder zusammenführen

Um Zellen in einer mit [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) erstellten Tabelle zusammenzuführen, müssen Sie für jede Zelle, in der die Zusammenführung erwartet wird, den entsprechenden Zusammenführungstyp festlegen – zuerst **CellMerge.First** und dann **CellMerge.Previous**.

Denken Sie außerdem daran, die Zusammenführungseinstellung für die Zellen zu löschen, bei denen keine Zusammenführung erforderlich ist. Dies kann erreicht werden, indem Sie die erste nicht zusammengeführte Zelle auf **CellMerge.None** setzen. Geschieht dies nicht, werden alle Zellen der Tabelle zusammengeführt.

Das folgende Codebeispiel zeigt, wie Sie eine Tabelle mit zwei Zeilen erstellen, bei der die Zellen in der ersten Zeile horizontal zusammengeführt werden:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "horizontal-merge.py" >}}

Das folgende Codebeispiel zeigt, wie Sie eine zweispaltige Tabelle erstellen, in der die Zellen in der ersten Spalte vertikal zusammengeführt werden:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "vertical-merge.py" >}}

## Tabellenzellen in anderen Fällen zusammenführen

In anderen Situationen, in denen **DocumentBuilder** nicht verwendet wird, beispielsweise in einer vorhandenen Tabelle, ist das Zusammenführen von Zellen auf die vorherige Art möglicherweise nicht so einfach. Stattdessen können wir die grundlegenden Vorgänge beim Anwenden von Zusammenführungseigenschaften auf Zellen in eine Methode einbinden, die die Aufgabe erheblich vereinfacht. Diese Methode ähnelt der Merge-Automatisierungsmethode, die aufgerufen wird, um einen Bereich von Zellen in einer Tabelle zusammenzuführen.

Der folgende Code führt die Tabellenzellen im angegebenen Bereich zusammen, beginnend bei der angegebenen Zelle und endend bei der Endzelle. In diesem Fall kann sich der Bereich über mehrere Zeilen oder Spalten erstrecken:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "merge-cells.py" >}}

Das folgende Codebeispiel zeigt, wie ein Zellbereich zwischen zwei angegebenen Zellen zusammengeführt wird:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "merge-cell-range.py" >}}

{{% alert color="primary" %}}

Sie können die Beispieldatei dieses Beispiels von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx) herunterladen.

{{% /alert %}}

Abhängig von der Version des Frameworks, die Sie verwenden, möchten Sie diese Methode möglicherweise verfeinern, indem Sie sie in eine Erweiterungsmethode umwandeln. In diesem Fall können Sie diese Methode direkt für eine Zelle aufrufen, um einen Zellbereich zusammenzuführen, z. B. `cell1.Merge(cell2)`.

## In horizontal verbundene Zellen konvertieren

Manchmal ist es nicht möglich zu erkennen, welche Zellen zusammengeführt werden, da einige neuere Versionen von Microsoft Word die Zusammenführungsflags nicht mehr verwenden, wenn Zellen horizontal zusammengeführt werden. Aber für Situationen, in denen Zellen mithilfe von Zusammenführungsflags horizontal entlang ihrer Breite zu einer Zelle zusammengeführt werden, stellt Aspose.Words die `ConvertToHorizontallyMergedCells`-Methode zum Konvertieren von Zellen bereit. Diese Methode transformiert einfach die Tabelle und fügt nach Bedarf neue Zellen hinzu.

Das folgende Codebeispiel zeigt die obige Methode in Betrieb:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "convert-to-horizontally-merged-cells.py" >}}
