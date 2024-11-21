---
title: Typografia azjatycka w Python
second_title: Aspose.Words dla Python
articleTitle: Praca z typografią azjatycką
linktitle: Praca z typografią azjatycką
description: "Pracuj z typografią azjatycką przy użyciu Python. Dostosuj odstęp między tekstem azjatyckim i łacińskim w Python."
type: docs
weight: 240
url: /pl/python-net/working-with-asian-typography/
timestamp: 2024-02-01-16-17-05
---

Typografia azjatycka to zestaw opcji dotyczących akapitów tekstowych w dokumentach napisanych w językach azjatyckich.

Aspose.Words obsługuje typografię azjatycką przy użyciu klasy [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/) i niektórych jej właściwości.

## Automatycznie dostosowuj odstępy między tekstem lub liczbami w języku azjatyckim i łacińskim

Jeśli projektujesz szablon zawierający tekst wschodnioazjatycki i łaciński i chcesz ulepszyć wygląd szablonu formularza, kontrolując odstępy między obydwoma typami tekstu, możesz skonfigurować szablon formularza tak, aby automatycznie dostosowywał odstępy między tymi dwoma typami tekstu. Aby to osiągnąć, można wykorzystać właściwości [AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/add_space_between_far_east_and_alpha/) i [AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/add_space_between_far_east_and_digit/) klasy `ParagraphFormat`.

Poniższy przykład kodu pokazuje, jak używać właściwości **AddSpaceBetweenFarEastAndAlpha** i **AddSpaceBetweenFarEastAndDigit**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-SpaceBetweenAsianAndLatinText.py" >}}

## Ustaw opcje podziału wiersza

Karta Typografia azjatycka w oknie dialogowym właściwości akapitu w Microsoft Word zawiera grupę podziału wierszy. Opcje tej grupy można ustawić za pomocą właściwości [FarEastLineBreakControl](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/far_east_line_break_control/), [WordWrap](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/word_wrap/), [HangingPunctuation](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/hanging_punctuation/) klasy **ParagraphFormat**.

Poniższy przykład kodu pokazuje, jak używać tych właściwości:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-AsianTypographyLineBreakGroup.py" >}}
