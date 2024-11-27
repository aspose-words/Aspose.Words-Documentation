---
title: Typografia azjatycka w C++
second_title: Aspose.Words dla C++
articleTitle: Praca z typografią azjatycką
linktitle: Praca z typografią azjatycką
description: "Pracuj z typografią azjatycką za pomocą C++. Dostosuj spację między tekstem azjatyckim i łacińskim w C++."
type: docs
weight: 240
url: /pl/cpp/working-with-asian-typography/
timestamp: 2024-02-01-16-17-05
---

Typografia azjatycka to zestaw opcji akapitów tekstowych w dokumentach napisanych w językach azjatyckich.

Aspose.Words obsługuje typografię azjatycką przy użyciu klasy [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) i niektórych jej właściwości.

## Automatycznie Dostosuj spację między tekstem lub cyframi azjatyckimi i łacińskimi

Jeśli projektujesz szablon z tekstem Wschodnioazjatyckim i łacińskim i chcesz poprawić wygląd szablonu formularza, kontrolując spacje między obydwoma typami tekstu, możesz skonfigurować szablon formularza tak, aby automatycznie dostosowywał spacje między tymi dwoma typami tekstu. Aby to osiągnąć, możesz użyć właściwości [AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_addspacebetweenfareastandalpha/) i [AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_addspacebetweenfareastanddigit/) klasy `ParagraphFormat`.

Poniższy przykład kodu pokazuje, jak używać właściwości **AddSpaceBetweenFarEastAndAlpha** i **AddSpaceBetweenFarEastAndDigit**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cpp" >}}

## Ustaw Opcje Podziału Linii

Zakładka Typografia azjatycka w oknie dialogowym Właściwości akapitu w Microsoft Word zawiera grupę podziałów wierszy. Opcje tej grupy można ustawić za pomocą [FarEastLineBreakControl](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_fareastlinebreakcontrol/), [WordWrap](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_wordwrap/), [HangingPunctuation](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_hangingpunctuation/) właściwości klasy **ParagraphFormat**.

Poniższy przykład kodu pokazuje, jak używać tych właściwości:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetAsianTypographyLinebreakGroupProp.cpp" >}}
