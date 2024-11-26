---
title: Werken met Hyphenation in Java
second_title: Aspose.Words voor Java
articleTitle: Werken met Hyphenation
linktitle: Werken met Hyphenation
description: "Gebruik koppeltekens voor een compactere opstelling van tekst. Het biedt geavanceerde algoritmen om te werken met koppelteken woordenboeken, maakt gebruik van OpenOffice woordenboeken met behulp van Java."
type: docs
weight: 220
url: /nl/java/working-with-hyphenation/
timestamp: 2024-01-27-14-07-04
---

Soms is het noodzakelijk om koppeltekens te gebruiken voor een compactere opstelling van tekst in een document. Tegelijkertijd is het belangrijk om te begrijpen dat de specifieke eigenschappen van woordafschrift kunnen verschillen voor elke taal.

Momenteel wordt koppeltekening minder vaak gebruikt dan vroeger, vooral in Engelse teksten. Niettemin kan het gebruik van deze functie een ernstige impact hebben op de gebruikersdocumenten, waardoor de lay-out en, als gevolg daarvan, het verschijnen van de uitvoerbestanden, bijvoorbeeld in PDF-formaat, wordt beïnvloed.

Voor het correct splitsen van woorden worden taalspecifieke koppelwoordenboeken gebruikt. Aspose.Words maakt gebruik van geavanceerde algoritmen om te werken met dergelijke woordenboeken en kunt u dezelfde koppeltekens als in Microsoft Word.

## Hyphenation woordenboeken

Aangezien verschillende talen verschillende normen en regels gebruiken voor woordafdichting, is de optimale oplossing voor correcte koppeltekening om speciale woordenboeken te gebruiken. Aspose.Words gebruikt OpenOffice woordenboeken.

Voor spellingscontrole gebruikt OpenOffice de [Hunspell bibliotheek](https://hunspell.github.io/), Dat is een generalisatie van TeX Dit algoritme zorgt voor automatische niet-standaard koppeling met behulp van concurrerende standaard en aangepaste koppeling patronen. Hunspell gebruikt de [Hyfen](https://github.com/hunspell/hyphen) voor koppeltekens.

{{% alert color="primary" %}}

Hyphenation woordenboeken kunnen worden genomen uit de [LibreOffice Woordenboeken GitHub](https://github.com/LibreOffice/dictionaries). Bijvoorbeeld, [en-US koperwoordenboek](https://github.com/LibreOffice/dictionaries/blob/master/en/hyph_en_US.dic).

{{% /alert %}}

{{% alert color="primary" %}}

Als Microsoft Word gebruikt woordenboeken anders dan OpenOffice woordenboeken om koppeltekens uit te voeren, de koppeltekening van sommige woorden gedefinieerd door OpenOffice woordenboeken kunnen afwijken van de Microsoft Word Koppeling. Om deze reden moeten we soms klanten adviseren om de nodige patronen toe te voegen aan hun woordenboeken om de koppeling van bepaalde woorden vast te stellen.

{{% /alert %}}

## Hyfenatiealgoritme

Aspose.Words werktuigen [het TeX komplekenalgoritme](https://github.com/hunspell/hyphen/blob/master/README.hyphen) en kan OpenOffice koppelwoordenboeken hergebruiken.

De volgende kenmerken van Aspose.Words Er moet rekening worden gehouden met:

* Hyphenation distance parameters (LEFTHYPHENMIN, RIGHYPHENMIN, COMPOUNDLFTHYPHENMIN, COMPOUNDRIGHTHYPHENMIN) zoals gespecificeerd in het woordenboek worden genegeerd. Aspose.Words gebruikt zijn eigen reeks afstandsparameters afhankelijk van de documentcompatibiliteitsmodus.
* Het koppelingsalgoritme in Aspose.Words ondersteuning [songestelde kopling](https://github.com/hunspell/hyphen/blob/master/README.compound). Echter, Aspose.Words splitst karaktersequenties met gemengde alfabetische en niet-alfabetische tekens in alfabetische-alleen delen (woorden) en koppelt ze apart.
  Merk op dat Microsoft Word logica van koppeltekening van samengestelde woorden hangt af van documentcompatibiliteitsmodus.
* Het koppelingsalgoritme in Aspose.Words implementeert niet de [niet-standaard kopppeltekening](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf). Niet-standaard patronen worden genegeerd.

## Hyphenation woordenboeken laden

Om de koppeltekenfunctie te gebruiken, eerst een koppelteken woordenboek registreren. Het volgende voorbeeld van code laat zien hoe koppelteken woordenboeken voor de opgegeven talen uit een bestand te laden:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-LoadHyphenationDictionaryFromFile.java" >}}

{{% alert color="primary" %}}

U kunt het sjabloonbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Het volgende voorbeeld van code laat zien hoe koppeltekenwoordenboeken voor de opgegeven taal vanuit een stroom worden geladen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-LoadHyphenationDictionaryFromStream.java" >}}

{{% alert color="primary" %}}

U kunt het sjabloonbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Als alternatief voor het pre-registreren van koppeltekenwoordenboeken is het mogelijk om alleen verplichte koppeltekenwoordenboeken te registreren. Om dat te bereiken, moet de [IHyphenationCallback](https://reference.aspose.com/words/java/com.aspose.words/ihyphenationcallback/) interface en gebruik de statische callback [Callback](https://reference.aspose.com/words/java/com.aspose.words/hyphenation/#getCallback).

Het volgende voorbeeld van code laat zien hoe de **IHyphenationCallback** interface:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-HyphenationCallback.java" >}}

## Impact van Hyphenation op Layout

Bij het breken van tekst in regels, Aspose.Words controleert elk woord of het volledig in de huidige lijn past. Als een ander woord te lang is om aan het einde van de regel te passen, standaard Aspose.Words verplaatst het naar het begin van de volgende regel in plaats van te koppelen.

Echter, de koppelingsfunctie kan worden gebruikt in Aspose.Words koppeltekens in woorden invoegen om hiaten in gerechtvaardigde tekst te elimineren of om een gelijkmatige lijnlengte in smalle kolommen te behouden. Dit kan uiteraard van invloed zijn op het aantal regels en dus op het aantal pagina's. Met andere woorden, het gebruik van de koppeltekenfunctie beïnvloedt de documentindeling.

## Hyfenatie en rechtvaardiging (H&J)

Microsoft Word heeft complexe logica voor het kiezen van een breekpunt als tekst gerechtvaardigd is en koppeltekening is ingeschakeld. Kortom, Microsoft Word kan de voorkeur geven aan krimpen of stretch spaties om lijnkoppeling te voorkomen. Waarschijnlijk is deze logica gebaseerd op [Knuths artikel](https://www.eprg.org/G53DOC/pdfs/knuth-plass-breaking.pdf).

Aspose.Words implementeert zijn eigen H&J algoritme dat hetzelfde resultaat geeft als Microsoft Word en biedt identieke lijn breken in het uitvoerdocument.

## Zie ook

* [Hyfen](https://github.com/hunspell/hyphen/blob/master/README)
* [Niet-standaard kappeltekening](https://github.com/hunspell/hyphen/blob/master/README.nonstandard)
* [Automatische niet-standaard kopling in Open Office](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf)
