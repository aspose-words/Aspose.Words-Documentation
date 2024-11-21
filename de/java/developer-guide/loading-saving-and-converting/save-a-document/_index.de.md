---
title: Speichern Sie ein Dokument in Java
second_title: Aspose.Words für Java
articleTitle: Dokument speichern
linktitle: Dokument speichern
type: docs
description: "Speichern Sie ein Dokument in jedem unterstützten Format mit Java."
weight: 20
url: /de/java/save-a-document/
timestamp: 2024-01-27-14-07-04
---

Die meisten Aufgaben, die Sie mit Aspose.Words ein Dokument speichern. Um ein Dokument zu speichern Aspose.Words bietet [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save(java.lang.String)) Verfahren der [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) Klasse. Das Dokument kann in jedem Speicherformat gespeichert werden, das von Aspose.Words. Für die Liste aller unterstützten Speicherformate siehe die [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) Aufzählung.

## Speichern einer Datei {#save-a-document-to-a-file}

Verwenden Sie einfach [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String) Verfahren mit einem Dateinamen. Aspose.Words wird das Speicherformat aus der von Ihnen angegebenen Dateierweiterung bestimmen.

Das folgende Codebeispiel zeigt, wie ein Dokument in eine Datei geladen und gespeichert werden kann:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSave-LoadAndSave.java" >}}

{{% alert color="primary" %}}

Sie können die Vorlagendatei dieses Beispiels herunterladen [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## Speichern Sie einen Stream {#save-a-document-to-a-stream}

Ein Stream-Objekt an die [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) Methode. Es ist notwendig, das Speicherformat beim Speichern in einen Stream explizit anzugeben.

Das folgende Codebeispiel zeigt, wie ein Dokument zu einem Stream geladen und gespeichert werden kann:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveToStream-LoadAndSaveToStream.java" >}}

Sie können die Vorlagendatei dieses Beispiels herunterladen [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

## Speichern auf PCL {#save-a-document-to-pcl}

Aspose.Words unterstützt das Speichern eines Dokuments in PCL (Printer Command Language). Aspose.Words kann Dokumente in das Format PCL 6 (PCL 6 Enhanced oder PCL XL) speichern. Die `PclSaveOptions` Klasse kann verwendet werden, um zusätzliche Optionen beim Speichern eines Dokuments in das PCL-Format anzugeben.

Das folgende Codebeispiel zeigt, wie man ein Dokument an PCL mit Speicheroptionen speichert:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToPCL-ConvertDocumentToPCL.java" >}}
