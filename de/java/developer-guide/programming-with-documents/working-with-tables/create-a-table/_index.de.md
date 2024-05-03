---
title: Wie man eine Tabelle in Java
second_title: Aspose.Words für Java
articleTitle: Eine Tabelle erstellen
linktitle: Eine Tabelle erstellen
description: "Verschiedene Möglichkeiten, Tabellen in Ihrem Dokument zu erstellen Java."
type: docs
weight: 20
url: /de/java/create-a-table/
---

Aspose.Words ermöglicht es Benutzern, Tabellen in einem Dokument von Grund auf zu erstellen und bietet mehrere verschiedene Methoden dafür. Dieser Artikel enthält Details, wie Sie formatierte Tabellen mit jeder Methode zu Ihrem Dokument hinzufügen, sowie einen Vergleich jeder Methode am Ende des Artikels.

## Standard Tisch Stile

Die neu erstellte Tabelle enthält Standardwerte, die den in Microsoft Word:

| Tabelle Immobilien | Standard Aspose.Words |
|  :-  |  :-  |
| `Border Style` |  `Single`  |
| `Border Width` | `1/2 pt` |
| Grenzfarbe |  `Black`  |
| `Left and Right Padding` | `5.4 pts` |
| `AutoFit Mode` | `AutoFit to Window` |
| `Allow AutoFit` |  `True`  |
{{% alert color="primary" %}}

Eine Tabelle kann inline sein, wenn sie fest positioniert ist, oder schwimmen, wenn sie irgendwo auf der Seite positioniert werden kann. Standardmäßig, Aspose.Words erstellt immer Inline-Tabellen.

{{% /alert %}}

## Erstellen Sie eine Tabelle mit DocumentBuilder

In Aspose.Words, Benutzer können eine Tabelle in einem Dokument mit dem [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/). Der Grundalgorithmus zur Erstellung einer Tabelle ist wie folgt:

ANHANG Starten Sie die Tabelle mit [StartTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable)
2. Hinzufügen einer Zelle zur Tabelle mit [InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell) – dies startet automatisch eine neue Zeile
3. Optional verwenden Sie die [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) Eigenschaft zur Angabe der Zellformatierung
4. Fügen Sie den Zellinhalt mit der entsprechenden **DocumentBuilder** Methoden wie [Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln), [InsertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte), und andere
5. Wiederholen Sie die Schritte 2-4, bis die Zeile vollständig ist
6. Anruf [EndRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) um die aktuelle Zeile zu beenden
7. Optional verwenden Sie die [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) Eigenschaft zur Angabe der Zeilenformatierung
8. Wiederholen Sie die Schritte 2-7, bis die Tabelle vollständig ist
9. Anruf [EndTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) um den Tisch zu fertigen

{{% alert color="primary" %}}

Wichtige Details:

- Ja. [StartTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable) kann auch innerhalb einer Zelle aufgerufen werden, wobei sie die Erstellung eines geschachtelten Tisches innerhalb der Zelle beginnt.
- Nach dem Anruf [InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell), eine neue Zelle erstellt wird, und alle Inhalte, die Sie mit anderen Methoden der [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) die Klasse wird der aktuellen Zelle hinzugefügt. Um eine neue Zelle in derselben Zeile zu erstellen, rufen Sie an **InsertCell** wieder.
- Wenn **InsertCell** wird sofort nachgeschaltet [EndRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) und das Ende einer Reihe, wird die Tabelle auf einer neuen Reihe fortsetzen.
- Die [EndTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) Verfahren zum Ende der Tabelle sollte nur einmal nach dem Aufruf aufgerufen werden **EndRow**. Anruf **EndTable** bewegt den Cursor von der aktuellen Zelle in die Position unmittelbar nach der Tabelle.

{{% /alert %}}

Der Prozess der Erstellung einer Tabelle ist im folgenden Bild deutlich zu erkennen:

![creating-table-process](/words/java/create-a-table/creating-table-process.jpg)

Das folgende Codebeispiel zeigt, wie eine einfache Tabelle mit **DocumentBuilder** mit Standardformatierung:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "create-simple-table.java" >}}

Das folgende Codebeispiel zeigt, wie eine formatierte Tabelle mit DocumentBuilder erstellt werden kann:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "formatted-table.java" >}}

Das folgende Codebeispiel zeigt, wie eine geschachtelte Tabelle mit DocumentBuilder eingefügt werden kann:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "nested-table.java" >}}

## Eine Tabelle erstellen DOM (Document Object Model)

Sie können Tabellen direkt in die DOM durch Hinzufügen eines neuen [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) Knoten an einer bestimmten Position.

