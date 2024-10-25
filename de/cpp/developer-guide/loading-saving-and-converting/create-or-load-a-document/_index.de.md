---
title: Erstellen oder laden Sie ein Dokument in C++
second_title: Aspose.Words für C++
articleTitle: Dokument erstellen oder laden
linktitle: Dokument erstellen oder laden
type: docs
description: "Erstellen Sie ein leeres Dokument oder laden Sie es mit C++ aus einer Datei oder einem Stream."
keywords: "create a document c++, load a document c++, create a blank document c++, load a document from file c++, load a document from stream c++, create a document Aspose C++, load a document Aspose C++, load formats supported by Aspose.Words C++"
weight: 10
url: /de/cpp/create-or-load-a-document/
---

Fast jede Aufgabe, die Sie mit Aspose.Words ausführen möchten, umfasst das Laden eines Dokuments. Die Klasse `Document` repräsentiert ein Dokument, das in den Speicher geladen wurde. Das Dokument verfügt über mehrere überladene Konstruktoren, mit denen Sie ein leeres Dokument erstellen oder aus einer Datei oder einem Stream laden können. Das Dokument kann in jedem von Aspose.Words unterstützten Ladeformat geladen werden. Eine Liste aller unterstützten Ladeformate finden Sie in der [LoadFormat](https://reference.aspose.com/words/cpp/aspose.words/loadformat/)-Aufzählung.

## Neues Dokument erstellen {#create-a-new-document}

Wir werden den [Document](https://reference.aspose.com/words/cpp/class/aspose.words.document) Konstruktor ohne Parameter aufrufen, um ein neues leeres Dokument zu erstellen. Wenn Sie ein Dokument programmgesteuert generieren möchten, verwenden Sie am einfachsten die Klasse [DocumentBuilder](https://reference.aspose.com/words/cpp/class/aspose.words.document_builder), um Dokumentinhalte hinzuzufügen.

Das folgende Codebeispiel zeigt, wie Sie ein Dokument mit dem Document Builder erstellen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-CreateDocument-CreateDocument.cpp" >}}

{{% alert color="primary" %}}

Beachten Sie die Standardwerte:

- Ein leeres Dokument enthält einen Abschnitt mit Standardparametern, einen leeren Absatz und einige Dokumentstile. Tatsächlich ist dieses Dokument dasselbe wie das Ergebnis der Erstellung des "Neuen Dokuments" in Microsoft Word.
- Das Papierformat des Dokuments ist [PaperSize](https://reference.aspose.com/words/cpp/aspose.words/papersize/).**Letter**.

{{% /alert %}}

## Laden Sie ein Dokument

Um ein vorhandenes Dokument in einem der `LoadFormat`-Formate zu laden, übergeben Sie den Dateinamen oder den Stream an einen der Dokumentkonstruktoren. Das Format des geladenen Dokuments wird automatisch durch seine Erweiterung bestimmt.

### Aus einer Datei laden {#load-from-a-file}

Übergeben Sie einen Dateinamen als Zeichenfolge an den Dokumentkonstruktor, um ein vorhandenes Dokument aus einer Datei zu öffnen.

Das folgende Codebeispiel zeigt, wie Sie ein Dokument aus einer Datei öffnen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToDisk-OpenDocument.cpp" >}}

Sie können die Vorlagendatei dieses Beispiels herunterladen von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

### Laden aus einem Stream {#load-from-a-stream}

Um ein Dokument aus einem Stream zu öffnen, übergeben Sie einfach ein Stream-Objekt, das das Dokument enthält, an den Dokumentkonstruktor.

Das folgende Codebeispiel zeigt, wie Sie ein Dokument aus einem Stream öffnen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToStream-OpeningFromStream.cpp" >}}

{{% alert color="primary" %}}

Sie können die Vorlagendatei dieses Beispiels herunterladen von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}
