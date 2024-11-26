---
title: Mit Spalten und Zeilen in C++ arbeiten
second_title: Aspose.Words für C++
articleTitle: Arbeiten mit Spalten und Zeilen
linktitle: Arbeiten mit Spalten und Zeilen
description: "Arbeiten mit Teilen einer Tabelle – Zeilen, Spalten und Zellen mit C++. Geben Sie die Kopfzeile C++ an."
type: docs
weight: 30
url: /de/cpp/working-with-columns-and-rows/
timestamp: 2024-01-27-14-07-04
---

Erfahren Sie, wie Sie Spalten und Zeilen bearbeiten, um mehr Kontrolle über die Funktionsweise von Tabellen zu erhalten.

## Suchen Sie den Tabellenelementindex

Spalten, Zeilen und Zellen werden verwaltet, indem auf den ausgewählten Dokumentknoten über seinen Index zugegriffen wird. Das Auffinden des Index eines Knotens umfasst das Sammeln aller untergeordneten Knoten des Elementtyps vom übergeordneten Knoten und das anschließende Verwenden der Methode [IndexOf](https://reference.aspose.com/words/cpp/aspose.words/nodecollection/indexof/), um den Index des gewünschten Knotens in der Auflistung zu ermitteln.

### Suchen Sie den Index einer Tabelle in einem Dokument

Manchmal müssen Sie möglicherweise Änderungen an einer bestimmten Tabelle in einem Dokument vornehmen. Dazu können Sie anhand ihres Index auf eine Tabelle verweisen.

Das folgende Codebeispiel zeigt, wie der Index einer Tabelle in einem Dokument abgerufen wird:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "retrieve-table-index.h" >}}

### Finde den Index einer Zeile in einer Tabelle {#find-the-index-of-a-row-in-a-table}

Ebenso müssen Sie möglicherweise Änderungen an einer bestimmten Zeile in einer ausgewählten Tabelle vornehmen. Dazu können Sie auch über ihren Index auf eine Zeile verweisen.

Das folgende Codebeispiel zeigt, wie der Index einer Zeile in einer Tabelle abgerufen wird:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "retrieve-row-index.h" >}}

### Finde den Index einer Zelle in einer Zeile {#find-the-index-of-a-cell-in-a-row}

Schließlich müssen Sie möglicherweise Änderungen an einer bestimmten Zelle vornehmen, und Sie können dies auch nach Zellindex tun.

Das folgende Codebeispiel zeigt, wie der Index einer Zelle in einer Zeile abgerufen wird:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "retrieve-cell-index.h" >}}

## Mit Spalten arbeiten

Im Aspose.Words -Dokumentobjektmodell (DOM) besteht der [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/) -Knoten aus [Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/) Knoten und dann [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/) Knoten. Daher gibt es im `Document` -Objektmodell von Aspose.Words wie in Word-Dokumenten kein Konzept einer Spalte.

Entwurfsbedingt sind die Tabellenzeilen in Microsoft Word und Aspose.Words völlig unabhängig, und die grundlegenden Eigenschaften und Operationen sind nur in den Zeilen und Zellen der Tabelle enthalten. Dies gibt Tabellen die Möglichkeit, einige interessante Attribute zu haben:

- Jede Tabellenzeile kann eine völlig andere Anzahl von Zellen haben
- Vertikal können die Zellen jeder Zeile unterschiedliche Breiten haben
- Es ist möglich, Tabellen mit unterschiedlichen Zeilenformaten und Zellenzahlen zu verknüpfen

Alle Operationen, die an Spalten ausgeführt werden, sind eigentlich "Verknüpfungen", die den Vorgang ausführen, indem Zeilenzellen kollektiv so geändert werden, dass es so aussieht, als würden sie auf Spalten angewendet. Das heißt, Sie können Operationen an Spalten ausführen, indem Sie einfach über denselben Tabellenzeilenzellenindex iterieren.

Das folgende Codebeispiel vereinfacht solche Vorgänge, indem es eine Fassadenklasse beweist, die die Zellen sammelt, aus denen eine "Spalte" einer Tabelle besteht:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "column-class.h" >}}

