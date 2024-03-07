---
title: Tabellenzellen in C# zusammenführen
second_title: Aspose.Words für .NET
articleTitle: Tabellenzellen zusammenführen
linktitle: Tabellenzellen zusammenführen
description: "So führen Sie Tabellenzellen in C# zusammen. Überprüfen Sie, ob Zellen in einer Tabelle mit C# zusammengeführt werden."
type: docs
weight: 40
url: /de/net/working-with-merged-cells/
---

Manchmal erfordern bestimmte Zeilen in einer Tabelle eine Überschrift oder große Textblöcke, die die gesamte Breite der Tabelle einnehmen. Zur ordnungsgemäßen Gestaltung der Tabelle kann der Benutzer mehrere Tabellenzellen zu einer zusammenfassen. Aspose.Words unterstützt zusammengeführte Zellen bei der Arbeit mit allen Eingabeformaten, einschließlich des Imports von HTML-Inhalten.

## So führen Sie Tabellenzellen zusammen

In Aspose.Words werden zusammengeführte Zellen durch die folgenden Eigenschaften der [CellFormat](https://reference.aspose.com/words/de/net/aspose.words.tables/cellformat/)-Klasse dargestellt:

- [HorizontalMerge](https://reference.aspose.com/words/de/net/aspose.words.tables/cellformat/horizontalmerge/), das beschreibt, ob die Zelle Teil einer horizontalen Zellverschmelzung ist
- [VerticalMerge](https://reference.aspose.com/words/de/net/aspose.words.tables/cellformat/verticalmerge/), das beschreibt, ob die Zelle Teil einer vertikalen Zellverschmelzung ist

Die Werte dieser Eigenschaften bestimmen das Zusammenführungsverhalten von Zellen:

– Die erste Zelle in einer Folge zusammengeführter Zellen verfügt über [CellMerge.First](https://reference.aspose.com/words/de/net/aspose.words.tables/cellmerge/)
- Alle später zusammengeführten Zellen verfügen über [CellMerge.Previous](https://reference.aspose.com/words/de/net/aspose.words.tables/cellmerge/)
- Eine nicht zusammengeführte Zelle verfügt über [CellMerge.None](https://reference.aspose.com/words/de/net/aspose.words.tables/cellmerge/)

{{% alert color="primary" %}}

Beim Laden vorhandener Dokumentzellen in einer Tabelle werden diese manchmal zusammengeführt angezeigt. Allerdings kann es tatsächlich eine einzige lange Zelle sein – manchmal exportiert Microsoft Word zusammengeführte Zellen auf diese Weise. Dies kann verwirrend sein, wenn man versucht, mit einzelnen Zellen zu arbeiten, aber es scheint kein bestimmtes Muster zu geben, wann dies geschieht.

{{% /alert %}}

## Überprüfen Sie, ob die Zelle zusammengeführt ist

Um zu überprüfen, ob eine Zelle Teil einer Folge zusammengeführter Zellen ist, überprüfen wir einfach die Eigenschaften **HorizontalMerge** und **VerticalMerge**.

Das folgende Codebeispiel zeigt, wie der horizontale und vertikale Zellzusammenführungstyp gedruckt wird:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "check-cells-merged.cs" >}}

{{% alert color="primary" %}}

Sie können die Beispieldatei dieses Beispiels von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx) herunterladen.

{{% /alert %}}

## Tabellenzellen bei Verwendung von DocumentBuilder zusammenführen

Um Zellen in einer mit [DocumentBuilder](https://reference.aspose.com/words/de/net/aspose.words/documentbuilder/) erstellten Tabelle zusammenzuführen, müssen Sie für jede Zelle, in der die Zusammenführung erwartet wird, den entsprechenden Zusammenführungstyp festlegen – zuerst **CellMerge.First** und dann **CellMerge.Previous**.

Denken Sie außerdem daran, die Zusammenführungseinstellung für die Zellen zu löschen, bei denen keine Zusammenführung erforderlich ist. Dies kann erreicht werden, indem Sie die erste nicht zusammengeführte Zelle auf **CellMerge.None** setzen. Geschieht dies nicht, werden alle Zellen der Tabelle zusammengeführt.

Das folgende Codebeispiel zeigt, wie Sie eine Tabelle mit zwei Zeilen erstellen, bei der die Zellen in der ersten Zeile horizontal zusammengeführt werden:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "horizontal-merge.cs" >}}

Das folgende Codebeispiel zeigt, wie Sie eine zweispaltige Tabelle erstellen, in der die Zellen in der ersten Spalte vertikal zusammengeführt werden:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "vertical-merge.cs" >}}

