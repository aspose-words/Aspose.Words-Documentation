---
title: Skep Of Laai'n Dokument in Java
second_title: Aspose.Words vir Java
articleTitle: Skep Of Laai'n Dokument
linktitle: Skep Of Laai'n Dokument
type: docs
weight: 10
url: /af/java/create-or-load-a-document/
description: "Aspose.Words stel jou in staat om'n leë dokument te skep of om dit te laai vanaf'n lêer of stroom met behulp van Java."
timestamp: 2024-01-27-14-07-04
---

Byna enige taak wat u met Aspose.Words wil uitvoer, behels die laai van'n dokument. Die `Document` klas verteenwoordig'n dokument gelaai in die geheue. Die dokument het verskeie oorlaai konstruktors sodat jy'n leë dokument te skep of om dit te laai van'n lêer of stroom. Die dokument kan gelaai word in enige laai formaat ondersteun deur Aspose.Words. Vir die lys van alle ondersteun vrag formate, sien die [LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) opsomming.

## Skep'n Nuwe Dokument {#create-a-new-document}

Ons sal die [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) konstruktor sonder parameters noem om'n nuwe leë dokument te skep. As jy'n dokument programmaties wil genereer, is die eenvoudigste manier om die [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder) klas te gebruik om dokumentinhoud by te voeg.

Die volgende kode voorbeeld toon hoe om'n dokument te skep met behulp van die dokument bouer:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CreateDocument-CreateDocument.java" >}}

{{% alert color="primary" %}}

Let op die verstekwaardes:

- 'n leë dokument bevat een afdeling met standaardparameters, een leë paragraaf, 'n paar dokumentstyle. Eintlik is hierdie dokument dieselfde as die resultaat van die skep van die "nuwe dokument" in Microsoft Word.
- Die dokument papier grootte is [PaperSize](https://reference.aspose.com/words/java/com.aspose.words/papersize/).**Letter**.

{{% /alert %}}

## Laai'n Dokument

Om'n bestaande dokument in enige van die [LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) formate te laai, gee die lêernaam of die stroom in een van die Dokumentkonstrukteurs. Die formaat van die gelaaide dokument word outomaties bepaal deur die uitbreiding daarvan.

### Laai vanaf'n Lêer {#load-from-a-file}

Gee'n lêernaam as'n string aan die Dokumentkonstrukteur om'n bestaande dokument uit'n lêer oop te maak.

Die volgende kode voorbeeld toon hoe om'n dokument oop te maak van'n lêer:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenFromFile.java" >}}

Jy kan die sjabloon lêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

### Laai vanaf'n Stroom {#load-from-a-stream}

Om'n dokument van'n stroom oop te maak, eenvoudig'n stroom voorwerp wat die dokument bevat in die Dokument konstruktor.

Die volgende kode voorbeeld toon hoe om'n dokument oop te maak van'n stroom:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenFromStream.java" >}}

{{% alert color="primary" %}}

Jy kan die sjabloon lêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}
