---
title: Een document aanmaken of laden in Java
second_title: Aspose.Words voor Java
articleTitle: Een document aanmaken of laden
linktitle: Een document aanmaken of laden
type: docs
weight: 10
url: /nl/java/create-or-load-a-document/
description: "Aspose.Words stelt u in staat om een leeg document aan te maken of te laden vanuit een bestand of stream met behulp van Java."
timestamp: 2024-01-27-14-07-04
---

Bijna elke taak die u wilt uitvoeren met Aspose.Words het laden van een document. De `Document` klasse staat voor een document geladen in het geheugen. Het document heeft verschillende overbelaste constructors waarmee u een leeg document kunt maken of het kunt laden vanuit een bestand of stroom. Het document kan worden geladen in elk laadformaat ondersteund door Aspose.Words. Voor de lijst van alle ondersteunde laadformaten, zie de [LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) Samenvatting.

## Nieuw document aanmaken {#create-a-new-document}

Wij zullen de [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) constructor zonder parameters om een nieuw leeg document aan te maken. Als u een document programmatisch wilt genereren, is de eenvoudigste manier om de [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder) klasse om documentinhoud toe te voegen.

Het volgende voorbeeld van code laat zien hoe u een document kunt maken met behulp van de documentbouwer:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CreateDocument-CreateDocument.java" >}}

{{% alert color="primary" %}}

Let op de standaardwaarden:

- Een leeg document bevat één sectie met standaardparameters, één lege paragraaf, sommige documentstijlen. Eigenlijk is dit document hetzelfde als het resultaat van het maken van het nieuwe document Microsoft Word.
- Het document papier grootte is [PaperSize](https://reference.aspose.com/words/java/com.aspose.words/papersize/).**Letter**.

{{% /alert %}}

## Een document laden

Het laden van een bestaand document in een van de [LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) formaten, geef de bestandsnaam of de stream naar een van de document constructors. Het formaat van het geladen document wordt automatisch bepaald door de uitbreiding ervan.

### Uit een bestand laden {#load-from-a-file}

Geef een bestandsnaam als tekenreeks aan de documentconstructor om een bestaand document uit een bestand te openen.

Het volgende voorbeeld van code laat zien hoe een document vanuit een bestand te openen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenFromFile.java" >}}

U kunt het sjabloonbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

### Laden van een stroom {#load-from-a-stream}

Om een document vanuit een stroom te openen, geef je gewoon een stream object door dat het document bevat in de document constructor.

Het volgende voorbeeld van code laat zien hoe een document vanuit een stroom kan worden geopend:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenFromStream.java" >}}

{{% alert color="primary" %}}

U kunt het sjabloonbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}
