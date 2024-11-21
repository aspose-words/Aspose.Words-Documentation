---
title: Положение стола в Java
second_title: Aspose.Words для Java
articleTitle: Поставьте стол
linktitle: Поставьте стол
description: "Укажите положение таблицы в Java. Получите выравнивание таблицы, получите и установите положение плавающего стола с помощью Java."
type: docs
weight: 50
url: /ru/java/position-a-table/
timestamp: 2024-01-27-14-07-04
---

Есть плавающие таблицы и встроенные таблицы:

* **Вводные таблицы** Они располагаются на том же уровне, что и текст, и помещаются в поток текста, который окружает таблицу выше и ниже. Встроенные таблицы всегда будут отображаться между абзацами, где вы их разместили.
* **Плавающие столы** расположены поверх текста, а положение таблицы относительно абзаца определяется якорем таблицы. Из-за этого на положение плавающей таблицы в документе влияют настройки вертикального и горизонтального позиционирования.

Иногда нужно поместить таблицу в документ определенным образом. Для этого нужно использовать инструменты выравнивания и установить отступы между таблицей и окружающим текстом.

В этой статье мы обсудим, какие варианты Aspose.Words Предусматривается позиционирование.

## Укажите позицию Inline Table

Вы можете установить положение встроенной таблицы, используя Aspose.Words API и [Alignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getAlignment) собственность. Таким образом, можно настроить выравнивание таблицы относительно страницы документа.

Следующий пример кода показывает, как установить положение встроенной таблицы:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "inline-table-position.java" >}}

## Выравнивание плавающего стола

Если обертка текста таблицы установлена **Around**, Вы можете получить горизонтальное и вертикальное выравнивание таблицы, используя [RelativeHorizontalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeHorizontalAlignment) и [RelativeVerticalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeVerticalAlignment) свойств.

С **Другие типы текстовой обертки**, Вы можете получить выравнивание таблицы, используя **Alignment** собственность.

Следующий пример кода показывает, как получить выравнивание таблицы:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "get-table-position.java" >}}

## Позиция плавающего стола

 Положение плавающего стола определяется с использованием следующих свойств:

* [HorizontalAnchor](https://reference.aspose.com/words/java/com.aspose.words/table/#getHorizontalAnchor) - объект для вычисления горизонтального положения плавучей таблицы
* [VerticalAnchor](https://reference.aspose.com/words/java/com.aspose.words/table/#getVerticalAnchor) - объект для вычисления вертикального положения плавучей таблицы
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/java/com.aspose.words/table/#getAbsoluteHorizontalDistance) абсолютное горизонтальное положение плавающего стола
* [AbsoluteVerticalDistance](https://reference.aspose.com/words/java/com.aspose.words/table/#getAbsoluteVerticalDistance) абсолютное вертикальное положение плавающего стола
* [AllowOverlap](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowOverlap) - возможность включить/отключить перекрытие с другими плавающими объектами
* [RelativeHorizontalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeHorizontalAlignment) - относительное горизонтальное выравнивание плавающего стола.
* [RelativeVerticalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeVerticalAlignment) - относительное вертикальное выравнивание плавающего стола.

Следующий пример кода показывает, как получить положение плавающей таблицы:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "get-floating-table-position.java" >}}

## Установите положение плавающего стола

Как и получить, вы можете установить положение плавающего стола, используя то же самое. Aspose.Words API.

Важно знать, что выравнивание и горизонтальное и вертикальное расстояние являются комбинированными свойствами, и одно может сбросить другое. Например, установить **RelativeHorizontalAlignment** Сбросит ли он **AbsoluteHorizontalDistance** по умолчанию и наоборот. То же самое true для вертикального расположения.

Следующий пример кода показывает, как установить положение плавающей таблицы:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "floating-table-position.java" >}}

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "relative-horizontal-or-vertical-position.java" >}}

## Расстояние между столом и окружающим текстом

Aspose.Words Также предоставляется возможность узнать расстояния между таблицами и окружающими текстами:

- [DistanceTop](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceTop) Значение расстояния сверху
- [DistanceBottom](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceBottom) Значение расстояния восприятия
- [DistanceRight](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceRight) - значение расстояния справа
- [DistanceLeft](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceLeft) Значение расстояния слева

Следующий пример кода показывает, как получить расстояние между таблицей и окружающим ее текстом:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "distance-between-table-surrounding-text.java" >}}
