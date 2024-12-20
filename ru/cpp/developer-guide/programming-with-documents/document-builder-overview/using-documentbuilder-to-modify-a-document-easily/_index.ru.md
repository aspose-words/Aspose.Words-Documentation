---
title: Использование DocumentBuilder для простого изменения документа
second_title: Aspose.Words для C++
articleTitle: Использование DocumentBuilder для простого изменения документа
linktitle: Использование DocumentBuilder для простого изменения документа
type: docs
description: "Используйте конструктор документов, чтобы легко изменять документ на C++."
weight: 190
url: /ru/cpp/using-documentbuilder-to-modify-a-document-easily/
timestamp: 2024-01-27-14-07-04
---

## Задание форматирования

### Форматирование шрифта

Текущее форматирование шрифта представлено объектом `Font`, возвращаемым свойством `DocumentBuilder.Font`. Класс `Font` содержит широкий спектр свойств шрифта, доступных в Microsoft Word. В приведенном ниже примере показано, как задать форматирование шрифта.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetFontFormatting.cpp" >}}

### Форматирование абзаца

Текущее форматирование абзаца представлено объектом `ParagraphFormat`, который возвращается свойством `DocumentBuilder.ParagraphFormat`. Этот объект инкапсулирует различные свойства форматирования абзаца, доступные в Microsoft Word. Вы можете легко изменить форматирование абзаца по умолчанию на обычный стиль, выровненный по левому краю, без отступов, без интервалов, без границ и без затенения, вызвав команду `ParagraphFormat.ClearFormatting`. В приведенном ниже примере показано, как настроить форматирование абзаца.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetParagraphFormatting.cpp" >}}

### Работа с азиатской типографикой

#### Автоматическая регулировка интервала между азиатским и латинским текстом, цифрами

Если вы разрабатываете шаблон, содержащий как восточноазиатский, так и латинский текст, и хотите улучшить внешний вид шаблона формы, регулируя пробелы между обоими типами текста, вы можете настроить свой шаблон формы таким образом, чтобы он автоматически корректировал пробелы между этими двумя типами текста. Для достижения этой цели вы можете использовать свойства AddSpaceBetweenFarEastAndAlpha и AddSpaceBetweenFarEastAndDigit класса ParagraphFormat.

Следующий пример кода показывает, как использовать свойства `ParagraphFormat.AddSpaceBetweenFarEastAndAlpha` и `ParagraphFormat.AddSpaceBetweenFarEastAndDigit`.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cpp" >}}

#### Измените азиатский интервал между абзацами и отступы

В следующем примере кода показано, как изменить азиатский интервал между абзацами и отступы.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cpp" >}}

#### Установите параметры разрыва строки

На вкладке "Азиатская типографика" диалогового окна "Свойства" `Paragraph` в MS Word есть группа "Разрыв строки". Параметры этой группы можно настроить с помощью параметров FarEastLineBreakControl, WordWrap, HangingPunctuation класса ParagraphFormat. В примереlow code показано, как использовать эти свойства.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetAsianTypographyLinebreakGroupProp.cpp" >}}

### Форматирование ячеек

Форматирование ячеек используется при построении таблицы. Оно представлено объектом `CellFormat`, возвращаемым свойством `DocumentBuilder.CellFormat`. CellFormat инкапсулирует различные свойства ячеек таблицы, такие как ширина или выравнивание по вертикали. В приведенном ниже примере показано, как создать таблицу, содержащую одну отформатированную ячейку.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetTableCellFormatting.cpp" >}}

### Форматирование строк

Текущее форматирование строк определяется объектом `RowFormat`, который возвращается свойством `DocumentBuilder.RowFormat`. Этот объект содержит информацию о форматировании всех строк таблицы. В приведенном ниже примере показано, как создать таблицу, содержащую одну ячейку, и применить форматирование строк.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetTableRowFormatting.cpp" >}}

### Форматирование списка

Aspose.Words позволяет легко создавать списки, применяя форматирование списка. DocumentBuilder предоставляет свойство `DocumentBuilder.ListFormat`, которое возвращает объект `ListFormat`. У этого объекта есть несколько методов для начала и завершения списка, а также для увеличения/уменьшения отступа. В Microsoft Word существует два основных типа списков: маркированные и нумерованные.

