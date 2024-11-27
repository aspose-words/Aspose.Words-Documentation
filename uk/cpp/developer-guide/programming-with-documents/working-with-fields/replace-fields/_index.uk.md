---
title: Замінити поля C++
second_title: Aspose.Words для C++
articleTitle: Замініть поля статичним текстом
linktitle: Замініть поля статичним текстом
description: "Дізнайтеся, як замінити поля текстом у C++. Замініть поля статичними даними, використовуючи C++ API."
type: docs
weight: 37
url: /uk/cpp/replace-fields/
timestamp: 2024-01-27-14-07-04
---

Заміна полів часто потрібна, коли ви хочете зберегти документ як статичну копію. Наприклад, при відправці в якості вкладення в електронному листі. Перетворення таких полів, як `DATE` або `TIME`, у статичний текст дозволить відображати ту саму дату в документі, що і при поданні. Крім того, у деяких ситуаціях вам може знадобитися видалити умовні поля `IF` зі свого документа та замінити їх останнім текстовим результатом. Наприклад, перетворимо результат роботи поля `IF` в статичний текст, щоб воно більше не змінювало своє значення динамічно при оновленні полів в документі.

На наведеній нижче діаграмі показано, як поле `IF` зберігається в документі:

* текст оточений спеціальними вузлами полів - [FieldStart](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_fieldstart/) і [FieldEnd](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_fieldend/)
* вузол [FieldSeparator](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_separator/) розділяє текст всередині поля на код поля та результат поля
* код поля визначає загальну поведінку поля, тоді як результат за полем зберігає останній результат при оновленні цього поля за допомогою Microsoft Word або Aspose.Words
* результат роботи з полем-це те, що зберігається в полі і відображається в документі при перегляді

![update-remove-a-field-aspose-words](updating-and-removing-a-field-1.png)

Структуру також можна побачити нижче в ієрархічному вигляді, використовуючи демонстраційний проект *"DocumentExplorer"*.

![update-remove-a-field-aspose-words-2](updating-and-removing-a-field-2.png)

## Поля, які не можуть бути замінені текстом

Заміна поля статичним текстом не працює належним чином для деяких полів у верхньому або нижньому колонтитулі.

Наприклад, спроба перетворити поле `PAGE` у верхньому або нижньому колонтитулі в статичний текст призведе до відображення одного і того ж значення на всіх сторінках. Це пов'язано з тим, що колонтитули та колонтитули повторюються на кількох сторінках, і коли вони залишаються у вигляді полів, вони обробляються певним чином, щоб відобразити правильний результат для кожної сторінки.

Однак у заголовку поле `PAGE` добре перетворюється на статичний фрагмент тексту. Цей фрагмент тексту буде оцінюватися так, ніби це остання сторінка в розділі, що призведе до відображення будь-якого поля `PAGE` у заголовку як останньої сторінки на всіх сторінках.

Наступний приклад коду показує, як замінити поле останнім результатом:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-UnlinkFields.cpp" >}}

## Перетворення певних типів полів у певних частинах документа

Оскільки метод **ConvertFieldsToStaticText** приймає два параметри – властивості [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/) і перерахування [FieldType](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldtype/), цьому методу можна передати будь-який складений вузол. Це дозволяє перетворювати поля в статичний текст лише в певних частинах документа.

Наприклад, ви можете передати об'єкт [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) і перетворити поля вказаного типу з усього документа в статичний текст, або ви можете передати об'єкт [Body](https://reference.aspose.com/words/cpp/aspose.words/body/) розділу і перетворити лише поля, знайдені в цьому тексті.

{{% alert color="primary" %}}

Передаючи вузол на рівні блоку, наприклад [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/), майте на увазі, що в деяких випадках поля можуть займати кілька абзаців. У цьому випадку рекомендується передавати батьківський елемент складеного елемента, щоб уникнути цього.

{{% /alert %}}

Перерахування [FieldType](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldtype/), передане методу **ConvertFieldsToStaticText**, вказує, який тип полів слід перетворити на статичний текст. Будь-який інший тип полів, знайдений у документі, залишиться незмінним.

Наступний приклад коду показує, як вибрати поля певного типу - *targetFieldType* у певному вузлі - *compositeNode*, а потім перетворити їх у статичний текст:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldsHelper-FieldsHelper.cpp" >}}

Наступний приклад коду показує, як перетворити всі поля `IF` у документі в статичний текст:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-ConvertFieldsInDocument-ConvertFieldsInDocument.cpp" >}}

Наступний приклад коду показує, як перетворити всі поля `PAGE` у тексті документа в статичний текст:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-ConvertFieldsInDocument-ConvertFieldsInDocument.cpp" >}}

Наступний приклад коду показує, як перетворити всі поля `IF` в останньому абзаці в статичний текст:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-ConvertFieldsInDocument-ConvertFieldsInDocument.cpp" >}}
