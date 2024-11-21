---
title: Verschmelzungstabellenzellen in Java
second_title: Aspose.Words für Java
articleTitle: Stammtische Zellen
linktitle: Stammtische Zellen
description: "Wie man Tabellenzellen in Java. Prüfen Sie, ob Zellen in einer Tabelle mit Java."
type: docs
weight: 40
url: /de/java/working-with-merged-cells/
timestamp: 2024-01-27-14-07-04
---

Manchmal benötigen bestimmte Zeilen in einer Tabelle eine Überschrift oder große Textblöcke, die die volle Breite der Tabelle einnehmen. Zur richtigen Gestaltung der Tabelle kann der Benutzer mehrere Tabellenzellen in eine zusammenführen. Aspose.Words unterstützt fusionierte Zellen bei der Arbeit mit allen Eingabeformaten, einschließlich Importieren von HTML-Inhalte.

## Wie man Tabellenzellen vereinigt

In Aspose.Words, fusionierte Zellen werden durch folgende Eigenschaften der [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) Klasse:

- Ja. [HorizontalMerge](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getHorizontalMerge) die beschreibt, ob die Zelle Teil einer horizontalen Zusammenführung von Zellen ist
- Ja. [VerticalMerge](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getVerticalMerge) die beschreibt, ob die Zelle Teil einer vertikalen Zusammenführung von Zellen ist

Die Werte dieser Eigenschaften bestimmen das Zusammenführungsverhalten von Zellen:

- Ja. Die erste Zelle in einer Sequenz von zusammengeführten Zellen wird [CellMerge.First](https://reference.aspose.com/words/java/com.aspose.words/cellmerge/#FIRST)
- Ja. Alle später zusammengeführten Zellen werden [CellMerge.Previous](https://reference.aspose.com/words/java/com.aspose.words/cellmerge/#PREVIOUS)
- Eine Zelle, die nicht zusammengeführt wird, wird [CellMerge.None](https://reference.aspose.com/words/java/com.aspose.words/cellmerge/#NONE)

![work-with-merged-cells-aspose-words-java](/words/java/working-with-merged-cells/working-with-merged-cells-1.png)

{{% alert color="primary" %}}

Manchmal, wenn Sie vorhandene Dokumentzellen in einer Tabelle laden, erscheinen sie zusammengeführt. Es kann aber tatsächlich eine lange Zelle sein – manchmal Microsoft Word Exporte fusionierten Zellen auf diese Weise. Dies kann verwirrend sein, wenn man versucht, mit einzelnen Zellen zu arbeiten, aber es scheint kein bestimmtes Muster zu sein, als wenn dies geschieht.

{{% /alert %}}

## Überprüfen, ob eine Zelle vereinigt ist

Um zu überprüfen, ob eine Zelle Teil einer Sequenz von zusammengeführten Zellen ist, überprüfen wir einfach die **HorizontalMerge** und **VerticalMerge** Eigenschaften.

Das folgende Codebeispiel zeigt, wie man die horizontale und vertikale Zellfusionsart druckt:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "check-cells-merged.java" >}}

## Verschmelzungstabellenzellen bei Verwendung von DocumentBuilder

Zusammenführen von Zellen in einer Tabelle, die mit der [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/), Sie müssen für jede Zelle, wo die Zusammenführung erwartet wird, den entsprechenden Zusammenschlusstyp festlegen – zuerst **CellMerge.First** und dann **CellMerge.Previous**.

Sie müssen sich auch daran erinnern, die Merge-Einstellung für die Zellen zu löschen, in denen keine Zusammenführung erforderlich ist – dies kann durch die Einstellung der ersten Nicht-Mergezelle an **CellMerge.None**. Wenn dies nicht geschieht, werden alle Zellen in der Tabelle zusammengeführt.

Das folgende Codebeispiel zeigt, wie eine Tabelle mit zwei Zeilen erstellt werden kann, in denen die Zellen in der ersten Zeile horizontal zusammengefasst werden:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "horizontal-merge.java" >}}

Das folgende Codebeispiel zeigt, wie man eine Zweisäulentabelle erstellt, in der die Zellen in der ersten Spalte vertikal zusammengefasst sind:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "vertical-merge.java" >}}

## Verschmelzungstabellenzellen in anderen Fällen

In anderen Fällen, in denen **DocumentBuilder** nicht verwendet wird, wie in einer bestehenden Tabelle, kann das Verschmelzen von Zellen in der vorherigen Weise nicht so einfach sein. Stattdessen können wir die grundlegenden Operationen, die an der Anwendung von Merge-Eigenschaften an Zellen beteiligt sind, in einer Methode einpacken, die die Aufgabe viel einfacher macht. Dieses Verfahren ist ähnlich der Merge Automation Methode, die aufgerufen wird, eine Reihe von Zellen in einer Tabelle zu verschmelzen.

Der folgende Code wird die Tabellenzellen im angegebenen Bereich zusammenführen, beginnend an der angegebenen Zelle und enden an der Endzelle. Dabei kann der Bereich mehrere Zeilen oder Spalten überspannen:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "merge-cells.java" >}}

Das folgende Codebeispiel zeigt, wie man einen Bereich von Zellen zwischen zwei angegebenen Zellen zusammenführt:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "merge-cell-range.java" >}}

## Vertikale und horizontale Verschmelzungszellen in HTML-Tabelle

Wie wir in früheren Artikeln gesagt haben, eine Tabelle in Microsoft Word ist eine Reihe unabhängiger Zeilen. Jede Zeile hat eine Reihe von Zellen, die unabhängig von den Zellen anderer Zeilen sind. So, in der Microsoft Word Tabelle gibt es kein solches Objekt wie eine "Säule", und "1. Spalte" ist etwas wie "die Menge der 1. Zellen jeder Zeile in der Tabelle". Dies ermöglicht es Benutzern, eine Tabelle zu haben, in der zum Beispiel die 1. Reihe aus zwei Zellen besteht – 2cm und 1cm, und die 2. Reihe besteht aus zwei verschiedenen Zellen – 1cm und 2cm breit. Und Aspose.Words unterstützt dieses Konzept der Tabellen.

Eine Tabelle in HTML hat eine im Wesentlichen andere Struktur: jede Zeile hat die gleiche Anzahl von Zellen und (es ist für die Aufgabe wichtig) jede Zelle hat die Breite der entsprechenden Spalte, die gleiche für alle Zellen in einer Spalte. Wenn **HorizontalMerge** und **VerticalMerge** einen falschen Wert zurückgeben, das folgende Codebeispiel verwenden:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "print-horizontal-and-vertical-merged.java" >}}

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "horizontal-and-vertical-merge-helper-classes.java" >}}

## Horizontal umrechnen Verschmelzte Zellen

Manchmal ist es nicht möglich zu erkennen, welche Zellen zusammengeführt werden, weil einige neuere Versionen Microsoft Word bei horizontaler Zusammenführung der Zellen die zusammenführenden Fahnen nicht mehr verwenden. Aber für Situationen, in denen Zellen horizontal durch ihre Breite in eine Zelle zusammengeführt werden, indem sie Fahnen zusammenführen, Aspose.Words bietet `ConvertToHorizontallyMergedCells` Verfahren zur Umwandlung von Zellen. Diese Methode transformiert einfach die Tabelle und fügt neue Zellen nach Bedarf hinzu.

Das folgende Codebeispiel zeigt das obige Verfahren im Betrieb:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "convert-to-horizontally-merged-cells.java" >}}
