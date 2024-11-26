---
title: TrueType lettertypen installeren op Linux in C++
second_title: Aspose.Words voor C++
articleTitle: TrueType lettertypen installeren op Linux
linktitle: TrueType lettertypen installeren op Linux
description: "Aspose.Words voor C++ maakt het mogelijk om een document gemaakt met Microsoft Word op een Linux machine met de beste nauwkeurigheid weer te geven. Kopieer hiervoor lettertypebestanden van een Windows machine of installeer een `TrueType` lettertypepakket op uw Linux machine."
type: docs
weight: 20
url: /nl/cpp/install-truetype-fonts-on-linux/
timestamp: 2024-01-27-14-07-04
---

Meestal gebruikt u Aspose.Words om DOC of DOCX documenten naar PDF formaat te converteren. Als u dit op een Linux - machine moet doen, zal dit onderwerp u helpen om te leren hoe u ervoor kunt zorgen dat Aspose.Words uw documenten met de beste nauwkeurigheid weergeeft.

Meestal zijn de DOC en DOCX documenten, die geconverteerd moeten worden, gemaakt met behulp van Microsoft Word, op een Windows of Mac OS besturingssysteem. Daarom zijn de meeste lettertypen die in DOC en DOCX documenten worden gebruikt "Windows lettertypen" of "Office-lettertypen", dat zijn de lettertypen die zijn geïnstalleerd met Microsoft Windows of Microsoft Office. Deze lettertypes zijn onder andere Arial, Calibri, Cambria, Century Gothic, Courier New, Garamond, Tahoma, Verdana, Wingdings en vele anderen.

Het probleem is dat de hierboven genoemde `TrueType` lettertypen niet standaard geïnstalleerd zijn op Linux distributies. Als u een typisch DOCX - document neemt dat is opgemaakt met het Cambria-lettertype en probeert het te converteren naar PDF - indeling op Linux, zal Aspose.Words een ander lettertype gebruiken omdat Cambria niet beschikbaar is. Hierdoor zal het PDF document er anders uitzien dan het oorspronkelijke DOCX document. Om ervoor te zorgen dat documenten geconverteerd door Aspose.Words zo dicht mogelijk bij het origineel verschijnen, moet u "Windows fonts" installeren op uw Linux systeem.

Er zijn twee manieren om TrueType lettertypen op een Linux systeem te krijgen:

- Kopiëren .TTF en .TTC bestanden van een Windows machine op uw Linux machine
- Installeer een `TrueType` lettertypepakket, zoals *msttcorefonts*

## Lettertypen kopiëren van een Windows Machine

Een eenvoudige en snelle manier om TrueType fonts op een Linux systeem te krijgen is door te kopiëren .TTF en .TTC bestanden van de C:\Windows\Fonts directory op een Windows machine naar een directory op je Linux machine. U hoeft deze lettertypen op geen enkele manier te installeren of te registreren op Linux; U hoeft alleen de locatie van de lettertypen op te geven met behulp van de [FontSettings](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_settings) - klasse in Aspose.Words.

{{% alert color="primary" %}}

Controleer of lettertypelicenties vereist zijn en lees EULA zorgvuldig door voordat u MS lettertypen installeert op een Linux besturingssysteem.

{{% /alert %}}

## Een `TrueType` lettertypepakket installeren

Er zijn een aantal Linux pakketten, die Microsoft TrueType lettertypen bevatten, die u kunt downloaden en installeren op uw Linux machine. De exacte stappen kunnen verschillen op verschillende Linux distributies.

- Gebruik Synaptic Package Manager op Ubuntu om het *ttf-mscorefonts-installer* pakket te vinden en te installeren.
- Gebruik op openSUSE Yast2 → Software Management om het *fetchmsttfonts* pakket te vinden en te installeren.
- Gebruik Liberation-lettertypen met een licentie onder OFL, als alternatief voor standaard Windows - lettertypen: Arial, Times New Roman en Courier New.
- Zoek voor lettertypepakketten die geschikt zijn voor andere Linux - distributies naar beschikbare documentatie op internet.

Na het installeren van het pakket zal Aspose.Words deze lettertypen vinden in de mappen op uw systeem en ze gebruiken bij het werken met documenten.

## Zie Ook

- [Liberation Fonts](https://github.com/liberationfonts) als alternatief voor standaard Windows lettertypen
