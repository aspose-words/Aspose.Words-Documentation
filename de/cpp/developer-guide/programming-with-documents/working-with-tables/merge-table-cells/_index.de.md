---
title: Tabellenzellen in C++ zusammenführen
second_title: Aspose.Words für C++
articleTitle: Tabellenzellen zusammenführen
linktitle: Tabellenzellen zusammenführen
description: "So führen Sie Tabellenzellen in C++ zusammen. Überprüfen Sie, ob Zellen in einer Tabelle mit C++ zusammengeführt werden."
type: docs
weight: 40
url: /de/cpp/merge-table-cells/
---

Manchmal erfordern bestimmte Zeilen in einer Tabelle eine Überschrift oder große Textblöcke, die die gesamte Breite der Tabelle einnehmen. Für die ordnungsgemäße Gestaltung der Tabelle kann der Benutzer mehrere Tabellenzellen zu einer zusammenführen. Aspose.Words unterstützt verbundene Zellen bei der Arbeit mit allen Eingabeformaten, einschließlich des Imports von HTML-Inhalten.

## Wie man Tabellenzellen zusammenführt

In Aspose.Words werden zusammengeführte Zellen durch die folgenden Eigenschaften der Klasse [CellFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/) dargestellt:

- [HorizontalMerge](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_horizontalmerge/) beschreibt, ob die Zelle Teil einer horizontalen Zusammenführung von Zellen ist
- [VerticalMerge](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_verticalmerge/) beschreibt, ob die Zelle Teil einer vertikalen Zusammenführung von Zellen ist

Die Werte dieser Eigenschaften bestimmen das Zusammenführungsverhalten von Zellen:

- Die erste Zelle in einer Folge zusammengeführter Zellen hat [CellMerge.First](https://reference.aspose.com/words/cpp/aspose.words.tables/cellmerge/)
- Alle anschließend zusammengeführten Zellen haben [CellMerge.Previous](https://reference.aspose.com/words/cpp/aspose.words.tables/cellmerge/)
- Eine Zelle, die nicht zusammengeführt wird, hat [CellMerge.None](https://reference.aspose.com/words/cpp/aspose.words.tables/cellmerge/)

{{% alert color="primary" %}}

Manchmal werden beim Laden vorhandener Dokumentzellen in eine Tabelle diese zusammengeführt angezeigt. Es kann sich jedoch tatsächlich um eine lange Zelle handeln - manchmal exportiert Microsoft Word zusammengeführte Zellen auf diese Weise. Dies kann verwirrend sein, wenn versucht wird, mit einzelnen Zellen zu arbeiten, aber es scheint kein bestimmtes Muster zu geben, wann dies geschieht.

{{% /alert %}}

## Überprüfen Sie, ob die Zelle zusammengeführt ist

Um zu überprüfen, ob eine Zelle Teil einer Sequenz zusammengeführter Zellen ist, überprüfen wir einfach die Eigenschaften **HorizontalMerge** und **VerticalMerge**.

Das folgende Codebeispiel zeigt, wie der horizontale und vertikale Zellzusammenführungstyp gedruckt wird:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "check-cells-merged.h" >}}

## Verbundene Zellen in einer Tabelle {#merge-cells-in-a-table}

Um Zellen in einer Tabelle zusammenzuführen, die mit [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) erstellt wurde, müssen Sie für jede Zelle, in der die Zusammenführung erwartet wird, den entsprechenden Zusammenführungstyp festlegen – zuerst **CellMerge.First** und dann **CellMerge.Previous**.

Außerdem müssen Sie daran denken, die Zusammenführungseinstellung für die Zellen zu löschen, für die keine Zusammenführung erforderlich ist. Dies kann erfolgen, indem Sie die erste Zelle ohne Zusammenführung auf **CellMerge.None** setzen. Geschieht dies nicht, werden alle Zellen in der Tabelle zusammengeführt.

Das folgende Codebeispiel zeigt, wie Sie eine Tabelle mit zwei Zeilen erstellen, in der die Zellen in der ersten Zeile horizontal zusammengeführt werden:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "horizontal-merge.h" >}}

