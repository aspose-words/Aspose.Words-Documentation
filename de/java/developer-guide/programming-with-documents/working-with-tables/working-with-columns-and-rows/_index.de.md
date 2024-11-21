---
title: Arbeiten mit Säulen und Reihen in Java
second_title: Aspose.Words für Java
articleTitle: Arbeiten mit Säulen und Reihen
linktitle: Arbeiten mit Säulen und Reihen
description: "Arbeiten mit Teilen einer Tabelle – Zeilen, Spalten und Zellen mit Java. Header Row angeben Java."
type: docs
weight: 30
url: /de/java/working-with-columns-and-rows/
timestamp: 2024-01-27-14-07-04
---

Für mehr Kontrolle darüber, wie Tabellen funktionieren, lernen, wie man Spalten und Zeilen manipuliert.

## Tabelle Element Index finden

Spalten, Zeilen und Zellen werden verwaltet, indem der ausgewählte Dokumentknoten durch seinen Index aufgerufen wird. Das Finden des Index eines beliebigen Knotens beinhaltet das Sammeln aller Child-Knoten des Elementtyps aus dem Elternknoten und dann die Verwendung des [IndexOf](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#indexOf-com.aspose.words.Node) Verfahren zum Auffinden des Index des gewünschten Knotens in der Sammlung.

### Finden Sie den Index einer Tabelle in einem Dokument

Manchmal müssen Sie Änderungen an einer bestimmten Tabelle in einem Dokument vornehmen. Um dies zu tun, können Sie auf eine Tabelle mit seinem Index.

Das folgende Codebeispiel zeigt, wie man den Index einer Tabelle in einem Dokument abruft:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-table-index.java" >}}

### Suche nach dem Index einer Reihe in einer Tabelle

Ebenso müssen Sie in einer ausgewählten Tabelle Änderungen in einer bestimmten Zeile vornehmen. Um dies zu tun, können Sie sich auch auf eine Zeile mit seinem Index beziehen.

Das folgende Codebeispiel zeigt, wie man den Index einer Zeile in einer Tabelle abruft:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-row-index.java" >}}

### Den Index einer Zelle in einer Row finden

Schließlich müssen Sie möglicherweise Änderungen an einer bestimmten Zelle vornehmen, und Sie können dies auch durch Zellindex tun.

Das folgende Codebeispiel zeigt, wie man den Index einer Zelle in einer Zeile abruft:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-cell-index.java" >}}

## Arbeiten mit Säulen

In der Aspose.Words Document Object Model (DOM), [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) Knoten besteht aus [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) Knoten und dann [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) Knoten. So, in der `Document` Objektmodell Aspose.Words, wie in Word-Dokumenten, gibt es kein Konzept einer Spalte.

Durch Design, die Tischzeilen in Microsoft Word und Aspose.Words vollständig unabhängig sind und die Grundeigenschaften und Vorgänge nur in den Zeilen und Zellen der Tabelle enthalten sind. Dies gibt Tabellen die Möglichkeit, einige interessante Attribute zu haben:

- Jede Tischzeile kann eine völlig andere Anzahl von Zellen haben
- Die Zellen jeder Reihe können unterschiedliche Breiten haben
- Ja. Es ist möglich, Tabellen mit verschiedenen Zeilenformaten und Anzahl der Zellen zu verbinden

![work-with-columns-aspose-words-java](/words/java/working-with-columns-and-rows/working-with-columns-and-rows-1.png)

Alle Operationen, die auf Spalten durchgeführt werden, sind tatsächlich "Kurzschnitte", die die Operation durch kollektiv wechselnde Zeilenzellen so durchführen, dass es aussieht, als ob sie auf Spalten angewendet werden. Das heißt, Sie können Operationen auf Spalten durchführen, indem Sie einfach über den gleichen Tabellenzeilen-Zellindex iterieren.

Das folgende Codebeispiel vereinfacht diese Operationen, indem eine Fassadenklasse nachgewiesen wird, die die Zellen sammelt, die eine "Säule" einer Tabelle bilden:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "column-class.java" >}}

