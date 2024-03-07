---
title: Позиция таблицы в C#
second_title: Aspose.Words для .NET
articleTitle: Разместите таблицу
linktitle: Разместите таблицу
description: "Укажите положение таблицы в C#. Получите выравнивание таблицы, получите и установите плавающую позицию таблицы, используя C#."
type: docs
weight: 50
url: /ru/net/position-a-table/
---

Существуют плавающие таблицы и встроенные таблицы:

* **Встроенные таблицы** размещаются на том же слое, что и текст, и размещаются в потоке текста, который окружает только таблицу сверху и снизу. Встроенные таблицы всегда будут появляться между абзацами, в которые вы их поместили.
* **Плавающие таблицы** накладываются поверх текста, а положение таблицы относительно абзаца определяется привязкой таблицы. Из-за этого на положение плавающей таблицы в документе влияют настройки вертикального и горизонтального позиционирования.

Иногда вам необходимо расположить таблицу в документе определенным образом. Для этого вам необходимо воспользоваться инструментами выравнивания и установить отступы между таблицей и окружающим текстом.

В этой статье мы обсудим, какие параметры позиционирования предоставляет Aspose.Words.

## Укажите положение встроенной таблицы

Вы можете установить положение встроенной таблицы, используя свойства Aspose.Words API и [Alignment](https://reference.aspose.com/words/ru/net/aspose.words.tables/table/alignment/). Таким образом, вы можете настроить выравнивание таблицы относительно страницы документа.

В следующем примере кода показано, как установить положение встроенной таблицы:

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "inline-table-position.cs" >}}

## Получить выравнивание плавающей таблицы

Если для переноса текста таблицы установлено значение **Around**, вы можете получить горизонтальное и вертикальное выравнивание таблицы, используя свойства [RelativeHorizontalAlignment](https://reference.aspose.com/words/ru/net/aspose.words.tables/table/relativehorizontalalignment/) и [RelativeVerticalAlignment](https://reference.aspose.com/words/ru/net/aspose.words.tables/table/relativeverticalalignment/).

С помощью **другие виды переноса текста** вы можете получить встроенное выравнивание таблицы, используя свойство [Alignment](https://reference.aspose.com/words/ru/net/aspose.words.tables/table/alignment/).

В следующем примере кода показано, как добиться выравнивания таблицы:

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "get-table-position.cs" >}}

## Получить плавающую позицию таблицы

Положение плавающей таблицы определяется с помощью следующих свойств:

*[HorizontalAnchor](https://reference.aspose.com/words/ru/net/aspose.words.tables/table/horizontalanchor/) – объект для расчета горизонтального положения плавающей таблицы
*[VerticalAnchor](https://reference.aspose.com/words/ru/net/aspose.words.tables/table/verticalanchor/) – объект для расчета вертикального положения плавающей таблицы
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/ru/net/aspose.words.tables/table/absolutehorizontaldistance/) – абсолютное горизонтальное плавающее положение таблицы
*[AbsoluteVerticalDistance](https://reference.aspose.com/words/ru/net/aspose.words.tables/table/absoluteverticaldistance/) – абсолютное вертикальное плавающее положение таблицы
* [AllowOverlap](https://reference.aspose.com/words/ru/net/aspose.words.tables/table/allowoverlap/) – опция включения/выключения перекрытия с другими плавающими объектами
*[RelativeHorizontalAlignment](https://reference.aspose.com/words/ru/net/aspose.words.tables/table/relativehorizontalalignment/) – плавающее относительное горизонтальное выравнивание таблицы.
*[RelativeVerticalAlignment](https://reference.aspose.com/words/ru/net/aspose.words.tables/table/relativeverticalalignment/) – относительное вертикальное выравнивание плавающей таблицы.

В следующем примере кода показано, как получить позицию плавающей таблицы:

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "get-floating-table-position.cs" >}}

## Установить положение плавающей таблицы

Так же, как и при получении, вы можете установить положение плавающей таблицы, используя тот же Aspose.Words API.

Важно знать, что выравнивание, а также расстояние по горизонтали и вертикали — это комбинированные свойства, и одно можно сбросить другое. Например, установка **RelativeHorizontalAlignment** приведет к сбросу **AbsoluteHorizontalDistance** к значению по умолчанию и наоборот. То же самое справедливо и для вертикального расположения.

В следующем примере кода показано, как установить положение плавающей таблицы:

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "floating-table-position.cs" >}}

## Получить расстояние между таблицей и окружающим текстом

Aspose.Words также дает возможность узнать расстояния между таблицами и окружающим текстом:

- [DistanceTop](https://reference.aspose.com/words/ru/net/aspose.words.tables/table/distancetop/) – значение расстояния сверху
- [DistanceBottom](https://reference.aspose.com/words/ru/net/aspose.words.tables/table/distancebottom/) – значение дальности восприятия
- [DistanceRight](https://reference.aspose.com/words/ru/net/aspose.words.tables/table/distanceright/) – значение расстояния справа
- [DistanceLeft](https://reference.aspose.com/words/ru/net/aspose.words.tables/table/distanceleft/) – значение расстояния слева

В следующем примере кода показано, как получить расстояние между таблицей и окружающим ее текстом:

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "distance-between-table-surrounding-text.cs" >}}
