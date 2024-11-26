---
title: Tabellenzellen in Java zusammenführen
second_title: Aspose.Words für Java
articleTitle: Tabellenzellen zusammenführen
linktitle: Tabellenzellen zusammenführen
description: "So führen Sie Tabellenzellen in Java zusammen. Überprüfen Sie, ob Zellen in einer Tabelle mit Java zusammengeführt werden."
type: docs
weight: 40
url: /de/java/working-with-merged-cells/
timestamp: 2024-01-27-14-07-04
---

Manchmal erfordern bestimmte Zeilen in einer Tabelle eine Überschrift oder große Textblöcke, die die gesamte Breite der Tabelle einnehmen. Für die ordnungsgemäße Gestaltung der Tabelle kann der Benutzer mehrere Tabellenzellen zu einer zusammenführen. Aspose.Words unterstützt verbundene Zellen bei der Arbeit mit allen Eingabeformaten, einschließlich des Imports von HTML-Inhalten.

## Wie man Tabellenzellen zusammenführt

In Aspose.Words werden zusammengeführte Zellen durch die folgenden Eigenschaften der Klasse [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) dargestellt:

- [HorizontalMerge](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getHorizontalMerge) beschreibt, ob die Zelle Teil einer horizontalen Zusammenführung von Zellen ist
- [VerticalMerge](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getVerticalMerge) beschreibt, ob die Zelle Teil einer vertikalen Zusammenführung von Zellen ist

Die Werte dieser Eigenschaften bestimmen das Zusammenführungsverhalten von Zellen:

- Die erste Zelle in einer Folge zusammengeführter Zellen hat [CellMerge.First](https://reference.aspose.com/words/java/com.aspose.words/cellmerge/#FIRST)
- Alle anschließend zusammengeführten Zellen haben [CellMerge.Previous](https://reference.aspose.com/words/java/com.aspose.words/cellmerge/#PREVIOUS)
- Eine Zelle, die nicht zusammengeführt wird, hat [CellMerge.None](https://reference.aspose.com/words/java/com.aspose.words/cellmerge/#NONE)

![work-with-merged-cells-aspose-words-java](/words/java/working-with-merged-cells/working-with-merged-cells-1.png)

{{% alert color="primary" %}}

Manchmal werden beim Laden vorhandener Dokumentzellen in eine Tabelle diese zusammengeführt angezeigt. Es kann sich jedoch tatsächlich um eine lange Zelle handeln - manchmal exportiert Microsoft Word zusammengeführte Zellen auf diese Weise. Dies kann verwirrend sein, wenn versucht wird, mit einzelnen Zellen zu arbeiten, aber es scheint kein bestimmtes Muster zu geben, wann dies geschieht.

{{% /alert %}}

## Überprüfen, ob eine Zelle zusammengeführt ist

Um zu überprüfen, ob eine Zelle Teil einer Sequenz zusammengeführter Zellen ist, überprüfen wir einfach die Eigenschaften **HorizontalMerge** und **VerticalMerge**.

Das folgende Codebeispiel zeigt, wie der horizontale und vertikale Zellzusammenführungstyp gedruckt wird:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "check-cells-merged.java" >}}

## Tabellenzellen zusammenführen, wenn DocumentBuilder verwendet wird

Um Zellen in einer Tabelle zusammenzuführen, die mit [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) erstellt wurde, müssen Sie für jede Zelle, in der die Zusammenführung erwartet wird, den entsprechenden Zusammenführungstyp festlegen – zuerst **CellMerge.First** und dann **CellMerge.Previous**.

Außerdem müssen Sie daran denken, die Zusammenführungseinstellung für die Zellen zu löschen, für die keine Zusammenführung erforderlich ist. Dies kann erfolgen, indem Sie die erste Zelle ohne Zusammenführung auf **CellMerge.None** setzen. Geschieht dies nicht, werden alle Zellen in der Tabelle zusammengeführt.

Das folgende Codebeispiel zeigt, wie Sie eine Tabelle mit zwei Zeilen erstellen, in der die Zellen in der ersten Zeile horizontal zusammengeführt werden:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "horizontal-merge.java" >}}

Das folgende Codebeispiel zeigt, wie Sie eine zweispaltige Tabelle erstellen, in der die Zellen in der ersten Spalte vertikal zusammengeführt werden:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "vertical-merge.java" >}}

## Tabellenzellen in anderen Fällen zusammenführen

In anderen Situationen, in denen **DocumentBuilder** nicht verwendet wird, z. B. in einer vorhandenen Tabelle, ist das Zusammenführen von Zellen auf die vorherige Weise möglicherweise nicht so einfach. Stattdessen können wir die grundlegenden Vorgänge zum Anwenden von Zusammenführungseigenschaften auf Zellen in einer Methode zusammenfassen, die die Aufgabe erheblich vereinfacht. Diese Methode ähnelt der Merge-Automatisierungsmethode, die zum Zusammenführen eines Zellbereichs in einer Tabelle aufgerufen wird.

Der folgende Code führt die Tabellenzellen im angegebenen Bereich zusammen, beginnend mit der angegebenen Zelle und endend mit der Endzelle. In diesem Fall kann sich der Bereich über mehrere Zeilen oder Spalten erstrecken:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "merge-cells.java" >}}

Das folgende Codebeispiel zeigt, wie ein Zellbereich zwischen zwei angegebenen Zellen zusammengeführt wird:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "merge-cell-range.java" >}}

## Vertikale und horizontale verbundene Zellen in HTML-Tabelle

Wie wir in früheren Artikeln gesagt haben, ist eine Tabelle in Microsoft Word eine Menge unabhängiger Zeilen. Jede Zeile enthält eine Reihe von Zellen, die von den Zellen anderer Zeilen unabhängig sind. Daher gibt es in der Microsoft Word -Tabelle kein Objekt wie eine "Spalte", und "1. Spalte" ist so etwas wie "die Menge der 1. Zellen jeder Zeile in der Tabelle". Auf diese Weise können Benutzer eine Tabelle erstellen, in der beispielsweise die 1. Zeile aus zwei Zellen besteht – 2 cm und 1 cm, und die 2. Zeile aus zwei verschiedenen Zellen besteht – 1 cm und 2 cm breit. Und Aspose.Words unterstützt dieses Konzept von Tabellen.

Eine Tabelle in HTML hat eine wesentlich andere Struktur: Jede Zeile hat die gleiche Anzahl von Zellen und (es ist wichtig für die Aufgabe) Jede Zelle hat die Breite der entsprechenden Spalte, die für alle Zellen in einer Spalte gleich ist. Wenn also **HorizontalMerge** und **VerticalMerge** einen falschen Wert zurückgeben, verwenden Sie das folgende Codebeispiel:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "print-horizontal-and-vertical-merged.java" >}}

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "horizontal-and-vertical-merge-helper-classes.java" >}}

## In horizontal verbundene Zellen konvertieren

Manchmal ist es nicht möglich zu erkennen, welche Zellen zusammengeführt werden, da einige neuere Versionen von Microsoft Word die Zusammenführungsflags nicht mehr verwenden, wenn Zellen horizontal zusammengeführt werden. Für Situationen, in denen Zellen mithilfe von Zusammenführungsflags horizontal nach ihrer Breite zu einer Zelle zusammengeführt werden, bietet Aspose.Words die `ConvertToHorizontallyMergedCells` -Methode zum Konvertieren von Zellen. Diese Methode transformiert einfach die Tabelle und fügt nach Bedarf neue Zellen hinzu.

Das folgende Codebeispiel zeigt die obige Methode in Betrieb:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "convert-to-horizontally-merged-cells.java" >}}
