---
title: Erstellen oder Laden eines Dokuments Java
second_title: Aspose.Words für Java
articleTitle: Dokument erstellen oder laden
linktitle: Dokument erstellen oder laden
type: docs
weight: 10
url: /de/java/create-or-load-a-document/
description: "Aspose.Words Sie können ein leeres Dokument erstellen oder aus einer Datei oder einem Stream laden Java."
---

Fast jede Aufgabe, die Sie mit Aspose.Words beinhaltet das Laden eines Dokuments. Die `Document` Klasse stellt ein in den Speicher geladenes Dokument dar. Das Dokument verfügt über mehrere überlastete Konstrukteure, mit denen Sie ein leeres Dokument erstellen oder aus einer Datei oder einem Stream laden können. Das Dokument kann in jedem von Aspose.Words. Für die Liste aller unterstützten Lastformate siehe [LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) Aufzählung.

## Neues Dokument erstellen {#create-a-new-document}

Wir werden [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) Konstruktor ohne Parameter, um ein neues leeres Dokument zu erstellen. Wenn Sie ein Dokument programmatisch erstellen möchten, ist der einfachste Weg, die [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder) Klasse, um Dokumentinhalte hinzuzufügen.

Das folgende Codebeispiel zeigt, wie man ein Dokument mit dem Dokumentbauer erstellt:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CreateDocument-CreateDocument.java" >}}

{{% alert color="primary" %}}

Beachten Sie die Standardwerte:

- Ein leeres Dokument enthält einen Abschnitt mit Standardparametern, einen leeren Absatz, einige Dokumentstile. Tatsächlich ist dieses Dokument dasselbe wie das Ergebnis der Erstellung des "Neuen Dokuments" in Microsoft Word.
- Ja. Die Belegpapiergröße ist [PaperSize](https://reference.aspose.com/words/java/com.aspose.words/papersize/).**Letter**.

{{% /alert %}}

## Ein Dokument laden

Um ein bestehendes Dokument in einem der [LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) Formate, übergeben Sie den Dateinamen oder den Stream in einen der Dokumentkonstrukteure. Das Format des geladenen Dokuments wird automatisch durch seine Erweiterung bestimmt.

### Von einer Datei laden {#load-from-a-file}

Geben Sie einen Dateinamen als Zeichenkette an den Dokumentenkonstruktor, um ein bestehendes Dokument aus einer Datei zu öffnen.

Das folgende Codebeispiel zeigt, wie man ein Dokument aus einer Datei öffnet:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenFromFile.java" >}}

Sie können die Vorlagendatei dieses Beispiels herunterladen [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

### Last von einem Stream {#load-from-a-stream}

Um ein Dokument aus einem Stream zu öffnen, übergeben Sie einfach ein Stream-Objekt, das das Dokument in den Dokumentenkonstruktor enthält.

Das folgende Codebeispiel zeigt, wie man ein Dokument aus einem Stream öffnet:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenFromStream.java" >}}

{{% alert color="primary" %}}

Sie können die Vorlagendatei dieses Beispiels herunterladen [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}