## Tabellenzellen in anderen Fällen zusammenführen

In anderen Situationen, in denen **DocumentBuilder** nicht verwendet wird, beispielsweise in einer vorhandenen Tabelle, ist das Zusammenführen von Zellen auf die vorherige Art möglicherweise nicht so einfach. Stattdessen können wir die grundlegenden Vorgänge beim Anwenden von Zusammenführungseigenschaften auf Zellen in eine Methode einbinden, die die Aufgabe erheblich vereinfacht. Diese Methode ähnelt der Merge-Automatisierungsmethode, die aufgerufen wird, um einen Bereich von Zellen in einer Tabelle zusammenzuführen.

Der folgende Code führt die Tabellenzellen im angegebenen Bereich zusammen, beginnend bei der angegebenen Zelle und endend bei der Endzelle. In diesem Fall kann sich der Bereich über mehrere Zeilen oder Spalten erstrecken:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "merge-cells.cs" >}}

Das folgende Codebeispiel zeigt, wie ein Zellbereich zwischen zwei angegebenen Zellen zusammengeführt wird:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "merge-cell-range.cs" >}}

{{% alert color="primary" %}}

Sie können die Beispieldatei dieses Beispiels von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx) herunterladen.

{{% /alert %}}

Abhängig von der von Ihnen verwendeten .NET Framework-Version möchten Sie diese Methode möglicherweise verfeinern, indem Sie sie in eine Erweiterungsmethode umwandeln. In diesem Fall können Sie diese Methode direkt für eine Zelle aufrufen, um einen Zellbereich zusammenzuführen, z. B. `cell1.Merge(cell2)`.

## Vertikale und horizontale zusammengeführte Zellen in einer HTML-Tabelle

Wie wir in früheren Artikeln erwähnt haben, besteht eine Tabelle in Microsoft Word aus einer Reihe unabhängiger Zeilen. Jede Zeile verfügt über eine Reihe von Zellen, die von den Zellen anderer Zeilen unabhängig sind. Daher gibt es in der Microsoft Word-Tabelle kein Objekt wie eine "Spalte", und "1. Spalte" ist so etwas wie "die Menge der ersten Zellen jeder Zeile in der Tabelle". Dadurch können Benutzer eine Tabelle erstellen, in der beispielsweise die 1. Reihe aus zwei Zellen besteht – 2 cm und 1 cm, und die 2. Reihe aus zwei unterschiedlichen Zellen – 1 cm und 2 cm breit. Und Aspose.Words unterstützt dieses Tabellenkonzept.

Eine Tabelle in HTML hat einen grundsätzlich anderen Aufbau: Jede Zeile hat die gleiche Anzahl an Zellen und (was für die Aufgabe wichtig ist) jede Zelle hat die Breite der entsprechenden Spalte, die für alle Zellen einer Spalte gleich ist. Wenn **HorizontalMerge** und **VerticalMerge** also einen falschen Wert zurückgeben, verwenden Sie das folgende Codebeispiel:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "print-horizontal-and-vertical-merged.cs" >}}

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "horizontal-and-vertical-merge-helper-classes.cs" >}}

{{% alert color="primary" %}}

Sie können die Beispieldatei dieses Beispiels von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx) herunterladen.

{{% /alert %}}

## In horizontal verbundene Zellen konvertieren

Manchmal ist es nicht möglich zu erkennen, welche Zellen zusammengeführt werden, da einige neuere Versionen von Microsoft Word die Zusammenführungsflags nicht mehr verwenden, wenn Zellen horizontal zusammengeführt werden. Aber für Situationen, in denen Zellen mithilfe von Zusammenführungsflags horizontal entlang ihrer Breite zu einer Zelle zusammengeführt werden, stellt Aspose.Words die `ConvertToHorizontallyMergedCells`-Methode zum Konvertieren von Zellen bereit. Diese Methode transformiert einfach die Tabelle und fügt nach Bedarf neue Zellen hinzu.

Das folgende Codebeispiel zeigt die obige Methode in Betrieb:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "convert-to-horizontally-merged-cells.cs" >}}
