---
title: Робота з списками в Java
second_title: Aspose.Words для Java
articleTitle: Робота з списками
linktitle: Робота з списками
description: "Вступ до функції форматування номера в Aspose.Words для Javaй"
type: docs
weight: 200
url: /uk/java/working-with-lists/
---

Перелік у списку Microsoft Word документ є набором властивостей форматування списку. Переліки можуть використовуватися у ваших документах для форматування, оформлення та підкреслення тексту. Списки є відмінним способом організації даних в документах, і вони полегшують для читачів для розуміння ключових точок.

Кожен список може мати до 9 рівнів і форматування властивостей, таких як стиль номеру, початкове значення, відступ, положення вкладки, і інші визначаються окремо для кожного рівня.

Ця стаття описує програмуматично працює зі списками Aspose.Wordsй

## Створення списку застосувань

Aspose.Words дозволяє легко створювати списки за допомогою форматування списку. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) забезпечує [ListFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getListFormat) майно, що повертає майно **ListFormat** об'єкт. Цей об'єкт має кілька способів запуску і завершення списку і для збільшення / виведення відступу. Є два загальні типи списку Microsoft Word: приклеєний і занурений:

- Для запуску списку бюлетенів, виклику [ListFormat.ApplyBulletDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyBulletDefault)
- Для запуску списку, виклику [ListFormat.ApplyNumberDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyNumberDefault)

До поточного абзацу додаються кулі або номер і форматування. **DocumentBuilder** до [RemoveNumbers](https://reference.aspose.com/words/java/com.aspose.words/listformat/#removeNumbers) це називається, щоб зупинити форматування списку.

У документах Word можуть складатися списки до дев’яти рівнів. Форматування списку для кожного рівня визначає, яку використовується куля або номер, лівий відступ, простір між кулі та текстом тощо. Наведені нижче методи змінюють рівень списку і застосовуються нові властивості форматування рівня:

- до Для збільшення рівня списку поточного абзацу за одним рівнем виклику [ListFormat.ListIndent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listIndent)
- до Для зменшення рівня списку поточного абзацу за одним рівнем виклику [ListFormat.ListOutdent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listOutdent)

Методи зміни рівня списку і застосовуються форматувальні властивості нового рівня.

{{% alert color="primary" %}}

Ви також можете використовувати [ListLevelNumber](https://reference.aspose.com/words/java/com.aspose.words/listformat/#getListLevelNumber) майно, щоб отримати або встановити рівень списку для абзацу. Рівень списку нумеровано 0 до 8.

{{% /alert %}}

Приклад коду показує, як побудувати багаторівневий список:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetMultilevelListFormatting-DocumentBuilderSetMultilevelListFormatting.java" >}}

## Вказати форматування для рівня списку

Список-рівневі об'єкти створюються автоматично, коли створюється список. Використовуйте властивості і методи [ListLevel](https://reference.aspose.com/words/java/com.aspose.words/listlevel/) клас для контролю форматування окремих рівнів списку.

## Список перезавантаження для кожного розділу

Ви можете перезапустити список для кожного розділу [IsRestartAtEachSection](https://reference.aspose.com/words/java/com.aspose.words/list/#isRestartAtEachSection) майно. Зауважте, що цей параметр підтримується тільки в форматі RTF, DOC та DOCX. Ця опція буде записана до DOCX тільки якщо OoxmlCompliance вище, ніж Ecma376.

Приклад коду показує, як створити список і перезапустити його для кожного розділу:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Lists-WorkingWithList-SetRestartAtEachSection.java" >}}

