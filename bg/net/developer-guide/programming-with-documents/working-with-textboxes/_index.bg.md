---
title: Работа с текстови кутии в C#
second_title: Aspose.Words вместо .NET
articleTitle: Работа с текстови кутии
linktitle: Работа с текстови кутии
description: "Въведение в свързани текстови кутии Aspose.Words вместо .NET."
type: docs
weight: 250
url: /bg/net/working-with-textboxes/
timestamp: 2024-01-27-14-07-04
---

В Aspose.Words, на [TextBox](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/) Класът се използва, за да се уточни как текстът се показва във форма. Разкрива публична собственост, наречена **Parent** за да получите формата на родител за текстовата кутия, така че клиентът да може да намери свързани [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) от свързания **TextBox**.

## Създаване на връзка

На **TextBox** Класът осигурява [IsValidLinkTarget](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/isvalidlinktarget/) метод, за да се провери дали **TextBox** може да бъде свързан с целта **Textbox**.

Следният пример с код показва как да се провери дали `TextBox` може да бъде свързан с целевата текстова кутия:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CreateALink.cs" >}}

## Проверка на текст Поредица от клетки

Има няколко начина да се покаже текст във форма. На [TextBox](https://reference.aspose.com/words/net/aspose.words.drawing/shape/textbox/) може да бъде главата, средата или опашката на редица.

Следният пример за код показва как да се провери дали **TextBox** е глава, опашка или средата на поредицата:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CheckSequence.cs" >}}

## Прекъсване на връзката

Използване на [BreakForwardLink](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/breakforwardlink/) метод можете да прекъснете връзката към следващия **TextBox**.

Следният пример с код показва как да прекъснете връзката за a **TextBox**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-BreakALink.cs" >}}
