---
title: Работа со столбцами и строками в Java
second_title: Aspose.Words для Java
articleTitle: Работа со столбцами и строками
linktitle: Работа со столбцами и строками
description: "Работа с частями таблицы – строками, столбцами и ячейками с помощью Java. Укажите строку заголовка Java."
type: docs
weight: 30
url: /ru/java/working-with-columns-and-rows/
timestamp: 2024-01-27-14-07-04
---

Чтобы лучше контролировать работу таблиц, узнайте, как манипулировать столбцами и строками.

## Найдите индекс элемента таблицы

Управление столбцами, строками и ячейками осуществляется путем обращения к выбранному узлу документа по его индексу. Поиск индекса любого узла включает в себя сбор всех дочерних узлов типа element из родительского узла, а затем использование метода [IndexOf](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#indexOf-com.aspose.words.Node) для поиска индекса нужного узла в коллекции.

### Найдите индекс таблицы в документе

Иногда вам может потребоваться внести изменения в определенную таблицу в документе. Для этого вы можете обратиться к таблице по ее индексу.

В следующем примере кода показано, как получить индекс таблицы в документе:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-table-index.java" >}}

### Поиск индекса строки в таблице

Аналогичным образом, вам может потребоваться внести изменения в определенную строку в выбранной таблице. Для этого вы также можете обратиться к строке по ее индексу.

В следующем примере кода показано, как получить индекс строки в таблице:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-row-index.java" >}}

### Поиск индекса ячейки в строке

Наконец, вам может потребоваться внести изменения в определенную ячейку, и вы также можете сделать это с помощью индекса ячейки.

В следующем примере кода показано, как получить индекс ячейки в строке:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-cell-index.java" >}}

## Работа с колонками

В объектной модели документа Aspose.Words (DOM) узел [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) состоит из [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) узлов, а затем из [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) узлов. Таким образом, в объектной модели документа `Document` из Aspose.Words, как и в документах Word, отсутствует понятие столбца.

По замыслу, строки таблицы в Microsoft Word и Aspose.Words полностью независимы, а основные свойства и операции содержатся только в строках и ячейках таблицы. Это дает таблицам возможность иметь некоторые интересные атрибуты:

- Каждая строка таблицы может содержать совершенно разное количество ячеек
- По вертикали ячейки каждой строки могут иметь разную ширину
- Можно объединять таблицы с разными форматами строк и количеством ячеек

![work-with-columns-aspose-words-java](/words/java/working-with-columns-and-rows/working-with-columns-and-rows-1.png)

Любые операции, выполняемые со столбцами, на самом деле являются "сокращениями", которые выполняют операцию путем коллективного изменения ячеек строк таким образом, что это выглядит так, как будто они применяются к столбцам. То есть вы можете выполнять операции со столбцами, просто повторяя индекс одной и той же ячейки строки таблицы.

Следующий пример кода упрощает такие операции, демонстрируя класс facade, который собирает ячейки, составляющие "столбец" таблицы:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "column-class.java" >}}

В следующем примере кода показано, как вставить пустой столбец в таблицу:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "insert-blank-column.java" >}}

В следующем примере кода показано, как удалить столбец из таблицы в документе:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "remove-column.java" >}}

## Укажите строки в качестве строк заголовка

Вы можете выбрать повторение первой строки таблицы в качестве строки заголовка только на первой странице или на каждой странице, если таблица разделена на несколько частей. В Aspose.Words вы можете повторять строку заголовка на каждой странице, используя свойство [HeadingFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getHeadingFormat).

Вы также можете пометить несколько строк заголовка, если такие строки расположены одна за другой в начале таблицы. Для этого вам необходимо применить к этим строкам свойства **HeadingFormat**.

{{% alert color="primary" %}}

Обратите внимание, что строки заголовка не работают во вложенных таблицах. То есть, если у вас есть таблица внутри другой таблицы, эта настройка не будет иметь эффекта. Это ограничение, равное Microsoft Word, не допускает этого, а не Aspose.Words.

{{% /alert %}}

В следующем примере кода показано, как создать таблицу, содержащую строки заголовка, которые повторяются на последующих страницах:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "repeat-rows-on-subsequent-pages.java" >}}

## Не допускайте разбивки таблиц и строк по страницам {#keep-tables-and-rows-from-breaking-across-pages}

В некоторых случаях содержимое таблицы не должно быть разделено по страницам. Например, если заголовок находится над таблицей, заголовок и таблица всегда должны располагаться вместе на одной странице, чтобы сохранить надлежащий внешний вид.

Есть два отдельных метода, которые полезны для достижения этой функциональности:

- `Allow row break across pages`, который применяется к строкам таблицы
- `Keep with next`, который применяется к абзацам в ячейках таблицы

По умолчанию вышеуказанные свойства отключены.

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-1.png" alt="keep-tables-and-rows-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

### Следите за тем, чтобы строка не разбивалась на страницы {#keep-a-row-from-breaking-across-pages}

Это предполагает ограничение разбиения содержимого внутри ячеек строки на страницы. В Microsoft Word это можно найти в свойствах таблицы как параметр "Разрешить разбиение строки на страницы". В Aspose.Words это находится под объектом [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/) из [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) как свойство [RowFormat.AllowBreakAcrossPages](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getAllowBreakAcrossPages).

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-2.png" alt="keep-rows-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

В следующем примере кода показано, как отключить разбиение строк по страницам для каждой строки таблицы:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "row-format-disable-break-across-pages.java" >}}

### Следите за тем, чтобы таблица не разбивалась на страницы {#keep-a-table-from-breaking-across-pages}

Чтобы таблица не разбивалась на страницы, нам нужно указать, что мы хотим, чтобы содержимое, содержащееся в таблице, оставалось единым.

Для этого в Aspose.Words используется метод, который позволяет пользователям выбирать таблицу и устанавливать для параметра [KeepWithNext](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getKeepWithNext) значение true для каждого абзаца в ячейках таблицы. Исключением является последний абзац в таблице, для которого должно быть установлено значение false.

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-3.png" alt="keep-tables-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

В следующем примере кода показано, как настроить таблицу так, чтобы она оставалась вместе на одной странице:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "keep-table-together.java" >}}
