---
title: Робота з текстовими коробками в C#
second_title: Aspose.Words для .NET
articleTitle: Робота з текстовими коробками
linktitle: Робота з текстовими коробками
description: "Вступ до пов'язаних функцій текстових скриньок у Aspose.Words для .NETй"
type: docs
weight: 250
url: /uk/net/working-with-textboxes/
timestamp: 2024-01-27-14-07-04
---

У Aspose.Words, Про нас [TextBox](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/) клас використовується для визначення тексту, що відображається всередині форми. Виставляє громадську власність **Parent** щоб отримати батьківську форму для текстової коробки, щоб клієнт міг знайти пов'язаний [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) від асоційованої **TextBox**й

## Створення посилання

Про нас **TextBox** клас забезпечує [IsValidLinkTarget](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/isvalidlinktarget/) спосіб перевірити, чи є **TextBox** може бути пов'язаний з метою **Textbox**й

Приклад наступного коду показує, як перевірити, якщо `TextBox` може бути підключений до цільової текстової скриньки:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CreateALink.cs" >}}

## Перевірити текст Коробка Sequence

Існує кілька способів відображення тексту у формі. Про нас [TextBox](https://reference.aspose.com/words/net/aspose.words.drawing/shape/textbox/) може бути керівником, середнім або в’язкою послідовності.

Приклад наступного коду показує, як перевірити, якщо **TextBox** - голова, в’язниця або середина послідовності:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CheckSequence.cs" >}}

## Перервувати посилання

Використання [BreakForwardLink](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/breakforwardlink/) метод ви можете розбити посилання на наступний **TextBox**й

Приклад наступного коду показує, як зламати посилання для **TextBox**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-BreakALink.cs" >}}
