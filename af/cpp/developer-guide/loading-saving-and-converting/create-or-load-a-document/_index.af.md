---
title: Skep Of Laai'n Dokument in C++
second_title: Aspose.Words vir C++
articleTitle: Skep Of Laai'n Dokument
linktitle: Skep Of Laai'n Dokument
type: docs
description: "Skep'n leë dokument of laai dit vanaf'n lêer of stroom met C++."
keywords: "create a document c++, load a document c++, create a blank document c++, load a document from file c++, load a document from stream c++, create a document Aspose C++, load a document Aspose C++, load formats supported by Aspose.Words C++"
weight: 10
url: /af/cpp/create-or-load-a-document/
timestamp: 2024-01-27-14-07-04
---

Byna enige taak wat u met Aspose.Words wil uitvoer, behels die laai van'n dokument. Die `Document` klas verteenwoordig'n dokument gelaai in die geheue. Die dokument het verskeie oorlaai konstruktors sodat jy'n leë dokument te skep of om dit te laai van'n lêer of stroom. Die dokument kan gelaai word in enige laai formaat ondersteun deur Aspose.Words. Vir die lys van alle ondersteun vrag formate, sien die [LoadFormat](https://reference.aspose.com/words/cpp/aspose.words/loadformat/) opsomming.

## Skep'n Nuwe Dokument {#create-a-new-document}

Ons sal die [Document](https://reference.aspose.com/words/cpp/class/aspose.words.document) konstruktor sonder parameters noem om'n nuwe leë dokument te skep. As jy'n dokument programmaties wil genereer, is die eenvoudigste manier om die [DocumentBuilder](https://reference.aspose.com/words/cpp/class/aspose.words.document_builder) klas te gebruik om dokumentinhoud by te voeg.

Die volgende kode voorbeeld toon hoe om'n dokument te skep met behulp van die dokument bouer:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-CreateDocument-CreateDocument.cpp" >}}

{{% alert color="primary" %}}

Let op die verstekwaardes:

- 'n leë dokument bevat een afdeling met standaardparameters, een leë paragraaf, 'n paar dokumentstyle. Eintlik is hierdie dokument dieselfde as die resultaat van die skep van die "nuwe dokument" in Microsoft Word.
- Die dokument papier grootte is [PaperSize](https://reference.aspose.com/words/cpp/aspose.words/papersize/).**Letter**.

{{% /alert %}}

## Laai'n Dokument

Om'n bestaande dokument in enige van die `LoadFormat` formate te laai, gee die lêernaam of die stroom in een van die Dokumentkonstrukteurs. Die formaat van die gelaaide dokument word outomaties bepaal deur die uitbreiding daarvan.

### Laai vanaf'n Lêer {#load-from-a-file}

Gee'n lêernaam as'n string aan die Dokumentkonstrukteur om'n bestaande dokument uit'n lêer oop te maak.

Die volgende kode voorbeeld toon hoe om'n dokument oop te maak van'n lêer:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToDisk-OpenDocument.cpp" >}}

Jy kan die sjabloon lêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

### Laai vanaf'n Stroom {#load-from-a-stream}

Om'n dokument van'n stroom oop te maak, eenvoudig'n stroom voorwerp wat die dokument bevat in die Dokument konstruktor.

Die volgende kode voorbeeld toon hoe om'n dokument oop te maak van'n stroom:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToStream-OpeningFromStream.cpp" >}}

{{% alert color="primary" %}}

Jy kan die sjabloon lêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}
