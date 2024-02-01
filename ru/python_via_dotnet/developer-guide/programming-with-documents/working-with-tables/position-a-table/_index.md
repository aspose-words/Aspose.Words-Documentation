---
title: Позиция таблицы в Python
second_title: Aspose.Words для Python
articleTitle: Разместите таблицу
linktitle: Разместите таблицу
description: "Укажите положение таблицы в Python. Получите выравнивание таблицы, получите и установите плавающую позицию таблицы, используя Python."
type: docs
weight: 50
url: /ru/python-net/position-a-table/
---

Существуют плавающие таблицы и встроенные таблицы:

* **Встроенные таблицы** размещаются на том же слое, что и текст, и размещаются в потоке текста, который окружает только таблицу сверху и снизу. Встроенные таблицы всегда будут появляться между абзацами, в которые вы их поместили.
* **Плавающие таблицы** накладываются поверх текста, а положение таблицы относительно абзаца определяется привязкой таблицы. Из-за этого на положение плавающей таблицы в документе влияют настройки вертикального и горизонтального позиционирования.

Иногда вам необходимо расположить таблицу в документе определенным образом. Для этого вам необходимо воспользоваться инструментами выравнивания и установить отступы между таблицей и окружающим текстом.

В этой статье мы обсудим, какие параметры позиционирования предоставляет Aspose.Words.

## Укажите положение встроенной таблицы

Вы можете установить положение встроенной таблицы, используя свойства Aspose.Words API и [Alignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/alignment/). Таким образом, вы можете настроить выравнивание таблицы относительно страницы документа.

В следующем примере кода показано, как установить положение встроенной таблицы:

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "inline-table-position.py" >}}

## Получить выравнивание плавающей таблицы

Если для переноса текста таблицы установлено значение **Around**, вы можете получить горизонтальное и вертикальное выравнивание таблицы, используя свойства [RelativeHorizontalAlignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/relative_horizontal_alignment/) и [RelativeVerticalAlignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/relative_vertical_alignment/).

С помощью **другие виды переноса текста** вы можете получить встроенное выравнивание таблицы, используя свойство [Alignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/alignment/).

В следующем примере кода показано, как добиться выравнивания таблицы:

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "get-table-position.py" >}}

## Получить плавающую позицию таблицы

Положение плавающей таблицы определяется с помощью следующих свойств:

*[HorizontalAnchor](https://reference.aspose.com/words/python-net/aspose.words.tables/table/horizontal_anchor/) – объект для расчета горизонтального положения плавающей таблицы
*[VerticalAnchor](https://reference.aspose.com/words/python-net/aspose.words.tables/table/vertical_anchor/) – объект для расчета вертикального положения плавающей таблицы
*[AbsoluteHorizontalDistance](https://reference.aspose.com/words/python-net/aspose.words.tables/table/absolute_horizontal_distance/) – абсолютное горизонтальное плавающее положение таблицы
*[AbsoluteVerticalDistance](https://reference.aspose.com/words/python-net/aspose.words.tables/table/absolute_vertical_distance/) – абсолютное вертикальное плавающее положение таблицы
* [AllowOverlap](https://reference.aspose.com/words/python-net/aspose.words.tables/table/allow_overlap/) – опция включения/выключения перекрытия с другими плавающими объектами
*[RelativeHorizontalAlignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/relative_horizontal_alignment/) – плавающее относительное горизонтальное выравнивание таблицы.
*[RelativeVerticalAlignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/relative_vertical_alignment/) – относительное вертикальное выравнивание плавающей таблицы.

В следующем примере кода показано, как получить позицию плавающей таблицы:

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "get-floating-table-position.py" >}}

## Установить положение плавающей таблицы

Так же, как и при получении, вы можете установить положение плавающей таблицы, используя тот же Aspose.Words API.

Важно знать, что выравнивание, а также расстояние по горизонтали и вертикали — это комбинированные свойства, и одно можно сбросить другое. Например, установка **RelativeHorizontalAlignment** приведет к сбросу **AbsoluteHorizontalDistance** к значению по умолчанию и наоборот. То же самое справедливо и для вертикального расположения.

В следующем примере кода показано, как установить положение плавающей таблицы:

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "floating-table-position.py" >}}

## Получить расстояние между таблицей и окружающим текстом

Aspose.Words также дает возможность узнать расстояния между таблицами и окружающим текстом:

- [DistanceTop](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_top/) – значение расстояния сверху
- [DistanceBottom](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_bottom/) – значение дальности восприятия
- [DistanceRight](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_right/) – значение расстояния справа
- [DistanceLeft](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_left/) – значение расстояния слева

В следующем примере кода показано, как получить расстояние между таблицей и окружающим ее текстом:

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "distance-between-table-surrounding-text.py" >}}