---
title: Работа с текстовыми ящиками в C#
second_title: Aspose.Words для .NET
articleTitle: Работа с TextBoxs
linktitle: Работа с TextBoxs
description: "Введение в связанные текстовые ящики в Aspose.Words для .NET."
type: docs
weight: 250
url: /ru/net/working-with-textboxes/
timestamp: 2024-01-27-14-07-04
---

В Aspose.Words, тот [TextBox](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/) Класс используется для определения того, как текст отображается внутри формы. Он разоблачает государственную собственность, названную **Parent** чтобы получить форму родителя для текстового поля, чтобы клиент мог найти связанную [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) от связанного **TextBox**.

## Создание ссылки

The **TextBox** Класс предоставляет [IsValidLinkTarget](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/isvalidlinktarget/) метод, чтобы проверить, является ли **TextBox** могут быть связаны с целью **Textbox**.

Следующий пример кода показывает, как проверить `TextBox` Можно связать с целевым текстовым ящиком:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CreateALink.cs" >}}

## Проверьте текст Коробочная последовательность

Существует несколько способов отображения текста в форме. The [TextBox](https://reference.aspose.com/words/net/aspose.words.drawing/shape/textbox/) Это может быть голова, средний или хвост последовательности.

Следующий пример показывает, как проверить, **TextBox** Это голова, хвост или середина последовательности:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CheckSequence.cs" >}}

## Разорвать связь

Используя [BreakForwardLink](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/breakforwardlink/) Способ, которым вы можете разорвать ссылку на следующий **TextBox**.

Следующий пример кода показывает, как разорвать ссылку для **TextBox**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-BreakALink.cs" >}}
