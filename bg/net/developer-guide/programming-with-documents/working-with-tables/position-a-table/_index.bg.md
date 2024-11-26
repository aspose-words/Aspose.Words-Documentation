---
title: Позиция в таблицата C#
second_title: Aspose.Words вместо .NET
articleTitle: Поставяне на таблица
linktitle: Поставяне на таблица
description: "Посочва се позицията на таблицата в C#. Получаване на подредба на масата, получаване и задаване на плаваща позиция маса, като се използва C#."
type: docs
weight: 50
url: /bg/net/position-a-table/
timestamp: 2024-01-27-14-07-04
---

Има плаващи маси и редови таблици:

* **Входни таблици** са поставени на същия слой като текста и са поставени в поток от текст, който само заобикаля таблицата по-горе и по-долу. Inline таблици винаги ще се появяват между параграфите, където сте ги поставили.
* **Плаващи маси** са напластени върху текста и позицията на таблицата спрямо параграфа се определя от котвата на масата. Поради това позицията на плаващата таблица в документа се влияе от вертикалните и хоризонталните настройки за позициониране.

Понякога трябва да поставите маса в документ по определен начин. За да направите това, трябва да използвате инструментите за подравняване и да поставите тиретата между масата и околния текст.

В тази статия ще обсъдим какви възможности Aspose.Words осигурява позициониране.

## Посочва се позицията в таблицата

Можете да зададете позицията на инлайн таблица с помощта на Aspose.Words API и [Alignment](https://reference.aspose.com/words/net/aspose.words.tables/table/alignment/) собственост. По този начин можете да коригирате подредбата на таблицата спрямо страницата с документи.

Следният пример за код показва как да зададете позицията на входяща таблица:

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "inline-table-position.cs" >}}

## Get Floating Таблица Подравняване

Ако опаковката на текста на таблицата е настроена **Around**, Можете да получите хоризонтално и вертикално подравняване на масата с помощта на [RelativeHorizontalAlignment](https://reference.aspose.com/words/net/aspose.words.tables/table/relativehorizontalalignment/) както и [RelativeVerticalAlignment](https://reference.aspose.com/words/net/aspose.words.tables/table/relativeverticalalignment/) имоти.

С **други видове текстова опаковка**, Можете да получите в линия таблица подравняване с помощта на [Alignment](https://reference.aspose.com/words/net/aspose.words.tables/table/alignment/) собственост.

Следният пример за код показва как да се получи подравняване на таблицата:

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "get-table-position.cs" >}}

## Get Floating Table Позиция

 Позицията на плаваща таблица се определя, като се използват следните свойства:

* [HorizontalAnchor](https://reference.aspose.com/words/net/aspose.words.tables/table/horizontalanchor/) Обект за изчисляване хоризонталното позициониране на плаваща маса
* [VerticalAnchor](https://reference.aspose.com/words/net/aspose.words.tables/table/verticalanchor/) Обект за изчисляване на вертикалното позициониране на плаваща маса
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/net/aspose.words.tables/table/absolutehorizontaldistance/) абсолютно хоризонтална позиция на плаваща маса
* [AbsoluteVerticalDistance](https://reference.aspose.com/words/net/aspose.words.tables/table/absoluteverticaldistance/) абсолютно вертикално положение на плаваща маса
* [AllowOverlap](https://reference.aspose.com/words/net/aspose.words.tables/table/allowoverlap/) Опция за включване/изключване на припокриване с други плаващи обекти
* [RelativeHorizontalAlignment](https://reference.aspose.com/words/net/aspose.words.tables/table/relativehorizontalalignment/).
* [RelativeVerticalAlignment](https://reference.aspose.com/words/net/aspose.words.tables/table/relativeverticalalignment/).

Следният пример за код показва как да се получи позицията на плаваща таблица:

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "get-floating-table-position.cs" >}}

## Задаване на плаваща позиция в таблицата

Точно като получаване, можете да зададете позицията на плаваща маса, използвайки същата Aspose.Words API.

Важно е да знаете, че подравняването и хоризонталното и вертикалното разстояние са комбинирани свойства и едното може да рестартира другото. Например, задаване на **RelativeHorizontalAlignment** ще рестартира **AbsoluteHorizontalDistance** към стойността по подразбиране и обратно. Същото е. true за вертикалното разположение.

Следният пример за код показва как да се определи позицията на плаваща таблица:

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "floating-table-position.cs" >}}

## Получете разстояние между таблица и обграждащ текст

Aspose.Words Също така предоставя възможност да се открият разстоянията между таблиците и околните текстове:

- [DistanceTop](https://reference.aspose.com/words/net/aspose.words.tables/table/distancetop/) Стойност на разстоянието отгоре
- [DistanceBottom](https://reference.aspose.com/words/net/aspose.words.tables/table/distancebottom/) Стойността на разстоянието на възприятие
- [DistanceRight](https://reference.aspose.com/words/net/aspose.words.tables/table/distanceright/) Стойност на разстояние вдясно
- [DistanceLeft](https://reference.aspose.com/words/net/aspose.words.tables/table/distanceleft/) Стойност на разстояние вляво

Следният пример за код показва как да се получи разстоянието между таблица и околния текст:

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "distance-between-table-surrounding-text.cs" >}}
