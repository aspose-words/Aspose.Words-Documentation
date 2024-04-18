---
title: Робота з списками в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Робота з списками
linktitle: Робота з списками
description: "Створіть, вкажіть форматування та перезавантаження списку у документі Pythonй"
type: docs
weight: 200
url: /uk/python-net/working-with-lists/
---

Перелік у списку Microsoft Word документ є набором властивостей форматування списку. Переліки можуть використовуватися у ваших документах для форматування, оформлення та підкреслення тексту. Списки є відмінним способом організації даних в документах, і вони полегшують для читачів для розуміння ключових точок

Кожен список може мати до 9 рівнів і форматування властивостей, таких як стиль число, початкове значення, відступ, положення вкладок і т.д. Визначаються окремо для кожного рівня.

У Aspose.Words, робота зі списками представлена [Lists](https://reference.aspose.com/words/python-net/aspose.words.lists/) модуль. Однак, [List](https://reference.aspose.com/words/python-net/aspose.words.lists/list/) об'єкт завжди належить до [ListCollection](https://reference.aspose.com/words/python-net/aspose.words.lists/listcollection/) збірка.

Ця тема описує, як працювати программатично з списками за допомогою Aspose.Wordsй

## Створення списку застосувань

Aspose.Words дозволяє легко створювати списки за допомогою форматування списку. [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) забезпечує [DocumentBuilder.list_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/list_format/) майно, що повертає майно [ListFormat](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/) об'єкт. Цей об'єкт має кілька способів запуску і завершення списку і для збільшення / виведення відступу. Є два загальні типи списку Microsoft Word: куляний і нумерований.

- Для запуску списку бюлетенів, виклику [ListFormat.apply_bullet_default](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_bullet_default/)й
- Для запуску списку, виклику [ListFormat.apply_number_default](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_number_default/)й

До поточного абзацу додаються кулі або номер і форматування. [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) до [ListFormat.remove_numbers](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/remove_numbers/) це називається, щоб зупинити форматування списку.

У документах Word можуть складатися списки до дев’яти рівнів. Список форматування для кожного рівня визначає, який використовується куля або номер, лівий відступ, простір між кулі та текстом тощо. Наведені нижче способи зміни рівня списку і застосовуються нові властивості форматування рівня:

- до Для збільшення рівня списку поточного абзацу за одним рівнем виклику [ListFormat.list_indent](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/list_indent/)
- до Для зменшення рівня списку поточного абзацу за одним рівнем виклику [ListFormat.list_outdent](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/list_outdent/)

Методи зміни рівня списку і застосовуються форматувальні властивості нового рівня.

{{% alert color="primary" %}}

Ви також можете використовувати [ListFormat.list_level_number](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/list_level_number/) майно, щоб отримати або встановити рівень списку для абзацу. Рівень списку нумеровано 0 до 8.

{{% /alert %}}

Нижче приклад показує, як побудувати багаторівневий список.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-MultilevelListFormatting.py" >}}

## Вказати форматування для рівня списку

Список-рівневі об'єкти створюються автоматично, коли створюється список. Використання властивостей і методів [ListLevel](https://reference.aspose.com/words/python-net/aspose.words.lists/listlevel/) Клас контролю форматування окремих рівнів списку.

## Список перезавантаження для кожного розділу

Ви можете перезапустити список для кожного розділу [a_restart_at_each_section майно](https://reference.aspose.com/words/python-net/aspose.words.lists/list/is_restart_at_each_section/) майно. Зауважте, що цей параметр підтримується тільки в форматі RTF, DOC та DOCX. Ця опція буде написана до DOCX тільки якщо OoxmlCompliance вище, ніж Ecma376.

Приклад коду показує, як створити список і перезапустити його для кожного розділу:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_list-RestartListAtEachSection.py" >}}
