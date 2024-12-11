﻿---
title: Работа с текст в Таблица
second_title: Aspose.Words за C++
articleTitle: Работа с текст в Таблица
linktitle: Работа с текст в Таблица
description: "Заместване на текст в таблица в C++. Извлечете обикновен текст от таблица или клетка, като използвате C++."
type: docs
weight: 60
url: /bg/cpp/work-with-text-in-a-table/
timestamp: 2024-01-27-14-07-04
---

Както бе споменато в предишните статии, таблицата обикновено съдържа обикновен текст, въпреки че друго съдържание, като изображения или дори други таблици, може да бъде поставено в клетките на таблицата.

Добавянето на текст или друго съдържание към таблицата се извършва с помощта на подходящите методи от класа [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) и е описано в статията **"Create a Table"**. В тази статия ще говорим за това как да работим с текст във вече съществуваща таблица.

## Заместване на текст в Таблица

Таблицата, както всеки друг възел в Aspose.Words, има достъп до обекта [Range](https://reference.aspose.com/words/cpp/aspose.words/range/). С помощта на обекта на диапазон от таблици можете да заместите текста в таблица.

Възможността за използване на специални знаци при заместване в момента се поддържа, така че е възможно да се замени съществуващия текст с текст от няколко абзаца. За да направите това, трябва да използвате специалните метахарактери, описани в съответния [Replace](https://reference.aspose.com/words/cpp/aspose.words/range/replace/) метод.

{{% alert color="primary" %}}

Обикновено заместването на текст трябва да се извършва на ниво клетка (на клетка) или на ниво абзац.

{{% /alert %}}

Следващият пример за код показва как да заместите всички екземпляри на текстов низ в клетките на цяла таблица:

{{< gist "aspose-words-gists" "0c6e4ebd55874aa8634f1d74d5ef492f" "replace-text.h" >}}

## Извличане на обикновен текст от таблица или клетка

Използвайки обекта **Range**, можете също да извиквате методи в целия диапазон от таблици и да извлечете таблицата като обикновен текст. За да направите това, използвайте функцията [Text](https://reference.aspose.com/words/cpp/aspose.words/range/get_text/).

Следващият пример за код показва как да отпечатате текстовия диапазон на таблица:

{{< gist "aspose-words-gists" "0c6e4ebd55874aa8634f1d74d5ef492f" "extract-text.h" >}}

Същата техника се използва за извличане на съдържание само от отделни клетки на таблицата.

Следващият пример за код показва как да отпечатате текстов диапазон от елементи на редове и таблици:

{{< gist "aspose-words-gists" "0c6e4ebd55874aa8634f1d74d5ef492f" "print-text-range-row-and-table.h" >}}

## Работа с алтернативен текст на таблица

Microsoft Word таблиците имат `table title` и `table description`, които предоставят алтернативно текстово представяне на информацията, съдържаща се в таблицата.

В Aspose.Words Можете също да добавите заглавие и описание на таблицата, като използвате свойствата [Title](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_title/) и [Description](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_description/). Тези свойства имат значение за DOCX документи, съответстващи на ISO / IEC 29500. Когато записвате във формати преди ISO / IEC 29500, тези свойства се игнорират.

Следният пример за код показва как да зададете свойствата за заглавие и описание на таблица:

{{< gist "aspose-words-gists" "0c6e4ebd55874aa8634f1d74d5ef492f" "table-title-and-description.h" >}}