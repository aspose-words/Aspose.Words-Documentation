---
title: TrueType lettertypen bewerken en vervangen in C++
second_title: Aspose.Words voor C++
articleTitle: TrueType lettertypen bewerken en vervangen
linktitle: TrueType lettertypen bewerken en vervangen
description: "Aspose.Words voor C++ kan de juiste TrueType lettertypen insluiten in het resulterende document om ervoor te zorgen dat het nauwkeurig wordt weergegeven. Als een lettertype of een specifiek teken niet beschikbaar is, zoekt Aspose.Words naar een geschikte lettertypevervanging of gebruikt het font fallback-mechanisme."
type: docs
weight: 10
url: /nl/cpp/manipulate-and-substitute-truetype-fonts/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words vereist TrueType lettertypen voor verschillende taken, waaronder het weergeven van documenten naar vaste paginaindelingen, bijvoorbeeld PDF of XPS. Wanneer Aspose.Words een document weergeeft, moet het insluiten en subset insluiten van TrueType lettertypen in het resulterende document uitvoeren, wat een normale praktijk is tijdens het genereren van een document, inclusief populaire PDF of XPS indelingen. Dit zorgt ervoor dat het document voor elke kijker hetzelfde wordt weergegeven. Bovendien vereist de XPS - specificatie dat lettertypen altijd in het document zijn ingebed.

Om ervoor te zorgen dat Aspose.Words de tekens nauwkeurig meet en relevante lettertypen met succes insluit, moet aan de volgende voorwaarden worden voldaan::

1. Aspose.Words zou TrueType lettertypebestanden op het systeem moeten kunnen vinden en openen.
1. Er moeten voldoende TrueType lettertypen beschikbaar zijn voor Aspose.Words, bij voorkeur met dezelfde lettertypenamen als die in het document worden gebruikt.

Merk op dat het lettertype in het document een entiteit vertegenwoordigt, zoals familienaam, stijl, grootte en kleur, die verschilt van de entiteit `TrueType` (fysiek lettertype). Aspose.Words lost het lettertype in het document op in een fysiek lettertype in een bepaald stadium van verwerking. Dit maakt bepaalde taken mogelijk, meestal de taak van het berekenen van de tekstgrootte tijdens de lay-outconstructie en het inbedden/subsetten in vaste paginaformaten. Een aantal andere minder populaire taken, zoals het oplossen van lettertypen en substitutie tijdens het laden van HTML of het inbedden/subsetten in sommige flow-formaten, zijn eveneens ingeschakeld.

## Waar Aspose.Words zoekt naar lettertypen

Aspose.Words probeert automatisch TrueType lettertypen op het bestandssysteem te vinden. Meestal kunt u vertrouwen op het standaardgedrag van Aspose.Words om de `TrueType` lettertypen te vinden, maar soms moet u uw eigen mappen opgeven die TrueType lettertypen bevatten. De [TrueType Lettertypelocatie Opgeven](/words/cpp/specify-truetype-fonts-location/) onderwerp beschrijft hoe en waar Aspose.Words naar lettertypen zoekt, evenals hoe u uw eigen lettertypelocaties kunt opgeven.

## Verschillen in verwerking van lettertypeformaten in Aspose.Words en Microsoft Word

Er zijn enkele verschillen in de verwerking van lettertypeformaten in Aspose.Words en Microsoft Word zoals weergegeven in de onderstaande tabel:

|  | Microsoft Word | Aspose.Words |
| :- | :- | :- |
| TrueType lettertypen en OpenType lettertypen met TrueType contouren | Ondersteunen. | Ondersteunen. |
| OpenType lettertypen met PostScript contouren | Ondersteund voor de meeste scenario ' s. Insluiten naar vaste paginaformaten zoals PDF en XPS wordt niet ondersteund. De tekst wordt vervangen door bitmapafbeeldingen. | Ondersteund voor de meeste scenario ' s, inclusief insluiten naar vaste paginaformaten. |
| OpenType Lettertypevariaties | Alleen benoemde instanties worden ondersteund. Continue variaties worden niet ondersteund. | Ondersteund voor de enige standaard instantie. Benoemde instanties en continue variaties worden niet ondersteund. |
| Type1 lettertypen | Ondersteund op Windows versies vóór 2013 en op MacOS versies. Ondersteuning is vanaf 2013 niet meer beschikbaar op Windows - versies. | Niet ondersteund. |


