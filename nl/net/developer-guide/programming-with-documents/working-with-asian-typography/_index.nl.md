---
title: Aziatische typografie in C#
second_title: Aspose.Words voor .NET
articleTitle: Werken met Aziatische Typografie
linktitle: Werken met Aziatische Typografie
description: "Werken met Aziatische typografie gebruiken C#. Pas de ruimte aan tussen Aziatische en Latijnse tekst in C#."
type: docs
weight: 240
url: /nl/net/working-with-asian-typography/
timestamp: 2024-02-01-16-17-05
---

Aziatische typografie is een reeks opties voor tekst paragrafen in documenten geschreven in Aziatische talen.

Aspose.Words ondersteunt Aziatische Typografie met behulp van de [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) klasse en sommige eigenschappen.

## De ruimte tussen Aziatische en Latijnse tekst of getallen automatisch aanpassen

Als u een sjabloon ontwerpt met zowel Oost-Aziatische als Latijnse tekst en het uiterlijk van uw vormsjabloon wilt verbeteren door de spaties tussen beide typen tekst te controleren, kunt u uw vormsjabloon configureren om de spaties tussen deze twee soorten tekst automatisch aan te passen. Om dit te bereiken, kunt u gebruiken [AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/net/aspose.words/paragraphformat/addspacebetweenfareastandalpha/) en [AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/net/aspose.words/paragraphformat/addspacebetweenfareastanddigit/) eigenschappen van de `ParagraphFormat` Klasse.

Het volgende voorbeeld van code laat zien hoe te gebruiken **AddSpaceBetweenFarEastAndAlpha** en **AddSpaceBetweenFarEastAndDigit** eigenschappen:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cs" >}}

## Regelafbrekingsopties instellen

Het tabblad Aziatische Typografie van het dialoogvenster Paragraf eigenschappen in Microsoft Word heeft lijn break groep. De opties van deze groep kunnen worden ingesteld met behulp van de [FarEastLineBreakControl](https://reference.aspose.com/words/net/aspose.words/paragraphformat/fareastlinebreakcontrol/), [WordWrap](https://reference.aspose.com/words/net/aspose.words/paragraphformat/wordwrap/), [HangingPunctuation](https://reference.aspose.com/words/net/aspose.words/paragraphformat/hangingpunctuation/) eigenschappen van de **ParagraphFormat** Klasse.

Het volgende voorbeeld van code laat zien hoe u deze eigenschappen kunt gebruiken:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetAsianTypographyLinebreakGroupProp.cs" >}}
