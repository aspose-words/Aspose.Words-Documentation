---
title: Положение таблицы в C++
second_title: Aspose.Words для C++
articleTitle: Расположите стол
linktitle: Расположите стол
description: "Укажите положение таблицы в C++. Выполните выравнивание таблицы, получите и задайте плавающее положение таблицы с помощью C++."
type: docs
weight: 50
url: /ru/cpp/position-a-table/
timestamp: 2024-01-27-14-07-04
---

Существуют плавающие таблицы и встроенные таблицы:

* **Inline tables** располагаются на том же слое, что и текст, и помещаются в текстовом потоке, который окружает таблицу только сверху и снизу. Встроенные таблицы всегда будут отображаться между абзацами, в которых вы их разместили.
* **Floating tables** накладываются слоями на текст, а положение таблицы относительно абзаца определяется привязкой таблицы. Из-за этого положение плавающей таблицы в документе зависит от настроек вертикального и горизонтального позиционирования.

Иногда вам нужно расположить таблицу в документе определенным образом. Для этого вам нужно воспользоваться инструментами выравнивания и установить отступы между таблицей и окружающим текстом.

В этой статье мы обсудим, какие опции Aspose.Words предоставляет для позиционирования.

## Укажите положение встроенной таблицы

Вы можете задать положение встроенной таблицы, используя API Aspose.Words и свойство [Alignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_alignment/). Таким образом, вы можете настроить выравнивание таблицы относительно страницы документа.

В следующем примере кода показано, как задать положение встроенной таблицы:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "inline-table-position.h" >}}

## Получите плавающее выравнивание таблицы

Если для переноса текста таблицы задано значение **Around**, вы можете выровнять таблицу по горизонтали и вертикали, используя свойства [RelativeHorizontalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativehorizontalalignment/) и [RelativeVerticalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativeverticalalignment/).

С помощью **other types of text wrapping** вы можете получить встроенное выравнивание таблицы, используя свойство [Alignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_alignment/).

В следующем примере кода показано, как получить выравнивание таблицы:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "get-table-position.h" >}}

## Получить плавающее положение стола

 Положение плавающей таблицы определяется с помощью следующих свойств:

* [HorizontalAnchor](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_horizontalanchor/) – объект для вычисления горизонтального положения плавающей таблицы
* [VerticalAnchor](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_verticalanchor/) – объект для вычисления вертикального положения плавающей таблицы
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_absolutehorizontaldistance/) – абсолютное горизонтальное положение плавающего стола
* [AbsoluteVerticalDistance](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_absoluteverticaldistance/) – абсолютное вертикальное положение плавающего стола
* [AllowOverlap](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_allowoverlap/) – опция для включения/ отключения перекрытия с другими плавающими объектами
* [RelativeHorizontalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativehorizontalalignment/) – относительное горизонтальное выравнивание плавающей таблицы.
* [RelativeVerticalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativeverticalalignment/) – относительное вертикальное выравнивание плавающей таблицы.

В следующем примере кода показано, как получить положение плавающей таблицы:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "get-floating-table-position.h" >}}

## Установите плавающее положение стола

Точно так же, как и getting, вы можете задать положение плавающей таблицы, используя тот же Aspose.Words API.

Важно знать, что выравнивание и расстояние по горизонтали и вертикали являются комбинированными свойствами, и одно из них может изменять другое. Например, установка значения **RelativeHorizontalAlignment** приведет к возврату значения **AbsoluteHorizontalDistance** к его значению по умолчанию, и наоборот. То же самое верно для вертикального расположения.

В следующем примере кода показано, как задать положение плавающей таблицы:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "floating-table-position.h" >}}

## Получить расстояние между таблицей и окружающим текстом

Aspose.Words также предоставляет возможность узнать расстояния между таблицами и окружающими текстами:

- [DistanceTop](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distancetop/) – значение расстояния сверху
- [DistanceBottom](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distancebottom/) – значение расстояния восприятия
- [DistanceRight](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distanceright/) – значение расстояния справа
- [DistanceLeft](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distanceleft/) – значение расстояния слева

В следующем примере кода показано, как определить расстояние между таблицей и окружающим ее текстом:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "distance-between-table-surrounding-text.h" >}}
