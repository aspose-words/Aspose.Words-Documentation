---
title: Praca z polami tekstowymi w C#
second_title: Aspose.Words dla .NET
articleTitle: Praca z TextBoxami
linktitle: Praca z TextBoxami
description: "Wprowadzenie do funkcji połączonych pól tekstowych w Aspose.Words dla .NET."
type: docs
weight: 250
url: /pl/net/working-with-textboxes/
timestamp: 2024-01-27-14-07-04
---

W Aspose.Words klasa [TextBox](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/) służy do określenia sposobu wyświetlania tekstu wewnątrz kształtu. Udostępnia publiczną właściwość o nazwie **Parent**, aby uzyskać kształt nadrzędny pola tekstowego, dzięki czemu klient może znaleźć połączony [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) z powiązanego **TextBox**.

## Tworzenie łącza

Klasa **TextBox** udostępnia metodę [IsValidLinkTarget](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/isvalidlinktarget/) w celu sprawdzenia, czy **TextBox** można powiązać z docelowym plikiem **Textbox**.

Poniższy przykład kodu pokazuje, jak sprawdzić, czy `TextBox` można powiązać z docelowym polem tekstowym:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CreateALink.cs" >}}

## Sprawdź sekwencję pola tekstowego

Istnieje kilka sposobów wyświetlania tekstu w kształcie. [TextBox](https://reference.aspose.com/words/net/aspose.words.drawing/shape/textbox/) może być głową, środkiem lub ogonem sekwencji.

Poniższy przykład kodu pokazuje, jak sprawdzić, czy **TextBox** jest głową, ogonem czy środkiem sekwencji:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CheckSequence.cs" >}}

## Zrywanie łącza

Za pomocą metody [BreakForwardLink](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/breakforwardlink/) możesz przerwać łącze do następnego **TextBox**.

Poniższy przykład kodu pokazuje, jak przerwać łącze dla **TextBox**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-BreakALink.cs" >}}
