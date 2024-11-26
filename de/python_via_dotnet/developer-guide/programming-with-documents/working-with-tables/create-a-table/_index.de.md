---
title: Einführung und Tabellenerstellung
second_title: Aspose.Words für Python via .NET
articleTitle: Einführung und Tabellenerstellung
linktitle: Einführung und Tabellenerstellung
description: "Erstellen und verwalten Sie Tabellen in einem Dokument mit Python."
type: docs
weight: 10
url: /de/python-net/create-a-table/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words ermöglicht Benutzern das Erstellen von Tabellen in einem Dokument von Grund auf und bietet hierfür verschiedene Methoden. Dieser Artikel enthält Einzelheiten zum Hinzufügen formatierter Tabellen zu Ihrem Dokument mit den einzelnen Methoden sowie einen Vergleich der einzelnen Methoden am Ende des Artikels.

## Standardtabellenstile

Die neu erstellte Tabelle erhält Standardwerte, die denen in Microsoft Word ähneln:

| Tabelleneigenschaft | Standard in Aspose.Words |
|  :-  |  :-  |
| `Border Style` |  `Single`  |
| `Border Width` | `1/2 pt` |
| `Border Color` |  `Black`  |
| `Left and Right Padding` | `5.4 pts` |
| `AutoFit Mode` | `AutoFit to Window` |
| `Allow AutoFit` |  `True`  |
{{% alert color="primary" %}}

Eine Tabelle kann inline sein, wenn sie eng positioniert ist, oder schwebend, wenn sie an einer beliebigen Stelle auf der Seite positioniert werden kann. Standardmäßig erstellt Aspose.Words immer Inline-Tabellen.

{{% /alert %}}

## Erstellen Sie eine Tabelle mit DocumentBuilder

In Aspose.Words können Benutzer mithilfe von [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) eine Tabelle in einem Dokument erstellen. Der grundlegende Algorithmus zum Erstellen einer Tabelle ist wie folgt:

1. Starten Sie die Tabelle mit [StartTable](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/start_table/)
2. Fügen Sie mit [InsertCell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_cell/) eine Zelle zur Tabelle hinzu – dadurch beginnt automatisch eine neue Zeile
3. Optional können Sie die [CellFormat](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/cell_format/)-Eigenschaft verwenden, um die Zellformatierung anzugeben
4. Fügen Sie den Zellinhalt mit den entsprechenden **DocumentBuilder**-Methoden wie [Writeln](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/writeln/#str), [InsertImage](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/#str) und anderen ein
5. Wiederholen Sie die Schritte 2–4, bis die Reihe vollständig ist
6. Rufen Sie [EndRow](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_row/) auf, um die aktuelle Zeile zu beenden
7. Optional können Sie die [RowFormat](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/row_format/)-Eigenschaft verwenden, um die Zeilenformatierung anzugeben
8. Wiederholen Sie die Schritte 2–7, bis die Tabelle vollständig ist
9. Rufen Sie [EndTable](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_table/) auf, um den Aufbau der Tabelle abzuschließen

{{% alert color="primary" %}}

Wichtige Details:

- [StartTable](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/start_table/) kann auch innerhalb einer Zelle aufgerufen werden. In diesem Fall startet es die Erstellung einer verschachtelten Tabelle innerhalb der Zelle.
- Nach dem Aufruf von [InsertCell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_cell/) wird eine neue Zelle erstellt und alle Inhalte, die Sie mit anderen Methoden der [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/)-Klasse hinzufügen, werden der aktuellen Zelle hinzugefügt. Um eine neue Zelle in derselben Zeile zu erstellen, rufen Sie **InsertCell** erneut auf.
- Wenn **InsertCell** unmittelbar nach [EndRow](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_row/) und dem Ende einer Zeile aufgerufen wird, wird die Tabelle in einer neuen Zeile fortgesetzt.
- Die [EndTable](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_table/)-Methode zum Beenden der Tabelle sollte nur einmal nach dem Aufruf von **EndRow** aufgerufen werden. Durch den Aufruf von **EndTable** wird der Cursor von der aktuellen Zelle an die Position unmittelbar nach der Tabelle verschoben.

{{% /alert %}}

Der Prozess der Tabellenerstellung ist im folgenden Bild deutlich zu erkennen:

<img src="/words/python-net/create-a-table/creating-table-process.jpg" alt="Erstellungstabellenprozess" style="zoom:50%;" />

Das folgende Codebeispiel zeigt, wie Sie mit **DocumentBuilder** eine einfache Tabelle mit Standardformatierung erstellen:

{{< gist "aspose-words-gists" "daa15d229a9e8b9015aa87ff6893f387" "create-simple-table.py" >}}

Das folgende Codebeispiel zeigt, wie Sie mit DocumentBuilder eine formatierte Tabelle erstellen:

{{< gist "aspose-words-gists" "daa15d229a9e8b9015aa87ff6893f387" "formatted-table.py" >}}

Das folgende Codebeispiel zeigt, wie Sie mit DocumentBuilder eine verschachtelte Tabelle einfügen:

{{< gist "aspose-words-gists" "daa15d229a9e8b9015aa87ff6893f387" "nested-table.py" >}}

## Erstellen Sie eine Tabelle über DOM (Document Object Model)

Sie können Tabellen direkt in das DOM einfügen, indem Sie an einer bestimmten Position einen neuen [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/)-Knoten hinzufügen.

Bitte beachten Sie, dass unmittelbar nach der Erstellung des Tabellenknotens die Tabelle selbst vollständig leer ist, also noch keine Zeilen und Zellen enthält. Um Zeilen und Zellen in eine Tabelle einzufügen, fügen Sie die entsprechenden untergeordneten [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/)- und [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/)-Knoten zum DOM hinzu.

{{% alert color="primary" %}}

Bei dieser Methode zum Erstellen einer Tabelle werden dieselben Tabellenstandardwerte verwendet wie bei der Verwendung von **DocumentBuilder**.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie Sie eine neue Tabelle von Grund auf erstellen, indem Sie der Dokumentstruktur die entsprechenden untergeordneten Knoten hinzufügen:

{{< gist "aspose-words-gists" "daa15d229a9e8b9015aa87ff6893f387" "insert-table-directly.py" >}}

##Create eine Tabelle aus HTML

Aspose.Words unterstützt das Einfügen von Inhalten aus einer HTML-Quelle in ein Dokument mithilfe der [InsertHtml](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_html/)-Methode. Die Eingabe kann eine vollständige HTML-Seite oder nur ein Teilausschnitt sein.

Mit der **InsertHtml**-Methode können Benutzer Tabellen über Tabellen-Tags wie `<table>`, `<tr>`, `<td>` in das Dokument einfügen.

Das folgende Codebeispiel zeigt, wie Sie aus einer Zeichenfolge mit HTML-Tags eine Tabelle in ein Dokument einfügen:

{{< gist "aspose-words-gists" "daa15d229a9e8b9015aa87ff6893f387" "insert-table-from-html.py" >}}

## Fügen Sie eine Kopie einer vorhandenen Tabelle ein

Es kommt häufig vor, dass Sie eine Tabelle basierend auf einer bereits vorhandenen Tabelle in einem Dokument erstellen müssen. Der einfachste Weg, eine Tabelle zu duplizieren und dabei die gesamte Formatierung beizubehalten, besteht darin, den Tabellenknoten mithilfe der [Clone](https://reference.aspose.com/words/python-net/aspose.words/node/clone/)-Methode zu klonen.

Die gleiche Technik kann verwendet werden, um einer Tabelle Kopien einer vorhandenen Zeile oder Zelle hinzuzufügen.

Das folgende Codebeispiel zeigt, wie eine Tabelle mithilfe von Knotenkonstruktoren dupliziert wird:

{{< gist "aspose-words-gists" "daa15d229a9e8b9015aa87ff6893f387" "clone-complete-table.py" >}}

{{% alert color="primary" %}}

Sie können die Beispieldatei dieses Beispiels von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx) herunterladen.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie Sie die letzte Zeile einer Tabelle klonen und an die Tabelle anhängen:

{{< gist "aspose-words-gists" "daa15d229a9e8b9015aa87ff6893f387" "clone-last-row.py" >}}

{{% alert color="primary" %}}

Sie können die Beispieldatei dieses Beispiels von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx) herunterladen.

