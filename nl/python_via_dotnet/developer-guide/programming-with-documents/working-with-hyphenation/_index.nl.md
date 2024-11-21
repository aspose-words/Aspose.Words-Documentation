---
title: Werken met Hyphenation in Python
second_title: Aspose.Words voor Python via .NET
articleTitle: Werken met Hyphenation
linktitle: Werken met Hyphenation
description: "Koppeling gebruiken voor een compactere bewerking van tekst met behulp van Python. Het biedt geavanceerde algoritmen om te werken met koppelwoordenboeken, maakt gebruik van OpenOffice woordenboeken."
type: docs
weight: 220
url: /nl/python-net/working-with-hyphenation/
timestamp: 2024-01-27-14-07-04
---

Soms is het nodig om koppeltekening te gebruiken voor een compactere opstelling van tekst in een document. Tegelijkertijd is het belangrijk om te begrijpen dat de specifieke eigenschappen van woordafschrift kunnen verschillen voor elke taal.

Momenteel wordt koppeltekening minder vaak gebruikt dan vroeger, vooral in Engelse teksten. Niettemin kan het gebruik van deze functie een ernstige impact hebben op de gebruikersdocumenten, waardoor de lay-out en, als gevolg daarvan, het uiterlijk van de uitvoerbestanden, bijvoorbeeld, in PDF-formaat wordt beïnvloed.

Voor het correct splitsen van woorden worden taalspecifieke koppelwoordenboeken gebruikt. Aspose.Words maakt gebruik van geavanceerde algoritmen om te werken met dergelijke woordenboeken en kunt u dezelfde koppeltekens als in Microsoft Word.

## Hyphenation woordenboeken

Aangezien verschillende talen verschillende normen en regels gebruiken voor woordherkenning, is de optimale oplossing voor correcte koppeltekening om speciale woordenboeken te gebruiken. Aspose.Words gebruikt OpenOffice woordenboeken.

Voor spellingscontrole gebruikt OpenOffice de [Hunspell bibliotheek](https://hunspell.github.io/), Dat is een generalisatie van TeX Dit algoritme zorgt voor automatische niet-standaard koppeltekening met behulp van concurrerende standaard en aangepaste koppeltekenpatronen. Hunspell gebruikt de [Hyfen](https://github.com/hunspell/hyphen) voor koppeltekens.

{{% alert color="primary" %}}

Hyphenation woordenboeken kunnen worden genomen uit de [LibreOffice woordenboeken GitHub](https://github.com/LibreOffice/dictionaries). Bijvoorbeeld, [en-US koppelwoordenboek](https://github.com/LibreOffice/dictionaries/blob/master/en/hyph_en_US.dic).

{{% /alert %}}

{{% alert color="primary" %}}

Als Microsoft Word gebruikt woordenboeken anders dan OpenOffice woordenboeken om koppeltekens uit te voeren, de koppeltekening van sommige woorden gedefinieerd door OpenOffice woordenboeken kunnen afwijken van de Microsoft Word Koppeling. Om deze reden moeten we klanten soms adviseren om de nodige patronen toe te voegen aan hun woordenboeken om de koppeling van bepaalde woorden vast te stellen.

{{% /alert %}}

## Hyfenatie-algoritme

Aspose.Words werktuigen [het TeX koppeltekenalgoritme](https://github.com/hunspell/hyphen/blob/master/README.hyphen) en kan OpenOffice koppelwoordenboeken hergebruiken.

De volgende kenmerken van Aspose.Words Er moet rekening worden gehouden met:

* Hyphenation distance parameters (LEFTHYPHENMIN, RIGHYPHENMIN, COMPOUNDLFTHYPHENMIN COMPOUNDRIGHTHYPHENMIN) in het woordenboek worden genegeerd. Aspose.Words gebruikt zijn eigen reeks afstandsparameters afhankelijk van de documentcompatibiliteitsmodus.
* Het koppelingsalgoritme in Aspose.Words ondersteuning [samengestelde koppeling](https://github.com/hunspell/hyphen/blob/master/README.compound). Echter, Aspose.Words splitst karaktersequenties met gemengde alfabetische en niet-alfabetische tekens in alfabetische alleen delen (woorden) en koppelt ze afzonderlijk.
  Merk op dat Microsoft Word logica van koppeltekening van samengestelde woorden hangt af van documentcompatibiliteitsmodus.
* Het koppelingsalgoritme in Aspose.Words implementeert het [niet-standaard koppeltekening](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf). Niet-standaard patronen worden genegeerd.

## Hyphenation woordenboeken laden

Om de koppeltekenfunctie te gebruiken, eerst een koppelteken woordenboek registreren. Het volgende voorbeeld van code laat zien hoe je koppelteken woordenboeken voor de opgegeven talen uit een bestand kunt laden:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_hyphenation-HyphenateWordsOfLanguages.py" >}}

{{% alert color="primary" %}}

U kunt het sjabloonbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Het volgende codevoorbeeld laat zien hoe je koppelteken woordenboeken voor de opgegeven taal uit een stroom kunt laden:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_hyphenation-LoadHyphenationDictionaryForLanguage.py" >}}

{{% alert color="primary" %}}

U kunt het sjabloonbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Impact van Hyphenation op layout

Bij het breken van tekst in regels, Aspose.Words controleert elk woord of het volledig in de huidige lijn past. Als een ander woord te lang is om aan het einde van de regel te passen, standaard Aspose.Words verplaatst het naar het begin van de volgende regel in plaats van het te koppelen.

Echter, de koppeltekenfunctie kan worden gebruikt in Aspose.Words koppeltekens in woorden in te voegen om hiaten in gerechtvaardigde tekst te elimineren of een gelijkmatige lijnlengte in smalle kolommen te behouden. Dit kan uiteraard van invloed zijn op het aantal regels en dus op het aantal pagina's. Met andere woorden, het gebruik van de koppeltekenfunctie beïnvloedt de documentindeling.

## Hyfenatie en rechtvaardiging (H&J)

Microsoft Word heeft complexe logica voor het kiezen van een breekpunt als tekst gerechtvaardigd is en koppeltekening is ingeschakeld. Kortom, Microsoft Word kan de voorkeur geven aan krimpen of stretch spaties om lijnkoppeling te voorkomen. Waarschijnlijk is deze logica gebaseerd op [Knuth's artikel](https://www.eprg.org/G53DOC/pdfs/knuth-plass-breaking.pdf).

Aspose.Words implementeert zijn eigen H&J algoritme dat hetzelfde resultaat geeft als Microsoft Word en biedt identieke lijn breken in het uitvoerdocument.

## Zie ook

* [Hyphen](https://github.com/hunspell/hyphen/blob/master/README)
* [Niet-standaard koppeltekening](https://github.com/hunspell/hyphen/blob/master/README.nonstandard)
* [Automatische niet-standaard koppeling in Open Office](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf)
