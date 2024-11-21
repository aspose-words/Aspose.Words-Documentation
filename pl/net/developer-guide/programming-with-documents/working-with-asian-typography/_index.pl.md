---
title: Typografia azjatycka w C#
second_title: Aspose.Words dla .NET
articleTitle: Praca z typografią azjatycką
linktitle: Praca z typografią azjatycką
description: "Pracuj z typografią azjatycką przy użyciu C#. Dostosuj odstęp między tekstem azjatyckim i łacińskim w C#."
type: docs
weight: 240
url: /pl/net/working-with-asian-typography/
timestamp: 2024-02-01-16-17-05
---

Typografia azjatycka to zestaw opcji dotyczących akapitów tekstowych w dokumentach napisanych w językach azjatyckich.

Aspose.Words obsługuje typografię azjatycką przy użyciu klasy [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) i niektórych jej właściwości.

## Automatycznie dostosowuj odstępy między tekstem lub liczbami w języku azjatyckim i łacińskim

Jeśli projektujesz szablon zawierający tekst wschodnioazjatycki i łaciński i chcesz ulepszyć wygląd szablonu formularza, kontrolując odstępy między obydwoma typami tekstu, możesz skonfigurować szablon formularza tak, aby automatycznie dostosowywał odstępy między tymi dwoma typami tekstu. Aby to osiągnąć, można wykorzystać właściwości [AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/net/aspose.words/paragraphformat/addspacebetweenfareastandalpha/) i [AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/net/aspose.words/paragraphformat/addspacebetweenfareastanddigit/) klasy `ParagraphFormat`.

Poniższy przykład kodu pokazuje, jak używać właściwości **AddSpaceBetweenFarEastAndAlpha** i **AddSpaceBetweenFarEastAndDigit**:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cs" >}}

## Ustaw opcje podziału wiersza

Karta Typografia azjatycka w oknie dialogowym właściwości akapitu w Microsoft Word zawiera grupę podziału wierszy. Opcje tej grupy można ustawić za pomocą właściwości [FarEastLineBreakControl](https://reference.aspose.com/words/net/aspose.words/paragraphformat/fareastlinebreakcontrol/), [WordWrap](https://reference.aspose.com/words/net/aspose.words/paragraphformat/wordwrap/), [HangingPunctuation](https://reference.aspose.com/words/net/aspose.words/paragraphformat/hangingpunctuation/) klasy **ParagraphFormat**.

Poniższy przykład kodu pokazuje, jak używać tych właściwości:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetAsianTypographyLinebreakGroupProp.cs" >}}
