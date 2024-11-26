---
title: Een Document in C++klonen
second_title: Aspose.Words voor C++
articleTitle: Een Document klonen
linktitle: Een Document klonen
type: docs
description: "Kloon een document om de identieke kopie te krijgen met C++. Bij het maken van een kopie worden knooppunten en eigenschappen van het originele document gekloond."
weight: 70
url: /nl/cpp/clone-a-document/
timestamp: 2024-01-27-14-07-04
---

Het klonen van een document is het proces van het maken van een identieke kopie van een origineel document, wat de prestaties kan verbeteren en u kan redden van mogelijke geheugenlekken.

In dit artikel worden de belangrijkste gebruiksgevallen van het klonen van een document uitgelegd en wordt uitgelegd hoe u een documentkloon kunt maken met Aspose.Words.

## Operaties met het klonen van documenten

Met de klonbewerking kunt u het proces van het maken van documenten sneller maken, omdat u niet elke keer een document uit een bestand hoeft te laden en te ontleden.

Nadat u een kloon van uw document hebt gemaakt, kunt u het bewerken en verschillende bewerkingen uitvoeren, bijvoorbeeld het vergelijken met het originele document, toevoegen of invoegen in een ander document. U kunt ook gekloonde elementen of de inhoud ervan wijzigen voordat u ze in een ander document invoegt.

## Een Documentkloon maken

Met Aspose.Words kunt u een document klonen met behulp van de [Clone](https://reference.aspose.com/words/cpp/aspose.words/document/clone/) - methode die een diepe kopie van het document uitvoert en het retourneert. Met andere woorden, het krijgt een volledige kopie van de DOM. De `Clone` - methode versnelt het genereren van documenten en u hebt slechts één regel code nodig om een kopie van uw document te krijgen.

Klonen produceert een nieuw document met dezelfde inhoud als het origineel, maar met een unieke kopie van elk van de originele documenten [nodes](https://reference.aspose.com/words/cpp/class/aspose.words.node). U kunt de klonbewerking ook toepassen op een documentknooppunt met de methode knooppunt [Clone](https://reference.aspose.com/words/cpp/aspose.words/node/clone/), waarmee u samengestelde documentknooppunten met en zonder hun onderliggende knooppunten kunt dupliceren.

{{% alert color="primary" %}}

Merk op dat bij het toepassen van de kloningsmethode alle Documenteigenschappen worden gekloond.

{{% /alert %}}

Het volgende codevoorbeeld laat zien hoe u een document kunt klonen en een duplicaat van een sectie in dat document kunt maken:
{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-CloningDocument-CloningDocument.cpp" >}}
