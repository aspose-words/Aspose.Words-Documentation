---
title: Serialisieren und Arbeiten mit einem Dokument in einer Datenbank
second_title: Aspose.Words für Java
articleTitle: Serialisieren und Arbeiten mit einem Dokument in einer Datenbank
linktitle: Serialisieren und Arbeiten mit einem Dokument in einer Datenbank
description: "Konvertieren Sie ein Dokument in ein Byte-Array, um mit diesem Dokument in einer Datenbank zu arbeiten. Sie können ein Dokument mit Java in und aus der Datenbank speichern und abrufen."
type: docs
weight: 40
url: /de/java/serialize-and-work-with-a-document-in-a-database/
timestamp: 2024-01-27-14-07-04
---

Eine der Aufgaben, die Sie möglicherweise bei der Arbeit mit Dokumenten erledigen müssen, ist das Speichern und Abrufen von **Document** -Objekten in und aus einer Datenbank. Dies wäre beispielsweise erforderlich, wenn Sie irgendeine Art von Content-Management-System implementieren würden. Alle vorherigen Versionen von Dokumenten müssen im Datenbanksystem gespeichert sein. Die Möglichkeit, Dokumente in der Datenbank zu speichern, ist auch äußerst nützlich, wenn Ihre Anwendung einen webbasierten Dienst bereitstellt.

Aspose.Words bietet die Möglichkeit, ein Dokument in ein Byte-Array zu konvertieren, um anschließend mit diesem Dokument in einer Datenbank zu arbeiten.

## Konvertieren eines Dokuments in ein Byte-Array

Um ein Dokument in einer Datenbank zu speichern oder ein Dokument für die Übertragung über das Web vorzubereiten, ist es häufig erforderlich, das Dokument zu serialisieren, um ein Byte-Array zu erhalten.

So serialisieren Sie ein [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) -Objekt in Aspose.Words:

1. Speichern Sie es mit der [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-int) -Methodenüberladung der **Document** -Klasse in einem **MemoryStream**.
1. Rufen Sie die Methode **ToArray** auf, die ein Array von Bytes zurückgibt, die das Dokument in Byteform darstellen.

Die obigen Schritte können dann umgekehrt werden, um die Bytes wieder in ein **Document** -Objekt zu laden.

{{% alert color="primary" %}}

Das ausgewählte Speicherformat ist wichtig, um sicherzustellen, dass beim Speichern und erneuten Laden in das **Document**-Objekt die höchste Wiedergabetreue beibehalten wird. Aus diesem Grund wird empfohlen, eine Reihe von OOXML -Dateiformaten zu verwenden.

{{% /alert %}}

Das folgende Beispiel zeigt, wie ein **Document** -Objekt serialisiert wird, um ein Byte-Array zu erhalten, und dann, wie das Byte-Array deserialisiert wird, um wieder ein **Document** -Objekt zu erhalten:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToByte-ConvertDocumentToByte.java" >}}

{{% alert color="primary" %}}

Sie können die Vorlagendatei dieses Beispiels herunterladen von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## Speichern, Lesen und Löschen eines Dokuments in einer Datenbank

Dieser Abschnitt zeigt, wie Sie ein Dokument in einer Datenbank speichern und es dann wieder in ein `Document`-Objekt laden, um damit zu arbeiten. Der Einfachheit halber ist der Dateiname der Schlüssel zum Speichern und Abrufen von Dokumenten aus der Datenbank. Die Datenbank enthält zwei Spalten. Die erste Spalte "FileName" wird als Zeichenfolge gespeichert und dient zur Identifizierung von Dokumenten. Die zweite Spalte "FileContent" wird als `BLOB` -Objekt gespeichert, in dem das Dokumentobjekt in Byteform gespeichert ist.

Das folgende Codebeispiel zeigt, wie Sie eine Verbindung zu einer Datenbank herstellen und Befehle ausführen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-OpenDatabaseConnection.java" >}}

{{% alert color="primary" %}}

In diesem Beispiel verwenden wir die MySQL -Datenbank, um ein Aspose.Words -Dokument zu speichern.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie Sie ein Dokument in der Datenbank speichern, dann dasselbe Dokument erneut lesen und schließlich den Datensatz mit dem Dokument aus der Datenbank löschen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-OpenRetrieveAndDelete.java" >}}

### Speichern eines Dokuments in einer Datenbank

Um ein Dokument in einer Datenbank zu speichern, konvertieren Sie dieses Dokument in ein Array von Bytes, wie am Anfang dieses Artikels beschrieben. Speichern Sie dann dieses Byte-Array in einem Datenbankfeld.

Das folgende Codebeispiel zeigt, wie ein Dokument in der angegebenen Datenbank gespeichert wird:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-StoreToDatabase.java" >}}

Geben Sie commandString an, was ein SQL-Ausdruck ist, der die ganze Arbeit erledigt:

- Um ein Dokument in der Datenbank zu speichern, wird der Befehl "INSERT INTO" verwendet und eine Tabelle zusammen mit den Werten von zwei Datensatzfeldern – FileName und FileContent - angegeben. Um zusätzliche Parameter zu vermeiden, wird der Dateiname vom **Document**-Objekt selbst übernommen. Dem Feldwert `FileContent` werden Bytes aus dem Speicherstrom zugewiesen, der eine binäre Darstellung des gespeicherten Dokuments enthält.
- Die verbleibende Codezeile führt den Befehl aus, der das Aspose.Words -Dokument in der Datenbank speichert.

### Abrufen eines Dokuments aus einer Datenbank

Um ein Dokument aus der Datenbank abzurufen, wählen Sie den Datensatz, der die Dokumentdaten enthält, als Byte-Array aus. Laden Sie dann das Byte-Array aus dem Datensatz in **MemoryStream** und erstellen Sie ein **Document** -Objekt, das das Dokument aus **MemoryStream** lädt.

Das folgende Codebeispiel zeigt, wie ein Dokument aus der angegebenen Datenbank abgerufen und zurückgegeben wird, wobei der Dateiname als Schlüssel zum Abrufen dieses Dokuments verwendet wird:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-ReadFromDatabase.java" >}}

{{% alert color="primary" %}}

Der SQL-Befehl "SELECT * FROM" wird verwendet, um den entsprechenden Datensatz basierend auf dem Dateinamen abzurufen.

{{% /alert %}}

### Löschen eines Dokuments aus einer Datenbank

Um ein Dokument aus der Datenbank zu löschen, verwenden Sie den entsprechenden SQL -Befehl, ohne das **Document**-Objekt zu bearbeiten.

Das folgende Codebeispiel zeigt, wie ein Dokument aus der Datenbank gelöscht wird, wobei der Dateiname zum Abrufen des Datensatzes verwendet wird:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-DeleteFromDatabase.java" >}}
