---
title: Werken met Ranges in C#
second_title: Aspose.Words voor .NET
articleTitle: Werken met Ranges
linktitle: Werken met Ranges
description: "Inleiding tot bereik functie in Aspose.Words voor .NET."
type: docs
weight: 130
url: /nl/net/working-with-ranges/
---

{{% alert color="primary" %}}

In Aspose.Words, a Range is een plat venster in een anders boomachtig model van het document.

{{% /alert %}}

Als u met Microsoft Word Automatisering, u weet waarschijnlijk dat een van de belangrijkste tools om documentinhoud te onderzoeken en wijzigen is de **Range** object. **Range** is als een "venster" in de documentinhoud en opmaak.

Aspose.Words heeft [Range](https://reference.aspose.com/words/net/aspose.words/range/) klasse en het is ontworpen om te kijken en te handelen als **Range** in Microsoft Word. Hoewel **Range** kan een willekeurig deel van een document niet bedekken en heeft geen **Start** en **End**, u kunt toegang krijgen tot het bereik dat wordt bestreken door een document node met inbegrip van de [Document](https://reference.aspose.com/words/net/aspose.words/document/) Zelf. Met andere woorden, elk knooppunt heeft zijn eigen bereik. De **Range** object kunt u toegang krijgen tot en wijzigen van tekst, bladwijzers en vormvelden binnen het bereik.

## Gewone tekst ophalen

Gebruik de [Text](https://reference.aspose.com/words/net/aspose.words/range/text/) eigenschap om gewone, ongeformatteerde tekst van het bereik op te halen.

Het volgende voorbeeld van code laat zien hoe je een platte, ongeformatteerde tekst van een bereik krijgt:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Ranges-RangesGetText-RangesGetText.cs" >}}

{{% alert color="primary" %}}

U kunt het voorbeeldbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](ttps://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

## Tekst verwijderen

Bereik laat het verwijderen van alle tekens van het bereik door aan te roepen [Delete](https://reference.aspose.com/words/net/aspose.words/range/delete/).

Het volgende voorbeeld van code laat zien hoe alle tekens van een bereik te verwijderen:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Ranges-RangesDeleteText-RangesDeleteText.cs" >}}

{{% alert color="primary" %}}

U kunt het voorbeeldbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](ttps://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}