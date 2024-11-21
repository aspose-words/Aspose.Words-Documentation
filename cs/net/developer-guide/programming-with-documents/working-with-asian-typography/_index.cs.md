---
title: Asijská typografie C#
second_title: Aspose.Words místo .NET
articleTitle: Práce s asijskou typografií
linktitle: Práce s asijskou typografií
description: "Práce s asijskou typografií pomocí C#. Nastavte prostor mezi asijským a latinským textem v C#."
type: docs
weight: 240
url: /cs/net/working-with-asian-typography/
timestamp: 2024-02-01-16-17-05
---

Asijská typografie je soubor možností pro textové odstavce v dokumentech napsaných v asijských jazycích.

Aspose.Words podporuje asijskou typografii pomocí [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) třída a některé její vlastnosti.

## Automaticky upravit prostor mezi asijským a latinským textem nebo čísly

Pokud navrhujete šablonu jak s východoasijským, tak latinským textem a chcete zlepšit vzhled vaší šablony formuláře ovládáním mezer mezi oběma typy textu, můžete nakonfigurovat šablonu formuláře tak, abyste automaticky upravili mezery mezi těmito dvěma typy textu. K dosažení tohoto cíle můžete použít [AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/net/aspose.words/paragraphformat/addspacebetweenfareastandalpha/) a [AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/net/aspose.words/paragraphformat/addspacebetweenfareastanddigit/) vlastnosti `ParagraphFormat` třída.

Následující příklad kódu ukazuje, jak používat **AddSpaceBetweenFarEastAndAlpha** a **AddSpaceBetweenFarEastAndDigit** vlastnosti:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cs" >}}

## Nastavit možnosti přerušení řádku

Asijské Typografie záložka odstavce vlastnosti dialogové okno v Microsoft Word má line break skupinu. Možnosti této skupiny lze nastavit pomocí [FarEastLineBreakControl](https://reference.aspose.com/words/net/aspose.words/paragraphformat/fareastlinebreakcontrol/), [WordWrap](https://reference.aspose.com/words/net/aspose.words/paragraphformat/wordwrap/), [HangingPunctuation](https://reference.aspose.com/words/net/aspose.words/paragraphformat/hangingpunctuation/) vlastnosti **ParagraphFormat** třída.

Následující příklad kódu ukazuje, jak tyto vlastnosti používat:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetAsianTypographyLinebreakGroupProp.cs" >}}
