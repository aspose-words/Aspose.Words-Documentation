---
title: Opties en weergave van Word documenten
second_title: Aspose.Words voor C++
articleTitle: Werken met opties en weergave van Word documenten
linktitle: Werken met opties en weergave van Word documenten
description: "Bepaal het uiterlijk van Word documenten rekening houdend met het verschil tussen verschillende Microsoft Word versies."
type: docs
weight: 40
url: /nl/cpp/work-with-word-document-options-and-appearance/
timestamp: 2024-01-27-14-07-04
---

Soms moet u het uiterlijk van een document wijzigen, bijvoorbeeld taalvoorkeuren of het aantal regels per pagina instellen.Aspose.Words biedt de mogelijkheid om te bepalen hoe het document wordt weergegeven, evenals enkele extra opties. Dit artikel beschrijft dergelijke mogelijkheden.

## Opties Voor Documentweergave Instellen

U kunt bepalen hoe een document wordt weergegeven in Microsoft Word met behulp van de [ViewOptions](https://reference.aspose.com/words/cpp/aspose.words.settings/viewoptions/) - klasse. U kunt bijvoorbeeld een documentzoomwaarde instellen met de eigenschap [ZoomPercent](https://reference.aspose.com/words/cpp/aspose.words.settings/viewoptions/get_zoompercent/) of de weergavemodus met de Eigenschap [ViewType](https://reference.aspose.com/words/cpp/aspose.words.settings/viewoptions/get_viewtype/).

Het volgende codevoorbeeld laat zien hoe u ervoor kunt zorgen dat een document wordt weergegeven op 50% wanneer het wordt geopend in Microsoft Word:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-SetViewOption-SetViewOption.cpp" >}}

{{% alert color="primary" %}}

U kunt het sjabloonbestand voor dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word 2013 schrijft geen zoomfactor naar een document en stelt niet langer de standaardzoom in van de waarde die naar het document is geschreven, in plaats daarvan lijkt het de zoomfactor van het laatst geopende document te gebruiken.

{{% /alert %}}

## Pagina Weergaveopties Instellen

Als u het aantal tekens per regel wilt instellen, gebruikt u de eigenschap [CharactersPerLine](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_charactersperline/). U kunt ook het aantal regels per pagina instellen voor een Word document – gebruik de Eigenschap [LinesPerPage](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_linesperpage/) om het aantal regels per pagina in het documentraster op te halen of in te stellen.

{{% alert color="primary" %}}

In Microsoft Word kunt u dezelfde parameters instellen met behulp van het tabblad" Documentraster "in het dialoogvenster" Pagina-instellingen " alleen wanneer Aziatische taalondersteuning is geïnstalleerd.

{{% /alert %}}

Het volgende codevoorbeeld laat zien hoe u het aantal tekens per regel en het aantal regels per pagina instelt voor een Microsoft Word - document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentPageSetup-DocumentPageSetup.cpp" >}}

## Taalvoorkeuren Instellen

Het weergeven van een document in Microsoft Word hangt af van welke talen standaard zijn ingesteld voor dit document. Als er geen talen zijn ingesteld in standaardinstellingen, haalt Microsoft Word informatie uit het dialoogvenster 'Office-taalvoorkeuren instellen', dat bijvoorbeeld te vinden is onder 'Bestand → Opties → taal' in Microsoft Word 2019.

Met Aspose.Words kunt u ook taalvoorkeuren instellen met de [LanguagePreferences](https://reference.aspose.com/words/cpp/aspose.words.loading/languagepreferences/) - Klasse. Houd er ook rekening mee dat voor de juiste weergave van uw document het noodzakelijk is om de Microsoft Word versie in te stellen die overeenkomt met het laden van documenten – dit kan worden gedaan met behulp van de Eigenschap [MswVersion](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_mswversion/).

{{% alert color="primary" %}}

Als uw Aspose.Words gegenereerde document er niet uitziet zoals verwacht, controleert u de **LanguagePreferences** en **MswVersion** waarden en past u deze indien nodig aan om overeen te komen met de instellingen voor uw Microsoft Word versie.

{{% /alert %}}

Het volgende codevoorbeeld laat zien hoe u Japans kunt toevoegen aan bewerkingstalen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-Setuplanguagepreferences-AddJapaneseAsEditinglanguages.cpp" >}}

Het volgende codevoorbeeld laat zien hoe u Russisch als standaardbewerkingstaal instelt:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-Setuplanguagepreferences-SetRussianAsDefaultEditingLanguage.cpp" >}}

## Een Document optimaliseren voor een bepaalde Word versie

De [OptimizeFor](https://reference.aspose.com/words/cpp/aspose.words.settings/compatibilityoptions/optimizefor/) methode maakt het mogelijk om de inhoud van het document te optimaliseren, evenals het standaard Aspose.Words gedrag voor een bepaalde versie van Microsoft Word. U kunt deze methode gebruiken om te voorkomen dat Microsoft Word het lint "compatibiliteitsmodus" weergeeft bij het laden van het document. Merk op dat u mogelijk ook de eigenschap `Compliance` moet instellen op Iso29500_2008_Transitional of hoger.

Het volgende codevoorbeeld laat zien hoe u documentinhoud kunt optimaliseren voor Microsoft Word 2016:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-SetCompatibilityOptions-OptimizeFor.cpp" >}}
