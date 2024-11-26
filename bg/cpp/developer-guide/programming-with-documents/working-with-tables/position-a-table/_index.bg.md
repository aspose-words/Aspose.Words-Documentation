---
title: Позиция на таблицата C++
second_title: Aspose.Words за C++
articleTitle: Позиция на маса
linktitle: Позиция на маса
description: "Посочете позицията на таблицата в C++. Вземете подравняване на таблицата, вземете и задайте позиция на плаваща таблица, използвайки C++."
type: docs
weight: 50
url: /bg/cpp/position-a-table/
timestamp: 2024-01-27-14-07-04
---

Има плаващи таблици и вградени таблици:

* **Inline tables** са поставени на същия слой като текста и са поставени в поток от текст, който само заобикаля таблицата над и под. Вградените таблици винаги ще се показват между абзаците, където сте ги поставили.
* **Floating tables** са наслоени върху текста, а позицията на таблицата по отношение на абзаца се определя от котвата на таблицата. Поради това позицията на плаващата таблица в документа се влияе от настройките за вертикално и хоризонтално позициониране.

Понякога трябва да поставите таблица в документ по определен начин. За да направите това, трябва да използвате инструментите за подравняване и да зададете отстъпите между таблицата и околния текст.

В тази статия ще обсъдим какви опции Aspose.Words предвижда позиционирането.

## Посочете Позицията На Вградената Таблица

Можете да зададете позицията на вградената таблица, като използвате свойството Aspose.Words API и [Alignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_alignment/). По този начин можете да регулирате подравняването на таблицата спрямо страницата на документа.

Следващият пример за код показва как да зададете позицията на вградена таблица:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "inline-table-position.h" >}}

## Вземете Подравняване На Плаваща Маса

Ако обтичането на текста на таблицата е зададено на **Around**, можете да получите хоризонталното и вертикалното подравняване на таблицата, като използвате свойствата [RelativeHorizontalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativehorizontalalignment/) и [RelativeVerticalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativeverticalalignment/).

С **other types of text wrapping** можете да получите подравняване на вградената таблица, като използвате свойството [Alignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_alignment/).

Следващият пример за код показва как да получите подравняване на таблицата:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "get-table-position.h" >}}

## Вземете Позиция На Плаваща Маса

 Позицията на плаваща таблица се определя, като се използват следните свойства::

* [HorizontalAnchor](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_horizontalanchor/) - обект за изчисляване на хоризонталното позициониране на плаваща таблица
* [VerticalAnchor](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_verticalanchor/) - обект за изчисляване на вертикалното позициониране на плаваща таблица
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_absolutehorizontaldistance/) - абсолютна хоризонтална позиция на плаващата таблица
* [AbsoluteVerticalDistance](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_absoluteverticaldistance/) - абсолютна вертикална позиция на плаващата маса
* [AllowOverlap](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_allowoverlap/) - възможност за включване/изключване на припокриване с други плаващи обекти
* [RelativeHorizontalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativehorizontalalignment/) - плаваща таблица относително хоризонтално подравняване.
* [RelativeVerticalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativeverticalalignment/) - плаваща таблица относително вертикално подравняване.

Следващият пример за код показва как да получите позицията на плаваща таблица:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "get-floating-table-position.h" >}}

## Задаване На Позиция На Плаваща Маса

Точно като получаване, можете да зададете позицията на плаваща таблица, използвайки същия Aspose.Words API.

Важно е да знаете, че подравняването и хоризонталното и вертикалното разстояние са комбинирани свойства и едното може да нулира другото. Например, настройването на **RelativeHorizontalAlignment** ще нулира **AbsoluteHorizontalDistance** до стойността му по подразбиране и обратно. Същото важи и за вертикалното подреждане.

Следващият пример за код показва как да зададете позицията на плаваща таблица:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "floating-table-position.h" >}}

## Получете разстояние между таблицата и околния текст

Aspose.Words също така дава възможност да разберете разстоянията между таблиците и околните текстове:

- [DistanceTop](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distancetop/) - стойността на разстоянието отгоре
- [DistanceBottom](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distancebottom/) - стойността на разстоянието на възприятие
- [DistanceRight](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distanceright/) - стойност на разстоянието отдясно
- [DistanceLeft](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distanceleft/) – стойност на разстоянието отляво

Следващият пример за код показва как да получите разстоянието между таблица и околния текст:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "distance-between-table-surrounding-text.h" >}}
