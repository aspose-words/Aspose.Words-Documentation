---
title: Kloon een document in Java
second_title: Aspose.Words voor Java
articleTitle: Een document klonen
linktitle: Een document klonen
type: docs
description: "Kloon een document om zijn identieke kopie te krijgen. Bij het maken van een kopie worden knooppunten en eigenschappen van het originele document gekloond met behulp van Java."
weight: 70
url: /nl/java/clone-a-document/
timestamp: 2024-01-27-14-07-04
---

Een document klonen is het proces van het maken van een identieke kopie van een origineel document, dat de prestaties kan verbeteren en u kan redden van potentiële geheugenlekken.

Dit artikel zal de belangrijkste use cases van het klonen van een document en hoe een document kloon te maken met behulp van Aspose.Words.

## Operaties met klonende documenten

Met de kloonoperatie kunt u het proces van het aanmaken van documenten sneller maken omdat u geen document elke keer uit een bestand hoeft te laden en te verwerken.

Na het maken van een kloon van uw document kunt u het bewerken en verschillende bewerkingen uitvoeren, bijvoorbeeld vergelijken met het originele document, toevoegen of in een ander document invoegen. U kunt ook gekloonde elementen of hun inhoud wijzigen voordat u ze in een ander document invoegt.

## Een documentkloon aanmaken

Aspose.Words kunt u een document te klonen met behulp van de [Clone](https://reference.aspose.com/words/java/com.aspose.words/document/#deepClone) methode die een diepe kopie van het document uitvoert en het retourneert. Met andere woorden, het zal een volledige kopie van de DOM. De `Clone` methode versnelt het genereren van documenten, en u hoeft slechts een regel van code om een kopie van uw document te krijgen.

Klonen produceert een nieuw document met dezelfde inhoud als het origineel, maar met een unieke kopie van elk van de originele documenten [nodes](https://reference.aspose.com/words/java/com.aspose.words/node/). U kunt de kloonbewerking ook toepassen op een documentnode met behulp van de node [Clone](https://reference.aspose.com/words/java/com.aspose.words/node/#deepClone-boolean) methode, waarmee u samengestelde documentknooppunten met en zonder hun kindknooppunten kunt dupliceren.

{{% alert color="primary" %}}

Merk op dat bij het toepassen van de kloonmethode alle documenteigenschappen gekloond zullen worden.

{{% /alert %}}

Het volgende voorbeeld van code laat zien hoe je een document kloont en een kopie van een sectie in dat document aanmaakt:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CloneDocument-CloneADocument.java" >}}
