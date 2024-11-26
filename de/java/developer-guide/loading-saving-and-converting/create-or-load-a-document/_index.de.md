---
title: Erstellen oder laden Sie ein Dokument in Java
second_title: Aspose.Words für Java
articleTitle: Dokument erstellen oder laden
linktitle: Dokument erstellen oder laden
type: docs
weight: 10
url: /de/java/create-or-load-a-document/
description: "Mit Aspose.Words können Sie ein leeres Dokument erstellen oder es mit Java aus einer Datei oder einem Stream laden."
timestamp: 2024-01-27-14-07-04
---

Bei fast jeder Aufgabe, die Sie mit Aspose.Words ausführen möchten, wird ein Dokument geladen. Die Klasse `Document` repräsentiert ein in den Speicher geladenes Dokument. Das Dokument verfügt über mehrere überladene Konstruktoren, mit denen Sie ein leeres Dokument erstellen oder aus einer Datei oder einem Stream laden können. Das Dokument kann in jedem von Aspose.Words unterstützten Ladeformat geladen werden. Eine Liste aller unterstützten Ladeformate finden Sie in der [LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/)-Aufzählung.

## Neues Dokument erstellen {#create-a-new-document}

Wir werden den [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) Konstruktor ohne Parameter aufrufen, um ein neues leeres Dokument zu erstellen. Wenn Sie ein Dokument programmgesteuert generieren möchten, verwenden Sie am einfachsten die Klasse [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder), um Dokumentinhalte hinzuzufügen.

Das folgende Codebeispiel zeigt, wie Sie ein Dokument mit dem Document Builder erstellen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CreateDocument-CreateDocument.java" >}}

{{% alert color="primary" %}}

Beachten Sie die Standardwerte:

- Ein leeres Dokument enthält einen Abschnitt mit Standardparametern, einen leeren Absatz und einige Dokumentstile. Tatsächlich ist dieses Dokument dasselbe wie das Ergebnis der Erstellung des "Neuen Dokuments" in Microsoft Word.
- Das Papierformat des Dokuments ist [PaperSize](https://reference.aspose.com/words/java/com.aspose.words/papersize/).**Letter**.

{{% /alert %}}

## Laden Sie ein Dokument

Um ein vorhandenes Dokument in einem der [LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/)-Formate zu laden, übergeben Sie den Dateinamen oder den Stream an einen der Dokumentkonstruktoren. Das Format des geladenen Dokuments wird automatisch durch seine Erweiterung bestimmt.

### Aus einer Datei laden {#load-from-a-file}

Übergeben Sie einen Dateinamen als Zeichenfolge an den Dokumentkonstruktor, um ein vorhandenes Dokument aus einer Datei zu öffnen.

Das folgende Codebeispiel zeigt, wie Sie ein Dokument aus einer Datei öffnen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenFromFile.java" >}}

Sie können die Vorlagendatei dieses Beispiels herunterladen von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

### Laden aus einem Stream {#load-from-a-stream}

Um ein Dokument aus einem Stream zu öffnen, übergeben Sie einfach ein Stream-Objekt, das das Dokument enthält, an den Dokumentkonstruktor.

Das folgende Codebeispiel zeigt, wie Sie ein Dokument aus einem Stream öffnen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenFromStream.java" >}}

{{% alert color="primary" %}}

Sie können die Vorlagendatei dieses Beispiels herunterladen von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}
