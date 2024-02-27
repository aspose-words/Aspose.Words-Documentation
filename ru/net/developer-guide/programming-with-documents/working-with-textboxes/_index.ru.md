---
title: Работа с текстовыми полями в C#
second_title: Aspose.Words для .NET
articleTitle: Работа с текстовыми полями
linktitle: Работа с текстовыми полями
description: "Введение в функцию связанных текстовых полей в версии Aspose.Words для версии .NET."
type: docs
weight: 250
url: /ru/net/working-with-textboxes/
---

В версии Aspose.Words класс [TextBox](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/) используется для указания способа отображения текста внутри фигуры. Он предоставляет общедоступное свойство с именем **Parent**, чтобы получить родительскую форму для текстового поля, чтобы клиент мог найти связанный [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) из связанного **TextBox**.

## Создание ссылки

Класс **TextBox** предоставляет метод [IsValidLinkTarget](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/isvalidlinktarget/), чтобы проверить, можно ли связать **TextBox** с целью **Textbox**.

В следующем примере кода показано, как проверить, можно ли связать `TextBox` с целевым текстовым полем:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CreateALink.cs" >}}

## Проверить последовательность текстового поля

Существует несколько способов отображения текста в фигуре. [TextBox](https://reference.aspose.com/words/net/aspose.words.drawing/shape/textbox/) может быть началом, серединой или хвостом последовательности.

В следующем примере кода показано, как проверить, является ли **TextBox** началом, хвостом или серединой последовательности:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CheckSequence.cs" >}}

## Разрыв ссылки

Используя метод [BreakForwardLink](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/breakforwardlink/), вы можете разорвать ссылку на следующий **TextBox**.

В следующем примере кода показано, как разорвать ссылку для **TextBox**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-BreakALink.cs" >}}
