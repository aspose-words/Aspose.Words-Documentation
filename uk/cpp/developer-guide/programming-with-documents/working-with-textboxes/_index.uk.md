---
title: Робота з TextBoxes в C++
second_title: Aspose.Words для C++
articleTitle: Робота з TextBoxes
linktitle: Робота з TextBoxes
description: "Вступ до функції пов'язаних текстових полів у Aspose.Words для C++."
type: docs
weight: 250
url: /uk/cpp/working-with-textboxes/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words клас [TextBox](https://reference.aspose.com/words/cpp/aspose.words.drawing/textbox/) використовується для вказівки способу відображення тексту всередині фігури. Він надає загальнодоступну властивість під назвою **Parent**, що дозволяє отримати батьківську фігуру для текстового поля, щоб користувач міг знайти зв'язаний [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) із зв'язаного **TextBox**.

## Створіть посилання

Клас **TextBox** надає метод [IsValidLinkTarget](https://reference.aspose.com/words/cpp/aspose.words.drawing/textbox/isvalidlinktarget/), щоб перевірити, чи може **TextBox** бути пов'язаний з цільовим об'єктом **Textbox**.

Наступний приклад коду показує, як перевірити, чи можна пов'язати `TextBox` із цільовим текстовим полем:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CreateALink.cpp" >}}


## Перевірте послідовність TextBox

Існує кілька способів відображення тексту у формі. Символ [TextBox](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_textbox/) може бути початком, серединою або кінцем послідовності.

Наступний приклад коду показує, як перевірити, чи є **TextBox** початком, кінцем або серединою послідовності:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CheckSequence.cpp" >}}

## Розірвати зв'язок

Використовуючи метод [BreakForwardLink](https://reference.aspose.com/words/cpp/aspose.words.drawing/textbox/breakforwardlink/), ви можете розірвати посилання на наступне **TextBox**.

Наступний приклад коду показує, як розірвати посилання для **TextBox**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-BreakALink.cpp" >}}
