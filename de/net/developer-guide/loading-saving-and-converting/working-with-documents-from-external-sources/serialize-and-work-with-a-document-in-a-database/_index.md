---
title: Dokument in einer Datenbank serialisieren
second_title: Aspose.Words für .NET
articleTitle: Serialisieren Sie ein Dokument in einer Datenbank und arbeiten Sie damit
linktitle: Serialisieren Sie ein Dokument in einer Datenbank und arbeiten Sie damit
description: "Konvertieren Sie ein Dokument in ein Byte-Array, um mit diesem Dokument in einer Datenbank mithilfe von C# zu arbeiten. Sie können ein Dokument in der Datenbank speichern und daraus abrufen."
type: docs
weight: 10
url: /de/net/serialize-and-work-with-a-document-in-a-database/
---

Eine der Aufgaben, die Sie bei der Arbeit mit Dokumenten möglicherweise erledigen müssen, ist das Speichern und Abrufen von **Document**-Objekten in und aus einer Datenbank. Dies wäre beispielsweise erforderlich, wenn Sie ein Content-Management-System jeglicher Art implementieren würden. Alle früheren Versionen von Dokumenten müssen im Datenbanksystem gespeichert sein. Die Möglichkeit, Dokumente in der Datenbank zu speichern, ist auch äußerst nützlich, wenn Ihre Anwendung einen webbasierten Dienst bereitstellt.

Aspose.Words bietet die Möglichkeit, ein Dokument in ein Byte-Array umzuwandeln, um es anschließend in einer Datenbank zu bearbeiten.

## Konvertieren Sie ein Dokument in ein Byte-Array

Um ein Dokument in einer Datenbank zu speichern oder für die Übertragung im Internet vorzubereiten, ist es häufig erforderlich, das Dokument zu serialisieren, um ein Byte-Array zu erhalten.

So serialisieren Sie ein [Document](https://reference.aspose.com/words/net/aspose.words/document/)-Objekt in Aspose.Words:

1. Speichern Sie es mithilfe der [Save](https://reference.aspose.com/words/net/aspose.words/document/save/)-Methodenüberladung der **Document**-Klasse in einem **MemoryStream**.
1. Rufen Sie die **ToArray**-Methode auf, die ein Array von Bytes zurückgibt, die das Dokument in Byteform darstellen.

Die obigen Schritte können dann umgekehrt werden, um die Bytes wieder in ein **Document**-Objekt zu laden.

{{% alert color="primary" %}}

Das ausgewählte Speicherformat ist wichtig, um sicherzustellen, dass beim Speichern und erneuten Laden in das **Document**-Objekt die höchste Wiedergabetreue erhalten bleibt. Aus diesem Grund wird empfohlen, eine Reihe von OOXML-Dateiformaten zu verwenden.

{{% /alert %}}

Das folgende Beispiel zeigt, wie man ein **Document**-Objekt serialisiert, um ein Byte-Array zu erhalten, und wie man dann das Byte-Array deserialisiert, um wieder ein **Document**-Objekt zu erhalten:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToByte-ConvertDocumentToByte.cs" >}}

Sie können die Vorlagendatei dieses Beispiels von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx) herunterladen.

## Speichern, lesen und löschen Sie ein Dokument in einer Datenbank

In diesem Abschnitt wird gezeigt, wie Sie ein Dokument in einer Datenbank speichern und es dann wieder in ein `Document`-Objekt laden, um damit zu arbeiten. Der Einfachheit halber ist der Dateiname der Schlüssel zum Speichern und Abrufen von Dokumenten aus der Datenbank. Die Datenbank enthält zwei Spalten. Die erste Spalte "FileName" wird als String gespeichert und dient zur Identifizierung von Dokumenten. Die zweite Spalte "FileContent" wird als `BLOB`-Objekt gespeichert, das das Dokumentobjekt in Byteform speichert.

Das folgende Codebeispiel zeigt, wie Sie eine Verbindung zu einer Datenbank einrichten und Befehle ausführen:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-OpenDatabaseConnection.cs" >}}

{{% alert color="primary" %}}

In diesem Beispiel verwenden wir die Microsoft Access .mdb-Datenbank zum Speichern eines Aspose.Words-Dokuments.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie man ein Dokument in der Datenbank speichert, dann dasselbe Dokument erneut liest und schließlich den Datensatz, der das Dokument enthält, aus der Datenbank löscht:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-OpenRetrieveAndDelete.cs" >}}

### Speichern Sie ein Dokument in einer Datenbank

Um ein Dokument in einer Datenbank zu speichern, konvertieren Sie dieses Dokument in ein Byte-Array, wie am Anfang dieses Artikels beschrieben. Speichern Sie dann dieses Byte-Array in einem Datenbankfeld.

Das folgende Codebeispiel zeigt, wie ein Dokument in der angegebenen Datenbank gespeichert wird:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-StoreToDatabase.cs" >}}

Geben Sie commandString an, einen SQL-Ausdruck, der die ganze Arbeit erledigt:

- Um ein Dokument in der Datenbank zu speichern, wird der Befehl "INSERT INTO" verwendet und eine Tabelle zusammen mit den Werten von zwei Datensatzfeldern – FileName und FileContent – angegeben. Um zusätzliche Parameter zu vermeiden, wird der Dateiname vom **Document**-Objekt selbst übernommen. Dem `FileContent`-Feldwert werden Bytes aus dem Speicherstrom zugewiesen, der eine binäre Darstellung des gespeicherten Dokuments enthält.
– Die verbleibende Codezeile führt den Befehl aus, der das Aspose.Words-Dokument in der Datenbank speichert.

### Rufen Sie ein Dokument aus einer Datenbank ab

Um ein Dokument aus der Datenbank abzurufen, wählen Sie den Datensatz aus, der die Dokumentdaten als Byte-Array enthält. Laden Sie dann das Byte-Array aus dem Datensatz in **MemoryStream** und erstellen Sie ein **Document**-Objekt, das das Dokument aus **MemoryStream** lädt.

Das folgende Codebeispiel zeigt, wie ein Dokument aus der angegebenen Datenbank abgerufen und zurückgegeben wird, wobei der Dateiname als Schlüssel zum Abrufen dieses Dokuments verwendet wird:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-ReadFromDatabase.cs" >}}

{{% alert color="primary" %}}

Mit dem SQL-Befehl "SELECT * FROM" wird der entsprechende Datensatz anhand des Dateinamens abgerufen.

{{% /alert %}}

### Löschen Sie ein Dokument aus einer Datenbank

Um ein Dokument aus der Datenbank zu löschen, verwenden Sie den entsprechenden SQL-Befehl ohne Manipulationen am **Document**-Objekt.

Das folgende Codebeispiel zeigt, wie Sie ein Dokument aus der Datenbank löschen und den Dateinamen zum Abrufen des Datensatzes verwenden:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-DeleteFromDatabase.cs" >}}
