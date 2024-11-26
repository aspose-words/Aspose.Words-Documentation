---
title: Arbeiten Sie mit Spalten und Zeilen
second_title: Aspose.Words für Python via .NET
articleTitle: Arbeiten Sie mit Spalten und Zeilen
linktitle: Arbeiten Sie mit Spalten und Zeilen
description: "Arbeiten mit Teilen einer Tabelle – Zeilen, Spalten und Zellen mit Python. Geben Sie die Kopfzeile Python an."
type: docs
weight: 30
url: /de/python-net/working-with-columns-and-rows/
timestamp: 2024-01-27-14-07-04
---

Um mehr Kontrolle über die Funktionsweise von Tabellen zu erhalten, erfahren Sie, wie Sie Spalten und Zeilen bearbeiten.

## Suchen des Tabellenelementindex

Spalten, Zeilen und Zellen werden verwaltet, indem auf den ausgewählten Dokumentknoten über seinen Index zugegriffen wird. Um den Index eines beliebigen Knotens zu finden, müssen alle untergeordneten Knoten des Elementtyps vom übergeordneten Knoten erfasst und dann mithilfe der [IndexOf](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/index_of/)-Methode der Index des gewünschten Knotens in der Sammlung ermittelt werden.

### Den Index einer Tabelle in einem Dokument finden

Manchmal müssen Sie möglicherweise Änderungen an einer bestimmten Tabelle in einem Dokument vornehmen. Dazu können Sie über ihren Index auf eine Tabelle verweisen.

Das folgende Codebeispiel zeigt, wie der Index einer Tabelle in einem Dokument abgerufen wird:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "retrieve-table-index.py" >}}

### Den Index einer Zeile in einer Tabelle finden

Ebenso müssen Sie möglicherweise Änderungen an einer bestimmten Zeile in einer ausgewählten Tabelle vornehmen. Dazu können Sie eine Zeile auch über ihren Index referenzieren.

Das folgende Codebeispiel zeigt, wie der Index einer Zeile in einer Tabelle abgerufen wird:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "retrieve-row-index.py" >}}

### Ermitteln des Index einer Zelle in einer Zeile

Schließlich müssen Sie möglicherweise Änderungen an einer bestimmten Zelle vornehmen, und Sie können dies auch über den Zellindex tun.

Das folgende Codebeispiel zeigt, wie der Index einer Zelle in einer Zeile abgerufen wird:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "retrieve-cell-index.py" >}}

## Arbeiten Sie mit Spalten

Im Aspose.Words Document Object Model (DOM) besteht der [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/)-Knoten aus [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/)-Knoten und dann aus [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/)-Knoten. Daher gibt es im `Document`-Objektmodell von Aspose.Words, wie auch in Word-Dokumenten, kein Konzept einer Spalte.

Die Tabellenzeilen in Microsoft Word und Aspose.Words sind konstruktionsbedingt völlig unabhängig und die grundlegenden Eigenschaften und Operationen sind nur in den Zeilen und Zellen der Tabelle enthalten. Dies gibt Tabellen die Möglichkeit, einige interessante Attribute zu haben:

- Jede Tabellenzeile kann eine völlig unterschiedliche Anzahl von Zellen haben
- Vertikal können die Zellen jeder Zeile unterschiedliche Breiten haben
- Es ist möglich, Tabellen mit unterschiedlichen Zeilenformaten und Zellenanzahlen zu verbinden

Alle an Spalten ausgeführten Operationen sind eigentlich "Abkürzungen", die die Operation ausführen, indem sie Zeilenzellen gemeinsam so ändern, dass es aussieht, als würden sie auf Spalten angewendet. Das heißt, Sie können Operationen an Spalten ausführen, indem Sie einfach über denselben Zellenindex der Tabellenzeile iterieren.

Das folgende Codebeispiel vereinfacht solche Vorgänge, indem es eine Fassadenklasse beweist, die die Zellen sammelt, aus denen eine "Spalte" einer Tabelle besteht:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "column-class.py" >}}

Das folgende Codebeispiel zeigt, wie man eine leere Spalte in eine Tabelle einfügt:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "insert-blank-column.py" >}}

