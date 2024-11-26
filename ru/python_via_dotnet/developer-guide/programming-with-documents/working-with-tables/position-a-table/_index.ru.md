---
title: Положение таблицы в Python
second_title: Aspose.Words для Python
articleTitle: Расположите стол
linktitle: Расположите стол
description: "Укажите положение таблицы с помощью Python. Чтобы выровнять таблицу, найдите и задайте плавающее положение таблицы с помощью Python."
type: docs
weight: 50
url: /ru/python-net/position-a-table/
timestamp: 2024-01-27-14-07-04
---

Существуют плавающие таблицы и встроенные таблицы:

* **Inline tables** располагаются на том же слое, что и текст, и помещаются в текстовом потоке, который окружает таблицу только сверху и снизу. Встроенные таблицы всегда будут отображаться между абзацами, в которых вы их разместили.
* **Floating tables** накладываются слоями на текст, а положение таблицы относительно абзаца определяется привязкой таблицы. Из-за этого положение плавающей таблицы в документе зависит от настроек вертикального и горизонтального позиционирования.

Иногда вам нужно расположить таблицу в документе определенным образом. Для этого вам нужно воспользоваться инструментами выравнивания и установить отступы между таблицей и окружающим текстом.

В этой статье мы обсудим, какие опции Aspose.Words предоставляет для позиционирования.

## Укажите положение встроенной таблицы

Вы можете задать положение встроенной таблицы, используя свойства Aspose.Words API и [Alignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/alignment/). Таким образом, вы можете настроить выравнивание таблицы относительно страницы документа.

В следующем примере кода показано, как задать положение встроенной таблицы:

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "inline-table-position.py" >}}

## Получите плавающее выравнивание таблицы

Если для переноса текста таблицы задано значение **Around**, вы можете выровнять таблицу по горизонтали и вертикали, используя свойства [RelativeHorizontalAlignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/relative_horizontal_alignment/) и [RelativeVerticalAlignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/relative_vertical_alignment/).

С помощью **other types of text wrapping** вы можете получить встроенное выравнивание таблицы, используя свойство [Alignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/alignment/).

В следующем примере кода показано, как получить выравнивание таблицы:

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "get-table-position.py" >}}

## Получить плавающее положение стола

 Положение плавающей таблицы определяется с помощью следующих свойств:

* [HorizontalAnchor](https://reference.aspose.com/words/python-net/aspose.words.tables/table/horizontal_anchor/) – объект для вычисления горизонтального положения плавающей таблицы
* [VerticalAnchor](https://reference.aspose.com/words/python-net/aspose.words.tables/table/vertical_anchor/) – объект для вычисления вертикального положения плавающей таблицы
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/python-net/aspose.words.tables/table/absolute_horizontal_distance/) – абсолютное горизонтальное положение плавающего стола
* [AbsoluteVerticalDistance](https://reference.aspose.com/words/python-net/aspose.words.tables/table/absolute_vertical_distance/) – абсолютное вертикальное положение плавающего стола
* [AllowOverlap](https://reference.aspose.com/words/python-net/aspose.words.tables/table/allow_overlap/) – опция для включения/отключения перекрытия с другими плавающими объектами
* [RelativeHorizontalAlignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/relative_horizontal_alignment/) – относительное горизонтальное выравнивание плавающей таблицы.
* [RelativeVerticalAlignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/relative_vertical_alignment/) – относительное вертикальное выравнивание плавающей таблицы.

В следующем примере кода показано, как получить положение плавающей таблицы:

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "get-floating-table-position.py" >}}

## Установите плавающее положение стола

Точно так же, как и getting, вы можете задать положение плавающей таблицы, используя те же самые Aspose.Words API.

Важно знать, что выравнивание и расстояние по горизонтали и вертикали являются комбинированными свойствами, и одно из них может изменять другое. Например, установка значения **RelativeHorizontalAlignment** приведет к возврату значения **AbsoluteHorizontalDistance** к его значению по умолчанию, и наоборот. То же самое верно для вертикального расположения.

В следующем примере кода показано, как задать положение плавающей таблицы:

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "floating-table-position.py" >}}

## Получить расстояние между таблицей и окружающим текстом

Aspose.Words также предоставляет возможность узнать расстояния между таблицами и окружающими текстами:

- [DistanceTop](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_top/) – значение расстояния сверху
- [DistanceBottom](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_bottom/) – значение расстояния восприятия
- [DistanceRight](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_right/) – значение расстояния справа
- [DistanceLeft](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_left/) – значение расстояния слева

В следующем примере кода показано, как определить расстояние между таблицей и окружающим ее текстом:

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "distance-between-table-surrounding-text.py" >}}