Bitte beachten Sie, dass unmittelbar nach der Erstellung des Tabellenknotens die Tabelle selbst vollständig leer ist, d.h. sie enthält noch keine Zeilen und Zellen. Um Zeilen und Zellen in eine Tabelle einzufügen, fügen Sie die entsprechende [Row](https://reference.aspose.com/words/java/com.aspose.words/run/) und [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) Kinderknoten zu den DOM.

{{% alert color="primary" %}}

Diese Methode der Erstellung einer Tabelle verwendet die gleichen Tabelleneinstellungen wie bei der Verwendung der **DocumentBuilder**.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie eine neue Tabelle von Grund auf erstellt werden kann, indem die entsprechenden Child-Nodes in den Dokumentenbaum eingefügt werden:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "insert-table-directly.java" >}}

## Eine Tabelle aus HTML erstellen

Aspose.Words unterstützt das Einfügen von Inhalten in ein Dokument aus einer HTML-Quelle mithilfe der [InsertHtml](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHtml-java.lang.String) Methode. Die Eingabe kann eine volle HTML-Seite oder nur ein Teil-Snippet sein.

Verwenden Sie diese **InsertHtml** Verfahren, Benutzer können Tabellen in das Dokument über Tabellen-Tags wie `<table>`, `<tr>`, `<td>`.

Das folgende Codebeispiel zeigt, wie eine Tabelle in ein Dokument aus einem String mit HTML-Tags eingefügt werden kann:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "insert-table-from-html.java" >}}

## Fügen Sie ein Exemplar einer vorhandenen Tabelle ein

Es gibt oft Zeiten, in denen Sie eine Tabelle basierend auf einer bereits vorhandenen Tabelle in einem Dokument erstellen müssen. Der einfachste Weg, eine Tabelle unter Beibehaltung aller Formatierung zu duplizieren ist, den Tabellenknoten mit dem [deepClone](https://reference.aspose.com/words/java/com.aspose.words/node/#deepClone-boolean) Methode.

Die gleiche Technik kann verwendet werden, um Kopien einer vorhandenen Zeile oder Zelle zu einer Tabelle hinzuzufügen.

Das folgende Codebeispiel zeigt, wie man eine Tabelle mit Knotenkonstruktoren dupliziert:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "clone-complete-table.java" >}}

{{% alert color="primary" %}}

Sie können die Beispieldatei dieses Beispiels herunterladen [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie man die letzte Zeile einer Tabelle klont und an die Tabelle angibt:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "clone-last-row.java" >}}

{{% alert color="primary" %}}

Sie können die Beispieldatei dieses Beispiels herunterladen [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

Wenn Sie die Erstellung von Tabellen in einem Dokument betrachten, die dynamisch mit jedem Datensatz aus Ihrer Datenquelle wachsen, wird die obige Methode nicht empfohlen. Vielmehr wird die gewünschte Leistung durch die Verwendung leichter erreicht Mail merge mit Regionen. Sie können mehr über diese Technik in der [Mail Merge mit den Regionen](/words/java/types-of-mail-merge-operations/) Abschnitt.

## Vergleichen Sie Wege, eine Tabelle zu erstellen

Aspose.Words bietet mehrere Methoden, um neue Tabellen in einem Dokument zu erstellen. Jedes Verfahren hat eigene Vor- und Nachteile, deren Wahl oft von der konkreten Situation abhängt.

Lassen Sie uns einen genaueren Blick auf diese Weise der Erstellung von Tabellen und vergleichen ihre Vor- und Nachteile:

|  Methode | Vorteile |  Nachteile |
|  :-  |  :-  |  :-  |
| Via `DocumentBuilder` | Das Standardverfahren zum Einfügen von Tabellen und anderen Dokumenteninhalten | Manchmal schwierig, viele Arten von Tischen gleichzeitig mit der gleichen Builder-Instanz zu schaffen |
| Via DOM |  Passt besser mit Umgebungscode, der Knoten direkt in den DOM ohne Verwendung von **DocumentBuilder** | Die Tabelle wird "leer" erstellt: Bevor Sie die meisten Operationen durchführen, müssen Sie anrufen [EnsureMinimum](https://reference.aspose.com/words/java/com.aspose.words/table/#ensureMinimum) um fehlende Kinderknoten zu erstellen |
| Von HTML | Kann eine neue Tabelle aus HTML-Quelle mit Tags wie erstellen `<table>`, `<tr>`, `<td>` | Nicht alle möglich Microsoft Word Tabellenformate können auf HTML angewendet werden |
| Schließung einer bestehenden Tabelle | Sie können eine Kopie einer vorhandenen Tabelle erstellen, während Sie alle Zeilen- und Zellformatierung beibehalten | Die entsprechenden Kinderknoten müssen entfernt werden, bevor die Tabelle gebrauchsfertig ist |
