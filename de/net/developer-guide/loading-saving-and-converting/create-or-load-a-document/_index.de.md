---
title: Erstellen oder laden Sie ein Dokument in C#
second_title: Aspose.Words für .NET
articleTitle: Erstellen oder laden Sie ein Dokument
linktitle: Erstellen oder laden Sie ein Dokument
type: docs
url: /de/net/create-or-load-a-document/
description: "Erstellen Sie ein leeres Dokument oder laden Sie es mithilfe von C# aus einer Datei oder einem Stream."
keywords: "create a document c#, load a document c#, create a blank document c#, load a document from file c#, load a document from stream c#, create a document Aspose .NET, load a document Aspose .NET, load formats supported by Aspose.Words .NET"
weight: 10
---

Fast jede Aufgabe, die Sie mit Aspose.Words ausführen möchten, umfasst das Laden eines Dokuments. Die `Document`-Klasse stellt ein in den Speicher geladenes Dokument dar. Das Dokument verfügt über mehrere überladene Konstruktoren, mit denen Sie ein leeres Dokument erstellen oder es aus einer Datei oder einem Stream laden können. Das Dokument kann in jedem von Aspose.Words unterstützten Ladeformat geladen werden. Die Liste aller unterstützten Ladeformate finden Sie in der [LoadFormat](https://reference.aspose.com/words/net/aspose.words/loadformat/)-Aufzählung.

## Erstellen Sie ein neues Dokument {#create-a-new-document}

Wir rufen den [Document](https://reference.aspose.com/words/net/aspose.words/document/document/)-Konstruktor ohne Parameter auf, um ein neues leeres Dokument zu erstellen. Wenn Sie ein Dokument programmgesteuert generieren möchten, ist es am einfachsten, die [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/)-Klasse zum Hinzufügen von Dokumentinhalten zu verwenden.

Das folgende Codebeispiel zeigt, wie Sie mit dem Document Builder ein Dokument erstellen:

{{< gist "aspose-words-gists" "16b9cfe5420b6e033f90a45263eef020" "create-docx.cs" >}}

{{% alert color="primary" %}}

Beachten Sie die Standardwerte:

- Ein leeres Dokument enthält einen Abschnitt mit Standardparametern, einen leeren Absatz und einige Dokumentstile. Tatsächlich ist dieses Dokument dasselbe wie das Ergebnis der Erstellung des "Neuen Dokuments" in Microsoft Word.
- Das Dokumentpapierformat ist [PaperSize](https://reference.aspose.com/words/net/aspose.words/papersize/).**Letter**.

{{% /alert %}}

## Laden Sie ein {#load-a-document}-Dokument

Um ein vorhandenes Dokument in einem der [LoadFormat](https://reference.aspose.com/words/net/aspose.words/loadformat/)-Formate zu laden, übergeben Sie den Dateinamen oder den Stream an einen der Dokumentkonstruktoren. Das Format des geladenen Dokuments wird automatisch durch seine Erweiterung bestimmt.

### Aus einer {#load-from-a-file}-Datei laden

Übergeben Sie einen Dateinamen als Zeichenfolge an den Dokumentkonstruktor, um ein vorhandenes Dokument aus einer Datei zu öffnen.

Das folgende Codebeispiel zeigt, wie man ein Dokument aus einer Datei öffnet:

{{< gist "aspose-words-gists" "5bd617e9ea10953cbdd084bcf3810c02" "load-docx.cs" >}}

Sie können die Vorlagendatei dieses Beispiels von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx) herunterladen.

### Aus einem Stream {#load-from-a-stream} laden

Um ein Dokument aus einem Stream zu öffnen, übergeben Sie einfach ein Stream-Objekt, das das Dokument enthält, an den Document-Konstruktor.

Das folgende Codebeispiel zeigt, wie ein Dokument aus einem Stream geöffnet wird:

{{< gist "aspose-words-gists" "5bd617e9ea10953cbdd084bcf3810c02" "load-docx-stream.cs" >}}

{{% alert color="primary" %}}

Sie können die Vorlagendatei dieses Beispiels von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx) herunterladen.

{{% /alert %}}
