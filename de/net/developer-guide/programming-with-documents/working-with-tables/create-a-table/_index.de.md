---
title: So erstellen Sie eine Tabelle in C#
second_title: Aspose.Words für .NET
articleTitle: Erstellen Sie eine Tabelle
linktitle: Erstellen Sie eine Tabelle
description: "Eine Anleitung zum Erstellen einer Tabelle in C# auf verschiedene Arten. Erstellen Sie eine Tabelle in C# für Ihr Dokument."
type: docs
weight: 20
url: /de/net/create-a-table/
---

Aspose.Words ermöglicht Benutzern das Erstellen von Tabellen in einem Dokument von Grund auf und bietet hierfür verschiedene Methoden. Dieser Artikel enthält Einzelheiten zum Hinzufügen formatierter Tabellen zu Ihrem Dokument mit den einzelnen Methoden sowie einen Vergleich der einzelnen Methoden am Ende des Artikels.

## Standardtabellenstile

Die neu erstellte Tabelle erhält Standardwerte, die denen in Microsoft Word ähneln:

|  Tabelleneigenschaft |  Standard in Aspose.Words |
|  :---------------------  |  :----------------------  |
|  `Border Style`            |  `Single`  |
|  `Border Width`            |  `1/2 pt`                   |
|  `Border Color`            |  `Black`  |
|  `Left and Right Padding`  |  `5.4 pts`                  |
|  `AutoFit Mode`            |  `AutoFit to Window`        |
|  `Allow AutoFit`           |  `True`  |

{{% alert color="primary" %}}

Eine Tabelle kann inline sein, wenn sie eng positioniert ist, oder schwebend, wenn sie an einer beliebigen Stelle auf der Seite positioniert werden kann. Standardmäßig erstellt Aspose.Words immer Inline-Tabellen.

{{% /alert %}}

## Erstellen Sie eine Tabelle mit DocumentBuilder