- Чтобы запустить маркированный список, наберите `ListFormat.ApplyBulletDefault`.
- Чтобы запустить нумерованный список, наберите `ListFormat.ApplyNumberDefault`.

Маркер или номер и форматирование добавляются к текущему абзацу и ко всем последующим абзацам, созданным с помощью **DocumentBuilder**, до тех пор, пока не будет вызван параметр `ListFormat.RemoveNumbers`, который остановит форматирование маркированного списка. В документах Word списки могут содержать до девяти уровней. Форматирование списка для каждого уровня определяет, какой маркер или число используется, отступ слева, пробел между маркером и текстом и т.д.

- Чтобы увеличить уровень списка текущего абзаца на один уровень, вызовите `ListFormat.ListIndent`.
- Чтобы уменьшить уровень списка текущего абзаца на один уровень, вызовите `ListFormat.ListOutdent`.

Методы изменяют уровень списка и применяют свойства форматирования нового уровня.

{{% alert color="primary" %}}

Вы также можете использовать свойство `ListFormat.ListLevelNumber`, чтобы получить или задать уровень списка для абзаца. Уровни списка пронумерованы от 0 до 8.

{{% /alert %}}

В приведенном ниже примере показано, как создать многоуровневый список.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetMultilevelListFormatting.cpp" >}}

### Настройка страницы и форматирование разделов

Свойства настройки страницы и раздела заключены в объект `PageSetup`, который возвращается свойством `DocumentBuilder.PageSetup`. Объект содержит все атрибуты настройки страницы для раздела (левое поле, нижнее поле, формат бумаги и т.д.) в качестве свойств. В приведенном ниже примере показано, как задать такие свойства, как размер страницы и ориентация для текущего раздела.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetPageSetupAndSectionFormatting.cpp" >}}

### Применение стиля

Некоторые объекты форматирования, такие как Font или ParagraphFormat, поддерживают стили. Отдельный встроенный или определяемый пользователем стиль представлен объектом `Style`, который содержит соответствующие свойства стиля, такие как название, базовый стиль, форматирование шрифта и абзаца в стиле и так далее.

Кроме того, объект **Style** предоставляет свойство `Style.StyleIdentifier`, которое возвращает идентификатор стиля, не зависящий от языка, представленный значением перечисления **Style.StyleIdentifier**. Дело в том, что названия встроенных стилей в Microsoft Word локализованы для разных языков. Используя идентификатор стиля, вы можете найти правильный стиль независимо от языка документа. Значения перечисления соответствуют встроенным стилям Microsoft Word, таким как обычный, Heading 1, Heading 2 и т.д. Всем пользовательским стилям присваивается значение **StyleIdentifier.User value**. В приведенном ниже примере показано, как применить стиль абзаца.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyParagraphStyle.cpp" >}}

### Границы и затенение

Границы представлены коллекцией BorderCollection. Это коллекция объектов Border, доступ к которым осуществляется по индексу или по типу границы. Тип границы представлен перечислением `BorderType`. Некоторые значения перечисления применимы к нескольким или только к одному элементу документа. Например, `BorderType.Bottom` применимо к абзацу или ячейке таблицы, в то время как `BorderType.DiagonalDown` определяет диагональную границу только в ячейке таблицы.

Как коллекция границ, так и каждая отдельная граница имеют схожие атрибуты, такие как цвет, стиль линии, ширина линии, расстояние от текста и необязательная тень. Они представлены одноименными свойствами. Комбинируя значения свойств, вы можете создавать различные типы границ. Кроме того, как объекты **BorderCollection**, так и объекты **Border** позволяют вам сбросить эти значения до значений по умолчанию, вызвав метод `Border.ClearFormatting`. Обратите внимание, что при сбросе свойств границы до значений по умолчанию граница становится невидимой. Класс `Shading` содержит атрибуты затенения для элементов документа. Вы можете задать желаемую текстуру затенения и цвета, которые будут применяться к фону и переднему плану элемента.

