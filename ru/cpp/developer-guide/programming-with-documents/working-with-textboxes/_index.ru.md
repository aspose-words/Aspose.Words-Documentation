---
title: Работа с TextBoxes в C++
second_title: Aspose.Words для C++
articleTitle: Работа с TextBoxes
linktitle: Работа с TextBoxes
description: "Введение в функцию связанных текстовых полей в Aspose.Words для C++."
type: docs
weight: 250
url: /ru/cpp/working-with-textboxes/
timestamp: 2024-01-27-14-07-04
---

В Aspose.Words класс [TextBox](https://reference.aspose.com/words/cpp/aspose.words.drawing/textbox/) используется для указания способа отображения текста внутри фигуры. Он предоставляет общедоступное свойство с именем **Parent**, позволяющее получить родительскую фигуру для текстового поля, чтобы пользователь мог найти связанный [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) из связанного **TextBox**.

## Создайте ссылку

Класс **TextBox** предоставляет метод [IsValidLinkTarget](https://reference.aspose.com/words/cpp/aspose.words.drawing/textbox/isvalidlinktarget/), чтобы проверить, может ли **TextBox** быть связан с целевым объектом **Textbox**.

В следующем примере кода показано, как проверить, можно ли связать `TextBox` с целевым текстовым полем:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CreateALink.cpp" >}}


## Проверьте последовательность TextBox

Существует несколько способов отображения текста в форме. Символ [TextBox](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_textbox/) может быть началом, серединой или концом последовательности.

В следующем примере кода показано, как проверить, является ли **TextBox** началом, концом или серединой последовательности:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CheckSequence.cpp" >}}

## Разорвать связь

Используя метод [BreakForwardLink](https://reference.aspose.com/words/cpp/aspose.words.drawing/textbox/breakforwardlink/), вы можете разорвать ссылку на следующую **TextBox**.

В следующем примере кода показано, как разорвать ссылку для **TextBox**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-BreakALink.cpp" >}}
