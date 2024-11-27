---
title: Werken met bereiken in C++
second_title: Aspose.Words voor C++
articleTitle: Werken met Ranges
linktitle: Werken met Ranges
description: "Inleiding tot de functie bereik in Aspose.Words voor C++."
type: docs
weight: 130
url: /nl/cpp/working-with-ranges/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

In Aspose.Words is een bereik een" plat venster " in een anders boomachtig model van het document.

{{% /alert %}}

Als u met Microsoft Word Automation hebt gewerkt, weet u waarschijnlijk dat een van de belangrijkste hulpmiddelen voor het onderzoeken en wijzigen van documentinhoud het **Range** - object is. **Range** is als een "venster" in de inhoud en opmaak van het document.

Aspose.Words heeft ook de [Range](https://reference.aspose.com/words/cpp/aspose.words/range/) klasse en het is ontworpen om er op dezelfde manier uit te zien en te handelen als **Range** in Microsoft Word. Hoewel **Range** geen willekeurig deel van een document kan omvatten en geen **Start** en **End** heeft, kunt u toegang krijgen tot het bereik dat wordt gedekt door elk documentknooppunt, inclusief de [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) zelf. Met andere woorden, elke knoop heeft zijn eigen bereik. Met het **Range** - object kunt u tekst, bladwijzers en formuliervelden binnen het bereik openen en wijzigen.

## Platte Tekst Ophalen

Gebruik de eigenschap [Text](https://reference.aspose.com/words/cpp/aspose.words/range/get_text/) om gewone, ongeformatteerde tekst van het bereik op te halen.

Het volgende codevoorbeeld laat zien hoe u een gewone, ongeformatteerde tekst van een bereik kunt krijgen:

{{< gist aspose-words-gists "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Ranges-RangesGetText-RangesGetText.cpp" >}}

{{% alert color="primary" %}}

U kunt het voorbeeldbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Tekst Verwijderen

Bereik maakt het mogelijk om alle tekens van het bereik te verwijderen door [Delete](https://reference.aspose.com/words/cpp/aspose.words/range/delete/) aan te roepen.

Het volgende codevoorbeeld laat zien hoe u alle tekens van een bereik verwijdert:

{{< gist aspose-words-gists "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Ranges-RangesDeleteText-RangesDeleteText.cpp" >}}

{{% alert color="primary" %}}

U kunt het voorbeeldbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}