Das folgende Codebeispiel zeigt, wie Sie eine leere Spalte in eine Tabelle einfügen:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "insert-blank-column.h" >}}

Das folgende Codebeispiel zeigt, wie Sie eine Spalte aus einer Tabelle in einem Dokument entfernen:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "remove-column.h" >}}

## Zeilen als Kopfzeilen angeben

Sie können die erste Zeile in der Tabelle als Kopfzeile nur auf der ersten Seite oder auf jeder Seite wiederholen, wenn die Tabelle in mehrere aufgeteilt ist. In Aspose.Words können Sie die Kopfzeile auf jeder Seite mit der Eigenschaft [HeadingFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_headingformat/) wiederholen.

Sie können auch mehrere Kopfzeilen markieren, wenn sich solche Zeilen nacheinander am Tabellenanfang befinden. Dazu müssen Sie die **HeadingFormat** -Eigenschaften auf diese Zeilen anwenden.

{{% alert color="primary" %}}

Beachten Sie, dass Kopfzeilen in verschachtelten Tabellen nicht funktionieren. Das heißt, wenn Sie eine Tabelle in einer anderen Tabelle haben, hat diese Einstellung keine Auswirkung. Es ist eine Einschränkung von Microsoft Word, die dies nicht zulässt, nicht Aspose.Words.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie Sie eine Tabelle erstellen, die Kopfzeilen enthält, die sich auf nachfolgenden Seiten wiederholen:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "repeat-rows-on-subsequent-pages.h" >}}

## Verhindern, dass Tabellen und Zeilen über Seiten verteilt werden

Es gibt Zeiten, in denen der Inhalt einer Tabelle nicht auf mehrere Seiten aufgeteilt werden sollte. Wenn sich beispielsweise ein Titel über einer Tabelle befindet, sollten Titel und Tabelle immer auf derselben Seite zusammengehalten werden, um das korrekte Erscheinungsbild zu erhalten.

Es gibt zwei separate Techniken, die nützlich sind, um diese Funktionalität zu erreichen:

- `Allow row break across pages`, das auf Tabellenzeilen angewendet wird
- `Keep with next`, das auf Absätze in Tabellenzellen angewendet wird

Standardmäßig sind die obigen Eigenschaften deaktiviert.

### Verhindern, dass eine Zeile seitenübergreifend wird {#keep-a-row-from-breaking-across-pages}

Dies beinhaltet die Einschränkung, dass Inhalte in den Zellen einer Zeile nicht auf eine Seite aufgeteilt werden. In Microsoft Word finden Sie dies unter Tabelleneigenschaften als Option "Zeilenumbruch über Seiten zulassen". In Aspose.Words findet sich dies unter dem [RowFormat](hhttps://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/) -Objekt von a [Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/) als Eigenschaft [RowFormat.AllowBreakAcrossPages](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_allowbreakacrosspages/).

Das folgende Codebeispiel zeigt, wie Sie Zeilenumbrüche über Seiten hinweg für jede Zeile in einer Tabelle deaktivieren:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "row-format-disable-break-across-pages.h" >}}

### Verhindern, dass eine Tabelle seitenübergreifend wird {#keep-a-table-from-breaking-across-pages}

Um zu verhindern, dass sich die Tabelle auf mehrere Seiten aufteilt, müssen wir angeben, dass der in der Tabelle enthaltene Inhalt zusammenbleiben soll.

Dazu verwendet Aspose.Words eine Methode, mit der Benutzer eine Tabelle auswählen und den Parameter [KeepWithNext](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_keepwithnext/) für jeden Absatz in den Tabellenzellen auf true setzen können. Die Ausnahme ist der letzte Absatz in der Tabelle, der auf false gesetzt werden sollte.

Das folgende Codebeispiel zeigt, wie Sie eine Tabelle so einrichten, dass sie auf derselben Seite zusammenbleibt:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "keep-table-together.h" >}}
