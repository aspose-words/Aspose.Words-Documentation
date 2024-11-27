---
title: Praca z TextBoxes W C++
second_title: Aspose.Words dla C++
articleTitle: Praca z TextBoxes
linktitle: Praca z TextBoxes
description: "Wprowadzenie do połączonych pól tekstowych funkcja w Aspose.Words dla C++."
type: docs
weight: 250
url: /pl/cpp/working-with-textboxes/
timestamp: 2024-01-27-14-07-04
---

W klasie Aspose.Words klasa [TextBox](https://reference.aspose.com/words/cpp/aspose.words.drawing/textbox/) służy do określenia sposobu wyświetlania tekstu wewnątrz kształtu. Ujawnia właściwość publiczną o nazwie **Parent**, Aby uzyskać kształt nadrzędny dla pola tekstowego, aby klient mógł znaleźć połączony [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) z powiązanego **TextBox**.

## Utwórz Link

Klasa **TextBox** zapewnia metodę [IsValidLinkTarget](https://reference.aspose.com/words/cpp/aspose.words.drawing/textbox/isvalidlinktarget/) w celu sprawdzenia, czy **TextBox** można połączyć z celem **Textbox**.

Poniższy przykład kodu pokazuje, jak sprawdzić, czy `TextBox` można połączyć z docelowym polem tekstowym:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CreateALink.cpp" >}}


## Sprawdź Sekwencję TextBox

Istnieje kilka sposobów wyświetlania tekstu w kształcie. [TextBox](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_textbox/) może być głową, środkiem lub ogonem sekwencji.

Poniższy przykład kodu pokazuje, jak sprawdzić, czy **TextBox** jest głową, ogonem lub środkiem sekwencji:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CheckSequence.cpp" >}}

## Zerwij Link

Korzystając z metody [BreakForwardLink](https://reference.aspose.com/words/cpp/aspose.words.drawing/textbox/breakforwardlink/), możesz przerwać link do następnego **TextBox**.

Poniższy przykład kodu pokazuje, jak złamać łącze dla **TextBox**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-BreakALink.cpp" >}}
