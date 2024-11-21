---
title: So erstellen Sie eine Tabelle in C++
second_title: Aspose.Words für C++
articleTitle: Erstellen Sie eine Tabelle
linktitle: Erstellen Sie eine Tabelle
description: "Verschiedene Möglichkeiten zum Erstellen von Tabellen mit C++. Erstellen Sie eine Tabelle in C++ für Ihr Dokument. Fügen Sie eine Tabelle in C++ hinzu."
type: docs
weight: 20
url: /de/cpp/create-a-table/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words ermöglicht es Benutzern, Tabellen in einem Dokument von Grund auf neu zu erstellen, und bietet dafür verschiedene Methoden. Dieser Artikel enthält Details zum Hinzufügen formatierter Tabellen zu Ihrem Dokument mit jeder Methode sowie einen Vergleich der einzelnen Methoden am Ende des Artikels.

## Standardtabellen-Stile

Die neu erstellte Tabelle erhält Standardwerte ähnlich denen in Microsoft Word:

| Tabelleneigenschaften | Vorgabe in Aspose.Words |
| :- | :- |
| `Border Style` | `Single` |
| `Border Width` | 1/2 punkt |
| `Border Color` | `Black` |
| `Left and Right Padding` | `5.4 pts` |
| `AutoFit Mode` | `AutoFit to Window` |
| `Allow AutoFit` | `True` |

{{% alert color="primary" %}}

Eine Tabelle kann inline sein, wenn sie eng positioniert ist, oder schwebend, wenn sie an einer beliebigen Stelle auf der Seite positioniert werden kann. Standardmäßig erstellt Aspose.Words immer Inline-Tabellen.

{{% /alert %}}

## Erstellen Sie eine Tabelle mit DocumentBuilder

In Aspose.Words können Benutzer mit [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) eine Tabelle in einem Dokument erstellen. Der grundlegende Algorithmus zum Erstellen einer Tabelle lautet wie folgt:

1. Beginnen Sie die Tabelle mit [StartTable](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/starttable/)
2. Fügen Sie der Tabelle mit [InsertCell](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertcell/) eine Zelle hinzu – dies beginnt automatisch eine neue Zeile
3. Verwenden Sie optional die Eigenschaft [CellFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_cellformat/), um die Zellenformatierung anzugeben
4. Fügen Sie den Zellinhalt mit den entsprechenden **DocumentBuilder**-Methoden wie [Writeln](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/writeln/), [InsertImage](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertimage/) und anderen ein
5. Wiederholen Sie die Schritte 2 -4, bis die Zeile vollständig ist
6. Rufen Sie [EndRow](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endrow/) auf, um die aktuelle Zeile zu beenden
7. Verwenden Sie optional die Eigenschaft [RowFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_rowformat/), um die Zeilenformatierung anzugeben
8. Wiederholen Sie die Schritte 2-7, bis die Tabelle vollständig ist
9. Rufen Sie [EndTable](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endtable/) auf, um den Aufbau der Tabelle abzuschließen

{{% alert color="primary" %}}

Wichtige Details:

- [StartTable](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/starttable/) kann auch innerhalb einer Zelle aufgerufen werden.In diesem Fall wird die Erstellung einer verschachtelten Tabelle innerhalb der Zelle gestartet.
- Nach dem Aufruf von [InsertCell](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertcell/) wird eine neue Zelle erstellt, und alle Inhalte, die Sie mit anderen Methoden der Klasse [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) hinzufügen, werden der aktuellen Zelle hinzugefügt. Um eine neue Zelle in derselben Zeile zu erstellen, rufen Sie **InsertCell** erneut auf.
- Wenn **InsertCell** unmittelbar nach [EndRow](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endrow/) und dem Ende einer Zeile aufgerufen wird, wird die Tabelle in einer neuen Zeile fortgesetzt.
- Die [EndTable](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endtable/) -Methode zum Beenden der Tabelle sollte nach dem Aufruf von **EndRow** nur einmal aufgerufen werden. Der Aufruf von **EndTable** bewegt den Cursor von der aktuellen Zelle an die Position unmittelbar nach der Tabelle.

{{% /alert %}}

Der Vorgang zum Erstellen einer Tabelle ist im folgenden Bild deutlich zu sehen:

![creating-table-process](creating-table-process.jpg)

Das folgende Codebeispiel zeigt, wie Sie eine einfache Tabelle mit **DocumentBuilder** mit Standardformatierung erstellen:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "create-simple-table.h" >}}

Das folgende Codebeispiel zeigt, wie Sie eine formatierte Tabelle mit DocumentBuilder erstellen:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "formatted-table.h" >}}

Das folgende Codebeispiel zeigt, wie Sie eine verschachtelte Tabelle mit DocumentBuilder einfügen:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "nested-table.h" >}}

## Erstellen Sie eine Tabelle über DOM (Document Object Model)