Das folgende Codebeispiel zeigt, wie Sie eine zweispaltige Tabelle erstellen, in der die Zellen in der ersten Spalte vertikal zusammengeführt werden:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "vertical-merge.h" >}}

## Tabellenzellen in anderen Fällen zusammenführen

In anderen Situationen, in denen **DocumentBuilder** nicht verwendet wird, z. B. in einer vorhandenen Tabelle, ist das Zusammenführen von Zellen auf die vorherige Weise möglicherweise nicht so einfach. Stattdessen können wir die grundlegenden Vorgänge zum Anwenden von Zusammenführungseigenschaften auf Zellen in einer Methode zusammenfassen, die die Aufgabe erheblich vereinfacht. Diese Methode ähnelt der Merge-Automatisierungsmethode, die zum Zusammenführen eines Zellbereichs in einer Tabelle aufgerufen wird.

Der folgende Code führt die Tabellenzellen im angegebenen Bereich zusammen, beginnend mit der angegebenen Zelle und endend mit der Endzelle. In diesem Fall kann sich der Bereich über mehrere Zeilen oder Spalten erstrecken:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "merge-cells.h" >}}

Das folgende Codebeispiel zeigt, wie ein Zellbereich zwischen zwei angegebenen Zellen zusammengeführt wird:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "merge-cell-range.h" >}}

Abhängig von der Version des von Ihnen verwendeten Frameworks möchten Sie diese Methode möglicherweise verfeinern, indem Sie sie in eine Erweiterungsmethode umwandeln. In diesem Fall können Sie diese Methode direkt für eine Zelle aufrufen, um einen Zellbereich zusammenzuführen, z. B. `cell1.Merge(cell2)`.

## Vertikale und horizontale verbundene Zellen in einer Tabelle {#vertical-and-Horizontal-merged-cells-in-the-table}

Wie wir in früheren Artikeln gesagt haben, ist eine Tabelle in Microsoft Word eine Menge unabhängiger Zeilen. Jede Zeile enthält eine Reihe von Zellen, die von den Zellen anderer Zeilen unabhängig sind. Daher gibt es in der Microsoft Word -Tabelle kein Objekt wie eine "Spalte", und "1 -st-Spalte" ist so etwas wie "die Menge der 1 -st-Zellen jeder Zeile in der Tabelle". Auf diese Weise können Benutzer eine Tabelle erstellen, in der beispielsweise die 1. Zeile aus zwei Zellen besteht – 2 cm und 1 cm, und die 2. Zeile aus zwei verschiedenen Zellen besteht – 1 cm und 2cm breit. Und Aspose.Words unterstützt dieses Konzept von Tabellen.

Eine Tabelle in HTML hat eine wesentlich andere Struktur: Jede Zeile hat die gleiche Anzahl von Zellen und (es ist wichtig für die Aufgabe) Jede Zelle hat die Breite der entsprechenden Spalte, die für alle Zellen in einer Spalte gleich ist. Wenn also **HorizontalMerge** und **VerticalMerge** einen falschen Wert zurückgeben, verwenden Sie das folgende Codebeispiel:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "print-horizontal-and-vertical-merged.h" >}}

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "horizontal-and-vertical-merge-helper-classes.h" >}}

## In horizontal verbundene Zellen konvertieren {#convert-to-horizontally-merged-cells}

Manchmal ist es nicht möglich zu erkennen, welche Zellen zusammengeführt werden, da einige neuere Versionen von Microsoft Word die Zusammenführungsflags nicht mehr verwenden, wenn Zellen horizontal zusammengeführt werden. Für Situationen, in denen Zellen mithilfe von Zusammenführungsflags horizontal nach ihrer Breite zu einer Zelle zusammengeführt werden, bietet Aspose.Words die `ConvertToHorizontallyMergedCells` -Methode zum Konvertieren von Zellen. Diese Methode transformiert einfach die Tabelle und fügt nach Bedarf neue Zellen hinzu.

Das folgende Codebeispiel zeigt die obige Methode in Betrieb:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "convert-to-horizontally-merged-cells.h" >}}