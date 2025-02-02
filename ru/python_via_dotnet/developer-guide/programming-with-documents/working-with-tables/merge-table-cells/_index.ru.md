﻿---
title: Объединить ячейки таблицы
second_title: Aspose.Words для Python via .NET
articleTitle: Объединить ячейки таблицы
linktitle: Объединить ячейки таблицы
description: "Как объединить ячейки таблицы с помощью Python. Проверьте, объединены ли ячейки в таблице с помощью Python."
type: docs
weight: 40
url: /ru/python-net/working-with-merged-cells/
timestamp: 2024-01-27-14-07-04
---

Иногда для определенных строк в таблице требуется заголовок или большие блоки текста, занимающие всю ширину таблицы. Для правильного оформления таблицы пользователь может объединить несколько ячеек таблицы в одну. Aspose.Words поддерживает объединенные ячейки при работе со всеми входными форматами, включая импорт содержимого HTML.

## Как объединить ячейки таблицы

В Aspose.Words объединенные ячейки представлены следующими свойствами класса [CellFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/):

- [HorizontalMerge](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/horizontal_merge/), который описывает, является ли ячейка частью горизонтального слияния ячеек
- [VerticalMerge](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/vertical_merge/), который описывает, является ли ячейка частью вертикального объединения ячеек

Значения этих свойств определяют поведение ячеек при слиянии:

- Первая ячейка в последовательности объединенных ячеек будет иметь [CellMerge.First](https://reference.aspose.com/words/python-net/aspose.words.tables/cellmerge/#first)
- Все последующие объединенные ячейки будут иметь [CellMerge.Previous](https://reference.aspose.com/words/python-net/aspose.words.tables/cellmerge/#previous)
- Ячейка, которая не была объединена, будет иметь [CellMerge.None](https://reference.aspose.com/words/python-net/aspose.words.tables/cellmerge/#none)

{{% alert color="primary" %}}

Иногда при загрузке существующих ячеек документа в таблицу они отображаются объединенными. Однако на самом деле это может быть одна длинная ячейка – иногда Microsoft Word экспортирует объединенные ячейки таким образом. Это может привести к путанице при попытке работать с отдельными ячейками, но, похоже, нет какой-либо определенной закономерности относительно того, когда это происходит.

{{% /alert %}}

## Проверьте, объединена ли ячейка

Чтобы проверить, является ли ячейка частью последовательности объединенных ячеек, мы просто проверяем свойства **HorizontalMerge** и **VerticalMerge**.

В следующем примере кода показано, как напечатать тип слияния горизонтальных и вертикальных ячеек:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "check-cells-merged.py" >}}

{{% alert color="primary" %}}

Вы можете скачать примерный файл этого примера с сайта [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx).

{{% /alert %}}

## Объединяйте ячейки таблицы При использовании DocumentBuilder

Чтобы объединить ячейки в таблице, созданной с помощью [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/), вам необходимо задать соответствующий тип слияния для каждой ячейки, в которой ожидается слияние – сначала **CellMerge.First**, а затем **CellMerge.Previous**.

Кроме того, вы должны помнить, что для тех ячеек, где слияние не требуется, необходимо отменить настройку слияния – это можно сделать, установив для первой ячейки, не подлежащей слиянию, значение **CellMerge.None**. Если этого не сделать, все ячейки в таблице будут объединены.

В следующем примере кода показано, как создать таблицу с двумя строками, в которой ячейки в первой строке объединяются по горизонтали:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "horizontal-merge.py" >}}

В следующем примере кода показано, как создать таблицу с двумя столбцами, в которой ячейки в первом столбце объединяются по вертикали:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "vertical-merge.py" >}}

## Объединяйте ячейки таблицы в других случаях

В других ситуациях, когда **DocumentBuilder** не используется, например, в существующей таблице, объединение ячеек предыдущим способом может оказаться не таким простым. Вместо этого мы можем обернуть основные операции, связанные с применением свойств объединения к ячейкам, в метод, который значительно упрощает задачу. Этот метод аналогичен методу автоматизации слияния, который вызывается для объединения диапазона ячеек в таблице.

Приведенный ниже код объединит ячейки таблицы в указанном диапазоне, начиная с указанной ячейки и заканчивая конечной ячейкой. В этом случае диапазон может охватывать несколько строк или столбцов:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "merge-cells.py" >}}

В следующем примере кода показано, как объединить диапазон ячеек между двумя указанными ячейками:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "merge-cell-range.py" >}}

{{% alert color="primary" %}}

Вы можете скачать примерный файл этого примера с сайта [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx).

{{% /alert %}}

В зависимости от используемой версии платформы, вы можете захотеть усовершенствовать этот метод, превратив его в метод расширения. В этом случае вы можете вызвать этот метод непосредственно для ячейки, чтобы объединить диапазон ячеек, например `cell1.Merge(cell2)`.

## Преобразование в горизонтально объединенные ячейки

Иногда невозможно определить, какие ячейки объединены, потому что в некоторых более новых версиях Microsoft Word больше не используются флаги объединения при горизонтальном объединении ячеек. Но для ситуаций, когда ячейки объединяются в ячейку по горизонтали по ширине с помощью флагов объединения, Aspose.Words предоставляет метод преобразования ячеек `ConvertToHorizontallyMergedCells`. Этот метод просто преобразует таблицу и добавляет новые ячейки по мере необходимости.

Следующий пример кода показывает описанный выше метод в действии:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "convert-to-horizontally-merged-cells.py" >}}
