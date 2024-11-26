---
title: Работа с TextBoxes в C++
second_title: Aspose.Words за C++
articleTitle: Работа с TextBoxes
linktitle: Работа с TextBoxes
description: "Въведение в свързани текстови полета функция в Aspose.Words за C++."
type: docs
weight: 250
url: /bg/cpp/working-with-textboxes/
timestamp: 2024-01-27-14-07-04
---

В Aspose.Words класът [TextBox](https://reference.aspose.com/words/cpp/aspose.words.drawing/textbox/) се използва, за да укажете как да се показва текстът във фигура. Той излага публично свойство с име **Parent**, за да получите родителската фигура за текстовото поле, така че клиентът да намери свързания [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) от свързания **TextBox**.

## Създаване На Връзка

Класът **TextBox** предоставя метод [IsValidLinkTarget](https://reference.aspose.com/words/cpp/aspose.words.drawing/textbox/isvalidlinktarget/), за да се провери дали **TextBox** може да бъде свързан с целта **Textbox**.

Следващият пример за код показва как да проверите дали `TextBox` може да бъде свързан с целевото текстово поле:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CreateALink.cpp" >}}


## Проверка TextBox Последователност

Има няколко начина за показване на текст във фигура. [TextBox](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_textbox/) може да бъде главата, средата или опашката на последователност.

Следващият пример за код показва как да проверите дали **TextBox** е ези, тура или средата на редицата.:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CheckSequence.cpp" >}}

## Прекъсване на връзка

Използвайки метода [BreakForwardLink](https://reference.aspose.com/words/cpp/aspose.words.drawing/textbox/breakforwardlink/), можете да прекъснете връзката към следващия **TextBox**.

Следващият пример за код показва как да прекъснете връзка за **TextBox**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-BreakALink.cpp" >}}
