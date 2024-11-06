---
title: Stoor'n Dokument in Java
second_title: Aspose.Words vir Java
articleTitle: Stoor'n Dokument
linktitle: Stoor'n Dokument
type: docs
description: "Stoor'n dokument in enige ondersteun formaat met behulp van Java."
weight: 20
url: /af/java/save-a-document/
---

Die meeste van die take wat u met Aspose.Words moet uitvoer, behels die stoor van'n dokument. Om'n dokument te stoor Aspose.Words bied die [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save(java.lang.String)) metode van die [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) klas. Die dokument kan gestoor word in enige stoor formaat ondersteun deur Aspose.Words. Vir die lys van alle ondersteunde stoor formate, sien die [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) opsomming.

## Stoor na'n Lêer {#save-a-document-to-a-file}

Gebruik eenvoudig die [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String) metode met'n lêernaam. Aspose.Words sal die stoorformaat bepaal uit die lêeruitbreiding wat u spesifiseer.

Die volgende kode voorbeeld toon hoe om te laai en stoor'n dokument na'n lêer:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSave-LoadAndSave.java" >}}

{{% alert color="primary" %}}

Jy kan die sjabloon lêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## Stoor na'n Stroom {#save-a-document-to-a-stream}

Gee'n stroom voorwerp na die [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) metode. Dit is nodig om die stoor formaat uitdruklik spesifiseer wanneer die stoor na'n stroom.

Die volgende kode voorbeeld toon hoe om te laai en stoor'n dokument na'n stroom:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveToStream-LoadAndSaveToStream.java" >}}

Jy kan die sjabloon lêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

## Stoor na PCL {#save-a-document-to-pcl}

Aspose.Words ondersteun die stoor van'n dokument in PCL (Printer Command Language). Aspose.Words kan dokumente stoor in PCL 6 (PCL 6 Verbeterde of PCL XL) formaat. Die `PclSaveOptions` klas kan gebruik word om addisionele opsies te spesifiseer wanneer'n dokument in die PCL formaat gestoor word.

Die volgende kode voorbeeld toon hoe om'n dokument te stoor om PCL met behulp van stoor opsies:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToPCL-ConvertDocumentToPCL.java" >}}