In Aspose.Words können Benutzer mithilfe von [DocumentBuilder](https://reference.aspose.com/words/de/net/aspose.words/documentbuilder/) eine Tabelle in einem Dokument erstellen. Der grundlegende Algorithmus zum Erstellen einer Tabelle ist wie folgt:

1. Starten Sie die Tabelle mit [StartTable](https://reference.aspose.com/words/de/net/aspose.words/documentbuilder/starttable/)
2. Fügen Sie mit [InsertCell](https://reference.aspose.com/words/de/net/aspose.words/documentbuilder/insertcell/) eine Zelle zur Tabelle hinzu – dadurch beginnt automatisch eine neue Zeile
3. Optional können Sie die [CellFormat](https://reference.aspose.com/words/de/net/aspose.words/documentbuilder/cellformat/)-Eigenschaft verwenden, um die Zellformatierung anzugeben
4. Fügen Sie den Zellinhalt mit den entsprechenden **DocumentBuilder**-Methoden wie [Writeln](https://reference.aspose.com/words/de/net/aspose.words/documentbuilder/writeln/), [InsertImage](https://reference.aspose.com/words/de/net/aspose.words/documentbuilder/insertimage/) und anderen ein
5. Wiederholen Sie die Schritte 2–4, bis die Reihe vollständig ist
6. Rufen Sie [EndRow](https://reference.aspose.com/words/de/net/aspose.words/documentbuilder/endrow/) auf, um die aktuelle Zeile zu beenden
7. Optional können Sie die [RowFormat](https://reference.aspose.com/words/de/net/aspose.words/documentbuilder/rowformat/)-Eigenschaft verwenden, um die Zeilenformatierung anzugeben
8. Wiederholen Sie die Schritte 2–7, bis die Tabelle vollständig ist
9. Rufen Sie [EndTable](https://reference.aspose.com/words/de/net/aspose.words/documentbuilder/endtable/) auf, um die Erstellung der Tabelle abzuschließen

{{% alert color="primary" %}}

Wichtige Details:

* [StartTable](https://reference.aspose.com/words/de/net/aspose.words/documentbuilder/starttable/) kann auch innerhalb einer Zelle aufgerufen werden. In diesem Fall startet es die Erstellung einer verschachtelten Tabelle innerhalb der Zelle.
* Nach dem Aufruf von [InsertCell](https://reference.aspose.com/words/de/net/aspose.words/documentbuilder/insertcell/) wird eine neue Zelle erstellt und alle Inhalte, die Sie mit anderen Methoden der [DocumentBuilder](https://reference.aspose.com/words/de/net/aspose.words/documentbuilder/)-Klasse hinzufügen, werden der aktuellen Zelle hinzugefügt. Um eine neue Zelle in derselben Zeile zu erstellen, rufen Sie **InsertCell** erneut auf.
* Wenn **InsertCell** unmittelbar nach [EndRow](https://reference.aspose.com/words/de/net/aspose.words/documentbuilder/endrow/) und dem Ende einer Zeile aufgerufen wird, wird die Tabelle in einer neuen Zeile fortgesetzt.
* Die [EndTable](https://reference.aspose.com/words/de/net/aspose.words/documentbuilder/endtable/)-Methode zum Beenden der Tabelle sollte nur einmal nach dem Aufruf von **EndRow** aufgerufen werden. Durch den Aufruf von **EndTable** wird der Cursor von der aktuellen Zelle an die Position unmittelbar nach der Tabelle verschoben.

{{% /alert %}}

Der Prozess der Tabellenerstellung ist im folgenden Bild deutlich zu erkennen:

![creating-table-process](/words/net/create-a-table/creating-table-process.jpg)

Das folgende Codebeispiel zeigt, wie Sie mit **DocumentBuilder** eine einfache Tabelle mit Standardformatierung erstellen:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "create-simple-table.cs" >}}

Das folgende Codebeispiel zeigt, wie Sie mit DocumentBuilder eine formatierte Tabelle erstellen:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "formatted-table.cs" >}}

Das folgende Codebeispiel zeigt, wie Sie mit DocumentBuilder eine verschachtelte Tabelle einfügen:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "nested-table.cs" >}}

## Erstellen Sie eine Tabelle über DOM (Document Object Model)

Sie können Tabellen direkt in das DOM einfügen, indem Sie an einer bestimmten Position einen neuen [Table](https://reference.aspose.com/words/de/net/aspose.words.tables/table/)-Knoten hinzufügen.

Bitte beachten Sie, dass unmittelbar nach der Erstellung des Tabellenknotens die Tabelle selbst vollständig leer ist, also noch keine Zeilen und Zellen enthält. Um Zeilen und Zellen in eine Tabelle einzufügen, fügen Sie die entsprechenden untergeordneten [Row](https://reference.aspose.com/words/de/net/aspose.words.tables/row/)- und [Cell](https://reference.aspose.com/words/de/net/aspose.words.tables/cell/)-Knoten zum DOM hinzu.

{{% alert color="primary" %}}

Bei dieser Methode zum Erstellen einer Tabelle werden dieselben Tabellenstandardwerte verwendet wie bei der Verwendung von **DocumentBuilder**.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie Sie eine neue Tabelle von Grund auf erstellen, indem Sie der Dokumentstruktur die entsprechenden untergeordneten Knoten hinzufügen:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "insert-table-directly.cs" >}}

## Erstellen Sie eine Tabelle aus HTML

Aspose.Words unterstützt das Einfügen von Inhalten aus einer HTML-Quelle in ein Dokument mithilfe der [InsertHtml](https://reference.aspose.com/words/de/net/aspose.words/documentbuilder/inserthtml/)-Methode. Die Eingabe kann eine vollständige HTML-Seite oder nur ein Teilausschnitt sein.

Mit der **InsertHtml**-Methode können Benutzer Tabellen über Tabellen-Tags wie `<table>`, `<tr>`, `<td>` in das Dokument einfügen.

Das folgende Codebeispiel zeigt, wie Sie aus einer Zeichenfolge mit HTML-Tags eine Tabelle in ein Dokument einfügen:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "insert-table-from-html.cs" >}}

## Fügen Sie eine Kopie einer vorhandenen Tabelle ein

Es kommt häufig vor, dass Sie eine Tabelle basierend auf einer bereits vorhandenen Tabelle in einem Dokument erstellen müssen. Der einfachste Weg, eine Tabelle zu duplizieren und dabei die gesamte Formatierung beizubehalten, besteht darin, den Tabellenknoten mithilfe der [Clone](https://reference.aspose.com/words/de/net/aspose.words/node/clone/)-Methode zu klonen.

Die gleiche Technik kann verwendet werden, um einer Tabelle Kopien einer vorhandenen Zeile oder Zelle hinzuzufügen.

Das folgende Codebeispiel zeigt, wie eine Tabelle mithilfe von Knotenkonstruktoren dupliziert wird:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "clone-complete-table.cs" >}}

{{% alert color="primary" %}}

Sie können die Beispieldatei dieses Beispiels von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx) herunterladen.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie Sie die letzte Zeile einer Tabelle klonen und an die Tabelle anhängen:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "clone-last-row.cs" >}}

{{% alert color="primary" %}}

Sie können die Beispieldatei dieses Beispiels von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx) herunterladen.

