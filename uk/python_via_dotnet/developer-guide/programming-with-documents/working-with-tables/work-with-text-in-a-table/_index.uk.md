---
title: Робота з текстом в таблиці
second_title: Aspose.Words для Python
articleTitle: Робота з текстом в таблиці
linktitle: Робота з текстом в таблиці
description: "Заміна тексту в таблиці Pythonй Витяг Plain Text з таблиці або клітинки за допомогою Pythonй"
type: docs
weight: 60
url: /uk/python-net/work-with-text-in-a-table/
---

Як зазначено в попередніх статтях, таблиця зазвичай містить звичайний текст, хоча інший зміст, такі як зображення або навіть інші таблиці можна розмістити в таблиці клітин.

Додавання тексту або іншого вмісту до таблиці здійснюється за допомогою відповідних методів [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) клас і описано в **"Створити таблицю"** стаття. У статті ми будемо говорити про те, як працювати з текстом вже існуючого столу.

## Заміна тексту в таблиці

Стіл, як будь-який інший вузол в Aspose.Words, має доступ до [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) об'єкт. За допомогою об'єкту таблиці можна замінити текст у таблиці.

Уміння використовувати спеціальні символи при заміні в даний час підтримується, тому можна замінити існуючий текст з текстом багатопара. Для цього потрібно використовувати спеціальні метахаракти, описані в відповідних умовах [Replace](https://reference.aspose.com/words/python-net/aspose.words/range/replace/#str_str) метод.

{{% alert color="primary" %}}

Зазвичай заміну тексту слід проводити на рівні комірки (для комірки) або на рівні абзаців.

{{% /alert %}}

Приклад наступного коду показує, як замінити всі екземпляри рядка тексту в клітинках цілого столу:

{{< gist "aspose-words-gists" "a47401178cba165f62701f6c94e8a4ec" "replace-text.py" >}}

## Витяг Plain Text з таблиці або клітинки

Використання **Range** об'єкт, ви також можете викликати методи на весь ряд таблиці і витягти таблицю як звичайний текст. Для цього використовуйте [Text](https://reference.aspose.com/words/python-net/aspose.words/range/text/) майно

Приклад наступного коду показує, як друкувати текстовий діапазон таблиці:

{{< gist "aspose-words-gists" "a47401178cba165f62701f6c94e8a4ec" "extract-text.py" >}}

Така ж техніка використовується для вилучення вмісту з окремих комірок.

Приклад наступного коду показує, як друкувати текстовий діапазон рядків та елементів таблиці:

{{< gist "aspose-words-gists" "a47401178cba165f62701f6c94e8a4ec" "print-text-range-row-and-table.py" >}}

## Робота з альтернативним текстом таблиці

Microsoft Word Столи мають `table title` і `table description` надання альтернативного текстового представлення інформації, що міститься в таблиці.

У Aspose.Words, Ви також можете додати назву таблиці та опис за допомогою таблиці [Title](https://reference.aspose.com/words/python-net/aspose.words.tables/table/title/) і [Description](https://reference.aspose.com/words/python-net/aspose.words.tables/table/description/) властивості. Ці властивості значущі для документів DOCX, що відповідають даним параметрам ISO/ МВЦ 29500. При збереженні у форматах раніше ISO/IEC 29500, ці властивості ігноруються.

Приклад коду показує, як встановити назву та опис властивостей таблиці:

{{< gist "aspose-words-gists" "a47401178cba165f62701f6c94e8a4ec" "table-title-and-description.py" >}}

