---
title: Работа с текстовыми ящиками в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Работа с TextBoxs
linktitle: Работа с TextBoxs
description: "Работа с текстовыми ящиками в документе с использованием Python."
type: docs
weight: 250
url: /ru/python-net/working-with-textboxes/
---

В Aspose.Words, [TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/) Класс используется для определения того, как текст отображается внутри формы. Предоставляет государственную собственность под названием [parent](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/parent/) чтобы получить родительскую форму для текстового поля, чтобы клиент мог найти связанную [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) связанный [TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/).

## Создание ссылки

[TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/) Класс предоставляет [is_valid_link_target](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/is_valid_link_target/) метод, чтобы проверить, является ли [TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/) Он может быть связан с целевым текстовым ящиком.

Следующий пример кода показывает, как проверить `TextBox` Можно связать с целевым текстовым ящиком:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_textboxes-CreateALink.py" >}}

## Проверьте текст Коробочная последовательность

Существует несколько способов отображения текста в форме. The [text_box](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/text_box/) Это может быть голова, средний или хвост последовательности.

Следующий пример показывает, как проверить, **TextBox** Это голова, хвост или середина последовательности:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_textboxes-CheckSequence.py" >}}

## Разорвать связь

Используя [text_box](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/text_box/) Способ, которым вы можете разорвать ссылку на следующий **TextBox**.

Следующий пример кода показывает, как разорвать ссылку для **TextBox**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_textboxes-BreakALink.py" >}}
