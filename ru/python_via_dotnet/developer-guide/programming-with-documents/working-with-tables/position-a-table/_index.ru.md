---
title: Положение стола в Python
second_title: Aspose.Words для Python
articleTitle: Поставьте стол
linktitle: Поставьте стол
description: "Укажите положение таблицы в Python. Получите выравнивание таблицы, получите и установите положение плавающего стола с помощью Python."
type: docs
weight: 50
url: /ru/python-net/position-a-table/
timestamp: 2024-01-27-14-07-04
---

Есть плавающие таблицы и встроенные таблицы:

* **Вводные таблицы** Они располагаются на том же уровне, что и текст, и помещаются в поток текста, который окружает таблицу выше и ниже. Встроенные таблицы всегда будут отображаться между абзацами, где вы их разместили.
* **Плавающие столы** наложены на текст, а положение таблицы относительно абзаца определяется якорем таблицы. Из-за этого на положение плавающей таблицы в документе влияют настройки вертикального и горизонтального позиционирования.

Иногда нужно поместить таблицу в документ определенным образом. Для этого нужно использовать инструменты выравнивания и установить отступы между таблицей и окружающим текстом.

В этой статье мы обсудим, какие варианты Aspose.Words Предусматривается позиционирование.

## Укажите позицию Inline Table

Вы можете установить положение встроенной таблицы, используя Aspose.Words API и [Alignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/alignment/) собственность. Таким образом, можно настроить выравнивание таблицы относительно страницы документа.

Следующий пример кода показывает, как установить положение встроенной таблицы:

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "inline-table-position.py" >}}

## Выравнивание плавающего стола

Если обертка текста таблицы установлена **Around**, Вы можете получить горизонтальное и вертикальное выравнивание таблицы, используя [RelativeHorizontalAlignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/relative_horizontal_alignment/) и [RelativeVerticalAlignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/relative_vertical_alignment/) свойств.

С **Другие типы текстовой обертки**, Вы можете получить выравнивание таблицы, используя [Alignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/alignment/) собственность.

Следующий пример кода показывает, как получить выравнивание таблицы:

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "get-table-position.py" >}}

## Позиция плавающего стола

 Положение плавающего стола определяется с использованием следующих свойств:

* [HorizontalAnchor](https://reference.aspose.com/words/python-net/aspose.words.tables/table/horizontal_anchor/) Объект для вычисления горизонтального положения плавучей таблицы
* [VerticalAnchor](https://reference.aspose.com/words/python-net/aspose.words.tables/table/vertical_anchor/) Объект для вычисления вертикального положения плавучей таблицы
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/python-net/aspose.words.tables/table/absolute_horizontal_distance/) абсолютное горизонтальное положение плавающего стола
* [AbsoluteVerticalDistance](https://reference.aspose.com/words/python-net/aspose.words.tables/table/absolute_vertical_distance/) абсолютное вертикальное положение плавающего стола
* [AllowOverlap](https://reference.aspose.com/words/python-net/aspose.words.tables/table/allow_overlap/) - возможность включить/отключить перекрытие с другими плавающими объектами
* [RelativeHorizontalAlignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/relative_horizontal_alignment/) - относительное горизонтальное выравнивание плавающего стола.
* [RelativeVerticalAlignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/relative_vertical_alignment/) - относительное вертикальное выравнивание плавающего стола.

Следующий пример кода показывает, как получить положение плавающей таблицы:

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "get-floating-table-position.py" >}}

## Установите положение плавающего стола

Как и получить, вы можете установить положение плавающего стола, используя то же самое. Aspose.Words API.

Важно знать, что выравнивание и горизонтальное и вертикальное расстояние являются комбинированными свойствами, и одно может сбросить другое. Например, установить **RelativeHorizontalAlignment** Сбросит ли он **AbsoluteHorizontalDistance** по умолчанию и наоборот. То же самое true для вертикального расположения.

Следующий пример кода показывает, как установить положение плавающей таблицы:

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "floating-table-position.py" >}}

## Расстояние между столом и окружающим текстом

Aspose.Words Также предоставляется возможность узнать расстояния между таблицами и окружающими текстами:

- [DistanceTop](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_top/) Значение расстояния сверху
- [DistanceBottom](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_bottom/) Значение расстояния восприятия
- [DistanceRight](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_right/) - значение расстояния справа
- [DistanceLeft](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_left/) Значение расстояния слева

Следующий пример кода показывает, как получить расстояние между таблицей и окружающим ее текстом:

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "distance-between-table-surrounding-text.py" >}}