Текстура затенения задается значением перечисления `TextureIndex`, которое позволяет применять различные узоры к объекту **Shading**. Например, чтобы задать цвет фона для элемента документа, используйте значение `TextureIndex.TextureSolid` и соответствующим образом задайте цвет затенения переднего плана. В приведенном ниже примере показано, как применить границы и затенение к абзацу.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyBordersAndShadingToParagraph.cpp" >}}

### Привязка к сетке

Aspose.Words предоставляет два свойства `ParagraphFormat.SnapToGrid` и `Font.SnapToGrid` для получения и установки привязки свойств абзаца к сетке.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetSnapToGrid.cpp" >}}

## Перемещение курсора

### Определение текущего положения курсора

Вы можете в любой момент узнать, где в данный момент находится курсор конструктора. Свойство `DocumentBuilder.CurrentNode` возвращает узел, который в данный момент выбран в этом конструкторе. Узел является прямым дочерним элементом абзаца. Любые операции вставки, которые вы выполняете с помощью `DocumentBuilder`, будут вставлены перед `DocumentBuilder.CurrentNode`. Если текущий абзац пуст или курсор установлен непосредственно перед концом абзаца, `DocumentBuilder.CurrentNode` возвращает значение null.

Также вы можете использовать свойство `DocumentBuilder.CurrentParagraph`, которое возвращает абзац, выбранный в данный момент в этом **DocumentBuilder**. В приведенном ниже примере показано, как получить доступ к текущему узлу в конструкторе документов. Вы можете загрузить файл шаблона для этого примера отсюда.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderCursorPosition.cpp" >}}

### Переход к любому узлу (абзацам и их дочерним элементам)

Если у вас есть узел объекта документа, который является абзацем или прямым дочерним элементом абзаца, вы можете навести курсор конструктора на этот узел. Для этого используйте метод `DocumentBuilder.MoveTo`. В приведенном ниже примере показано, как переместить курсор на указанный узел. Вы можете скачать файл шаблона для этого примера здесь.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToNode.cpp" >}}

### Переход к началу/концу документа

Если вам нужно перейти к началу документа, вызовите `DocumentBuilder.MoveToDocumentStart`. Если вам нужно перейти к концу документа, вызовите `DocumentBuilder.MoveToDocumentEnd`. В приведенном ниже примере показано, как переместить курсор в начало или конец документа. Вы можете скачать файл шаблона для этого примера здесь.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToDocumentStartEnd.cpp" >}}

### Переход к разделу

Если вы работаете с документом, содержащим несколько разделов, вы можете перейти к нужному разделу с помощью `DocumentBuilder.MoveToSection`. Этот метод перемещает курсор в начало указанного раздела и принимает индекс нужного раздела. Если индекс раздела больше или равен 0, то задается индекс от начала документа, где 0 - первый раздел. Если индекс раздела меньше 0, то задается индекс от конца документа, где -1 - последний раздел. В приведенном ниже примере показано, как переместить курсор в указанную секцию. Вы можете скачать файл шаблона для этого примера здесь.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToSection.cpp" >}}

### Переход к верхнему/нижнему колонтитулу

Когда вам нужно поместить какие-либо данные в верхний или нижний колонтитул, вы должны сначала переместиться туда, используя `DocumentBuilder.MoveToHeaderFooter`. Метод принимает значение перечисления HeaderFooterType, которое определяет тип верхнего или нижнего колонтитула, куда следует переместить курсор. Если вы хотите создать верхние и нижние колонтитулы, отличающиеся для первой страницы, вам нужно установить для свойства `PageSetup.DifferentFirstPageHeaderFooter` значение **true**. Если вы хотите создать верхние и нижние колонтитулы, отличающиеся для четных и нечетных страниц, вам нужно установить для параметра `PageSetup.OddAndEvenPagesHeaderFooter` значение **true**.

Если вам нужно вернуться к основной истории, используйте **DocumentBuilder.MoveToSection**, чтобы перейти от верхнего или нижнего колонтитула. В приведенном ниже примере создаются верхние и нижние колонтитулы в документе с помощью DocumentBuilder.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderHeadersAndFooters.cpp" >}}

### Переход к абзацу

