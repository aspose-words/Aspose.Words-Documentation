---
title: Использование DocumentBuilder для изменения документа
second_title: Aspose.Words для Java
articleTitle: Использование DocumentBuilder для изменения документа
linktitle: Использование DocumentBuilder для изменения документа
type: docs
description: "Используйте конструктор документов, чтобы легко изменить документ в Java."
weight: 20
url: /ru/java/using-documentbuilder-to-modify-a-document/
timestamp: 2024-10-21-11-17-44
---

## Задание форматирования

### Форматирование шрифта

Текущее форматирование шрифта представлено объектом `Font`, возвращаемым свойством `DocumentBuilder.Font`. Класс `Font` содержит широкий спектр свойств шрифта, возможных в Microsoft Word.

| ![font-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-1.png) |
| :- |
В следующем примере кода показано, как задать форматирование шрифта.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetFontFormatting-DocumentBuilderSetFontFormatting.java" >}}


### Форматирование ячеек

Форматирование ячеек используется при построении таблицы. Оно представлено объектом `CellFormat`, возвращаемым свойством `DocumentBuilder.CellFormat`. CellFormat инкапсулирует различные свойства ячеек таблицы, такие как ширина или выравнивание по вертикали.

| ![cell-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-2.png) |
| :- |
В следующем примере кода показано, как создать таблицу, содержащую одну отформатированную ячейку.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetTableCellFormatting-DocumentBuilderSetTableCellFormatting.java" >}}

### Форматирование строк

Текущее форматирование строк определяется объектом `RowFormat`, который возвращается свойством `DocumentBuilder.RowFormat`. Этот объект содержит информацию обо всех форматированиях строк таблицы.

| ![row-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-3.png) |
| :- |
В примере below code показано, как создать таблицу, содержащую одну ячейку, и применить форматирование строк.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetTableRowFormatting-DocumentBuilderSetTableRowFormatting.java" >}}

### Форматирование списка

Aspose.Words позволяет легко создавать списки, применяя форматирование списка. DocumentBuilder предоставляет свойство `DocumentBuilder.ListFormat`, которое возвращает объект `ListFormat`. У этого объекта есть несколько методов для начала и завершения списка, а также для увеличения/уменьшения отступа.

| ![list-fformatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-4.png) |
| :- |
В Microsoft Word есть два основных типа списков: маркированные и нумерованные.

- Чтобы запустить маркированный список, наберите [ListFormat.applyBulletDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyBulletDefault).
- Чтобы запустить нумерованный список, наберите [ListFormat.applyNumberDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyNumberDefault).

