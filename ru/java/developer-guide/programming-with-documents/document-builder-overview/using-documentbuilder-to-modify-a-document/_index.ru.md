---
title: Использовать `DocumentBuilder` Изменить документ
second_title: Aspose.Words для Java
articleTitle: Использовать `DocumentBuilder` Изменить документ
linktitle: Использовать `DocumentBuilder` Изменить документ
type: docs
description: "Используйте конструктор документов, чтобы легко изменить документ в Java."
weight: 20
url: /ru/java/using-documentbuilder-to-modify-a-document/
timestamp: 2024-10-21-11-17-44
---

## Определение форматирования

### Форматирование шрифта

Текущее форматирование шрифта представлено a `Font` объект, возвращенный `DocumentBuilder.Font` собственность. The `Font` Класс содержит широкий спектр свойств шрифта, возможных в Microsoft Word.

| ![font-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-1.png) |
|  :-  |
Следующий пример кода показывает, как настроить форматирование шрифта.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetFontFormatting-DocumentBuilderSetFontFormatting.java" >}}


### Клеточное форматирование

Форматирование ячеек используется во время построения стола. Он представлен a `CellFormat` объект, возвращенный `DocumentBuilder.CellFormat` собственность. CellFormat инкапсулирует различные свойства столовых ячеек, такие как ширина или вертикальное выравнивание.

| ![cell-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-2.png) |
|  :-  |
Следующий пример кода показывает, как создать таблицу, содержащую одну отформатированную ячейку.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetTableCellFormatting-DocumentBuilderSetTableCellFormatting.java" >}}

### Форматирование рядов

Текущее форматирование строк определяется `RowFormat` объект, который возвращается `DocumentBuilder.RowFormat` собственность. Объект инкапсулирует информацию обо всем форматировании строк таблицы.

| ![row-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-3.png) |
|  :-  |
Бытьlow code Пример показывает, как создать таблицу, которая содержит одну ячейку и применить форматирование строк.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetTableRowFormatting-DocumentBuilderSetTableRowFormatting.java" >}}

### Список форматирования

Aspose.Words Это позволяет легко создавать списки, применяя форматирование списков. DocumentBuilder предоставляет `DocumentBuilder.ListFormat` Имущество, которое возвращает `ListFormat` объект. Этот объект имеет несколько методов, чтобы начать и закончить список и увеличить / уменьшить отступ.

| ![list-fformatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-4.png) |
|  :-  |
Существует два основных типа списков в Microsoft WordПулен и пронумерован.

- Чтобы начать список, звоните. [ListFormat.applyBulletDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyBulletDefault).
- Чтобы начать пронумерованный список, позвоните [ListFormat.applyNumberDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyNumberDefault).

