---
title: So erstellen Sie eine Tabelle aus einer `DataTable` in Java
second_title: Aspose.Words für Java
articleTitle: Erstellen Sie eine Tabelle aus einer `DataTable`
linktitle: Erstellen Sie eine Tabelle aus einer `DataTable`
description: "Beispiel für das Ausfüllen einer Dokumententabelle aus einer externen Datenbank mit Java."
type: docs
weight: 130
url: /de/java/how-to-build-a-table-from-a-datatable/
timestamp: 2024-01-27-14-07-04
---

Oft ruft Ihre Anwendung Daten aus einer Datenbank ab und speichert sie in Form einer **DataTable**. Möglicherweise möchten Sie diese Daten einfach als neue Tabelle in Ihr Dokument einfügen und die Formatierung schnell auf die gesamte Tabelle anwenden.

{{% alert color="primary" %}}

Beachten Sie, dass die bevorzugte Methode zum Einfügen von Daten aus einer **DataTable** in eine Dokumententabelle die Verwendung von ist [Mail Merge mit Regionen](/words/java/mail-merge-and-reporting/#aboutmailmerge-mailmergewithregionsexplained). Die in diesem Artikel vorgestellte Technik wird nur empfohlen, wenn Sie zuvor keine geeignete Vorlage zum Zusammenführen von Daten erstellen können, dh wenn alles programmgesteuert erfolgen soll.

{{% /alert %}}

Mit Aspose.Words können Sie einfach Daten aus einer Datenbank abrufen und als Tabelle speichern:

1. Erstellen Sie ein neues [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) -Objekt auf Ihrem [Document](https://reference.aspose.com/words/java/com.aspose.words/document/).
1. Beginnen Sie eine neue Tabelle mit [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/).
1. Wenn wir die Namen jeder Spalte aus unserer **DataTable** als Kopfzeile einfügen möchten, durchlaufen Sie jede Datenspalte und schreiben Sie die Spaltennamen in eine Zeile in der Tabelle.
1. Durchlaufen Sie jede **DataRow** in der **DataTable**:
   1. Durchlaufen Sie jedes Objekt in **DataRow**.
   1. Fügen Sie das Objekt mit [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) in das Dokument ein. Die verwendete Methode hängt vom Typ des einzufügenden Objekts ab, z. B. [DocumentBuilder.writeln()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln()) für Text und [DocumentBuilder.insertImage()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage(byte[])) für ein Byte-Array, das ein Bild darstellt.
   1. Beenden Sie am Ende der Verarbeitung der Datenzeile auch die Zeile, die von [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder) mit [DocumentBuilder.endRow()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) erstellt wird.
1. Sobald alle Zeilen aus **DataTable** verarbeitet wurden, beenden Sie die Tabelle durch Aufrufen von [DocumentBuilder.endTable()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable).
1. Schließlich können wir den gewünschten Tabellenstil mithilfe einer der entsprechenden Tabelleneigenschaften wie [Table.getStyleIdentifier()](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getStyleIdentifier) festlegen, um die Formatierung automatisch auf die gesamte Tabelle anzuwenden.
   Die folgenden Daten in unserem **DataTable** werden in diesem Beispiel verwendet:

![build-a-table-from-a-datatable-aspose-words-java-1](/words/java/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-1.png)

Das folgende Codebeispiel zeigt, wie der obige Algorithmus in Aspose.Words ausgeführt wird:

{{< gist "aspose-words-gists" "b5330afb035e842063be7ce93cefe219" "import-table-from-data-table.java" >}}

Die Methode kann dann einfach mit Ihren **DocumentBuilder** und Daten aufgerufen werden.

Das folgende Codebeispiel zeigt, wie Sie die Daten aus einer `DataTable` importieren und in eine neue Tabelle im Dokument einfügen:

{{< gist "aspose-words-gists" "b5330afb035e842063be7ce93cefe219" "build-table-from-data-table.java" >}}

Die in der Abbildung unten gezeigte Tabelle wird durch Ausführen des obigen Codes erstellt.

![build-a-table-from-a-datatable-aspose-words-java-2](/words/java/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-2.png)
