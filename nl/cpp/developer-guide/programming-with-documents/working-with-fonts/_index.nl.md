---
title: Werken met lettertypen in C++
second_title: Aspose.Words voor C++
articleTitle: Werken met Fonts
linktitle: Werken met Fonts
description: "Lettertypeopmaak in details met behulp van C++."
type: docs
weight: 230
url: /nl/cpp/working-with-fonts/
timestamp: 2024-01-27-14-07-04
---

Een lettertype is een reeks tekens met een bepaalde grootte, kleur en ontwerp. Met Aspose.Words kunt u met lettertypen werken met behulp van de [Fonts](https://reference.aspose.com/words/cpp/aspose.words.fonts/) naamruimte en de [Font](https://reference.aspose.com/words/cpp/aspose.words/font/) klasse.

## Lettertype Opmaak

De huidige lettertypeopmaak wordt weergegeven door het **Font** - object dat wordt geretourneerd door de eigenschap [Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/). De **Font** - klasse bevat een grote verscheidenheid aan lettertypeeigenschappen, die de eigenschappen repliceren die beschikbaar zijn in Microsoft Word.

Het volgende codevoorbeeld laat zien hoe u lettertypeopmaak instelt:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetFontFormatting.cpp" >}}

Vuleigenschappen zijn nu ook beschikbaar voor lettertypen om vulopmaak van tekst in te stellen. Het geeft de mogelijkheid om bijvoorbeeld de voorgrondkleur of transparantie van tekstvulling te veranderen.

## Font Line Spacing Verkrijgen

Font line spacing is de verticale afstand tussen de basislijnen van twee opeenvolgende regels tekst. Dus lijnafstand omvat de lege ruimte tussen regels samen met de hoogte van het teken zelf.

De eigenschap [LineSpacing](https://reference.aspose.com/words/cpp/aspose.words/font/get_linespacing/) is geïntroduceerd in de klasse **Font** Om deze waarde te verkrijgen, zoals getoond in het onderstaande voorbeeld:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-GetFontLineSpacing-GetFontLineSpacing.cpp" >}}

## Lettertype EmphasisMark

Sommige Oost-Aziatische talen gebruiken een speciaal accent om een nadruk aan te geven. De klasse **Font** biedt de eigenschap [EmphasisMark](https://reference.aspose.com/words/cpp/aspose.words/font/get_emphasismark/) om de `EmphasisMark` opsommingswaarden te verkrijgen of in te stellen die moeten worden toegepast bij het opmaken.

Het volgende codevoorbeeld laat zien hoe u de eigenschap **EphasisMark** instelt:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetFontEmphasisMark.cpp" >}}
