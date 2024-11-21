---
title: Serialisieren und Arbeiten mit einem Dokument in einer Datenbank
second_title: Aspose.Words für Java
articleTitle: Serialisieren und Arbeiten mit einem Dokument in einer Datenbank
linktitle: Serialisieren und Arbeiten mit einem Dokument in einer Datenbank
description: "Konvertieren Sie ein Dokument in ein Byte-Array, um mit diesem Dokument in einer Datenbank zu arbeiten. Sie können ein Dokument mit und aus der Datenbank speichern und abrufen Java."
type: docs
weight: 40
url: /de/java/serialize-and-work-with-a-document-in-a-database/
timestamp: 2024-01-27-14-07-04
---

Eine der Aufgaben, die Sie bei der Arbeit mit Dokumenten erledigen müssen, ist das Speichern und Abrufen **Document** Objekte zu und aus einer Datenbank. Dies wäre beispielsweise erforderlich, wenn Sie irgendeine Art von Content-Management-System implementieren würden. Alle vorherigen Versionen von Dokumenten müssen im Datenbanksystem gespeichert werden. Die Möglichkeit, Dokumente in der Datenbank zu speichern, ist auch äußerst nützlich, wenn Ihre Anwendung einen webbasierten Service bietet.

Aspose.Words bietet die Möglichkeit, ein Dokument in ein Byte-Array für die anschließende Arbeit mit diesem Dokument in einer Datenbank zu konvertieren.

## Dokument nach Byte Array umrechnen

Um ein Dokument in einer Datenbank zu speichern oder ein Dokument für die Übertragung über das Internet vorzubereiten, ist es oft notwendig, das Dokument zu serialisieren, um ein Byte-Array zu erhalten.

Um eine [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) Gegenstand Aspose.Words:

ANHANG Speichern Sie es einem **MemoryStream** Verwendung von [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-int) Verfahren Überlastung der **Document** Klasse.
ANHANG Rufen Sie an **ToArray** Verfahren, das eine Reihe von Bytes zurückgibt, die das Dokument in Byte-Form darstellen.

Die vorstehenden Schritte können umgeschaltet werden, um die Bytes wieder in eine **Document** Objekt.

{{% alert color="primary" %}}

Das ausgewählte Speicherformat ist wichtig, um sicherzustellen, dass die höchste Treue beim Speichern und Nachladen in die **Document** Objekt. Aus diesem Grund wird vorgeschlagen, eine Reihe von OOXML-Dateiformaten zu verwenden.

{{% /alert %}}

Das folgende Beispiel zeigt, wie man eine **Document** Objekt, um ein Byte-Array zu erhalten, und dann, wie man das Byte-Array zu einem **Document** Objekt wieder:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToByte-ConvertDocumentToByte.java" >}}

{{% alert color="primary" %}}

Sie können die Vorlagendatei dieses Beispiels herunterladen [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## Speichern, Lesen und Löschen eines Dokumentes in einer Datenbank

Dieser Abschnitt zeigt, wie ein Dokument in einer Datenbank gespeichert und danach wieder in eine `Document` Objekt für die Arbeit mit ihm. Einfachheit halber ist der Dateiname der Schlüssel, der verwendet wird, um Dokumente aus der Datenbank zu speichern und zu holen. Die Datenbank enthält zwei Spalten. Die erste Spalte "FileName" wird als String gespeichert und verwendet, um Dokumente zu identifizieren. Die zweite Spalte "FileContent" wird als `BLOB` Objekt, das das Dokumentobjekt in der Byte-Form speichert.

Das folgende Codebeispiel zeigt, wie eine Verbindung zu einer Datenbank aufgebaut und Befehle ausgeführt werden können:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-OpenDatabaseConnection.java" >}}

{{% alert color="primary" %}}

In diesem Beispiel verwenden wir die MySQL-Datenbank, um eine Aspose.Words Dokument.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie man ein Dokument in die Datenbank speichert, dann das gleiche Dokument erneut liest und schließlich den Datensatz mit dem Dokument aus der Datenbank löschen kann:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-OpenRetrieveAndDelete.java" >}}

### Speichern eines Dokumentes in einer Datenbank

Um ein Dokument in einer Datenbank zu speichern, konvertieren Sie dieses Dokument in eine Reihe von Bytes, wie am Anfang dieses Artikels beschrieben. Speichern Sie dieses Byte-Array dann in ein Datenbankfeld.

Das folgende Codebeispiel zeigt, wie ein Dokument in der angegebenen Datenbank gespeichert werden kann:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-StoreToDatabase.java" >}}

Geben Sie CommandString an, der ein SQL-Ausdruck ist, der alle Funktionen erfüllt:

- Ja. Um ein Dokument in die Datenbank zu speichern, wird der Befehl "INSERT INTO" verwendet und eine Tabelle, die zusammen mit den Werten von zwei Datenfeldern – FileName und FileContent – angegeben ist. Um zusätzliche Parameter zu vermeiden, wird der Dateiname aus dem **Document** Objekt selbst. Die `FileContent` Aus dem Speicherstrom wird ein Feldwert Bytes zugeordnet, der eine binäre Darstellung des gespeicherten Dokuments enthält.
- Ja. Die verbleibende Codezeile führt den Befehl aus, der die Aspose.Words Dokument in der Datenbank.

### Ein Dokument aus einer Datenbank abrufen

Um ein Dokument aus der Datenbank abzurufen, wählen Sie den Datensatz aus, der die Dokumentdaten als eine Reihe von Bytes enthält. Dann laden Sie das Byte-Array aus dem Datensatz in **MemoryStream** und eine **Document** Objekt, das das Dokument aus dem **MemoryStream**.

Das folgende Codebeispiel zeigt, wie man ein Dokument aus der angegebenen Datenbank mit dem Dateinamen als Schlüssel abruft und zurückgibt, um dieses Dokument zu holen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-ReadFromDatabase.java" >}}

{{% alert color="primary" %}}

Der SQL-Befehl "SELECT * FROM" wird verwendet, um den entsprechenden Datensatz basierend auf dem Dateinamen abzurufen.

{{% /alert %}}

### Löschen eines Dokumentes aus einer Datenbank

Um ein Dokument aus der Datenbank zu löschen, verwenden Sie den entsprechenden SQL-Befehl ohne Manipulationen auf der **Document** Objekt.

Das folgende Codebeispiel zeigt, wie ein Dokument aus der Datenbank gelöscht werden kann, indem der Dateiname den Datensatz abruft:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-DeleteFromDatabase.java" >}}