Маркер или число и форматирование добавляются к текущему абзацу и всем последующим абзацам, созданным с использованием **DocumentBuilder**, до тех пор, пока не будет вызван [ListFormat.removeNumbers](https://reference.aspose.com/words/java/com.aspose.words/listformat/#removeNumbers), чтобы остановить форматирование маркированного списка.

В документах Word списки могут состоять максимум из девяти уровней. Форматирование списка для каждого уровня определяет, какой маркер или число используется, отступ слева, пробел между маркером и текстом и т.д.

- Чтобы увеличить уровень списка текущего абзаца на один уровень, вызовите [ListFormat.listIndent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listIndent).
- Чтобы уменьшить уровень списка текущего абзаца на один уровень, вызовите [ListFormat.listOutdent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listOutdent).

Методы изменяют уровень списка и применяют свойства форматирования нового уровня.

{{% alert color="primary" %}}

Вы также можете использовать свойство [ListFormat.listLevelNumber](https://reference.aspose.com/words/java/com.aspose.words/listformat/#setListLevelNumber-int), чтобы получить или задать уровень списка для абзаца. Уровни списка пронумерованы от 0 до 8.

{{% /alert %}}

В следующем примере кода показано, как создать многоуровневый список.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetMultilevelListFormatting-DocumentBuilderSetMultilevelListFormatting.java" >}}

### Настройка страницы и форматирование разделов

Свойства настройки страницы и раздела заключены в объект `PageSetup`, который возвращается свойством `DocumentBuilder.PageSetup`. Объект содержит все атрибуты настройки страницы для раздела (левое поле, нижнее поле, формат бумаги и т.д.) в качестве свойств.

| ![section-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-5.png) |
| :- |
В следующем примере кода показано, как задать такие свойства, как размер страницы и ориентация для текущего раздела.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetPageSetupAndSectionFormatting-DocumentBuilderSetPageSetupAndSectionFormatting.java" >}}

### Применение стиля

Некоторые объекты форматирования, такие как Font или ParagraphFormat, поддерживают стили. Отдельный встроенный или определяемый пользователем стиль представлен объектом `Style`, который содержит соответствующие свойства стиля, такие как название, базовый стиль, форматирование шрифта и абзаца стиля и так далее.

Кроме того, объект **Style** предоставляет свойство [Style.getStyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/style/#getStyleIdentifier), которое возвращает идентификатор стиля, не зависящий от языка, представленный значением перечисления **Style.StyleIdentifier**. Дело в том, что названия встроенных стилей в Microsoft Word локализованы для разных языков. Используя идентификатор стиля, вы можете найти правильный стиль независимо от языка документа. Значения перечисления соответствуют встроенным стилям Microsoft Word, таким как обычный, Heading 1, Heading 2 и т.д. Всем пользовательским стилям присваивается значение **StyleIdentifier.User value**.

| ![apply-style-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-6.png) |
| :- |
В следующем примере кода показано, как применить стиль абзаца.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyParagraphStyle.java" >}}

### Границы и затенение

Границы представлены символом BorderCollection. Это набор объектов-границ, доступ к которым осуществляется по индексу или по типу границы. Тип границы представлен перечислением `BorderType`. Некоторые значения перечисления применимы к нескольким или только к одному элементу документа. Например, `BorderType.Bottom` применимо к абзацу или ячейке таблицы, в то время как `BorderType.DiagonalDown` определяет диагональную границу только в ячейке таблицы.

Как коллекция рамок, так и каждая отдельная граница имеют схожие атрибуты, такие как цвет, стиль линии, ширина линии, расстояние от текста и необязательная тень. Они представлены одноименными свойствами. Комбинируя значения свойств, вы можете создавать различные типы границ. Кроме того, оба объекта **BorderCollection** и **Border** позволяют вам сбросить эти значения до значений по умолчанию, вызвав метод [Border.clearFormatting](https://reference.aspose.com/words/java/com.aspose.words/border/#clearFormatting). Обратите внимание, что когда свойства границы сбрасываются до значений по умолчанию, граница становится невидимой.

| ![set-borders-shading-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-7.png) |
| :- |
Класс [Shading](https://reference.aspose.com/words/java/com.aspose.words/shading/) содержит атрибуты затенения для элементов документа. Вы можете задать желаемую текстуру затенения и цвета, которые будут применяться к фону и переднему плану элемента.

Текстура затенения задается с помощью [TextureIndex](https://www.aspose.com/api/java/words/com.aspose.words/constants/TextureIndex) значение перечисления, позволяющее применять различные шаблоны к объекту **Shading**. Например, чтобы задать цвет фона для элемента документа, используйте [TextureIndex.TextureSolid](https://www.aspose.com/api/java/words/com.aspose.words/constants/TextureIndex) установите соответствующее значение и установите цвет затенения переднего плана.

| ![borders-and-shading-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-8.png) |
| :- |
В приведенном ниже примере показано, как применить границы и затенение к абзацу.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyBordersAndShadingToParagraph.java" >}}

### Привязка к сетке

Aspose.Words предоставляет два свойства `ParagraphFormat.SnapToGrid` и `Font.SnapToGrid` для получения и установки привязки свойств абзаца к сетке.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-SetSnapToGrid.java" >}}

### Перемещение курсора

### Определение текущего положения курсора

Вы можете в любой момент узнать, где в данный момент находится курсор конструктора. Свойство [DocumentBuilder.getCurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentNode) возвращает узел, который в данный момент выбран в этом конструкторе. Узел является прямым дочерним элементом абзаца. Любые операции вставки, которые вы выполняете с помощью `DocumentBuilder`, будут вставлены перед `DocumentBuilder.CurrentNode`. Если текущий абзац пуст или курсор установлен непосредственно перед концом абзаца, `DocumentBuilder.CurrentNode` возвращает значение null.

Кроме того, вы можете использовать свойство [DocumentBuilder.getCurrentParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentParagraph), которое возвращает абзац, выбранный в данный момент в этом **DocumentBuilder**. В примере below code показано, как получить доступ к текущему узлу в конструкторе документов.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderCursorPosition-DocumentBuilderCursorPosition.java" >}}

### Переход к любому узлу (абзацам и их дочерним элементам)

Если у вас есть узел объекта документа, который является абзацем или прямым дочерним элементом абзаца, вы можете навести курсор конструктора на этот узел. Для этого используйте метод [DocumentBuilder.moveTo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveTo-com.aspose.words.Node).
В следующем примере кода показано, как переместить курсор на указанный узел.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToNode-DocumentBuilderMoveToNode.java" >}}

### Переход к началу/концу документа

Если вам нужно перейти к началу документа, нажмите [DocumentBuilder.moveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart). Если вам нужно перейти к концу документа, нажмите [DocumentBuilder.moveToDocumentEnd](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentEnd).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToDocumentStartEnd-DocumentBuilderMoveToDocumentStartEnd.java" >}}

### Переход к разделу

Если вы работаете с документом, содержащим несколько разделов, вы можете перейти к нужному разделу с помощью [DocumentBuilder.moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int). Этот метод перемещает курсор в начало указанного раздела и принимает индекс нужного раздела. Когда индекс раздела больше или равен 0, он указывает индекс от начала документа, где 0 - первый раздел. Когда индекс раздела меньше 0, он указывает индекс от конца документа, где -1 - последний раздел. В примере below code показано, как переместить курсор в указанную секцию. Вы можете загрузить файл шаблона для этого примера с [здесь](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToSection-DocumentBuilderMoveToSection.java" >}}

### Переход к верхнему/нижнему колонтитулу

Когда вам нужно поместить какие-либо данные в верхний или нижний колонтитул, вы должны сначала переместиться туда, используя [DocumentBuilder.moveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int).Метод принимает значение перечисления HeaderFooterType, которое определяет тип верхнего или нижнего колонтитула, в который следует переместить курсор.

Если вы хотите создать верхние и нижние колонтитулы, отличающиеся для первой страницы, вам нужно задать свойству [PageSetup.getDifferentFirstPageHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getDifferentFirstPageHeaderFooter) значение **true**. Если вы хотите создать верхние и нижние колонтитулы, отличающиеся для четных и нечетных страниц, вам нужно задать для [PageSetup.getOddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOddAndEvenPagesHeaderFooter) значение **true**.

Если вам нужно вернуться к основной статье, используйте [DocumentBuilder.moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int), чтобы перейти от верхнего или нижнего колонтитула. В приведенном ниже примере верхние и нижние колонтитулы создаются в документе с помощью DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderHeadersAndFooters-DocumentBuilderHeaderAndFooters.java" >}}

### Переход к абзацу

Используйте [DocumentBuilder.moveToParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToParagraph-int-int), чтобы переместить курсор на нужный абзац в текущем разделе. Вы должны передать этому методу два параметра: paragraphIndex (индекс абзаца, к которому нужно перейти) и characterIndex (индекс символа внутри абзаца).

Навигация выполняется внутри текущей истории текущего раздела. То есть, если вы переместили курсор на основной заголовок первого раздела, то paragraphIndex указывает индекс абзаца внутри этого заголовка этого раздела.

Если paragraphIndex больше или равно 0, он указывает индекс с начала раздела, где 0 - первый абзац. Если paragraphIndex меньше 0, он указывает индекс с конца раздела, где -1 - последний абзац. В настоящее время индекс символа может быть указан только как 0 для перемещения в начало абзаца или -1 для перемещения в конец абзаца. В следующем примере кода показано, как переместить позицию курсора в указанный абзац. Вы можете загрузить файл шаблона этого примера с[ здесь](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToParagraph-DocumentBuilderMoveToParagraph.java" >}}

### Переход к ячейке таблицы

Используйте [DocumentBuilder.moveToCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToCell-int-int-int-int), если вам нужно переместить курсор в ячейку таблицы в текущем разделе. Этот метод принимает четыре параметра:

- tableIndex - индекс таблицы, к которой нужно перейти.
- rowIndex - индекс строки в таблице.
- columnIndex - индекс столбца в таблице.
- characterIndex - индекс символа внутри ячейки.

Навигация осуществляется внутри текущей истории текущего раздела.

Для параметров index, когда индекс больше или равен 0, он указывает индекс с самого начала, где 0 является первым элементом. Когда индекс меньше 0, он указывает индекс с конца, где -1 является последним элементом.

Также обратите внимание, что characterIndex в настоящее время может указывать только 0 для перемещения в начало ячейки или -1 для перемещения в конец ячейки. В следующем примере кода показано, как переместить курсор в указанную ячейку таблицы. Вы можете загрузить файл шаблона для этого примера из [здесь](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToTableCell-DocumentBuilderMoveToTableCell.java" >}}

### Переход к закладке

Закладки часто используются для обозначения определенных мест в документе, куда необходимо вставить новые элементы. Чтобы перейти к закладке, используйте [DocumentBuilder.moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String). Этот метод имеет две перегрузки. Самый простой из них не принимает ничего, кроме названия закладки, на которую нужно переместить курсор. В следующем примере кода показано, как переместить курсор на закладку.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmark-DocumentBuilderMoveToBookmark.java" >}}

Эта перегрузка перемещает курсор в положение сразу после начала закладки с указанным именем. Другая перегрузка [DocumentBuilder.moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String-boolean-boolean) перемещает курсор на закладку с большей точностью. Она принимает два дополнительных логических параметра:

- isStart определяет, следует ли переместить курсор в начало или в конец закладки.
- isAfter определяет, следует ли перемещать курсор после начальной или конечной позиции закладки, или перемещать курсор перед начальной или конечной позицией закладки.

В следующем примере кода показано, как переместить курсор сразу после окончания закладки.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmarkEnd-DocumentBuilderMoveToBookmarkEnd.java" >}}

Вставка нового текста таким образом не заменяет существующий текст закладки. Обратите внимание, что некоторые закладки в документе назначены полям формы. При переходе к такой закладке и вставке текста в нее текст вставляется в код поля формы. Хотя это не приведет к аннулированию поля формы, вставленный текст не будет виден, поскольку он становится частью кода поля.

### Переход к полю `Merge`

Иногда вам может потребоваться выполнить "ручную" операцию Mail Merge с помощью `DocumentBuilder` или заполнить поле слияния специальным образом внутри обработчика событий Mail Merge. Именно тогда может пригодиться [DocumentBuilder.moveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField-java.lang.String). Метод принимает имя поля слияния. Он перемещает курсор в положение сразу за указанным полем слияния и удаляет поле слияния. В следующем примере кода показано, как переместить курсор в положение сразу за указанным полем слияния.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToMergeField-DocumentBuilderMoveToMergeField.java" >}}

## Как произвести преобразование между единицами измерения

Большинство свойств объекта, представленных в таблице Aspose.Words API, которая представляет некоторые измерения (ширина/высота, поля и различные расстояния), принимают значения в точках (1 дюйм равен 72 точкам). Иногда это неудобно, поэтому существует класс `ConvertUtil`, который предоставляет вспомогательные функции для преобразования между различными единицами измерения. Он позволяет преобразовывать дюймы в точки, точки в дюймы, пиксели в точки и точки в пиксели. Когда пиксели преобразуются в точки и наоборот, это может быть выполнено с разрешением 96 точек на дюйм (dpi) или с указанным разрешением dpi.

**ConvertUtil**

В следующем примере кода показано, как указать свойства страницы в дюймах.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ConvertBetweenMeasurementUnits-ConvertBetweenMeasurementUnits.java" >}}
