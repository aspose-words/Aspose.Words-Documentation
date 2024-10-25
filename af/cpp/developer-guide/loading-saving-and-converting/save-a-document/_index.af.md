---
title: Stoor'n Dokument in C++
second_title: Aspose.Words vir C++
articleTitle: Stoor'n Dokument
linktitle: Stoor'n Dokument
type: docs
description: "Stoor'n dokument in enige ondersteun formaat met behulp van C++."
keywords: "save a document c++, save a document to file c++, save a document to stream c++, save a document Aspose C++, save formats supported by Aspose.Words C++"
weight: 20
url: /af/cpp/save-a-document/
---

Die meeste van die take wat u met Aspose.Words moet uitvoer, behels die stoor van'n dokument. Om'n dokument te stoor Aspose.Words bied die [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) metode van die [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) klas. Die dokument kan gestoor word in enige stoor formaat ondersteun deur Aspose.Words. Vir die lys van alle ondersteunde stoor formate, sien die [SaveFormat](https://reference.aspose.com/words/cpp/aspose.words/saveformat/) opsomming.

## Stoor na'n Lêer {#save-a-document-to-a-file}

Gebruik eenvoudig die [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) metode met'n lêernaam. Aspose.Words sal die stoorformaat bepaal uit die lêeruitbreiding wat u spesifiseer.

Die volgende kode voorbeeld toon hoe om te laai en stoor'n dokument na'n lêer:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToDisk-LoadAndSave.cpp" >}}

{{% alert color="primary" %}}

Jy kan die sjabloon lêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Stoor na'n Stroom {#save-a-document-to-a-stream}

Gee'n stroom voorwerp na die [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) metode. Dit is nodig om die stoor formaat uitdruklik spesifiseer wanneer die stoor na'n stroom.

Die volgende kode voorbeeld toon hoe om te laai en stoor'n dokument na'n stroom:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToStream-LoadAndSaveToStream.cpp" >}}

Jy kan die sjabloon lêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).


## Stoor na PCL {#save-a-document-to-pcl}

Aspose.Words ondersteun die stoor van'n dokument in PCL (Printer Command Language). Aspose.Words kan dokumente stoor in PCL 6 (PCL 6 Verbeterde of PCL XL) formaat. Die `PclSaveOptions` klas kan gebruik word om addisionele opsies te spesifiseer wanneer'n dokument in die PCL formaat gestoor word.

Die volgende kode voorbeeld toon hoe om'n dokument te stoor om PCL met behulp van stoor opsies:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToPCL-ConvertDocumentToPCL.cpp" >}}
