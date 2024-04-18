---
title: Werken met Ranges in Python
second_title: Aspose.Words voor Python via .NET
articleTitle: Werken met Ranges
linktitle: Werken met Ranges
description: "Werk met bereik in een document met behulp van Python."
type: docs
weight: 130
url: /nl/python-net/working-with-ranges/
---

{{% alert color="primary" %}}

In Aspose.Words, a [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) is een plat venster in een anders boom-achtig model van het document.

{{% /alert %}}

Als u met Microsoft Word Automatisering, u weet waarschijnlijk dat een van de belangrijkste tools om documentinhoud te onderzoeken en wijzigen is de [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) object. [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) is als een "venster" in de documentinhoud en opmaak. Aspose.Words heeft [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) klasse en het is ontworpen om te kijken en te handelen als **Range** in Microsoft Word. Hoewel **Range** kan een willekeurig deel van een document niet bedekken en heeft geen **Start** en **End**, u kunt toegang krijgen tot het bereik dat wordt bestreken door een document node met inbegrip van de [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) Zelf. Met andere woorden, elk knooppunt heeft zijn eigen bereik. De [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) object kunt u toegang krijgen tot en wijzigen van tekst, bladwijzers en vormvelden binnen het bereik.

## Gewone tekst ophalen

Gebruik de [text](https://reference.aspose.com/words/python-net/aspose.words/range/text/) eigenschap om gewone, ongeformatteerde tekst van het bereik op te halen.

Het volgende voorbeeld van code laat zien hoe je een platte, ongeformatteerde tekst van een bereik krijgt:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_ranges-RangesGetText.py" >}}

{{% alert color="primary" %}}

U kunt het voorbeeldbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

## Tekst verwijderen

Bereik laat het verwijderen van alle tekens van het bereik door aan te roepen [delete](https://reference.aspose.com/words/python-net/aspose.words/range/delete/)

Het volgende voorbeeld van code laat zien hoe alle tekens van een bereik te verwijderen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_ranges-RangesDeleteText.py" >}}

{{% alert color="primary" %}}

U kunt het voorbeeldbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}