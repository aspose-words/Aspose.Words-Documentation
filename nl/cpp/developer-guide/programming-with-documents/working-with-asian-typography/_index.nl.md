---
title: Aziatische typografie in C++
second_title: Aspose.Words voor C++
articleTitle: Werken met Aziatische typografie
linktitle: Werken met Aziatische typografie
description: "Werk met Aziatische typografie met behulp van C++. Pas de ruimte tussen Aziatische en Latijnse tekst in C++ aan."
type: docs
weight: 240
url: /nl/cpp/working-with-asian-typography/
timestamp: 2024-02-01-16-17-05
---

Aziatische typografie is een reeks opties voor tekstparagrafen in documenten geschreven in Aziatische talen.

Aspose.Words ondersteunt Aziatische typografie met behulp van de [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) - klasse en enkele van zijn eigenschappen.

## Pas automatisch de ruimte tussen Aziatische en Latijnse tekst of cijfers aan

Als u een sjabloon ontwerpt met zowel Oost-Aziatische als Latijnse tekst en het uiterlijk van uw formuliersjabloon wilt verbeteren door de spaties tussen beide typen tekst te regelen, kunt u de formuliersjabloon configureren om de spaties tussen deze twee typen tekst automatisch aan te passen. Om dit te bereiken, kunt u [AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_addspacebetweenfareastandalpha/) en [AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_addspacebetweenfareastanddigit/) eigenschappen van de `ParagraphFormat` Klasse gebruiken.

Het volgende codevoorbeeld laat zien hoe **AddSpaceBetweenFarEastAndAlpha** en **AddSpaceBetweenFarEastAndDigit** eigenschappen gebruikt moeten worden:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cpp" >}}

## Regelonderbrekingsopties Instellen

Het tabblad Aziatische typografie van het dialoogvenster Alinea-eigenschappen in Microsoft Word heeft de groep regeleinde. De opties van deze groep kunnen worden ingesteld met behulp van de [FarEastLineBreakControl](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_fareastlinebreakcontrol/), [WordWrap](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_wordwrap/), [HangingPunctuation](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_hangingpunctuation/) eigenschappen van de **ParagraphFormat** klasse.

Het volgende codevoorbeeld laat zien hoe deze eigenschappen te gebruiken:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetAsianTypographyLinebreakGroupProp.cpp" >}}
