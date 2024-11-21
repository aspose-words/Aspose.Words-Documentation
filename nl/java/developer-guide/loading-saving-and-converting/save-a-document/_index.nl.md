---
title: Een document opslaan in Java
second_title: Aspose.Words voor Java
articleTitle: Een document opslaan
linktitle: Een document opslaan
type: docs
description: "Een document opslaan in elk ondersteund formaat Java."
weight: 20
url: /nl/java/save-a-document/
timestamp: 2024-01-27-14-07-04
---

De meeste taken die u moet uitvoeren met Aspose.Words een document opslaan. Een document opslaan Aspose.Words levert de [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save(java.lang.String)) methode van de [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) Klasse. Het document kan worden opgeslagen in elk formaat dat wordt ondersteund door Aspose.Words. Voor de lijst van alle ondersteunde opslagformaten, zie de [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) Samenvatting.

## Opslaan in een bestand {#save-a-document-to-a-file}

Gebruik gewoon de [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String) methode met een bestandsnaam. Aspose.Words zal bepalen het opslaan formaat van de bestandsextensie die u opgeeft.

Het volgende voorbeeld van code laat zien hoe u een document in een bestand kunt laden en opslaan:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSave-LoadAndSave.java" >}}

{{% alert color="primary" %}}

U kunt het sjabloonbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## Opslaan in een stroom {#save-a-document-to-a-stream}

Geef een stream object door aan de [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) methode. Het is noodzakelijk om het opslagformaat expliciet op te geven bij het opslaan naar een stroom.

Het volgende voorbeeld van code laat zien hoe je een document in een stroom kunt laden en opslaan:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveToStream-LoadAndSaveToStream.java" >}}

U kunt het sjabloonbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

## Opslaan in PCL {#save-a-document-to-pcl}

Aspose.Words ondersteunt het opslaan van een document in PCL (Printer Command Language). Aspose.Words kan documenten opslaan in PCL 6 (PCL 6 Enhanced of PCL XL) formaat. De `PclSaveOptions` klasse kan worden gebruikt om extra opties op te geven bij het opslaan van een document in het PCL-formaat.

Het volgende voorbeeld van code laat zien hoe je een document kunt opslaan naar PCL met behulp van opslagopties:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToPCL-ConvertDocumentToPCL.java" >}}
