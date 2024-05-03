---
title: Позиция в таблицата Java
second_title: Aspose.Words вместо Java
articleTitle: Поставяне на таблица
linktitle: Поставяне на таблица
description: "Посочва се позицията на таблицата в Java. Получаване на подравняване на масата, получаване и задаване на плаваща позиция маса, като се използва Java."
type: docs
weight: 50
url: /bg/java/position-a-table/
---

Има плаващи маси и ред таблици:

* **Входни таблици** са поставени на същия слой като текста и са поставени в поток от текст, който само заобикаля таблицата над и по-долу. Inline таблици винаги ще се появяват между параграфите, където сте ги поставили.
* **Плаващи маси** са напластени върху текста, а позицията на таблицата спрямо параграфа се определя от котвата на масата. Поради това позицията на плаващата таблица в документа се влияе от вертикалните и хоризонталните настройки за позициониране.

Понякога трябва да поставите маса в документ по определен начин. За да направите това, трябва да използвате инструментите за подравняване и да поставите тиретата между масата и околния текст.

В тази статия ще обсъдим какви възможности Aspose.Words осигурява позициониране.

## Посочва се позицията на таблицата

Можете да зададете позицията на редова таблица с помощта на Aspose.Words API и [Alignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getAlignment) собственост. По този начин можете да коригирате подравняването на таблицата спрямо страницата с документи.

Следният пример за код показва как да зададете позицията на входяща таблица:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "inline-table-position.java" >}}

## Get Floating Таблица Подравняване

Ако опаковката на текста на таблицата е зададена **Around**, Можете да получите хоризонтално и вертикално подравняване на масата с помощта на [RelativeHorizontalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeHorizontalAlignment) както и [RelativeVerticalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeVerticalAlignment) имоти.

С **други видове текстова опаковка**, Можете да получите в линия таблица подравняване с помощта на **Alignment** собственост.

Следният пример за код показва как да се подравни таблицата:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "get-table-position.java" >}}

## Get Floating Table Позиция

 Позицията на плаваща таблица се определя, като се използват следните свойства:

* [HorizontalAnchor](https://reference.aspose.com/words/java/com.aspose.words/table/#getHorizontalAnchor) Обект за изчисляване на хоризонталното позициониране на плаваща маса
* [VerticalAnchor](https://reference.aspose.com/words/java/com.aspose.words/table/#getVerticalAnchor) Обект за изчисляване на вертикалното позициониране на плаваща маса
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/java/com.aspose.words/table/#getAbsoluteHorizontalDistance) абсолютно хоризонтална позиция на плаваща маса
* [AbsoluteVerticalDistance](https://reference.aspose.com/words/java/com.aspose.words/table/#getAbsoluteVerticalDistance) абсолютно вертикално положение на плаваща маса
* [AllowOverlap](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowOverlap) Опция за включване/изключване на припокриване с други плаващи обекти
* [RelativeHorizontalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeHorizontalAlignment) год.
* [RelativeVerticalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeVerticalAlignment) Относително вертикално подравняване на масата.

Следният пример за код показва как да се получи позицията на плаваща таблица:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "get-floating-table-position.java" >}}

## Задаване на плаваща позиция в таблицата

Точно като получаване, можете да зададете позицията на плаваща маса, използвайки същата Aspose.Words API.

Важно е да знаете, че подравняването и хоризонталното и вертикалното разстояние са комбинирани свойства и едното може да рестартира другото. Например, задаване на **RelativeHorizontalAlignment** ще рестартира **AbsoluteHorizontalDistance** към стойността по подразбиране и обратно. Същото е. true за вертикалното разположение.

Следният пример за код показва как да зададете позицията на плаваща таблица:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "floating-table-position.java" >}}

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "relative-horizontal-or-vertical-position.java" >}}

## Получете разстояние между таблица и обграждащ текст

Aspose.Words Освен това предоставя възможност да се открият разстоянията между таблиците и околните текстове:

- [DistanceTop](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceTop) Стойност на разстоянието отгоре
- [DistanceBottom](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceBottom) Стойността на разстоянието на възприятие
- [DistanceRight](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceRight) Стойност на разстояние вдясно
- [DistanceLeft](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceLeft) Стойност на разстояние вляво

Следният пример за код показва как да получите разстоянието между таблица и околния текст:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "distance-between-table-surrounding-text.java" >}}
