---
title: Работа со столбцами и строками в C#
second_title: Aspose.Words для .NET
articleTitle: Работа со столбцами и строками
linktitle: Работа со столбцами и строками
description: "Работа с частями таблицы — строками, столбцами и ячейками — с использованием C#. Укажите строку заголовка C#."
type: docs
weight: 30
url: /ru/net/working-with-columns-and-rows/
---

Чтобы лучше контролировать работу таблиц, узнайте, как манипулировать столбцами и строками.

## Найдите индекс элемента таблицы {#find-the-index-of-table-elements}

Столбцы, строки и ячейки управляются путем доступа к выбранному узлу документа по его индексу. Поиск индекса любого узла включает сбор всех дочерних узлов типа элемента из родительского узла, а затем использование метода [IndexOf](https://reference.aspose.com/words/net/aspose.words/nodecollection/indexof/) для поиска индекса нужного узла в коллекции.

### Найдите индекс таблицы в документе {#find-the-index-of-table-in-a-document}

Иногда вам может потребоваться внести изменения в определенную таблицу в документе. Для этого можно обратиться к таблице по ее индексу.

В следующем примере кода показано, как получить индекс таблицы в документе:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "retrieve-table-index.cs" >}}

### Найти индекс строки в таблице {#find-the-index-of-a-row-in-a-table}

Аналогичным образом вам может потребоваться внести изменения в определенную строку выбранной таблицы. Для этого вы также можете обратиться к строке по ее индексу.

В следующем примере кода показано, как получить индекс строки в таблице:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "retrieve-row-index.cs" >}}

### Найти индекс ячейки в строке {#find-the-index-of-a-cell-in-a-row}

Наконец, вам может потребоваться внести изменения в определенную ячейку, и вы также можете сделать это по индексу ячейки.

В следующем примере кода показано, как получить индекс ячейки в строке:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "retrieve-cell-index.cs" >}}

## Работа со столбцами {#work-with-columns}

В Aspose.Words Document Object Model (DOM) узел [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/) состоит из [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) узлов и затем [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/) узла. Таким образом, в Объектной модели `Document` Aspose.Words, как и в документах Word, нет понятия столбца.

По задумке строки таблицы Microsoft Word и Aspose.Words полностью независимы, а основные свойства и операции содержатся только в строках и ячейках таблицы. Это дает таблицам возможность иметь некоторые интересные атрибуты:

- Каждая строка таблицы может иметь совершенно разное количество ячеек
- По вертикали ячейки каждой строки могут иметь разную ширину
- Возможно объединение таблиц с разными форматами строк и количеством ячеек

Любые операции, выполняемые над столбцами, на самом деле являются "ярлыками", которые выполняют операцию путем коллективного изменения ячеек строки таким образом, что создается впечатление, что они применяются к столбцам. То есть вы можете выполнять операции над столбцами, просто перебирая один и тот же индекс ячейки строки таблицы.

Следующий пример кода упрощает такие операции, демонстрируя фасадный класс, который собирает ячейки, составляющие "столбец" таблицы:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "column-class.cs" >}}

В следующем примере кода показано, как вставить пустой столбец в таблицу:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "insert-blank-column.cs" >}}

В следующем примере кода показано, как удалить столбец из таблицы в документе:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "remove-column.cs" >}}

## Укажите строки как строки заголовка

Вы можете выбрать повтор первой строки таблицы в качестве строки заголовка только на первой странице или на каждой странице, если таблица разделена на несколько. В Aspose.Words вы можете повторять строку заголовка на каждой странице, используя свойство [HeadingFormat](https://reference.aspose.com/words/net/aspose.words.tables/rowformat/headingformat/).

Вы также можете отметить несколько строк заголовка, если такие строки расположены одна за другой в начале таблицы. Для этого вам необходимо применить к этим строкам свойства **HeadingFormat**.

{{% alert color="primary" %}}

Обратите внимание, что строки заголовков не работают во вложенных таблицах. То есть, если у вас есть таблица внутри другой таблицы, этот параметр не будет иметь никакого эффекта. Это ограничение Microsoft Word не позволяет этого, а не Aspose.Words.

{{% /alert %}}

В следующем примере кода показано, как построить таблицу, включающую строки заголовков, повторяющиеся на последующих страницах:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "repeat-rows-on-subsequent-pages.cs" >}}

## Не допускайте разрыва таблиц и строк на страницах {#keep-tables-and-rows-from-breaking-across-pages}

Бывают случаи, когда содержимое таблицы не следует разбивать по страницам. Например, если заголовок находится над таблицей, заголовок и таблица всегда должны располагаться вместе на одной странице, чтобы сохранить надлежащий внешний вид.

Есть два отдельных метода, которые полезны для достижения этой функциональности:

- `Allow row break across pages`, применяется к строкам таблицы
- `Keep with next`, который применяется к абзацам в ячейках таблицы

По умолчанию вышеуказанные свойства отключены.

### Не допускайте разрыва строки на страницах {#keep-a-row-from-breaking-across-pages}

Это включает в себя ограничение разделения содержимого внутри ячеек строки по странице. В версии Microsoft Word это можно найти в разделе "Свойства таблицы" как параметр "Разрешить разбивку строки по страницам". В Aspose.Words это находится под объектом [RowFormat](https://reference.aspose.com/words/net/aspose.words.tables/rowformat/) объекта [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) как свойство [RowFormat.AllowBreakAcrossPages](https://reference.aspose.com/words/net/aspose.words.tables/row/format/properties/allowbreakacrosspages).

В следующем примере кода показано, как отключить разбиение строк по страницам для каждой строки таблицы:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "row-format-disable-break-across-pages.cs" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера по адресу [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20spanning%20two%20pages.docx).

{{% /alert %}}

### Чтобы таблица не разбивалась на страницы {#keep-a-table-from-breaking-across-pages}

Чтобы таблица не разделялась на страницы, нам нужно указать, что мы хотим, чтобы содержимое, содержащееся в таблице, оставалось единым.

Для этого Aspose.Words использует метод, который позволяет пользователям выбирать таблицу и устанавливать для параметра [KeepWithNext](https://reference.aspose.com/words/net/aspose.words/paragraphformat/keepwithnext/) значение true для каждого абзаца в ячейках таблицы. Исключением является последний абзац таблицы, для которого должно быть установлено значение false.

В следующем примере кода показано, как заставить таблицу оставаться вместе на одной странице:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "keep-table-together.cs" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера по адресу [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20spanning%20two%20pages.docx).

{{% /alert %}}