---
title: Installeer TrueType Lettertipes op Linux in C#
second_title: Aspose.Words vir .NET
articleTitle: Installeer TrueType Lettertipes op Linux
linktitle: Installeer TrueType Lettertipes op Linux
description: "Aspose.Words vir .NET laat'n dokument wat met Microsoft Word op'n Linux masjien geskep is, met die beste akkuraatheid met C# weergee. Om dit te bereik, kopieer lettertipe lêers van'n Windows masjien of Installeer'n `TrueType` lettertipe pakket op jou Linux masjien in C#."
type: docs
weight: 20
url: /af/net/installing-truetype-fonts-on-linux/
timestamp: 2024-01-27-14-07-04
---

Dikwels sal jy Aspose.Words gebruik om DOC of DOCX dokumente om te skakel na PDF formaat. As jy dit op'n Linux masjien moet doen, sal hierdie onderwerp jou help om te leer hoe om te verseker dat Aspose.Words jou dokumente met die beste akkuraatheid weergee.

Meestal is die DOC en DOCX dokumente, wat omgeskakel moet word, geskep met behulp van Microsoft Word, op'n Windows of Mac OS bedryfstelsel. Daarom is die meeste lettertipes wat in DOC en DOCX dokumente gebruik word "Windows lettertipes" of "Office lettertipes", wat die lettertipes is wat met Microsoft Windows of Microsoft Office geïnstalleer is. Hierdie lettertipes sluit Arial, Calibri, Cambria, Century Gothic, Courier New, Garamond, Tahoma, Verdana, Wingdings, en baie ander in.

Die probleem is dat die `TrueType` lettertipes hierbo gelys nie standaard op Linux verspreidings geïnstalleer is nie. As u'n tipiese DOCX - dokument neem wat met Die Cambria-lettertipe geformateer is en dit probeer omskakel na PDF - formaat op Linux, sal Aspose.Words 'n ander lettertipe gebruik omdat Cambria nie beskikbaar is nie. As gevolg hiervan sal die PDF - dokument anders lyk in vergelyking met die oorspronklike DOCX - dokument. Om seker te maak dat dokumente wat deur Aspose.Words omgeskakel is, so na as moontlik aan die oorspronklike verskyn, moet u "Windows fonts" op u Linux - stelsel installeer.

Daar is twee hoof maniere om TrueType lettertipes op'n Linux stelsel te kry:

- Kopieer .TTF en .TTC lêers van'n Windows masjien op jou Linux masjien
- Installeer'n `TrueType` font pakket, soos *msttcorefonts*

## Kopieer Lettertipes vanaf'n Windows Masjien

'n maklike en vinnige manier om TrueType lettertipes op'n Linux stelsel te kry, is om te kopieer .TTF en .TTC lêers van die `C:\Windows\Fonts` gids op'n Windows masjien na'n gids op jou Linux masjien. U hoef nie hierdie lettertipes op Linux op enige manier te installeer of te registreer nie; u hoef net die ligging van die lettertipes te spesifiseer deur die [FontSettings](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/) - klas in Aspose.Words te gebruik.

{{% alert color="primary" %}}

Verifieer of lettertipe lisensie vereis word, en lees die EULA noukeurig voor die installering van MS Lettertipes op enige Linux bedryfstelsel.

{{% /alert %}}

## Installeer'n `TrueType` Fonts Pakket

Daar is'n aantal Linux pakkette, wat Microsoft TrueType lettertipes bevat, wat jy kan aflaai en installeer op jou Linux masjien. Die presiese stappe kan verskil op verskillende Linux verspreidings.

- Op Ubuntu, gebruik Synaptic Pakketbestuurder om die *ttf-mscorefonts-installer* pakket te vind en te installeer.
- Op openSUSE, gebruik Yast2 Argentia Sagteware Bestuur om die *fetchmsttfonts* pakket te vind en te installeer.
- Gebruik Liberation Lettertipes gelisensieer onder OFL, as'n alternatief vir standaard Windows lettertipes: Arial, Times New Roman, en Courier New.
- Vir lettertipe pakkette wat geskik is vir ander Linux verspreidings, soek beskikbare dokumentasie op die internet.

Nadat u die pakket geïnstalleer het, sal Aspose.Words hierdie lettertipes in die dopgehou op u stelsel vind en dit gebruik wanneer u met dokumente werk.

## Sien Ook

- [Bevryding Fonts](https://github.com/liberationfonts) as alternatief vir standaard Windows lettertipes
