﻿---
title: Огляд таблиці
second_title: Aspose.Words для C++
articleTitle: Огляд таблиці
linktitle: Огляд таблиці
description: "Працюйте з таблицями та їх компонентами, такими як клітинки, рядки, стовпці в Aspose.Words для C++. Як працювати з таблицями в C++."
type: docs
weight: 10
url: /uk/cpp/table-overview/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words - це бібліотека класів, призначена для обробки документів на стороні сервера в різних форматах - PDF, HTML, різних форматах Microsoft Word та інших - і підтримує таблиці наступними способами:

* таблиці в документі зберігаються при відкритті / збереженні та перетворенні
* можна Редагувати таблицю, вміст та її форматування, а потім експортувати зміни у файл у форматі, що підтримує таблиці

У цій статті ми дізнаємось більше про структуру таблиць, клітинки, рядки та стовпці, що підтримуються Aspose.Words, а також деталі роботи з такими таблицями.

## Структура таблиці

Як уже згадувалося, таблиця складається з таких елементів, як **Cell**, **Row** та **Column**. Це поняття, які є загальними для всіх таблиць в цілому, незалежно від формату документа.

Це звичайний приклад таблиці, знайденої в документі Microsoft Word:

![tables-overview-aspose-words-cpp-1](tables-overview-1.png)

### Вузли таблиці

Таблиця з будь-якого документа, завантаженого в Aspose.Words, імпортується як **Table node**. Таблицю можна знайти як дочірню по відношенню до:

- основний текст
- вбудована історія, наприклад коментар або виноска
- клітинки, коли таблиця вкладена в іншу таблицю

{{% alert color="primary" %}}

Зверніть увагу, що таблиці можуть бути вкладені в інші таблиці на будь-яку глибину.

{{% /alert %}}

### Зміст таблиці

Вузол таблиці не містить жодного реального вмісту-натомість він є контейнером для інших подібних вузлів, що складають вміст:

- **Table** містить множину **Row** вузлів. Таблиця містить усі звичайні елементи вузлів, що дозволяє вільно переміщувати, змінювати та видаляти таблицю в документі.
- **Row** являє собою один рядок таблиці і містить безліч **Cell** вузлів. Крім того, **Row** містить елементи, які визначають спосіб відображення рядка, такі як висота та вирівнювання.
- **Cell** - це те, що містить справжній вміст, видимий у таблиці, і складається з **Paragraph** та інших вузлів рівня блоку. Крім того, комірки можуть містити вкладені таблиці.

![tables-overview-aspose-words-cpp-2](tables-overview-2.png)

{{% alert color="primary" %}}

Ви можете перевірити структуру вузлів таблиці в документі за допомогою **DocumentExplorer**.

{{% /alert %}}

### Порожній абзац після таблиці

На малюнку вище показано, що документ містить таблицю з декількох рядків, яка, в свою чергу, складається з двох осередків. Кожна з двох клітинок містить абзац, який є контейнером для відформатованого тексту комірки.

Варто також зазначити, що для розділення двох послідовних таблиць у документі потрібен принаймні один порожній абзац після таблиці. Без такого абзацу послідовні таблиці були б об'єднані в одну. Ця поведінка однакова як у Microsoft Word, так і в Aspose.Words.

У Aspose.Words усі класи та властивості, що стосуються таблиць, містяться в просторі імен [Aspose.Words.Tables](https://reference.aspose.com/words/cpp/aspose.words.tables/).

## Дивіться також

* [Aspose.Words Об'єктна модель документа (DOM)](/words/cpp/aspose-words-document-object-model/)
* [Логічні рівні вузлів у документі](/words/cpp/logical-levels-of-nodes-in-a-document/)