---
title: Положение таблицы в Java
second_title: Aspose.Words для Java
articleTitle: Расположите стол
linktitle: Расположите стол
description: "Укажите положение таблицы с помощью Java. Чтобы выровнять таблицу, найдите и задайте плавающее положение таблицы с помощью Java."
type: docs
weight: 50
url: /ru/java/position-a-table/
timestamp: 2024-01-27-14-07-04
---

Существуют плавающие таблицы и встроенные таблицы:

* **Inline tables** располагаются на том же слое, что и текст, и помещаются в текстовом потоке, который окружает таблицу только сверху и снизу. Встроенные таблицы всегда будут отображаться между абзацами, в которых вы их разместили.
* **Floating tables** накладываются слоями на текст, а положение таблицы относительно абзаца определяется привязкой таблицы. Из-за этого положение плавающей таблицы в документе зависит от настроек вертикального и горизонтального позиционирования.

Иногда вам нужно расположить таблицу в документе определенным образом. Для этого вам нужно воспользоваться инструментами выравнивания и установить отступы между таблицей и окружающим текстом.

В этой статье мы обсудим, какие опции Aspose.Words предоставляет для позиционирования.

## Укажите положение встроенной таблицы

Вы можете задать положение встроенной таблицы, используя свойства Aspose.Words API и [Alignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getAlignment). Таким образом, вы можете настроить выравнивание таблицы относительно страницы документа.

В следующем примере кода показано, как задать положение встроенной таблицы:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "inline-table-position.java" >}}

## Получите плавающее выравнивание таблицы

Если для переноса текста таблицы задано значение **Around**, вы можете выровнять таблицу по горизонтали и вертикали, используя свойства [RelativeHorizontalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeHorizontalAlignment) и [RelativeVerticalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeVerticalAlignment).

С помощью **other types of text wrapping** вы можете получить встроенное выравнивание таблицы, используя свойство **Alignment**.

В следующем примере кода показано, как получить выравнивание таблицы:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "get-table-position.java" >}}

## Получить плавающее положение стола

 Положение плавающей таблицы определяется с помощью следующих свойств:

* [HorizontalAnchor](https://reference.aspose.com/words/java/com.aspose.words/table/#getHorizontalAnchor) – объект для вычисления горизонтального положения плавающей таблицы
* [VerticalAnchor](https://reference.aspose.com/words/java/com.aspose.words/table/#getVerticalAnchor) – объект для вычисления вертикального положения плавающей таблицы
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/java/com.aspose.words/table/#getAbsoluteHorizontalDistance) – абсолютное горизонтальное положение плавающего стола
* [AbsoluteVerticalDistance](https://reference.aspose.com/words/java/com.aspose.words/table/#getAbsoluteVerticalDistance) – абсолютное вертикальное положение плавающего стола
* [AllowOverlap](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowOverlap) – опция для включения/ отключения перекрытия с другими плавающими объектами
* [RelativeHorizontalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeHorizontalAlignment) – относительное горизонтальное выравнивание плавающей таблицы.
* [RelativeVerticalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeVerticalAlignment) – относительное вертикальное выравнивание плавающей таблицы.

В следующем примере кода показано, как получить положение плавающей таблицы:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "get-floating-table-position.java" >}}

## Установите плавающее положение стола

Точно так же, как и getting, вы можете задать положение плавающей таблицы, используя те же самые Aspose.Words API.

Важно знать, что выравнивание и расстояние по горизонтали и вертикали являются комбинированными свойствами, и одно из них может изменять значение другого. Например, установка значения **RelativeHorizontalAlignment** приведет к возврату значения **AbsoluteHorizontalDistance** к его значению по умолчанию и наоборот. То же самое верно для вертикального расположения.

В следующем примере кода показано, как задать положение плавающей таблицы:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "floating-table-position.java" >}}

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "relative-horizontal-or-vertical-position.java" >}}

## Получить расстояние между таблицей и окружающим текстом

Aspose.Words также предоставляет возможность узнать расстояния между таблицами и окружающими текстами:

- [DistanceTop](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceTop) – значение расстояния сверху
- [DistanceBottom](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceBottom) – значение расстояния восприятия
- [DistanceRight](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceRight) – значение расстояния справа
- [DistanceLeft](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceLeft) – значение расстояния слева

В следующем примере кода показано, как определить расстояние между таблицей и окружающим ее текстом:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "distance-between-table-surrounding-text.java" >}}