Das folgende Codebeispiel zeigt, wie eine Spalte aus einer Tabelle in einem Dokument entfernt wird:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "remove-column.py" >}}

## Geben Sie Zeilen als Kopfzeilen an

Sie können die erste Zeile in der Tabelle als Kopfzeile nur auf der ersten Seite oder auf jeder Seite wiederholen, wenn die Tabelle in mehrere geteilt ist. In Aspose.Words können Sie die Kopfzeile mithilfe der [HeadingFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/heading_format/)-Eigenschaft auf jeder Seite wiederholen.

Sie können auch mehrere Kopfzeilen markieren, wenn diese am Anfang der Tabelle hintereinander stehen. Dazu müssen Sie die **HeadingFormat**-Eigenschaften auf diese Zeilen anwenden.

{{% alert color="primary" %}}

Beachten Sie, dass Kopfzeilen in verschachtelten Tabellen nicht funktionieren. Das heißt, wenn Sie eine Tabelle in einer anderen Tabelle haben, hat diese Einstellung keine Auswirkung. Es ist eine Einschränkung von Microsoft Word, die dies nicht zulässt, nicht von Aspose.Words.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie eine Tabelle erstellt wird, die Kopfzeilen enthält, die sich auf nachfolgenden Seiten wiederholen:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "repeat-rows-on-subsequent-pages.py" >}}

## Verhindern Sie, dass Tabellen und Zeilen seitenübergreifend umbrechen

Es gibt Zeiten, in denen der Inhalt einer Tabelle nicht auf mehrere Seiten aufgeteilt werden sollte. Wenn beispielsweise ein Titel über einer Tabelle steht, sollten Titel und Tabelle immer zusammen auf derselben Seite bleiben, um das richtige Erscheinungsbild zu gewährleisten.

Es gibt zwei verschiedene Techniken, die zum Erreichen dieser Funktionalität nützlich sind:

- `Allow row break across pages`, das auf Tabellenzeilen angewendet wird
- `Keep with next`, das auf Absätze in Tabellenzellen angewendet wird

Standardmäßig sind die oben genannten Eigenschaften deaktiviert.

### Verhindern Sie, dass eine Zeile seitenübergreifend umbricht

Dabei wird verhindert, dass Inhalte innerhalb der Zellen einer Zeile auf eine Seite aufgeteilt werden. In Microsoft Word ist dies unter "Tabelleneigenschaften" als Option "Zeilenumbruch über Seiten hinweg zulassen" zu finden. In Aspose.Words ist dies unter dem [RowFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/)-Objekt eines [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) als Eigenschaft [RowFormat.AllowBreakAcrossPages](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/allow_break_across_pages/) zu finden.

Das folgende Codebeispiel zeigt, wie Sie den seitenübergreifenden Zeilenumbruch für jede Zeile in einer Tabelle deaktivieren:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "row-format-disable-break-across-pages.py" >}}

{{% alert color="primary" %}}

Sie können die Beispieldatei dieses Beispiels von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Table%20spanning%20two%20pages.docx) herunterladen.

{{% /alert %}}

### Verhindern Sie, dass eine Tabelle über mehrere Seiten bricht

Um zu verhindern, dass die Tabelle auf mehrere Seiten aufgeteilt wird, müssen wir angeben, dass der in der Tabelle enthaltene Inhalt zusammen bleiben soll.

Zu diesem Zweck verwendet Aspose.Words eine Methode, die es Benutzern ermöglicht, eine Tabelle auszuwählen und den [KeepWithNext](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/keep_with_next/)-Parameter für jeden Absatz innerhalb der Tabellenzellen in true zu aktivieren. Die Ausnahme bildet der letzte Absatz in der Tabelle, der auf false eingestellt werden sollte.

Das folgende Codebeispiel zeigt, wie man eine Tabelle so einrichtet, dass sie zusammen auf derselben Seite bleibt:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "keep-table-together.py" >}}

{{% alert color="primary" %}}

Sie können die Beispieldatei dieses Beispiels von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Table%20spanning%20two%20pages.docx) herunterladen.

{{% /alert %}}
