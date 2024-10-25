---
title: Speichern Sie ein Dokument in C++
second_title: Aspose.Words für C++
articleTitle: Speichern eines Dokuments
linktitle: Speichern eines Dokuments
type: docs
description: "Speichern Sie ein Dokument in einem beliebigen unterstützten Format mit C++."
keywords: "save a document c++, save a document to file c++, save a document to stream c++, save a document Aspose C++, save formats supported by Aspose.Words C++"
weight: 20
url: /de/cpp/save-a-document/
---

Die meisten Aufgaben, die Sie mit Aspose.Words ausführen müssen, umfassen das Speichern eines Dokuments. Um ein Dokument zu speichern, stellt Aspose.Words die Methode [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) der Klasse [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) bereit. Das Dokument kann in jedem von Aspose.Words unterstützten Speicherformat gespeichert werden. Eine Liste aller unterstützten Speicherformate finden Sie in der [SaveFormat](https://reference.aspose.com/words/cpp/aspose.words/saveformat/)-Aufzählung.

## In einer Datei speichern {#save-a-document-to-a-file}

Verwenden Sie einfach die [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) -Methode mit einem Dateinamen. Aspose.Words bestimmt das Speicherformat anhand der von Ihnen angegebenen Dateierweiterung.

Das folgende Codebeispiel zeigt, wie ein Dokument in eine Datei geladen und gespeichert wird:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToDisk-LoadAndSave.cpp" >}}

{{% alert color="primary" %}}

Sie können die Vorlagendatei dieses Beispiels herunterladen von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## In einem Stream speichern {#save-a-document-to-a-stream}

Übergeben Sie ein Stream-Objekt an die [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/)-Methode. Beim Speichern in einem Stream muss das Speicherformat explizit angegeben werden.

Das folgende Codebeispiel zeigt, wie ein Dokument in einen Stream geladen und gespeichert wird:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToStream-LoadAndSaveToStream.cpp" >}}

Sie können die Vorlagendatei dieses Beispiels herunterladen von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).


## Speichern unter PCL {#save-a-document-to-pcl}

Aspose.Words unterstützt das Speichern eines Dokuments in PCL (Druckerbefehlssprache). Aspose.Words kann Dokumente speichern in PCL 6 (PCL 6 Erweitertes oder PCL XL) Format. Die Klasse `PclSaveOptions` kann verwendet werden, um zusätzliche Optionen beim Speichern eines Dokuments im Format PCL anzugeben.

Das folgende Codebeispiel zeigt, wie Sie ein Dokument mithilfe von Speicheroptionen in PCL speichern:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToPCL-ConvertDocumentToPCL.cpp" >}}
