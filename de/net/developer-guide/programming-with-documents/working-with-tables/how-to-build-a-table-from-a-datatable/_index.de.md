---
title: So erstellen Sie eine Tabelle aus einem `DataTable` in C#
second_title: Aspose.Words für .NET
articleTitle: Erstellen Sie eine Tabelle aus einem `DataTable`
linktitle: Erstellen Sie eine Tabelle aus einem `DataTable`
description: "Beispiel für das Füllen einer Dokumenttabelle aus einer externen Datenbank mit C#."
type: docs
weight: 120
url: /de/net/how-to-build-a-table-from-a-datatable/
---

Oftmals ruft Ihre Anwendung Daten aus einer Datenbank ab und speichert sie in Form einer **DataTable**-Datei. Sie können diese Daten ganz einfach als neue Tabelle in Ihr Dokument einfügen und die Formatierung schnell auf die gesamte Tabelle anwenden.

{{% alert color="primary" %}}

Beachten Sie, dass die bevorzugte Methode zum Einfügen von Daten aus einem **DataTable** in eine Dokumenttabelle die Verwendung von [Mail Merge mit Regionen](https://docs.aspose.com/words/net/types-of-mail-merge-operations/#mail-merge-with-regions) ist. Die in diesem Artikel vorgestellte Technik wird nur empfohlen, wenn Sie nicht in der Lage sind, vorab eine geeignete Vorlage zum Zusammenführen von Daten zu erstellen, mit anderen Worten, wenn alles programmgesteuert erfolgen soll.

{{% /alert %}}

Mit Aspose.Words können Sie ganz einfach Daten aus einer Datenbank abrufen und als Tabelle speichern:

1. Erstellen Sie ein neues **DocumentBuilder**-Objekt auf Ihrem **Document**.
1. Starten Sie eine neue Tabelle mit **DocumentBuilder**.
1. Wenn wir die Namen aller Spalten aus unserem **DataTable** als Kopfzeile einfügen möchten, durchlaufen wir jede Datenspalte und schreiben die Spaltennamen in eine Zeile in der Tabelle.
1. Durchlaufen Sie jedes **DataRow** im **DataTable**:
   1. Durchlaufen Sie jedes Objekt im **DataRow**.
   1. Fügen Sie das Objekt mit **DocumentBuilder** in das Dokument ein. Die verwendete Methode hängt vom Typ des einzufügenden Objekts ab, z. B. **DocumentBuilder.Writeln** für Text und **DocumentBuilder.InsertImage** für ein Byte-Array, das ein Bild darstellt.
   1. Am Ende der Verarbeitung des **DataRow** beenden Sie auch die vom **DocumentBuilder** erstellte Zeile mithilfe von **DocumentBuilder.EndRow**.
1. Sobald alle Zeilen aus dem **DataTable** verarbeitet wurden, beenden Sie die Tabelle durch den Aufruf von **DocumentBuilder.EndTable**.
1. Schließlich können wir den gewünschten Tabellenstil mithilfe einer der entsprechenden Tabelleneigenschaften wie **Table.StyleIdentifier** festlegen, um die Formatierung automatisch auf die gesamte Tabelle anzuwenden.

Die **ImportTableFromDataTable**-Methode akzeptiert ein **DocumentBuilder**-Objekt, das **DataTable** mit den Daten und ein Flag, das angibt, ob die Spaltenüberschriften aus dem **DataTable** oben in der Tabelle enthalten sind. Diese Methode erstellt aus diesen Parametern eine Tabelle unter Verwendung der aktuellen Position und Formatierung des Builders. Bietet eine Methode zum Importieren von Daten aus dem `DataTable` und zum Einfügen dieser mithilfe des DocumentBuilder in eine neue Tabelle.

Die folgenden Daten in unserem **DataTable** werden in diesem Beispiel verwendet:

![how-to-build-a-table-from-a-datatable-aspose-words-net](/words/net/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-1.png)

Das folgende Codebeispiel zeigt, wie der obige Algorithmus in Aspose.Words ausgeführt wird:

{{< gist "aspose-words-gists" "affb937d8f345f60e6a506e1da3db9fa" "import-table-from-data-table.cs" >}}

Die Methode kann dann einfach mit Ihrem **DocumentBuilder** und Ihren Daten aufgerufen werden.

Das folgende Codebeispiel zeigt, wie man die Daten aus einem `DataTable` importiert und in eine neue Tabelle im Dokument einfügt:

{{< gist "aspose-words-gists" "affb937d8f345f60e6a506e1da3db9fa" "build-table-from-data-table.cs" >}}
