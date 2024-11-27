---
title: Asijská typografie v C++
second_title: Aspose.Words pro C++
articleTitle: Práce s asijskou typografií
linktitle: Práce s asijskou typografií
description: "Práce s asijskou typografií pomocí C++. Upravte mezeru mezi asijským a latinským textem v C++."
type: docs
weight: 240
url: /cs/cpp/working-with-asian-typography/
timestamp: 2024-02-01-16-17-05
---

Asijská typografie je sada možností pro textové odstavce v dokumentech psaných v asijských jazycích.

Aspose.Words podporuje asijskou typografii pomocí třídy [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) a některých jejích vlastností.

## Automaticky upravte mezeru mezi asijským a latinským textem nebo čísly

Pokud navrhujete šablonu s východoasijským i latinským textem a chcete vylepšit vzhled šablony formuláře ovládáním mezer mezi oběma typy textu, můžete šablonu formuláře nakonfigurovat tak, aby automaticky upravovala mezery mezi těmito dvěma typy textu. Chcete-li toho dosáhnout, můžete použít vlastnosti [AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_addspacebetweenfareastandalpha/) a [AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_addspacebetweenfareastanddigit/) třídy `ParagraphFormat`.

Následující příklad kódu ukazuje, jak používat vlastnosti **AddSpaceBetweenFarEastAndAlpha** a **AddSpaceBetweenFarEastAndDigit**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cpp" >}}

## Nastavte Možnosti Zalomení Řádku

Karta asijské typografie dialogového okna Vlastnosti odstavce v Microsoft Word má skupinu zalomení řádku. Možnosti této skupiny lze nastavit pomocí [FarEastLineBreakControl](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_fareastlinebreakcontrol/), [WordWrap](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_wordwrap/), [HangingPunctuation](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_hangingpunctuation/) vlastnosti třídy **ParagraphFormat**.

Následující příklad kódu ukazuje, jak tyto vlastnosti používat:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetAsianTypographyLinebreakGroupProp.cpp" >}}
