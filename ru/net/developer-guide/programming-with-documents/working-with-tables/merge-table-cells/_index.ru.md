---
title: Слияние настольных клеток в C#
second_title: Aspose.Words для .NET
articleTitle: Слияние настольных клеток
linktitle: Слияние настольных клеток
description: "Как объединить столовые клетки в C#. Проверьте, слиты ли ячейки в таблице с помощью C#."
type: docs
weight: 40
url: /ru/net/working-with-merged-cells/
timestamp: 2024-01-27-14-07-04
---

Иногда определенные строки в таблице требуют заголовка или больших блоков текста, которые занимают всю ширину таблицы. Для правильного оформления таблицы пользователь может объединить несколько ячеек таблицы в одну. Aspose.Words Поддерживает слияние ячеек при работе со всеми форматами ввода, включая импорт HTML-контента.

## Как объединить столовые клетки

В Aspose.Words, Слитые клетки представлены следующими свойствами [CellFormat](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/) класс:

- [HorizontalMerge](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/horizontalmerge/) Описывает, является ли клетка частью горизонтального слияния клеток
- [VerticalMerge](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/verticalmerge/) который описывает, является ли клетка частью вертикального слияния клеток

Значения этих свойств определяют слияние поведения клеток:

- Первая клетка в последовательности слитых клеток будет иметь [CellMerge.First](https://reference.aspose.com/words/net/aspose.words.tables/cellmerge/)
- Последующие слившиеся клетки будут иметь [CellMerge.Previous](https://reference.aspose.com/words/net/aspose.words.tables/cellmerge/)
- Ячейка, которая не сливается, будет иметь [CellMerge.None](https://reference.aspose.com/words/net/aspose.words.tables/cellmerge/)

{{% alert color="primary" %}}

Иногда при загрузке существующих ячеек документа в таблицу они появляются слитыми. На самом деле это может быть одна длинная клетка. Microsoft Word Экспорт слитых клеток таким образом. Это может сбивать с толку при попытке работать с отдельными клетками, но, похоже, не существует какой-либо конкретной картины того, когда это происходит.

{{% /alert %}}

## Проверьте, слита ли клетка

Чтобы проверить, является ли клетка частью последовательности слитых клеток, мы просто проверяем **HorizontalMerge** и **VerticalMerge** свойств.

Следующий пример кода показывает, как печатать горизонтальный и вертикальный тип слияния ячеек:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "check-cells-merged.cs" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx).

{{% /alert %}}

## Слияние настольных клеток при использовании DocumentBuilder

Слияние клеток в таблице, созданной с помощью [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/), Вы должны установить соответствующий тип слияния для каждой ячейки, где ожидается слияние. **CellMerge.First** А потом **CellMerge.Previous**.

Кроме того, вы должны помнить, чтобы очистить настройку слияний для тех клеток, где слияние не требуется - это можно сделать, установив первую несливающуюся клетку. **CellMerge.None**. Если этого не сделать, все ячейки в таблице будут объединены.

Следующий пример кода показывает, как создать таблицу с двумя рядами, где ячейки в первой строке сливаются горизонтально:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "horizontal-merge.cs" >}}

Следующий пример кода показывает, как создать таблицу с двумя столбцами, где ячейки в первой колонке вертикально слиты:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "vertical-merge.cs" >}}

## Слияние настольных клеток в других случаях

В других ситуациях, когда **DocumentBuilder** не используется, например, в существующей таблице, слияние ячеек предыдущим способом может быть не таким простым. Вместо этого мы можем обернуть основные операции, связанные с применением свойств слияния к клеткам, в метод, который значительно облегчает задачу. Этот метод аналогичен методу автоматизации слияния, который называется объединением ряда ячеек в таблице.

Код ниже будет объединять ячейки таблицы в указанном диапазоне, начиная с данной ячейки и заканчивая конечной ячейкой. В этом случае диапазон может охватывать несколько строк или столбцов:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "merge-cells.cs" >}}

Следующий пример кода показывает, как объединить ряд клеток между двумя указанными клетками:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "merge-cell-range.cs" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx).

{{% /alert %}}

В зависимости от версии .NET Framework Если вы используете этот метод, вы можете улучшить его, превратив его в метод расширения. В этом случае вы можете вызвать этот метод непосредственно на клетке для слияния ряда клеток, таких как: `cell1.Merge(cell2)`.

## Вертикальные и горизонтальные слитые ячейки в таблице HTML

Как уже говорилось в предыдущих статьях, таблица Microsoft Word Это набор независимых рядов. Каждая строка имеет набор клеток, которые не зависят от клеток других строк. Таким образом, в Microsoft Word В таблице нет такого объекта, как "колонка", а "1-я колонка" - это что-то вроде "набора 1-й ячейки каждой строки в таблице". Это позволяет пользователям иметь таблицу, в которой, например, 1-й ряд состоит из двух ячеек - 2 см и 1 см, а 2-й ряд состоит из двух разных ячеек - 1 см и 2 см в ширину. И Aspose.Words Поддерживает эту концепцию таблиц.

Таблица в HTML имеет существенно разную структуру: каждая строка имеет одинаковое количество ячеек и (это важно для задачи) каждая ячейка имеет ширину соответствующего столбца, одинаковую для всех ячеек в одном столбце. Если так, **HorizontalMerge** и **VerticalMerge** вернуть неверное значение, используйте следующий пример кода:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "print-horizontal-and-vertical-merged.cs" >}}

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "horizontal-and-vertical-merge-helper-classes.cs" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx).

{{% /alert %}}

## Преобразование в горизонтальное Слияние клеток

Иногда невозможно определить, какие ячейки слиты, потому что некоторые новые версии Microsoft Word Флаги слияния больше не используются, когда ячейки сливаются горизонтально. Но для ситуаций, когда клетки сливаются в ячейку горизонтально по ширине с помощью флагов слияния, Aspose.Words обеспечивает `ConvertToHorizontallyMergedCells` Способ преобразования клеток. Этот метод просто преобразует таблицу и добавляет новые ячейки по мере необходимости.

Следующий пример кода показывает вышеупомянутый метод в работе:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "convert-to-horizontally-merged-cells.cs" >}}