Sie können Tabellen direkt in DOM einfügen, indem Sie an einer bestimmten Position einen neuen [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/) -Knoten hinzufügen.

Bitte beachten Sie, dass die Tabelle selbst unmittelbar nach der Erstellung des Tabellenknotens vollständig leer ist, dh noch keine Zeilen und Zellen enthält. Um Zeilen und Zellen in eine Tabelle einzufügen, fügen Sie die entsprechenden untergeordneten Knoten [Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/) und [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/) zu DOM hinzu.

{{% alert color="primary" %}}

Diese Methode zum Erstellen einer Tabelle verwendet dieselben Tabellenstandardwerte wie bei Verwendung von **DocumentBuilder**.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie Sie eine neue Tabelle von Grund auf neu erstellen, indem Sie der Dokumentstruktur die entsprechenden untergeordneten Knoten hinzufügen:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "insert-table-directly.h" >}}

## Erstellen Sie eine Tabelle aus HTML

Aspose.Words unterstützt das Einfügen von Inhalten aus einer HTML-Quelle in ein Dokument mit der [InsertHtml](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/inserthtml/)-Methode. Die Eingabe kann eine vollständige HTML -Seite oder nur ein Teil-Snippet sein.

Mit der **InsertHtml** -Methode können Benutzer Tabellen über Tabellen-Tags in das Dokument einfügen, z `<table>`, `<tr>`, `<td>`.

Das folgende Codebeispiel zeigt, wie Sie eine Tabelle aus einer Zeichenfolge mit HTML -Tags in ein Dokument einfügen:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "insert-table-from-html.h" >}}

## Einfügen einer Kopie einer vorhandenen Tabelle

Es kommt häufig vor, dass Sie eine Tabelle basierend auf einer bereits vorhandenen Tabelle in einem Dokument erstellen müssen. Die einfachste Möglichkeit, eine Tabelle unter Beibehaltung der gesamten Formatierung zu duplizieren, besteht darin, den Tabellenknoten mit der Methode [Clone](https://reference.aspose.com/words/cpp/aspose.words/node/clone/) zu klonen.

Dieselbe Technik kann verwendet werden, um Kopien einer vorhandenen Zeile oder Zelle zu einer Tabelle hinzuzufügen.

Das folgende Codebeispiel zeigt, wie Sie eine Tabelle mit Knotenkonstruktoren duplizieren:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "clone-complete-table.h" >}}

Das folgende Codebeispiel zeigt, wie Sie die letzte Zeile einer Tabelle klonen und an die Tabelle anhängen:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "clone-last-row.h" >}}

Wenn Sie Tabellen in einem Dokument erstellen möchten, die mit jedem Datensatz aus Ihrer Datenquelle dynamisch wachsen, wird die obige Methode nicht empfohlen. Stattdessen wird die gewünschte Ausgabe leichter erreicht, wenn Mail merge mit Regionen verwendet wird. Mehr über diese Technik erfahren Sie in der [Mail Merge mit Regionen](/words/cpp/types-of-mail-merge-operations/) Abschnitt.

## Möglichkeiten zum Erstellen einer Tabelle vergleichen

Aspose.Words bietet verschiedene Methoden zum Erstellen neuer Tabellen in einem Dokument. Jede Methode hat ihre eigenen Vor- und Nachteile, daher hängt die Wahl der zu verwendenden Methode häufig von der spezifischen Situation ab.

Schauen wir uns diese Möglichkeiten zum Erstellen von Tabellen genauer an und vergleichen ihre Vor- und Nachteile:

| Methode | Vorteil | Nachteil |
| :- | :- | :- |
| `DocumentBuilder` | Die Standardmethode zum Einfügen von Tabellen und anderen Dokumentinhalten | Manchmal ist es schwierig, viele verschiedene Tabellen gleichzeitig mit derselben Builder-Instanz zu erstellen |
| Über DOM | Passt besser in den umgebenden Code, der Knoten direkt in DOM erstellt und einfügt, ohne **DocumentBuilder** zu verwenden | Die Tabelle wird "leer" erstellt: Bevor Sie die meisten Operationen ausführen, müssen Sie [EnsureMinimum](https://reference.aspose.com/words/cpp/aspose.words.tables/table/ensureminimum/) aufrufen, um fehlende untergeordnete Knoten zu erstellen |
| Von HTML | Kann eine neue Tabelle aus HTML Quelle mit Tags wie erstellen `<table>`, `<tr>`, `<td>` | Nicht alle möglichen Microsoft Word-Tabellenformate können auf HTML angewendet werden |
| Klonen einer vorhandenen Tabelle | Sie können eine Kopie einer vorhandenen Tabelle erstellen, während alle Zeilen- und Zellenformatierungen beibehalten werden | Die entsprechenden untergeordneten Knoten müssen entfernt werden, bevor die Tabelle verwendet werden kann |
