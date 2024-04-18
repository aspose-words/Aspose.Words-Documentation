---
title: Documenten vergelijken in C#
second_title: Aspose.Words voor .NET
articleTitle: Documenten vergelijken
linktitle: Documenten vergelijken
description: "Vergelijk twee documenten in ondersteunde formaten en toont wijzigingen in de inhoud met behulp van C#. U kunt geavanceerde opties toepassen bij het vergelijken."
type: docs
weight: 60
url: /nl/net/compare-documents/
---

Het vergelijken van documenten is een proces dat veranderingen tussen twee documenten identificeert en de wijzigingen als herzieningen bevat. Dit proces vergelijkt twee documenten, inclusief versies van één specifiek document, dan worden de wijzigingen tussen beide documenten getoond als herzieningen in het eerste document.

De vergelijkingsmethode wordt bereikt door woorden op tekenniveau of op woordniveau te vergelijken. Als een woord een verandering van ten minste één teken bevat, wordt in het resultaat het verschil weergegeven als een verandering van het hele woord, geen teken. Dit vergelijkingsproces is een gebruikelijke taak in de juridische en financiële sector.

In plaats van handmatig te zoeken naar verschillen tussen documenten of tussen verschillende versies ervan, kunt u Aspose.Words voor het vergelijken van documenten en het krijgen van wijzigingen in inhoud in formatteren, header/voeter, tabellen, en meer.

Dit artikel legt uit hoe documenten te vergelijken en hoe de geavanceerde vergelijkingseigenschappen te specificeren.

{{% alert color="primary" %}}

**Probeer online**

U kunt twee documenten online vergelijken met behulp van de [Documentvergelijking online](https://products.aspose.app/words/comparison) gereedschap.

Merk op dat de vergelijkingsmethode, hieronder beschreven, wordt gebruikt in deze tool om het verkrijgen van gelijke resultaten. Zo krijgt u dezelfde resultaten, zelfs met behulp van de online vergelijking tool of met behulp van de vergelijking methode in Aspose.Words.

{{% /alert %}}

## Beperkingen en ondersteunde bestandsformaten {#limitations-and-supported-file-formats}

Het vergelijken van documenten is een zeer complex kenmerk. Er zijn verschillende delen van de inhoud combinatie die moeten worden geanalyseerd om alle verschillen te herkennen. De reden voor deze complexiteit is het feit dat Aspose.Words is gericht op dezelfde vergelijkingsresultaten als de Microsoft Word vergelijkingsalgoritme.

De algemene beperking voor twee documenten die worden vergeleken, is dat zij geen herzieningen mogen hebben alvorens de vergelijkingsmethode aan te roepen omdat deze beperking bestaat in Microsoft Word.

{{% alert color="primary" %}}

Merk op dat u kunt vergelijken twee documenten binnen de [Ondersteunde documentformaten](/words/nl/net/supported-document-formats/). In principe kunt u documentobjecten vergelijken en zelfs u kunt deze objecten vanaf nul maken zonder een specifiek formaat te hebben.

{{% /alert %}}

## Twee documenten vergelijken {#compare-two-documents}

Wanneer u documenten vergelijkt, verschillen van het laatste document ten opzichte van het vorige verschijnen als herzieningen van het eerste document. Wanneer u een document wijzigt, zal elke bewerking een eigen revisie hebben na het uitvoeren van de vergelijkingsmethode.

Aspose.Words kunt u documenten verschillen met behulp van de [Compare](https://reference.aspose.com/words/net/aspose.words/document/compare/#compare/) methode is dit vergelijkbaar met de Microsoft Word documentvergelijkingsfunctie. Hiermee kunt u documenten of documentversies controleren om verschillen en wijzigingen te vinden, waaronder opmaakwijzigingen zoals lettertypewijzigingen, spatiëringswijzigingen, toevoeging van woorden en alinea's.

Als gevolg van vergelijking kunnen documenten als gelijk of niet gelijk worden vastgesteld. De term "gelijke documenten" betekent dat de vergelijkingsmethode geen wijzigingen als herzieningen kan weergeven. Dit betekent dat zowel documenttekst als tekstopmaak hetzelfde zijn. Maar er kunnen andere verschillen zijn tussen documenten. Bijvoorbeeld, Microsoft Word ondersteunt alleen format revisies voor stijlen, en u kunt niet vertegenwoordigen stijl invoegen / verwijderen. Dus documenten kunnen een andere set van stijlen, en de **Compare** De methode levert nog steeds geen herzieningen op.

Het volgende voorbeeld van code laat zien hoe te controleren of twee documenten gelijk zijn of niet:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-CompareDocument-CompareForEqual.cs" >}}

Het volgende voorbeeld van de code laat zien hoe u de `Compare` methode voor twee documenten:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-CompareDocument-ApplyCompareTwoDocuments.cs" >}}

## Geavanceerde vergelijkingsopties specificeren {#specify-advanced-comparing-properties}

Er zijn veel verschillende eigenschappen van de [CompareOptions](https://reference.aspose.com/words/net/aspose.words.comparing/compareoptions/) klasse die u kunt toepassen wanneer u documenten wilt vergelijken.

Bijvoorbeeld, Aspose.Words Hiermee kunt u wijzigingen negeren die tijdens een vergelijking zijn gemaakt voor bepaalde soorten objecten in het oorspronkelijke document. U kunt de juiste eigenschap voor het objecttype selecteren, zoals [IgnoreHeadersAndFooters](https://reference.aspose.com/words/net/aspose.words.comparing/compareoptions/ignoreheadersandfooters/), [IgnoreFormatting](https://reference.aspose.com/words/net/aspose.words.comparing/compareoptions/ignoreformatting/), [IgnoreComments](https://reference.aspose.com/words/net/aspose.words.comparing/compareoptions/ignorecomments/), en anderen door ze te zetten op "true".

Bovendien, Aspose.Words levert de [Granularity](https://reference.aspose.com/words/net/aspose.words.comparing/compareoptions/granularity/) eigenschap waarmee u kunt specificeren of wijzigingen per teken of per woord moeten worden gevolgd.

Een andere gemeenschappelijke eigenschap is een keuze in welk document om vergelijkingsveranderingen te tonen. Bijvoorbeeld het dialoogvenster documenten vergelijken Microsoft Word heeft de optie Aspose.Words levert de [Target](https://reference.aspose.com/words/net/aspose.words.comparing/compareoptions/target/) eigendom die dit doel dient.

Het volgende code voorbeeld laat zien hoe u de geavanceerde vergelijken eigenschappen:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-CompareDocument-SetAdvancedComparingProperties.cs" >}}