{{% /alert %}}

Wenn Sie Tabellen in einem Dokument erstellen möchten, die mit jedem Datensatz aus Ihrer Datenquelle dynamisch wachsen, ist die oben beschriebene Methode nicht zu empfehlen. Stattdessen lässt sich die gewünschte Ausgabe einfacher erreichen, indem Mail merge mit Regionen verwendet wird. Weitere Informationen zu dieser Technik finden Sie im Abschnitt [Mail Merge mit Regionen](/words/net/types-of-mail-merge-operations/#mail-merge-with-regions).

## Vergleichen Sie Möglichkeiten zum Erstellen einer Tabelle

Aspose.Words bietet mehrere Methoden zum Erstellen neuer Tabellen in einem Dokument. Jede Methode hat ihre eigenen Vor- und Nachteile, sodass die Wahl der zu verwendenden Methode häufig von der jeweiligen Situation abhängt.

Schauen wir uns diese Möglichkeiten zum Erstellen von Tabellen genauer an und vergleichen ihre Vor- und Nachteile:

|  Methode | Vorteile |  Nachteile |
|  :-  |  :-  |  :-  |
| Über `DocumentBuilder` | Die Standardmethode zum Einfügen von Tabellen und anderen Dokumentinhalten | Manchmal ist es schwierig, mit derselben Builder-Instanz viele verschiedene Tabellen gleichzeitig zu erstellen |
| Über DOM |  Passt besser zu umgebendem Code, der Knoten direkt in DOM erstellt und einfügt, ohne einen **DocumentBuilder** zu verwenden | Die Tabelle wird "leer" erstellt: Bevor Sie die meisten Vorgänge ausführen, müssen Sie [EnsureMinimum](https://reference.aspose.com/words/de/net/aspose.words.tables/table/ensureminimum/) aufrufen, um fehlende untergeordnete Knoten zu erstellen |
| Aus HTML | Kann eine neue Tabelle aus einer HTML-Quelle mit Tags wie `<table>`, `<tr>`, `<td>` erstellen | Nicht alle möglichen Microsoft Word-Tabellenformate können auf HTML angewendet werden |
| Klonen einer vorhandenen Tabelle | Sie können eine Kopie einer vorhandenen Tabelle erstellen und dabei alle Zeilen- und Zellenformatierungen beibehalten | Die entsprechenden untergeordneten Knoten müssen entfernt werden, bevor die Tabelle verwendet werden kann |