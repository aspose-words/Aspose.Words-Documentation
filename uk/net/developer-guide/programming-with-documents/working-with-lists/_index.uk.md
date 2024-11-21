---
title: Робота з списками в C#
second_title: Aspose.Words для .NET
articleTitle: Робота з списками
linktitle: Робота з списками
description: "Вступ до функції форматування номера в Aspose.Words для .NETй"
type: docs
weight: 200
url: /uk/net/working-with-lists/
timestamp: 2024-01-27-14-07-04
---

Перелік у списку Microsoft Word документ є набором властивостей форматування абзаців. Переліки можуть бути використані в документах для структури, впорядкування та висвітлення тексту. Списки є відмінним способом організації даних в документах, що полегшує роботу читачів для поглинання та розуміння ключових точок.

Кожен список може мати до 9 рівнів, а також форматування властивостей, таких як стиль номеру, початкове значення, відступ, положення вкладки, і інші визначаються окремо для кожного рівня.

У Aspose.Words, робота зі списками представлена [Lists](https://reference.aspose.com/words/net/aspose.words.lists/) простір імен. Однак, [List](https://reference.aspose.com/words/net/aspose.words.lists/list/) об'єкт завжди належить до [ListCollection](https://reference.aspose.com/words/net/aspose.words.lists/listcollection/)й

Ця стаття описує програмуматично працює зі списками Aspose.Wordsй

## Списки застосувань

Aspose.Words дозволяє легко створювати списки за допомогою форматування списку. [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) забезпечує [ListFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/listformat/) майно, що повертає майно **ListFormat** об'єкт. Цей об'єкт має кілька способів запуску і завершення списку і для збільшення / виведення відступу. Є два загальні типи списку Microsoft Word: приклеєний і занурений:

- Для запуску списку бюлетенів, виклику [ApplyBulletDefault](https://reference.aspose.com/words/net/aspose.words.lists/listformat/applybulletdefault/)
- Для запуску списку, виклику [ApplyNumberDefault](https://reference.aspose.com/words/net/aspose.words.lists/listformat/applynumberdefault/)

До поточного абзацу додаються кулі або номер і форматування. **DocumentBuilder** до [RemoveNumbers](https://reference.aspose.com/words/net/aspose.words.lists/listformat/removenumbers/) це називається, щоб зупинити форматування списку.

У документах Word можуть складатися списки до дев’яти рівнів. Список форматування для кожного рівня визначає, який використовується куля або номер, лівий відступ, простір між кулі та текстом тощо. Наведені нижче способи зміни рівня списку і застосовуються нові властивості форматування рівня:

- до Для збільшення рівня списку поточного абзацу за одним рівнем виклику [ListIndent](https://reference.aspose.com/words/net/aspose.words.lists/listformat/listindent/)
- до Для зменшення рівня списку поточного абзацу за одним рівнем виклику [ListOutdent](https://reference.aspose.com/words/net/aspose.words.lists/listformat/listoutdent/)

Ви також можете використовувати [ListLevelNumber](https://reference.aspose.com/words/net/aspose.words.lists/listformat/listlevelnumber/) майно, щоб отримати або встановити рівень списку для абзацу.

{{% alert color="primary" %}}

Рівень переліку нумерованих 0 до 8.

{{% /alert %}}

Приклад коду показує, як побудувати багаторівневий список:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetMultilevelListFormatting.cs" >}}

## Вказати форматування для рівня списку

Список-рівневі об'єкти створюються автоматично, коли створюється список. Використання властивостей і методів [ListLevel](https://reference.aspose.com/words/net/aspose.words.lists/listlevel/) Клас контролю форматування окремих рівнів списку.

## Список перезавантаження для кожного розділу

Ви можете перезапустити список для кожного розділу [IsRestartAtEachSection](https://reference.aspose.com/words/net/aspose.words.lists/list/isrestartateachsection/) майно. Зауважте, що цей параметр підтримується тільки в форматі RTF, DOC та DOCX. Ця опція буде написана до DOCX тільки якщо OoxmlCompliance вище, ніж Ecma376.

Приклад коду показує, як створити список і перезапустити його для кожного розділу:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-List-WorkingWithList-SetRestartAtEachSection.cs" >}}
