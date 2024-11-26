---
title: Положение стола в C#
second_title: Aspose.Words для .NET
articleTitle: Поставьте стол
linktitle: Поставьте стол
description: "Укажите положение таблицы в C#. Получите выравнивание таблицы, получите и установите положение плавающего стола с помощью C#."
type: docs
weight: 50
url: /ru/net/position-a-table/
timestamp: 2024-01-27-14-07-04
---

Есть плавающие таблицы и встроенные таблицы:

* **Вводные таблицы** Они располагаются на том же уровне, что и текст, и помещаются в поток текста, который окружает таблицу выше и ниже. Встроенные таблицы всегда будут отображаться между абзацами, где вы их разместили.
* **Плавающие столы** наложены на текст, а положение таблицы относительно абзаца определяется якорем таблицы. Из-за этого на положение плавающей таблицы в документе влияют настройки вертикального и горизонтального позиционирования.

Иногда нужно поместить таблицу в документ определенным образом. Для этого нужно использовать инструменты выравнивания и установить отступы между таблицей и окружающим текстом.

В этой статье мы обсудим, какие варианты Aspose.Words Предусматривается позиционирование.

## Укажите позицию Inline Table

Вы можете установить положение встроенной таблицы, используя Aspose.Words API и [Alignment](https://reference.aspose.com/words/net/aspose.words.tables/table/alignment/) собственность. Таким образом, можно настроить выравнивание таблицы относительно страницы документа.

Следующий пример кода показывает, как установить положение встроенной таблицы:

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "inline-table-position.cs" >}}

## Выравнивание плавающего стола

Если обертка текста таблицы установлена **Around**, Вы можете получить горизонтальное и вертикальное выравнивание таблицы, используя [RelativeHorizontalAlignment](https://reference.aspose.com/words/net/aspose.words.tables/table/relativehorizontalalignment/) и [RelativeVerticalAlignment](https://reference.aspose.com/words/net/aspose.words.tables/table/relativeverticalalignment/) свойств.

С **Другие типы текстовой обертки**, Вы можете получить выравнивание таблицы, используя [Alignment](https://reference.aspose.com/words/net/aspose.words.tables/table/alignment/) собственность.

Следующий пример кода показывает, как получить выравнивание таблицы:

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "get-table-position.cs" >}}

## Позиция плавающего стола

 Положение плавающего стола определяется с использованием следующих свойств:

* [HorizontalAnchor](https://reference.aspose.com/words/net/aspose.words.tables/table/horizontalanchor/) Объект для вычисления горизонтального положения плавучей таблицы
* [VerticalAnchor](https://reference.aspose.com/words/net/aspose.words.tables/table/verticalanchor/) Объект для вычисления вертикального положения плавучей таблицы
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/net/aspose.words.tables/table/absolutehorizontaldistance/) абсолютное горизонтальное положение плавающего стола
* [AbsoluteVerticalDistance](https://reference.aspose.com/words/net/aspose.words.tables/table/absoluteverticaldistance/) абсолютное вертикальное положение плавающего стола
* [AllowOverlap](https://reference.aspose.com/words/net/aspose.words.tables/table/allowoverlap/) - возможность включить/отключить перекрытие с другими плавающими объектами
* [RelativeHorizontalAlignment](https://reference.aspose.com/words/net/aspose.words.tables/table/relativehorizontalalignment/) - относительное горизонтальное выравнивание плавающего стола.
* [RelativeVerticalAlignment](https://reference.aspose.com/words/net/aspose.words.tables/table/relativeverticalalignment/) - относительное вертикальное выравнивание плавающего стола.

Следующий пример кода показывает, как получить положение плавающей таблицы:

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "get-floating-table-position.cs" >}}

## Установите положение плавающего стола

Как и получить, вы можете установить положение плавающего стола, используя то же самое. Aspose.Words API.

Важно знать, что выравнивание и горизонтальное и вертикальное расстояние являются комбинированными свойствами, и одно может сбросить другое. Например, установить **RelativeHorizontalAlignment** Сбросит ли он **AbsoluteHorizontalDistance** по умолчанию и наоборот. То же самое true для вертикального расположения.

Следующий пример кода показывает, как установить положение плавающей таблицы:

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "floating-table-position.cs" >}}

## Расстояние между столом и окружающим текстом

Aspose.Words Также предоставляется возможность узнать расстояния между таблицами и окружающими текстами:

- [DistanceTop](https://reference.aspose.com/words/net/aspose.words.tables/table/distancetop/) Значение расстояния сверху
- [DistanceBottom](https://reference.aspose.com/words/net/aspose.words.tables/table/distancebottom/) Значение расстояния восприятия
- [DistanceRight](https://reference.aspose.com/words/net/aspose.words.tables/table/distanceright/) - значение расстояния справа
- [DistanceLeft](https://reference.aspose.com/words/net/aspose.words.tables/table/distanceleft/) Значение расстояния слева

Следующий пример кода показывает, как получить расстояние между таблицей и окружающим ее текстом:

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "distance-between-table-surrounding-text.cs" >}}
