---
title: Documenten vergelijken in C++
second_title: Aspose.Words voor C++
articleTitle: Documenten Vergelijken
linktitle: Documenten Vergelijken
type: docs
description: "Vergelijk twee documenten in ondersteunde indelingen en toont inhoudswijzigingen met behulp van C++. U kunt geavanceerde opties toepassen bij het vergelijken."
weight: 60
url: /nl/cpp/compare-documents/
timestamp: 2024-01-27-14-07-04
---

Het vergelijken van documenten is een proces dat wijzigingen tussen twee documenten identificeert en de wijzigingen als revisies bevat. Dit proces vergelijkt om het even welke twee documenten, met inbegrip van versies van één specifiek document, dan zullen de wijzigingen tussen beide documenten als herzieningen in het eerste document worden getoond.

De vergelijkingsmethode wordt bereikt door woorden op karakterniveau of woordniveau te vergelijken. Als een woord een verandering van ten minste één teken bevat, wordt het verschil in het resultaat weergegeven als een verandering van het hele woord, niet als een teken. Dit vergelijkingsproces is een gebruikelijke taak in de juridische en financiële sector.

In plaats van handmatig te zoeken naar verschillen tussen documenten of tussen verschillende versies ervan, kunt u Aspose.Words gebruiken voor het vergelijken van documenten en het verkrijgen van inhoudswijzigingen in opmaak, kop - /voettekst, tabellen en meer.

In dit artikel wordt uitgelegd hoe u documenten kunt vergelijken en hoe u geavanceerde vergelijkingseigenschappen kunt opgeven.

{{% alert color="primary" %}}

**Online proberen**

U kunt twee documenten online vergelijken met behulp van de [Documentvergelijking online](https://products.aspose.app/words/comparison) tool.

Merk op dat de vergelijkingsmethode, die hieronder wordt beschreven, in deze tool wordt gebruikt om ervoor te zorgen dat gelijke resultaten worden verkregen. U krijgt dus dezelfde resultaten, zelfs met behulp van de online vergelijkingstool of met behulp van de vergelijkingsmethode in Aspose.Words.

{{% /alert %}}

## Beperkingen en Ondersteunde bestandsindelingen {#limitations-and-supported-file-formats}

Het vergelijken van documenten is een zeer complexe functie. Er zijn verschillende delen van de inhoudscombinatie die moeten worden geanalyseerd om alle verschillen te herkennen. De reden voor deze complexiteit is te wijten aan het feit dat Aspose.Words dezelfde vergelijkingsresultaten wil krijgen als het Microsoft Word vergelijkingsalgoritme.

De algemene beperking voor twee documenten die worden vergeleken, is dat ze geen herzieningen mogen hebben voordat de vergelijkingsmethode wordt aangeroepen, aangezien deze beperking bestaat in Microsoft Word.

{{% alert color="primary" %}}

Merk op dat u twee documenten kunt vergelijken binnen de [ondersteunde bestandsformaten](/words/cpp/supported-document-formats/). U kunt documentobjecten vergelijken en zelfs u kunt die objecten helemaal opnieuw maken zonder een specifieke indeling te hebben.

{{% /alert %}}

## Twee Documenten {#compare-two-documents}Vergelijken

Wanneer u documenten vergelijkt, worden verschillen tussen het laatste document en het eerste weergegeven als herzieningen van het eerste. Wanneer u een document wijzigt, heeft elke bewerking zijn eigen herziening nadat u de vergelijkingsmethode hebt uitgevoerd.

Met Aspose.Words kunt u verschillen in documenten identificeren met behulp van de methode [Compare](https://reference.aspose.com/words/cpp/aspose.words/document/compare/) – Dit is vergelijkbaar met de functie Microsoft Word document vergelijken. Hiermee kunt u documenten of documentversies controleren om verschillen en wijzigingen te vinden, inclusief opmaakwijzigingen zoals lettertypewijzigingen, spatiëringwijzigingen, het toevoegen van woorden en alinea ' s.

Als gevolg van de vergelijking kunnen documenten als gelijk of niet gelijk worden bepaald. De term" gelijke " documenten betekent dat de vergelijkingsmethode niet in staat is om wijzigingen als herzieningen weer te geven. Dit betekent dat zowel documenttekst als tekstopmaak hetzelfde zijn. Maar er kunnen andere verschillen zijn tussen documenten. Microsoft Word ondersteunt bijvoorbeeld alleen opmaakherzieningen voor stijlen en u kunt geen stijlinvoeging/ - verwijdering weergeven. Documenten kunnen dus een andere set stijlen hebben en de methode **Compare** produceert nog steeds geen herzieningen.

Het volgende codevoorbeeld laat zien hoe u kunt controleren of twee documenten gelijk zijn of niet:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-CompareDocument-CompareForEqual.cpp" >}}

Het volgende codevoorbeeld laat zien hoe u de methode `Compare` eenvoudig toepast op twee documenten:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-CompareDocument-CompareWhenDocumentHasRevisions.cpp" >}}

## Geef Geavanceerde Vergelijkingsopties {#specify-advanced-comparing-properties}Op

Er zijn veel verschillende eigenschappen van de klasse [CompareOptions](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/) die u kunt toepassen wanneer u documenten wilt vergelijken.

Met Aspose.Words kunt u bijvoorbeeld wijzigingen negeren die zijn aangebracht tijdens een vergelijkingsbewerking voor bepaalde typen objecten in het oorspronkelijke document. U kunt de juiste eigenschap voor het objecttype selecteren, zoals [IgnoreHeadersAndFooters](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/get_ignoreheadersandfooters/), [IgnoreFormatting](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/get_ignoreformatting/), [IgnoreComments](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/get_ignorecomments/), en anderen door ze op "waar"te zetten.

Daarnaast biedt Aspose.Words de eigenschap [Granularity](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/get_granularity/) waarmee u kunt opgeven of u wijzigingen per teken of per woord wilt bijhouden.

Een andere gemeenschappelijke eigenschap is een keuze in welk document vergelijkingswijzigingen worden weergegeven. Het dialoogvenster "documenten vergelijken" in Microsoft Word heeft bijvoorbeeld de optie "Wijzigingen Weergeven in" – dit heeft ook invloed op de vergelijkingsresultaten. Aspose.Words geeft de [Target](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/get_target/) eigenschap die dit doel dient.

Het volgende codevoorbeeld laat zien hoe u de geavanceerde vergelijkingseigenschappen instelt:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-CompareDocument-CompareDocumentWithCompareOptions.cpp" >}}
