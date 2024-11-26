---
title: Speichern Sie ein Dokument in Java
second_title: Aspose.Words für Java
articleTitle: Speichern eines Dokuments
linktitle: Speichern eines Dokuments
type: docs
description: "Speichern Sie ein Dokument in einem beliebigen unterstützten Format mit Java."
weight: 20
url: /de/java/save-a-document/
timestamp: 2024-01-27-14-07-04
---

Die meisten Aufgaben, die Sie mit Aspose.Words ausführen müssen, umfassen das Speichern eines Dokuments. Um ein Dokument zu speichern, stellt Aspose.Words die Methode [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save(java.lang.String)) der Klasse [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) bereit. Das Dokument kann in jedem von Aspose.Words unterstützten Speicherformat gespeichert werden. Eine Liste aller unterstützten Speicherformate finden Sie in der Aufzählung [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/).

## In einer Datei speichern {#save-a-document-to-a-file}

Verwenden Sie einfach die [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String) -Methode mit einem Dateinamen. Aspose.Words bestimmt das Speicherformat anhand der von Ihnen angegebenen Dateierweiterung.

Das folgende Codebeispiel zeigt, wie ein Dokument in eine Datei geladen und gespeichert wird:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSave-LoadAndSave.java" >}}

{{% alert color="primary" %}}

Sie können die Vorlagendatei dieses Beispiels herunterladen von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## In einem Stream speichern {#save-a-document-to-a-stream}

Übergeben Sie ein Stream-Objekt an die [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions)-Methode. Beim Speichern in einem Stream muss das Speicherformat explizit angegeben werden.

Das folgende Codebeispiel zeigt, wie ein Dokument in einen Stream geladen und gespeichert wird:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveToStream-LoadAndSaveToStream.java" >}}

Sie können die Vorlagendatei dieses Beispiels herunterladen von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

## Speichern unter PCL {#save-a-document-to-pcl}

Aspose.Words unterstützt das Speichern eines Dokuments in PCL (Druckerbefehlssprache). Aspose.Words kann Dokumente im Format PCL 6 (PCL 6 Erweitert oder PCL XL) speichern. Die Klasse `PclSaveOptions` kann verwendet werden, um zusätzliche Optionen beim Speichern eines Dokuments im Format PCL anzugeben.

Das folgende Codebeispiel zeigt, wie Sie ein Dokument mithilfe von Speicheroptionen in PCL speichern:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToPCL-ConvertDocumentToPCL.java" >}}
