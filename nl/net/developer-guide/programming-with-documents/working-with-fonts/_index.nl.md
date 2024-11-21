---
title: Werken met lettertypen in C#
second_title: Aspose.Words voor .NET
articleTitle: Werken met lettertypen
linktitle: Werken met lettertypen
description: "Lettertypeopmaak in details met behulp van C#. Nadruk in C#. Lettertyperegelafstand verkrijgen met behulp van C#."
type: docs
weight: 230
url: /nl/net/working-with-fonts/
timestamp: 2024-01-27-14-07-04
---

Een lettertype is een verzameling tekens met een bepaalde grootte, kleur en ontwerp. Aspose.Words kunt u werken met lettertypen met behulp van de [Fonts](https://reference.aspose.com/words/net/aspose.words.fonts/) naamruimte en de [Font](https://reference.aspose.com/words/net/aspose.words/font/) Klasse.

## Lettertypeopmaak

De huidige lettertypeopmaak wordt weergegeven door de **Font** object teruggegeven door de [Font](https://reference.aspose.com/words/net/aspose.words/documentbuilder/font/) eigendom. De **Font** klasse bevat een breed scala van font eigenschappen, repliceren die beschikbaar zijn in Microsoft Word.

Het volgende voorbeeld van code laat zien hoe u lettertypeopmaak kunt instellen:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetFontFormatting.cs" >}}

Vullen eigenschappen zijn ook beschikbaar voor lettertypen om tekst te vullen formatteren. Dit maakt het mogelijk om bijvoorbeeld de voorgrondkleur of de transparantie van de tekstvulling te wijzigen.

## Lettertypelijnruimte ophalen

Lettertyperegelafstand is de verticale afstand tussen de basislijnen van twee opeenvolgende regels tekst. De lijnafstand omvat dus de lege ruimte tussen lijnen en de hoogte van het karakter zelf.

De [LineSpacing](https://reference.aspose.com/words/net/aspose.words/font/linespacing/) eigendom werd geïntroduceerd aan de **Font** klasse om deze waarde te verkrijgen, zoals getoond in het voorbeeld hieronder:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-GetFontLineSpacing-GetFontLineSpacing.cs" >}}

## Lettertype NadrukMark

Sommige Oost-Aziatische talen gebruiken een speciale nadruk om de nadruk te leggen. De **Font** klasse geeft de [EmphasisMark](https://reference.aspose.com/words/net/aspose.words/font/emphasismark/) eigenschap om de [EmphasisMark](https://reference.aspose.com/words/net/aspose.words/emphasismark/) Bij het formatteren toe te passen opsommingswaarden.

Het volgende voorbeeld toont hoe u de **EphasisMark** eigenschap:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetFontEmphasisMark.cs" >}}