{{% /alert %}}

Wenn Sie Tabellen in einem Dokument erstellen möchten, die mit jedem Datensatz aus Ihrer Datenquelle dynamisch wachsen, ist die oben beschriebene Methode nicht zu empfehlen. Stattdessen lässt sich die gewünschte Ausgabe einfacher erreichen, indem Mail merge mit Regionen verwendet wird.

## Vergleichen Sie Möglichkeiten zum Erstellen einer Tabelle

Aspose.Words bietet mehrere Methoden zum Erstellen neuer Tabellen in einem Dokument. Jede Methode hat ihre eigenen Vor- und Nachteile, sodass die Wahl der zu verwendenden Methode häufig von der jeweiligen Situation abhängt.

Schauen wir uns diese Möglichkeiten zum Erstellen von Tabellen genauer an und vergleichen ihre Vor- und Nachteile:

|  Methode | Vorteile |  Nachteile |
|  :-  |  :-  |  :-  |
| Über DocumentBuilder | Die Standardmethode zum Einfügen von Tabellen und anderen Dokumentinhalten | Manchmal ist es schwierig, mit derselben Builder-Instanz viele verschiedene Tabellen gleichzeitig zu erstellen |
| Über DOM |  Passt besser zu umgebendem Code, der Knoten direkt in das DOM erstellt und einfügt, ohne ein **DocumentBuilder** zu verwenden | Die Tabelle wird "leer" erstellt: Bevor Sie die meisten Vorgänge ausführen, müssen Sie [EnsureMinimum](https://reference.aspose.com/words/python-net/aspose.words.tables/table/ensure_minimum/) aufrufen, um fehlende untergeordnete Knoten zu erstellen |
| Aus HTML | Kann eine neue Tabelle aus einer HTML-Quelle mit Tags wie `<table>`, `<tr>`, `<td>` erstellen | Nicht alle möglichen Microsoft Word-Tabellenformate können auf HTML angewendet werden |
| Klonen einer vorhandenen Tabelle | Sie können eine Kopie einer vorhandenen Tabelle erstellen und dabei alle Zeilen- und Zellenformatierungen beibehalten | Die entsprechenden untergeordneten Knoten müssen entfernt werden, bevor die Tabelle verwendet werden kann |
