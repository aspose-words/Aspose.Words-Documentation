---
title: Работа с TextBoxes в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Работа с TextBoxes
linktitle: Работа с TextBoxes
description: "Работайте с текстовыми полями в документе, используя Python."
type: docs
weight: 250
url: /ru/python-net/working-with-textboxes/
timestamp: 2024-01-27-14-07-04
---

В Aspose.Words класс [TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/) используется для указания способа отображения текста внутри фигуры. Он предоставляет общедоступное свойство с именем [parent](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/parent/), позволяющее получить родительскую форму для текстового поля, чтобы пользователь мог найти linked [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) из linked [TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/).

## Создание ссылки

класс [TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/) предоставляет метод [is_valid_link_target](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/is_valid_link_target/), чтобы проверить, можно ли связать [TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/) с целевым текстовым полем.

В следующем примере кода показано, как проверить, можно ли связать `TextBox` с целевым текстовым полем:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_textboxes-CreateALink.py" >}}

## Проверьте последовательность TextBox

Существует несколько способов отображения текста в форме. Символ [text_box](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/text_box/) может быть началом, серединой или концом последовательности.

В следующем примере кода показано, как проверить, является ли **TextBox** началом, концом или серединой последовательности:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_textboxes-CheckSequence.py" >}}

## Разрыв связи

Используя метод [text_box](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/text_box/), вы можете разорвать ссылку на следующую **TextBox**.

В следующем примере кода показано, как разорвать ссылку для **TextBox**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_textboxes-BreakALink.py" >}}