Das folgende Codebeispiel zeigt, wie eine leere Spalte in eine Tabelle eingefügt werden kann:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "insert-blank-column.java" >}}

Das folgende Codebeispiel zeigt, wie man eine Spalte aus einer Tabelle in einem Dokument entfernt:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "remove-column.java" >}}

## Zeilen als Kopfzeilen angeben

Sie können die erste Zeile in der Tabelle als Header Row nur auf der ersten Seite oder auf jeder Seite wiederholen, wenn die Tabelle in mehrere aufgeteilt wird. In Aspose.Words, Sie können die Header Row auf jeder Seite mit der [HeadingFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getHeadingFormat) Eigentum.

Sie können auch mehrere Headerzeilen markieren, wenn sich solche Zeilen am Anfang der Tabelle hintereinander befinden. Um dies zu tun, müssen Sie die **HeadingFormat** Eigenschaften zu diesen Zeilen.

{{% alert color="primary" %}}

Beachten Sie, dass Header Rows nicht in verschachtelten Tabellen arbeiten. Das heißt, wenn Sie einen Tisch in einer anderen Tabelle haben, wird diese Einstellung keine Wirkung haben. Es ist eine Einschränkung Microsoft Word dies nicht zulassen, nicht Aspose.Words.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie man eine Tabelle erstellt, die Header Rows enthält, die auf folgenden Seiten wiederholen:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "repeat-rows-on-subsequent-pages.java" >}}

## Tabellen und Zeilen von Across-Seiten brechen {#keep-tables-and-rows-from-breaking-across-pages}

Es gibt Zeiten, in denen der Inhalt einer Tabelle nicht auf Seiten aufgeteilt werden sollte. Wenn beispielsweise ein Titel über einer Tabelle liegt, sollten Titel und Tisch immer auf der gleichen Seite zusammengehalten werden, um das richtige Aussehen zu erhalten.

Es gibt zwei separate Techniken, die nützlich sind, um diese Funktionalität zu erreichen:

- Ja. `Allow row break across pages`, die auf Tabellenzeilen angewendet wird
- Ja. `Keep with next`, die auf die Absätze in Tabellenzellen angewendet wird

Standardmäßig sind die obigen Eigenschaften deaktiviert.

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-1.png" alt="keep-tables-and-rows-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

### Halten Sie einen Row von Breaking Across-Seiten {#keep-a-row-from-breaking-across-pages}

Dies beinhaltet die Einschränkung von Inhalten innerhalb der Zellen einer Zeile von der Spaltung über eine Seite. In Microsoft Word, dies kann unter Tabelle Eigenschaften als Option "Zeigen Sie Zeile, um über Seiten zu brechen". In Aspose.Words dies unter der [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/) Objekt eines [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) als Eigentum [RowFormat.AllowBreakAcrossPages](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getAllowBreakAcrossPages).

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-2.png" alt="keep-rows-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

Das folgende Codebeispiel zeigt, wie man Zeilen über Seiten für jede Zeile in einer Tabelle deaktivieren kann:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "row-format-disable-break-across-pages.java" >}}

### Halten Sie einen Tisch von Across-Seiten brechen {#keep-a-table-from-breaking-across-pages}

Um die Tabelle von der Aufspaltung über Seiten zu stoppen, müssen wir festlegen, dass wir den Inhalt in der Tabelle zusammenhalten möchten.

Um das zu tun, Aspose.Words verwendet ein Verfahren, das es Benutzern ermöglicht, eine Tabelle auszuwählen und die [KeepWithNext](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getKeepWithNext) Parameter zu true für jeden Absatz innerhalb der Tabellenzellen. Die Ausnahme ist der letzte Absatz in der Tabelle, der auf false.

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-3.png" alt="keep-tables-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

Das folgende Codebeispiel zeigt, wie man eine Tabelle einstellt, um auf derselben Seite zusammen zu bleiben:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "keep-table-together.java" >}}
