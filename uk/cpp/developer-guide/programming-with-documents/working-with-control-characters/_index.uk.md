---
title: Робота з керуючими Символами
second_title: Aspose.Words для C++
articleTitle: Робота з керуючими Символами
linktitle: Робота з керуючими Символами
description: "Введення в роботу з керуючими символами в Aspose.Words для C++."
type: docs
weight: 400
url: /uk/cpp/working-with-control-characters/
timestamp: 2024-01-27-14-07-04
---

Microsoft Word документи можуть містити Різні символи, які мають особливе значення. Зазвичай вони використовуються для форматування і не відображаються нормально. Ви можете зробити їх видимими, натиснувши кнопку Показати/Приховати знаки форматування, розташовану на стандартній панелі інструментів.

Іноді вам може знадобитися додати або видалити символи в текст або з нього. Наприклад, при програмному отриманні тексту з документа Aspose.Words зберігає більшість контрольних символів, тому, якщо вам потрібно працювати з цим текстом, вам, ймовірно, слід видалити або замінити символи.

Клас [ControlChar](https://reference.aspose.com/words/cpp/aspose.words/controlchar/) є сховищем констант, які представляють Керуючі символи, часто зустрічаються в документах. Він надає як char, так і string версії тих самих констант. Наприклад, string [LineBreak](https://reference.aspose.com/words/cpp/aspose.words/controlchar/linebreak/) і char **ControlChar.LineBreakChar** мають однакове значення.

Наступний приклад коду показує, як використовувати контрольні символи:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-ConvertUtil-UtilityClasses-UseControlCharacters.cpp" >}}
