---
title: Работа с колоннами и рядами в Java
second_title: Aspose.Words для Java
articleTitle: Работа с колоннами и рядами
linktitle: Работа с колоннами и рядами
description: "Работа с частями таблицы - строками, столбцами и ячейками с использованием Java. Указать Header Row Java."
type: docs
weight: 30
url: /ru/java/working-with-columns-and-rows/
timestamp: 2024-01-27-14-07-04
---

Чтобы лучше контролировать работу таблиц, научитесь манипулировать столбцами и строками.

## Найдите индекс элементов таблицы

Колонки, строки и ячейки управляются путем доступа к выбранному узлу документа по его индексу. Поиск индекса любого узла включает в себя сбор всех дочерних узлов типа элемента из родительского узла, а затем использование [IndexOf](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#indexOf-com.aspose.words.Node) Способ нахождения индекса нужного узла в коллекции.

### Найдите индекс таблицы в документе

Иногда вам может потребоваться внести изменения в определенную таблицу в документе. Для этого можно обратиться к таблице по ее индексу.

Следующий пример кода показывает, как восстановить индекс таблицы в документе:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-table-index.java" >}}

### Найти индекс строки в таблице

Точно так же вам может потребоваться внести изменения в определенную строку в выбранной таблице. Для этого также можно обратиться к строке по ее индексу.

Следующий пример кода показывает, как восстановить индекс строки в таблице:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-row-index.java" >}}

### Найти индекс клетки в ряде

Наконец, вам может потребоваться внести изменения в конкретную клетку, и вы можете сделать это по индексу ячейки.

Следующий пример кода показывает, как получить индекс ячейки подряд:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-cell-index.java" >}}

## Работа с колоннами

В этом Aspose.Words Document Object Model ()DOM), [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) Узел состоит из [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) узлы и затем [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) Узлы. Таким образом, в `Document` Объектная модель Aspose.WordsКак и в документах Word, понятие столбца отсутствует.

По дизайну, стол в ряд Microsoft Word и Aspose.Words Они полностью независимы, а основные свойства и операции содержатся только в строках и ячейках таблицы. Это дает таблицам возможность иметь некоторые интересные атрибуты:

- Каждая строка таблицы может иметь совершенно разное количество ячеек
- Вертикально, ячейки каждого ряда могут иметь разную ширину
- Можно объединять таблицы с различными форматами строк и количеством ячеек

![work-with-columns-aspose-words-java](/words/java/working-with-columns-and-rows/working-with-columns-and-rows-1.png)

Любые операции, выполняемые на столбцах, на самом деле являются "короткими", которые выполняют операцию путем коллективного изменения ячеек строк таким образом, что кажется, что они применяются к столбцам. То есть, вы можете выполнять операции на столбцах, просто повторяя один и тот же индекс ячеек строки таблицы.

Следующий пример кода упрощает такие операции, доказывая класс фасада, который собирает ячейки, составляющие "столбец" таблицы:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "column-class.java" >}}

Следующий пример кода показывает, как вставить пустую колонку в таблицу:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "insert-blank-column.java" >}}

Следующий пример кода показывает, как удалить колонку из таблицы в документе:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "remove-column.java" >}}

## Укажите Rows как Header Rows

Вы можете повторить первую строку в таблице в виде строки заголовка только на первой странице или на каждой странице, если таблица разделена на несколько. в Aspose.Words, Вы можете повторить строку заголовка на каждой странице, используя [HeadingFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getHeadingFormat) собственность.

Вы также можете отметить несколько рядов заголовков, если такие ряды расположены один за другим в начале таблицы. Для этого вам необходимо применить **HeadingFormat** Свойства этих рядов.

{{% alert color="primary" %}}

Обратите внимание, что заголовки не работают в вложенных столах. То есть, если у вас есть стол внутри другого стола, эта настройка не будет иметь никакого эффекта. Это является ограничением Microsoft Word Это не позволяет этого, не Aspose.Words.

{{% /alert %}}

Следующий пример кода показывает, как построить таблицу, которая включает строки заголовков, которые повторяются на последующих страницах:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "repeat-rows-on-subsequent-pages.java" >}}

## Держите столы и ряды от прорыва через страницы {#keep-tables-and-rows-from-breaking-across-pages}

Бывают случаи, когда содержимое таблицы не должно быть разделено на страницы. Например, если заголовок находится над таблицей, заголовок и таблица всегда должны храниться вместе на одной странице, чтобы сохранить правильный внешний вид.

Есть два отдельных метода, которые полезны для достижения этой функциональности:

- `Allow row break across pages`, который применяется к столовым рядам
- `Keep with next`, который применяется к абзацам в ячейках таблицы

По умолчанию вышеперечисленные свойства отключены.

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-1.png" alt="keep-tables-and-rows-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

### Держите ряд от прорыва через страницы {#keep-a-row-from-breaking-across-pages}

Это включает в себя ограничение содержимого внутри ячеек строки от деления на страницу. в Microsoft Word, Это можно найти в разделе Свойства таблицы в качестве опции "Разрешить строку разбивать страницы". в Aspose.Words Он находится под [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/) объектом [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) как имущество [RowFormat.AllowBreakAcrossPages](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getAllowBreakAcrossPages).

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-2.png" alt="keep-rows-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

Следующий пример кода показывает, как отключить разбивку строк по страницам для каждой строки в таблице:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "row-format-disable-break-across-pages.java" >}}

### Держите таблицу от разрыва страниц {#keep-a-table-from-breaking-across-pages}

Чтобы стол не разделялся по страницам, мы должны указать, что мы хотим, чтобы контент, содержащийся в таблице, оставался вместе.

Чтобы сделать это, Aspose.Words использует метод, который позволяет пользователям выбрать таблицу и включить [KeepWithNext](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getKeepWithNext) параметр для true для каждого абзаца в ячейках таблицы. Исключением является последний пункт в таблице, который следует установить для false.

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-3.png" alt="keep-tables-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

Следующий пример кода показывает, как установить таблицу, чтобы оставаться вместе на одной странице:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "keep-table-together.java" >}}
