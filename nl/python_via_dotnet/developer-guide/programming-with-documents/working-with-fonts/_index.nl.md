---
title: Werken met lettertypen in Python
second_title: Aspose.Words voor Python via .NET
articleTitle: Werken met lettertypen
linktitle: Werken met lettertypen
description: "Lettertypeinstellingen aanpassen met behulp van Python."
type: docs
weight: 230
url: /nl/python-net/working-with-fonts/
timestamp: 2024-01-27-14-07-04
---

Een lettertype is een verzameling tekens met een bepaalde grootte, kleur en ontwerp. Aspose.Words kunt u werken met lettertypen met behulp van de [fonts](https://reference.aspose.com/words/python-net/aspose.words.fonts/) module en de [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) Klasse.

## Lettertypeopmaak

De huidige lettertypeopmaak wordt weergegeven door de **Font** object teruggegeven door de [Font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/) eigendom. De **Font** klasse bevat een breed scala van font eigenschappen, repliceren die beschikbaar zijn in Microsoft Word.

Het volgende voorbeeld van code laat zien hoe u lettertypeopmaak kunt instellen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-DocumentBuilderSetFontFormatting.py" >}}

Vullen eigenschappen zijn nu ook beschikbaar voor lettertypen te vullen opmaak van tekst. Het geeft een mogelijkheid om te veranderen, bijvoorbeeld, de voorgrondkleur of transparantie van tekst vullen.

## Lettertypelijnruimte ophalen

Lettertyperegelafstand is de verticale afstand tussen de basislijnen van twee opeenvolgende regels tekst. De lijnafstand omvat dus de lege ruimte tussen lijnen en de hoogte van het karakter zelf.

De [line_spacing](https://reference.aspose.com/words/python-net/aspose.words/font/line_spacing/) eigendom werd geïntroduceerd in de [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) klasse om deze waarde te verkrijgen zoals aangegeven in het onderstaande voorbeeld:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-GetFontLineSpacing.py" >}}

## Lettertype NadrukMark

Sommige Oost-Aziatische talen gebruiken een speciale nadruk om de nadruk te leggen. De **Font** klasse geeft de [emphasis_mark](https://reference.aspose.com/words/python-net/aspose.words/font/emphasis_mark/) te verkrijgen of in te stellen eigenschap [EmphasisMark](https://reference.aspose.com/words/python-net/aspose.words/emphasismark/) In de opmaak toe te passen opsommingswaarden.

Het volgende voorbeeld toont hoe u de **EphasisMark** eigenschap:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontEmphasisMark.py" >}}
