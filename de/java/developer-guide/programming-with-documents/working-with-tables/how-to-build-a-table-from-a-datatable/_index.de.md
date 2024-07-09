---
title: Wie man eine Tabelle aus einer `DataTable` in Java
second_title: Aspose.Words für Java
articleTitle: Eine Tabelle aus einer `DataTable`
linktitle: Eine Tabelle aus einer `DataTable`
description: "Beispiel für die Befüllung der Dokumententabelle aus der externen Datenbank Java."
type: docs
weight: 130
url: /de/java/how-to-build-a-table-from-a-datatable/
---

Oft wird Ihre Anwendung Daten aus einer Datenbank ziehen und in Form einer **DataTable**. Sie können diese Daten einfach als neue Tabelle in Ihr Dokument einfügen und schnell Formatierung auf die gesamte Tabelle anwenden.

{{% alert color="primary" %}}

Beachten Sie, dass die bevorzugte Art der Eingabe von Daten aus einem **DataTable** in eine Dokumententabelle, [Mail Merge mit den Regionen](/words/java/mail-merge-and-reporting/#aboutmailmerge-mailmergewithregionsexplained). Die in diesem Artikel vorgestellte Technik wird nur vorgeschlagen, wenn Sie nicht in der Lage sind, eine geeignete Vorlage zu erstellen, um Daten mit anderen Worten zu verschmelzen, wenn Sie alles programmtechnisch zu passieren benötigen.

{{% /alert %}}

Verwendung Aspose.Words, Sie können leicht Daten aus einer Datenbank abrufen und als Tabelle speichern:

ANHANG Neues erstellen [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) Objekt auf Ihrem [Document](https://reference.aspose.com/words/java/com.aspose.words/document/).
ANHANG Starten Sie eine neue Tabelle mit [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/).
ANHANG Wenn wir die Namen jeder der Spalten aus unserer **DataTable** als Headerzeile dann durch jede Datenspalte iterieren und die Spaltennamen in eine Zeile in der Tabelle schreiben.
ANHANG Durch jedes **DataRow** in der **DataTable**:
   1. Durch jedes Objekt in der **DataRow**.
   1. Legen Sie das Objekt in das Dokument ein [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/). Das verwendete Verfahren ist abhängig von der Art des eingesetzten Objekts z. [DocumentBuilder.writeln()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln()) für Text und [DocumentBuilder.insertImage()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage(byte[])) für ein Byte-Array, das ein Bild darstellt.
   1. Am Ende der Verarbeitung der Datenzeile wird auch die durch die [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder) Verwendung [DocumentBuilder.endRow()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow).
ANHANG Einmal alle Zeilen aus dem **DataTable** werden bearbeitet, um die Tabelle zu beenden [DocumentBuilder.endTable()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable).
ANHANG Schließlich können wir den gewünschten Tischstil mit einer der entsprechenden Tischeigenschaften wie [Table.getStyleIdentifier()](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getStyleIdentifier) die Formatierung automatisch auf die gesamte Tabelle anzuwenden.
   Die folgenden Daten in unserem **DataTable** wird in diesem Beispiel verwendet:

![build-a-table-from-a-datatable-aspose-words-java-1](/words/java/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-1.png)

Das folgende Codebeispiel zeigt, wie man den obigen Algorithmus in Aspose.Words:

{{< gist "aspose-words-gists" "b5330afb035e842063be7ce93cefe219" "import-table-from-data-table.java" >}}

Die Methode kann dann einfach mit Ihrem aufgerufen werden **DocumentBuilder** und Daten.

Das folgende Codebeispiel zeigt, wie die Daten aus einem `DataTable` und in eine neue Tabelle in das Dokument einfügen:

{{< gist "aspose-words-gists" "b5330afb035e842063be7ce93cefe219" "build-table-from-data-table.java" >}}

Die im folgenden Bild dargestellte Tabelle wird durch den obigen Code erstellt.

![build-a-table-from-a-datatable-aspose-words-java-2](/words/java/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-2.png)