Используйте `DocumentBuilder.MoveToParagraph`, чтобы переместить курсор на нужный абзац в текущем разделе. Вы должны передать этому методу два параметра: paragraphIndex (индекс абзаца, к которому нужно перейти) и characterIndex (индекс символа внутри абзаца).

Навигация осуществляется внутри текущей истории текущего раздела. То есть, если вы переместили курсор на основной заголовок первого раздела, то paragraphIndex указывает индекс абзаца внутри этого заголовка этого раздела.

Если значение paragraphIndex больше или равно 0, то указывается индекс от начала раздела, где 0 - первый абзац. Если значение paragraphIndex меньше 0, то указывается индекс от конца раздела, где -1 - последний абзац.

В настоящее время индекс символа может быть указан только как 0 для перехода к началу абзаца или -1 для перехода к концу абзаца. В приведенном ниже примере показано, как переместить курсор в указанное положение абзаца. Вы можете скачать файл шаблона для этого примера здесь.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToParagraph.cpp" >}}

### Переход к ячейке таблицы

Используйте `DocumentBuilder.MoveToCell`, если вам нужно переместить курсор в ячейку таблицы в текущем разделе. Этот метод принимает четыре параметра:

- tableIndex - индекс таблицы, к которой нужно перейти.
- RowIndex - индекс строки в таблице.
- ColumnIndex - индекс столбца в таблице.
- characterIndex - индекс символа внутри ячейки.

Навигация выполняется внутри текущей истории текущего раздела. Для параметров индекса, когда значение индекса больше или равно 0, задается индекс с самого начала, где 0 является первым элементом. Когда индекс меньше 0, он указывает индекс с конца, где -1 является последним элементом.

Также обратите внимание, что characterIndex в настоящее время может указывать только 0 для перемещения в начало ячейки или -1 для перемещения в конец ячейки. В приведенном ниже примере показано, как переместить курсор в указанную ячейку таблицы. Вы можете скачать файл шаблона для этого примера здесь.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToTableCell.cpp" >}}

### Переход к закладке

Закладки часто используются для обозначения определенных мест в документе, куда необходимо вставить новые элементы. Чтобы перейти к закладке, используйте `DocumentBuilder.MoveToBookmark`. Этот метод имеет две перегрузки. Самый простой из них не принимает ничего, кроме названия закладки, на которую нужно переместить курсор. В приведенном ниже примере показано, как переместить курсор на закладку. Вы можете скачать файл шаблона для этого примера здесь.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmark.cpp" >}}

Эта перегрузка перемещает курсор в положение сразу после начала закладки с указанным именем. Другая перегрузка `DocumentBuilder.MoveToBookmark` перемещает курсор на закладку с большей точностью. Она принимает два дополнительных логических параметра:

- isStart определяет, следует ли переместить курсор в начало или в конец закладки.
- isAfter определяет, следует ли переместить курсор в начальную или конечную позицию закладки или переместить курсор в начальную или конечную позицию закладки.

В приведенном ниже примере показано, как переместить курсор сразу после окончания закладки.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmarkEnd.cpp" >}}

Сравнение для обоих методов не чувствительно к регистру.

Вставка нового текста таким образом не заменяет существующий текст закладки. Обратите внимание, что некоторые закладки в документе назначены полям формы. При переходе к такой закладке и вставке текста в нее текст вставляется в код поля формы. Хотя это не приведет к аннулированию поля формы, вставленный текст не будет виден, поскольку он становится частью кода поля.

## Как произвести преобразование между единицами измерения

Большинство свойств объекта, предоставляемых в API Aspose.Words, которые представляют некоторые измерения (ширину/высоту, поля и различные расстояния), принимают значения в пунктах (1 дюйм равен 72 точкам). Иногда это неудобно, поэтому существует класс `ConvertUtil`, который предоставляет вспомогательные функции для преобразования между различными единицами измерения. Он позволяет преобразовывать дюймы в точки, точки в дюймы, пиксели в точки и точки в пиксели. Когда пиксели преобразуются в точки и наоборот, это может быть выполнено с разрешением 96 точек на дюйм (dpi) или с указанным разрешением dpi.
**Преобразующий**

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-ConvertUtil-UtilityClasses-ConvertBetweenMeasurementUnits.cpp" >}}