Пуля или номер и форматирование добавляются к текущему абзацу и всем последующим абзацам, созданным с использованием **DocumentBuilder** до [ListFormat.removeNumbers](https://reference.aspose.com/words/java/com.aspose.words/listformat/#removeNumbers) Он призван остановить форматирование списка.

В документах Word списки могут состоять до девяти уровней. Форматирование списка для каждого уровня определяет, какая пуля или номер используется, левый отступ, пространство между пулей и текстом и т.д.

- Чтобы повысить уровень списка текущего пункта на один уровень, звоните [ListFormat.listIndent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listIndent).
- Чтобы снизить уровень списка текущего абзаца на один уровень, звоните [ListFormat.listOutdent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listOutdent).

Методы изменяют уровень списка и применяют свойства форматирования нового уровня.

{{% alert color="primary" %}}

Вы также можете использовать [ListFormat.listLevelNumber](https://reference.aspose.com/words/java/com.aspose.words/listformat/#setListLevelNumber-int) собственности, чтобы получить или установить уровень списка для пункта. Уровни списка нумеруются от 0 до 8.

{{% /alert %}}

Следующий пример кода показывает, как создать многоуровневый список.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetMultilevelListFormatting-DocumentBuilderSetMultilevelListFormatting.java" >}}

### Настройка страницы и форматирование разделов

Настройка страницы и свойства раздела инкапсулированы в `PageSetup` объект, который возвращается `DocumentBuilder.PageSetup` собственность. Объект содержит все атрибуты настройки страницы раздела (левая маржа, нижняя маржа, размер бумаги и так далее) в качестве свойств.

| ![section-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-5.png) |
|  :-  |
Следующий пример кода показывает, как установить такие свойства, как размер страницы и ориентация для текущего раздела.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetPageSetupAndSectionFormatting-DocumentBuilderSetPageSetupAndSectionFormatting.java" >}}

### Применять стиль

Некоторые форматирующие объекты, такие как Font или ParactFormat, поддерживают стили. Единый встроенный или определяемый пользователем стиль представлен `Style` объект, который содержит соответствующие свойства стиля, такие как имя, базовый стиль, шрифт и форматирование абзаца стиля и так далее.

Кроме того, a **Style** Объект обеспечивает [Style.getStyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/style/#getStyleIdentifier) свойство, возвращающее идентификатор локально-независимого стиля, представленный **Style.StyleIdentifier** Перечислительная стоимость. Дело в том, что названия встроенных стилей в Microsoft Word Они локализованы для разных языков. Используя идентификатор стиля, вы можете найти правильный стиль независимо от языка документа. Значения перечисления соответствуют Microsoft Word Встроенные стили, такие как Normal, Heading 1, Heading 2 и т.д. Все пользовательские стили присваиваются **Идентификатор стиля. Пользовательская ценность**.

| ![apply-style-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-6.png) |
|  :-  |
Следующий пример кода показывает, как применять стиль абзаца.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyParagraphStyle.java" >}}

### Границы и затенение

Границы представлены Коллекцией пограничников. Это набор пограничных объектов, доступ к которым осуществляется по индексу или по типу границы. Пограничный тип обозначается `BorderType` перечисление. Некоторые значения перечисления применимы к нескольким или только одному элементу документа. Например, `BorderType.Bottom` применимо к абзацу или столовой ячейке, если `BorderType.DiagonalDown` Указывает диагональную границу только в столовой ячейке.

И пограничная коллекция, и каждая отдельная граница имеют схожие атрибуты, такие как цвет, стиль линии, ширина линии, расстояние от текста и дополнительная тень. Они представлены свойствами того же названия. Вы можете достичь различных типов границ, объединив ценности недвижимости. Кроме того, оба **BorderCollection** и **Border** объекты позволяют вам сбросить эти значения по умолчанию, вызывая [Border.clearFormatting](https://reference.aspose.com/words/java/com.aspose.words/border/#clearFormatting) метод. Обратите внимание, что когда пограничные свойства сбрасываются на значения по умолчанию, граница невидима.

| ![set-borders-shading-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-7.png) |
|  :-  |
The [Shading](https://reference.aspose.com/words/java/com.aspose.words/shading/) Класс содержит затеняющие атрибуты для элементов документа. Вы можете установить желаемую текстуру затенения и цвета, которые наносятся на фон и передний план элемента.

Затенение текстуры устанавливается с помощью [TextureIndex](https://www.aspose.com/api/java/words/com.aspose.words/constants/TextureIndex) значение перечисления, которое позволяет применять различные шаблоны к **Shading** объект. Например, чтобы установить цвет фона для элемента документа, используйте [TextureIndex.TextureSolid](https://www.aspose.com/api/java/words/com.aspose.words/constants/TextureIndex) Значение и установить передний план затенения цвета, как это необходимо.

| ![borders-and-shading-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-8.png) |
|  :-  |
Приведенный ниже пример показывает, как применять границы и затенение к абзацу.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyBordersAndShadingToParagraph.java" >}}

### Snap to Grid

Aspose.Words Обеспечивает два свойства `ParagraphFormat.SnapToGrid` и `Font.SnapToGrid` Чтобы получить и установить пункт собственности щелкнуть в сетку

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-SetSnapToGrid.java" >}}

### Перемещение курсора

### Обнаружение текущей позиции курсора

Вы можете получить, где курсор строителя в настоящее время находится в любое время. The [DocumentBuilder.getCurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentNode) Собственность возвращает узел, который в настоящее время выбран в этом конструкторе. Узел является прямым ребенком параграфа. Любые операции вставки, которые вы выполняете с помощью `DocumentBuilder` Вставить перед тем, как `DocumentBuilder.CurrentNode`. Если текущий абзац пуст или курсор расположен непосредственно перед концом абзаца, `DocumentBuilder.CurrentNode` Возвращает нуль.

Кроме того, вы можете использовать [DocumentBuilder.getCurrentParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentParagraph) собственность, которая получает пункт, который в настоящее время выбран в этом **DocumentBuilder**. бытьlow code Пример показывает, как получить доступ к текущему узлу в конструкторе документов.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderCursorPosition-DocumentBuilderCursorPosition.java" >}}

### Переезд в любой узел (Параграфы и их дети)

Если у вас есть объектный узел документа, который является абзацем или прямым ребенком абзаца, вы можете указать курсор строителя на этот узел. Используйте [DocumentBuilder.moveTo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveTo-com.aspose.words.Node) Способ выполнения этого.
Следующий пример кода показывает, как перемещать положение курсора в указанный узел.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToNode-DocumentBuilderMoveToNode.java" >}}

### Перейти к началу/концу документа

Если вам нужно перейти к началу документа, звоните [DocumentBuilder.moveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart). Если вам нужно перейти к концу документа, позвоните [DocumentBuilder.moveToDocumentEnd](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentEnd).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToDocumentStartEnd-DocumentBuilderMoveToDocumentStartEnd.java" >}}

### Перейти в раздел

Если вы работаете с документом, который содержит несколько разделов, вы можете перейти в нужный раздел, используя [DocumentBuilder.moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int). Этот метод перемещает курсор в начало заданного раздела и принимает индекс требуемого раздела. Когда индекс сечения больше или равен 0, он указывает индекс с начала документа с 0, являющимся первым разделом. Когда индекс раздела меньше 0, он указывает индекс от конца документа с -1, являющимся последним разделом. бытьlow code Пример показывает, как перемещать положение курсора в указанный раздел. Вы можете скачать файл шаблона этого примера из [здесь](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToSection-DocumentBuilderMoveToSection.java" >}}

### Перейти к заголовку/футеру

Когда вам нужно поместить некоторые данные в заголовок или нижний колонтитул, вы должны сначала переместиться туда, используя [DocumentBuilder.moveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int). Способ принимает значение перечня HeaderFooterType, которое идентифицирует тип заголовка или футера, к которому курсор должен быть перемещен.

Если вы хотите создать заголовки и нижние колонтитулы, которые отличаются для первой страницы, вам нужно установить [PageSetup.getDifferentFirstPageHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getDifferentFirstPageHeaderFooter) имущество **true**. Если вы хотите создать заголовки и нижние колонтитулы, которые отличаются для четных и нечетных страниц, вам нужно установить [PageSetup.getOddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOddAndEvenPagesHeaderFooter) то **true**.

Если вам нужно вернуться к основной истории, используйте[DocumentBuilder.moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int) чтобы выйти из заголовка или футера. Ниже приведен пример создания заголовков и нижних колонок в документе с использованием DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderHeadersAndFooters-DocumentBuilderHeaderAndFooters.java" >}}

### Переход к пункту

Использовать[DocumentBuilder.moveToParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToParagraph-int-int) Переместить курсор в нужный пункт в текущем разделе. Вы должны передать два параметра этому методу: paragraphIndex (индекс абзаца для перехода) и characterIndex (индекс символа внутри абзаца).

Навигация выполняется внутри текущей истории текущего раздела. То есть, если вы переместили курсор в основной заголовок первого раздела, то в этом заголовке этого раздела указывается индекс абзаца.

Когда индекс больше или равен 0, он определяет индекс с начала раздела с 0, являющимся первым абзацем. Если индекс меньше 0, он указывает индекс от конца раздела с -1, являющимся последним абзацем. В настоящее время индекс символов может быть указан только как 0 для перехода в начало абзаца или -1 для перехода в конец абзаца. Следующий пример кода показывает, как перемещать положение курсора в указанный пункт. Вы можете скачать файл шаблона этого примера из [здесь](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToParagraph-DocumentBuilderMoveToParagraph.java" >}}

### Переезд в столовую клетку

Использовать [DocumentBuilder.moveToCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToCell-int-int-int-int) Если вам нужно переместить курсор на ячейку стола в текущем разделе. Этот метод принимает четыре параметра:

- tableIndex - индекс таблицы для перехода на.
- rowIndex - индекс строки в таблице.
- columnIndex - индекс столбца в таблице.
- characterIndex - индекс персонажа внутри клетки.

Навигация выполняется внутри текущей истории текущего раздела.

Для параметров индекса, когда индекс больше или равен 0, он определяет индекс с самого начала, причем 0 является первым элементом. Когда индекс меньше 0, он определяет индекс с конца, причем -1 является последним элементом.

Кроме того, обратите внимание, что в настоящее время можно указать только 0, чтобы перейти к началу ячейки или -1, чтобы перейти к концу ячейки. Следующий пример кода показывает, как перемещать положение курсора в указанную ячейку таблицы. Вы можете скачать файл шаблона этого примера из [здесь](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToTableCell-DocumentBuilderMoveToTableCell.java" >}}

### Переход к закладке

Закладки часто используются для обозначения конкретных мест в документе, где должны быть вставлены новые элементы. Чтобы перейти к закладке, используйте [DocumentBuilder.moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String). Этот метод имеет две перегрузки. Самый простой не принимает ничего, кроме названия закладки, где курсор должен быть перемещен. Следующий пример кода показывает, как перемещать позицию курсора в закладку.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmark-DocumentBuilderMoveToBookmark.java" >}}

Эта перегрузка перемещает курсор в положение сразу после начала закладки с указанным названием. Еще одна перегрузка [DocumentBuilder.moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String-boolean-boolean) Переносит курсор на закладку с большей точностью. Он принимает два дополнительных булевых параметра:

- isStart определяет, следует ли перемещать курсор в начало или в конец закладки.
- После определяет, следует ли перемещать курсор, чтобы он находился после начальной или конечной позиции закладки, или перемещать курсор, чтобы он находился перед начальной или конечной позицией закладки.

Следующий пример кода показывает, как перемещать положение курсора сразу после окончания закладки.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmarkEnd-DocumentBuilderMoveToBookmarkEnd.java" >}}

Включение нового текста таким образом не заменяет существующий текст закладки. Обратите внимание, что некоторые закладки в документе назначаются для формирования полей. Переходя к такой закладке и вставляя текст там вставляет текст в код поля формы. Хотя это не отменяет поле формы, вставленный текст не будет виден, поскольку он становится частью кода поля.

### Переезд в А `Merge` поле

Иногда вам может понадобиться выполнить "руководство". mail merge использовать `DocumentBuilder` или заполнить поле слияния особым образом внутри mail merge организатор событий. Это когда [DocumentBuilder.moveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField-java.lang.String) Это может быть полезно. Метод принимает название поля слияния. Он перемещает курсор в положение непосредственно за пределы указанного поля слияния и удаляет поле слияния. Следующий пример кода показывает, как перемещать курсор в положение непосредственно за пределами указанного поля слияния.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToMergeField-DocumentBuilderMoveToMergeField.java" >}}

## Как конвертировать между единицами измерения

Большинство свойств объекта, представленных в Aspose.Words API которые представляют собой некоторые измерения (ширина / высота, поля и различные расстояния) принимают значения в точках (1 дюйм равен 72 точкам). Иногда это не удобно, поэтому есть `ConvertUtil` Класс, который обеспечивает функции помощника для преобразования между различными единицами измерения. Он позволяет конвертировать дюймы в точки, точки в дюймы, пиксели в точки и точки в пиксели. Когда пиксели преобразуются в точки и наоборот, это может быть выполнено в разрешениях 96 dpi (точки на дюйм) или в указанном разрешении dpi.

**ConvertUtil** Это очень полезно при установке различных свойств страницы, потому что, например, дюймы являются более обычными единицами измерения, чем точки. Следующий пример показывает, как настроить свойства страницы в дюймах.

Следующий пример кода показывает, как указать свойства страницы в дюймах.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ConvertBetweenMeasurementUnits-ConvertBetweenMeasurementUnits.java" >}}
