---
title: Asiatische Typografie in C#
second_title: Aspose.Words für .NET
articleTitle: Arbeiten mit asiatischer Typografie
linktitle: Arbeiten mit asiatischer Typografie
description: "Arbeiten Sie mit asiatischer Typografie mit C#. Passen Sie den Abstand zwischen asiatischem und lateinischem Text in C# an."
type: docs
weight: 240
url: /de/net/working-with-asian-typography/
---

Bei der asiatischen Typografie handelt es sich um eine Reihe von Optionen für Textabsätze in Dokumenten, die in asiatischen Sprachen verfasst sind.

Aspose.Words unterstützt asiatische Typografie mithilfe der [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/)-Klasse und einiger ihrer Eigenschaften.

## Passen Sie den Abstand zwischen asiatischem und lateinischem Text oder Zahlen automatisch an

Wenn Sie eine Vorlage mit sowohl ostasiatischem als auch lateinischem Text entwerfen und das Erscheinungsbild Ihrer Formularvorlage verbessern möchten, indem Sie die Abstände zwischen beiden Texttypen steuern, können Sie Ihre Formularvorlage so konfigurieren, dass die Abstände zwischen diesen beiden Texttypen automatisch angepasst werden. Um dies zu erreichen, können Sie [AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/net/aspose.words/paragraphformat/addspacebetweenfareastandalpha/)- und [AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/net/aspose.words/paragraphformat/addspacebetweenfareastanddigit/)-Eigenschaften der `ParagraphFormat`-Klasse verwenden.

Das folgende Codebeispiel zeigt, wie **AddSpaceBetweenFarEastAndAlpha**- und **AddSpaceBetweenFarEastAndDigit**-Eigenschaften verwendet werden:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cs" >}}

## Legen Sie die Zeilenumbruchoptionen fest

Die Registerkarte "Asiatische Typografie" des Dialogfelds "Absatzeigenschaften" in Microsoft Word verfügt über eine Zeilenumbruchgruppe. Die Optionen dieser Gruppe können mithilfe der [FarEastLineBreakControl](https://reference.aspose.com/words/net/aspose.words/paragraphformat/fareastlinebreakcontrol/)-, [WordWrap](https://reference.aspose.com/words/net/aspose.words/paragraphformat/wordwrap/)- und [HangingPunctuation](https://reference.aspose.com/words/net/aspose.words/paragraphformat/hangingpunctuation/)-Eigenschaften der **ParagraphFormat**-Klasse festgelegt werden.

Das folgende Codebeispiel zeigt, wie diese Eigenschaften verwendet werden:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetAsianTypographyLinebreakGroupProp.cs" >}}
