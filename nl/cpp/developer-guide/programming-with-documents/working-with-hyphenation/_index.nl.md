---
title: Werken met afbreking in C++
second_title: Aspose.Words voor C++
articleTitle: Werken met Hyphenation
linktitle: Werken met Hyphenation
description: "Gebruik afbreekstreepjes voor een compactere rangschikking van tekst met C++. Het biedt geavanceerde algoritmen om te werken met afbreekwoordenboeken, gebruikt OpenOffice woordenboeken."
type: docs
weight: 220
url: /nl/cpp/working-with-hyphenation/
timestamp: 2024-01-30-16-22-34
---

Soms is het noodzakelijk om afbreking te gebruiken voor een compactere rangschikking van tekst in een document. Tegelijkertijd is het belangrijk om te begrijpen dat de specifieke kenmerken van woordafbreking voor elke taal kunnen verschillen.

Op dit moment wordt de koppeling niet meer zo vaak gebruikt als vroeger, vooral in Engelse teksten. Niettemin kan het gebruik van deze functie een ernstige impact hebben op gebruikersdocumenten – afbreking heeft invloed op de lay-out en, als gevolg daarvan, het uiterlijk van de uitvoerbestanden, bijvoorbeeld in PDF - indeling.

Voor de juiste splitsing van woorden worden taalspecifieke woordenboeken met afbreking gebruikt. Aspose.Words gebruikt geavanceerde algoritmen om met dergelijke woordenboeken te werken en stelt u in staat om dezelfde afbreking te krijgen als in Microsoft Word.

## Afbreekwoordenboeken

Aangezien verschillende talen verschillende normen en regels voor woordafbreking gebruiken, is de optimale oplossing voor een correcte afbreking het gebruik van speciale woordenboeken. Aspose.Words gebruikt OpenOffice woordenboeken.

Voor spellingcontrole gebruikt OpenOffice de [Hunspell bibliotheek](https://hunspell.github.io/), een generalisatie van TeX ' s koppelingsalgoritme. Dit algoritme maakt automatische niet-standaard afbreekpatronen mogelijk met behulp van concurrerende standaard-en aangepaste afbreekpatronen. Hunspell gebruikt de [Koppelteken](https://github.com/hunspell/hyphen) voor koppeling.

{{% alert color="primary" %}}

Afbreekwoordenboeken kunnen worden genomen uit de [LibreOffice woordenboeken GitHub](https://github.com/LibreOffice/dictionaries). Bijvoorbeeld, [nl - US afbreekwoordenboek](https://github.com/LibreOffice/dictionaries/blob/master/en/hyph_en_US.dic).

{{% /alert %}}

{{% alert color="primary" %}}

Aangezien Microsoft Word andere woordenboeken dan OpenOffice woordenboeken gebruikt om afbreking uit te voeren, kan de afbreking van sommige woorden gedefinieerd door OpenOffice woordenboeken verschillen van de Microsoft Word afbreking. Om deze reden moeten we klanten soms adviseren om de nodige patronen aan hun woordenboeken toe te voegen om de koppeling van bepaalde woorden te herstellen.

{{% /alert %}}

## Afbreekalgoritme

Aspose.Words implementeert [het Tex-afbreekalgoritme](https://github.com/hunspell/hyphen/blob/master/README.hyphen) en kan OpenOffice afbreekwoordenboeken hergebruiken.

De volgende kenmerken van Aspose.Words algoritmen MOETEN in aanmerking worden genomen:

* Parameters van de afbreekafstand (LEFTHYPHENMIN, RIGHTHYPHENMIN, COMPOUNDLEFTHYPHENMIN, COMPOUNDRIGHTHYPHENMIN) gespecificeerd in het afbreekwoordenboek worden genegeerd. Aspose.Words gebruikt zijn eigen set afstandsparameters, afhankelijk van de compatibiliteitsmodus van het document.
* Het afbreekalgoritme in Aspose.Words ondersteunt [samengestelde koppeling](https://github.com/hunspell/hyphen/blob/master/README.compound). Aspose.Words splitst echter Tekenreeksen met gemengde alfabetische en niet-alfabetische tekens in alfabetische delen (woorden) en koppelt ze afzonderlijk af.
  Merk op dat Microsoft Word logica van afbreking van samengestelde woorden afhankelijk is van de compatibiliteitsmodus van het document.
* Het afbreekalgoritme in Aspose.Words implementeert niet de [niet-standaard koppeling](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf). Niet-standaard patronen worden genegeerd.

## Afbreekwoordenboeken Laden

Om de afbreekfunctie te gebruiken, moet u eerst een afbreekwoordenboek registreren.Het volgende codevoorbeeld laat zien hoe u afbreekwoordenboeken voor de opgegeven talen uit een bestand kunt laden:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Hyphenation-HyphenateWordsOfLanguages.h" >}}

{{% alert color="primary" %}}

U kunt het sjabloonbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples)

{{% /alert %}}

Het volgende codevoorbeeld laat zien hoe u afbreekwoordenboeken voor de opgegeven taal uit een stream kunt laden:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Hyphenation-LoadHyphenationDictionaryForLanguage.h" >}}

{{% alert color="primary" %}}

U kunt het sjabloonbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples)

{{% /alert %}}

Als alternatief voor het vooraf registreren van afbreekwoordenboeken is het mogelijk om alleen vereiste afbreekwoordenboeken "op verzoek"te registreren. Implementeer hiervoor de [IHyphenationCallback](https://reference.aspose.com/words/cpp/aspose.words/ihyphenationcallback/) interface en gebruik de statische callback [Callback](https://reference.aspose.com/words/cpp/aspose.words/hyphenation/get_callback/).

Het volgende codevoorbeeld laat zien hoe de **IHyphenationCallback** interface geïmplementeerd moet worden:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Hyphenation-CustomHyphenation.h" >}}

## Impact van afbreking op Lay-out

Bij het opsplitsen van tekst in regels controleert Aspose.Words elk woord of het volledig in de huidige regel past. Als een ander woord te lang is om aan het einde van de regel te passen, verplaatst Aspose.Words het standaard naar het begin van de volgende regel in plaats van het af te koppelen.

De afbreekfunctie kan echter in Aspose.Words worden gebruikt om afbreekstreepjes in woorden in te voegen om hiaten in uitgevulde tekst te elimineren of om een gelijke lijnlengte in smalle kolommen te behouden. Dit kan uiteraard van invloed zijn op het aantal regels en dus het aantal pagina ' s. Met andere woorden, het gebruik van de afbreekfunctie heeft invloed op de lay-out van het document.

## Afbreking en rechtvaardiging (H & J)

Microsoft Word heeft complexe logica voor het kiezen van een breekpunt als tekst is uitgevouwen en afbreking is ingeschakeld. Kortom, Microsoft Word kan de voorkeur geven aan het verkleinen of uitrekken van spaties om regelafbreking te voorkomen. Deze logica is waarschijnlijk gebaseerd op [Artikel van Knuth](https://www.eprg.org/G53DOC/pdfs/knuth-plass-breaking.pdf).

Aspose.Words implementeert zijn eigen h&j-algoritme dat hetzelfde resultaat geeft als Microsoft Word en identieke lijnbreuk in het uitvoerdocument biedt.

## Zie Ook

* [Hyphen-hyphenation library](https://github.com/hunspell/hyphen/blob/master/README)
* [Niet-standaard koppeling](https://github.com/hunspell/hyphen/blob/master/README.nonstandard)
* [Automatische niet-standaard afbreking in Open Office](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf)
