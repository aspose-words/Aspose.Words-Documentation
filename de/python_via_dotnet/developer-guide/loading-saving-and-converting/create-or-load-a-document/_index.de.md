---
title: Erstellen oder laden Sie ein Dokument in Python
second_title: Aspose.Words für Python via .NET
articleTitle: Erstellen oder laden Sie ein Dokument
linktitle: Erstellen oder laden Sie ein Dokument
type: docs
url: /de/python-net/create-or-load-a-document/
description: "Erstellen Sie ein leeres Dokument oder laden Sie es mithilfe von Python aus einer Datei oder einem Stream."
keywords: "create a document python, load a document python, create a blank document python, load a document from file python, load a document from stream python, create a document Aspose python, load a document Aspose python, load formats supported by Aspose.Words python"
weight: 10
timestamp: 2024-01-27-14-07-04
---

Fast jede Aufgabe, die Sie mit Aspose.Words ausführen möchten, umfasst das Laden eines Dokuments. Die [Document](https://reference.aspose.com/words/python-net/aspose.words/document/)-Klasse stellt ein in den Speicher geladenes Dokument dar. Das Dokument verfügt über mehrere überladene Konstruktoren, mit denen Sie ein leeres Dokument erstellen oder es aus einer Datei oder einem Stream laden können. Das Dokument kann in jedem von Aspose.Words unterstützten Ladeformat geladen werden. Die Liste aller unterstützten Ladeformate finden Sie in der [LoadFormat](https://reference.aspose.com/words/python-net/aspose.words/loadformat/)-Aufzählung.

## Erstellen Sie ein neues Dokument

Wir rufen den [Document](https://reference.aspose.com/words/python-net/aspose.words/document/)-Konstruktor ohne Parameter auf, um ein neues leeres Dokument zu erstellen. Wenn Sie ein Dokument programmgesteuert generieren möchten, ist es am einfachsten, die [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/)-Klasse zum Hinzufügen von Dokumentinhalten zu verwenden.

Das folgende Codebeispiel zeigt, wie Sie mit dem Document Builder ein Dokument erstellen:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
            
builder.write("Hello world!")

doc.save(docs_base.artifacts_dir + "out.docx")
{{< /highlight >}}

{{% alert color="primary" %}}

Beachten Sie die Standardwerte:

- Ein leeres Dokument enthält einen Abschnitt mit Standardparametern, einen leeren Absatz und einige Dokumentstile. Tatsächlich ist dieses Dokument dasselbe wie das Ergebnis der Erstellung des "Neuen Dokuments" in Microsoft Word.
- Das Dokumentpapierformat ist [PaperSize.LETTER](https://reference.aspose.com/words/python-net/aspose.words/papersize/#letter).

{{% /alert %}}

## Laden Sie ein Dokument

Um ein vorhandenes Dokument in einem der [LoadFormat](https://reference.aspose.com/words/python-net/aspose.words/loadformat/)-Formate zu laden, übergeben Sie den Dateinamen oder den Stream an einen der [Document](https://reference.aspose.com/words/python-net/aspose.words/document/)-Konstruktoren. Das Format des geladenen Dokuments wird automatisch durch seine Erweiterung bestimmt.

### Aus einer Datei laden

Übergeben Sie einen Dateinamen als Zeichenfolge an den [Document](https://reference.aspose.com/words/python-net/aspose.words/document/)-Konstruktor, um ein vorhandenes Dokument aus einer Datei zu öffnen.

Das folgende Codebeispiel zeigt, wie man ein Dokument aus einer Datei öffnet:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-OpenDocument.py" >}}

Sie können die Vorlagendatei dieses Beispiels von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx) herunterladen.

### Aus einem Stream laden

Um ein Dokument aus einem Stream zu öffnen, übergeben Sie einfach ein Stream-Objekt, das das Dokument enthält, an den [Document](https://reference.aspose.com/words/python-net/aspose.words/document/)-Konstruktor.

Das folgende Codebeispiel zeigt, wie ein Dokument aus einem Stream geöffnet wird:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-OpeningFromStream.py" >}}

{{% alert color="primary" %}}

Sie können die Vorlagendatei dieses Beispiels von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx) herunterladen.

{{% /alert %}}
