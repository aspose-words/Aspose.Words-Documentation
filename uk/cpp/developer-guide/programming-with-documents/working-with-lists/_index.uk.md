---
title: Робота зі списками в C++
second_title: Aspose.Words для C++
articleTitle: Робота зі Списками
linktitle: Робота зі Списками
description: "Вступ до функції форматування нумерації в Aspose.Words для C++."
type: docs
weight: 200
url: /uk/cpp/working-with-lists/
timestamp: 2024-01-30-16-22-34
---

Список у документі Microsoft Word - це набір властивостей форматування списків. Списки можна використовувати у ваших документах для форматування, упорядкування та виділення тексту. Списки-це чудовий спосіб упорядкувати дані в документах, і вони полегшують читачам розуміння ключових моментів.

Кожен список може мати до 9 рівнів, і властивості форматування, такі як стиль чисел, початкове значення, відступ, позиція табуляції і т.д., визначаються окремо для кожного рівня.

У Aspose.Words Робота зі списками представлена простором імен [Lists](https://reference.aspose.com/words/cpp/aspose.words.lists/). Однак об'єкт [List](https://reference.aspose.com/words/cpp/aspose.words.lists/list/) завжди належить до колекції [ListCollection](https://reference.aspose.com/words/cpp/aspose.words.lists/listcollection/).

У цьому розділі описано, як програмно працювати зі списками за допомогою Aspose.Words.

## Вкажіть форматування для рівня списку

Об'єкти рівня списку створюються автоматично при створенні списку. Використовуйте властивості та методи класу [ListLevel](https://reference.aspose.com/words/cpp/aspose.words.lists/listlevel/) для управління форматуванням окремих рівнів списку.

## Список перезапусків для кожного розділу

Ви можете перезапустити список для кожного розділу, використовуючи властивість [IsRestartAtEachSection](https://reference.aspose.com/words/cpp/aspose.words.lists/list/get_isrestartateachsection/). Зверніть увагу, що цей параметр підтримується лише у форматах документів RTF, DOC та DOCX. Цей параметр буде записаний у DOCX, лише якщо OoxmlCompliance вище, ніж Ecma376.

Наступний приклад коду показує, як створити список і перезапустити його для кожного розділу:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-List-WorkingWithList-SetRestartAtEachSection.cpp" >}}
