---
title: Praca z polami tekstowymi w Python
second_title: Aspose.Words dla Python via .NET
articleTitle: Praca z TextBoxami
linktitle: Praca z TextBoxami
description: "Pracuj z polami tekstowymi w dokumencie przy użyciu Python."
type: docs
weight: 250
url: /pl/python-net/working-with-textboxes/
timestamp: 2024-01-27-14-07-04
---

W Aspose.Words klasa [TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/) służy do określenia sposobu wyświetlania tekstu wewnątrz kształtu. Udostępnia właściwość publiczną o nazwie [parent](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/parent/), która pozwala uzyskać kształt nadrzędny pola tekstowego, aby umożliwić klientowi znalezienie połączonego [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) z połączonego [TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/).

## Tworzenie łącza

Klasa [TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/) udostępnia metodę [is_valid_link_target](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/is_valid_link_target/) w celu sprawdzenia, czy [TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/) można powiązać z docelowym polem tekstowym.

Poniższy przykład kodu pokazuje, jak sprawdzić, czy `TextBox` można powiązać z docelowym polem tekstowym:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_textboxes-CreateALink.py" >}}

## Sprawdź sekwencję pola tekstowego

Istnieje kilka sposobów wyświetlania tekstu w kształcie. [text_box](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/text_box/) może być głową, środkiem lub ogonem sekwencji.

Poniższy przykład kodu pokazuje, jak sprawdzić, czy **TextBox** jest głową, ogonem czy środkiem sekwencji:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_textboxes-CheckSequence.py" >}}

## Zrywanie łącza

Za pomocą metody [text_box](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/text_box/) możesz przerwać łącze do następnego **TextBox**.

Poniższy przykład kodu pokazuje, jak przerwać łącze dla **TextBox**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_textboxes-BreakALink.py" >}}
