---
title: Waar installeren Lettertypen typen op Linux in C#
second_title: Aspose.Words voor .NET
articleTitle: Waar installeren Lettertypen typen op Linux
linktitle: Waar installeren Lettertypen typen op Linux
description: "Aspose.Words voor .NET laat het renderen van een document aangemaakt met Microsoft Word op a Linux machine met de beste nauwkeurigheid gebruiken C#. Om dit te bereiken, kopieer lettertypebestanden van een Windows machine of installatie a `TrueType` lettertypepakket op uw Linux machine in C#."
type: docs
weight: 20
url: /nl/net/installing-truetype-fonts-on-linux/
timestamp: 2024-01-27-14-07-04
---

Meestal zult u Aspose.Words om DOC- of DOCX-documenten te converteren naar PDF-formaat. Als u dit op een Linux machine, dit onderwerp zal u helpen om te leren hoe te zorgen Aspose.Words is het renderen van uw documenten met de beste nauwkeurigheid.

Meestal werden de DOC en DOCX documenten, die moeten worden omgezet, gemaakt met behulp van Microsoft Word, op a Windows of Mac OS besturingssysteem. Daarom, de meeste lettertypen gebruikt in DOC en DOCX documenten zijn "Windows lettertypen" of "Office lettertypen," dat zijn de lettertypen die zijn geïnstalleerd met Microsoft Windows of Microsoft Kantoor. Deze lettertypen omvatten Arial, Calibri, Cambria, Century Gothic, Courier New, Garamond, Tahoma, Verdana, Wingdings, en vele anderen.

Het probleem is dat de `TrueType` De bovenstaande lettertypen zijn standaard niet geïnstalleerd op Linux distributies. Als u een typisch DOCX-document dat is geformatteerd met het Cambria lettertype en proberen om te zetten naar PDF-formaat op Linux, Aspose.Words zal een ander lettertype gebruiken omdat Cambria niet beschikbaar is. Als gevolg hiervan zal het PDF-document er anders uitzien dan het oorspronkelijke DOCX-document. Om ervoor te zorgen dat documenten die door Aspose.Words verschijnen zo dicht mogelijk bij het origineel, moet u installeren "Windows lettertypen" op uw Linux systeem.

Er zijn twee belangrijke manieren om TrueType lettertypen op een Linux systeem:

- Begrepen .TTF en. TTC-bestanden van een Windows machine op uw Linux machine
- Installeer een `TrueType` lettertypepakket, zoals *msttcorefonts*

## Lettertypen kopiëren van een Windows Machine

Een gemakkelijke en snelle manier om TrueType lettertypen op een Linux systeem is om te kopiëren. TTF en. TTC-bestanden van de `C:\Windows\Fonts` map op a Windows machine naar een map op uw Linux machine. U hoeft deze lettertypen niet te installeren of te registreren op Linux op welke manier dan ook; je hoeft alleen de locatie van de lettertypen te specificeren met behulp van de [FontSettings](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/) klasse in Aspose.Words.

{{% alert color="primary" %}}

Controleer of een lettertypelicentie vereist is, en lees de EULA zorgvuldig voordat MS Fonts geïnstalleerd worden op elke Linux besturingssysteem.

{{% /alert %}}

## Installeer een `TrueType` Lettertypenpakket

Er zijn een aantal Linux verpakkingen, bevattende Microsoft TrueType lettertypen, die u kunt downloaden en installeren op uw Linux machine. De exacte stappen kunnen verschillen op verschillende Linux distributies.

- Aan Ubuntu, Synaptic Package Manager gebruiken om het *ttf-mscorefonts-installer* pakket te vinden en te installeren.
- Gebruik op openSUSE Yast2 → Software Management om de *fetchmsttfonts* Pakje.
- Gebruik Liberation Fonts met OFL-licentie als alternatief voor standaard Windows Fonts: Arial, Times New Roman en Courier New.
- Voor lettertypepakketten geschikt voor andere Linux distributies, zoek beschikbare documentatie op het internet.

Na het installeren van het pakket, Aspose.Words vindt deze lettertypen in de mappen op uw systeem en gebruikt ze bij het werken met documenten.

## Zie ook

- [Bevrijdingslettertypen](https://github.com/liberationfonts) als alternatief voor standaard Windows lettertypen
