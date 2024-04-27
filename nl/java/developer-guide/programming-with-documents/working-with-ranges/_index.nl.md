---
title: Werken met Ranges in Java
second_title: Aspose.Words voor Java
articleTitle: Werken met Ranges
linktitle: Werken met Ranges
description: "Inleiding tot bereik functie in Aspose.Words voor Java."
type: docs
weight: 130
url: /nl/java/working-with-ranges/
---

{{% alert color="primary" %}}

In Aspose.Words, a Range is een plat venster in een anders boom-achtig model van het document.

{{% /alert %}}

Als u met Microsoft Word Automatisering, u weet waarschijnlijk dat een van de belangrijkste hulpmiddelen om documentinhoud te onderzoeken en wijzigen is de `Range` object. Bereik is als een "venster" in de documentinhoud en opmaak.

Aspose.Words heeft [Range](https://reference.aspose.com/words/java/com.aspose.words/range/) klasse en het is ontworpen om te kijken en te handelen op dezelfde manier **Range** in Microsoft Word. Hoewel **Range** kan een willekeurig deel van een document niet bedekken en heeft geen **Start** en **End**, u kunt toegang krijgen tot het bereik dat wordt bestreken door een document node met inbegrip van de [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) Zelf. Met andere woorden, elk knooppunt heeft zijn eigen bereik. De **Range** object kunt u toegang krijgen tot en wijzigen van tekst, bladwijzers en vormvelden binnen het bereik.

## Platte tekst ophalen

Gebruik de [Text](https://reference.aspose.com/words/java/com.aspose.words/range/#getText) eigenschap om de platte, ongeformatteerde tekst van het bereik op te halen.

Het volgende voorbeeld van code laat zien hoe je een gewone, ongeformatteerde tekst van een bereik krijgt:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Ranges-RangesGetText-RangesGetText.java" >}}

{{% alert color="primary" %}}

U kunt het voorbeeldbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## Tekst verwijderen

De `Range` klasse staat het verwijderen van alle tekens van het bereik toe door aan te roepen [delete](https://reference.aspose.com/words/java/com.aspose.words/range/#delete).

Het volgende voorbeeld van code laat zien hoe alle tekens van een bereik te verwijderen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Ranges-RangesDeleteText-RangesDeleteText.java" >}}

{{% alert color="primary" %}}

U kunt het voorbeeldbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## 