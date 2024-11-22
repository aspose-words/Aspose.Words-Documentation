---
title: Использовать `DocumentBuilder` Включить элементы документов
second_title: Aspose.Words для Java
articleTitle: Использовать `DocumentBuilder` Включить элементы документов
linktitle: Использовать `DocumentBuilder` Включить элементы документов
type: docs
description: "Вставьте элементы документа, используя конструктор документа в Java."
weight: 10
url: /ru/java/use-documentbuilder-to-insert-document-elements/
timestamp: 2024-01-27-14-07-04
---

The [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) Используется для изменения документов. В этой статье объясняется и описывается, как выполнять ряд задач.

## Вставить строку текста

Просто передайте строку текста, которую нужно вставить в документ, на [DocumentBuilder.write](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#write(java.lang.String)) метод. Форматирование текста определяется `Font` собственность. Этот объект содержит различные атрибуты шрифта (имя шрифта, размер шрифта, цвет и так далее). Некоторые важные атрибуты шрифта также представлены [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) Свойства, позволяющие получить к ним прямой доступ. Это булевы свойства [Font.getBold](https://reference.aspose.com/words/java/com.aspose.words/font/#getBold), [Font.getItalic](https://reference.aspose.com/words/java/com.aspose.words/font/#getItalic), и [Font.getUnderline](https://reference.aspose.com/words/java/com.aspose.words/font/#getUnderline).

{{% alert color="primary" %}}

Обратите внимание, что форматирование символа, которое вы устанавливаете, будет применяться ко всему тексту, вставленному с текущей позиции в документе.

{{% /alert %}}

Следующий пример кода Вставляет отформатированный текст с помощью DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WriteAndFont-WriteAndFont.java" >}}

## Включить пункт

DocumentBuilder.writeln также вставляет строку текста в документ, но в дополнение к этому добавляет перерыв в абзаце. Текущее форматирование шрифтов также определяется DocumentBuilder. получать Имущество шрифта и форматирование текущего абзаца определяются свойством DocumentBuilder.getParagraphFormat

Следующий пример кода показывает, как вставить абзац в документ.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}

## Вставить стол

Основной алгоритм для создания таблицы с использованием `DocumentBuilder` Это просто:

1. Начните использовать стол [DocumentBuilder.startTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable).
1. Вставьте клетку, используя [DocumentBuilder.insertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell). Это автоматически запускает новый ряд. При необходимости используйте [DocumentBuilder.getCellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) свойство определять форматирование ячеек.
1. Вставьте содержимое ячейки, используя `DocumentBuilder` методы.
1. Повторяйте шаги 2 и 3 до завершения строки.
1. Звони. [DocumentBuilder.endRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) Чтобы закончить текущий ряд. При необходимости использовать [DocumentBuilder.RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) свойство указывать форматирование строк.
1. Повторите шаги 2 - 5, пока таблица не будет завершена.
1. Звони. [DocumentBuilder.endTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) Чтобы закончить строительство стола. Соответствующие методы создания таблицы DocumentBuilder описаны ниже.

### Начинаем столик

Обсуждение DocumentBuilder.start Стол – это первый шаг к созданию стола. Его также можно назвать внутри клетки, в этом случае начинается вложенный стол. Следующий способ вызова - DocumentBuilder.insertCell.

### Вставить клетку

После звонка в DocumentBuilder. вставить Ячейка, создается новая ячейка и любой контент, который вы добавляете, используя другие методы. `DocumentBuilder` Класс будет добавлен к текущей ячейке. Чтобы запустить новую ячейку в том же ряду, позвоните в DocumentBuilder. вставить Снова камера. Используйте DocumentBuilder.getCell Свойство формата для определения форматирования ячеек. возвращается a [getCellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) объект, представляющий все форматирование для ячейки стола.

### Окончание ряда

Позвоните по адресу DocumentBuilder.end Завершить текущий ряд. Позвоните в DocumentBuilder. вставить Ячейка сразу после этого, затем столик продолжает по новому ряду. Используйте `DocumentBuilder.RowFormat` свойство указывать форматирование строк. возвращается a [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/) Объект, который представляет все форматирование для строки таблицы.

### Окончание стола

Позвоните по адресу DocumentBuilder.end Таблица для завершения текущей таблицы. Этот метод следует называть только один раз после DocumentBuilder. Был назван EndRow. Когда звонят, DocumentBuilder.end Таблица перемещает курсор из текущей ячейки в положение сразу после таблицы. Следующий пример показывает, как построить отформатированную таблицу, которая содержит 2 строки и 2 столбца.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderBuildTable-DocumentBuilderBuildTable.java" >}}

## Вставить перерыв

Если вы хотите явно начать новую строку, абзац, колонку, раздел или страницу, позвоните в DocumentBuilder. Вставить разлом. Перейдите к этому методу тип перерыва, который вам нужно вставить, который представлен `BreakType` перечисление
Следующий пример кода показывает, как вставить страницу в документ.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertBreak-DocumentBuilderInsertBreak.java" >}}

## Вставить изображение

DocumentBuilder предоставляет несколько перегрузок [DocumentBuilder.insertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte) Способ, позволяющий вставить входящее или плавающее изображение. Если изображение является метафайлом EMF или WMF, оно будет вставлено в документ в формате метафайла. Все остальные изображения будут храниться в формате PNG. DocumentBuilder.insert Метод изображения может использовать изображения из разных источников:

- из файла или `URL` Пройдя струнный параметр
- из ручья, проходя мимо `Stream` параметр
- от объекта изображения путем прохождения параметра изображения
- из байтового массива путем пропускания параметра байтового массива
- и другие

Для каждого из конструкторов документов. вставить Методы изображения, есть дополнительные перегрузки, которые позволяют вставить изображение со следующими опциями:

- Наклон или плавание в определенном положении
- Процентная шкала или пользовательский размер

Кроме того, DocumentBuilder.insert Метод изображения возвращает [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) Объект, который был только что создан и вставлен, чтобы вы могли дополнительно изменять свойства формы.

### Вставить встроенное изображение

Передайте одну строку, представляющую файл, содержащий изображение, DocumentBuilder. вставить Изображение для вставки изображения в документ в виде встроенной графики. Следующий пример кода показывает, как вставить встроенное изображение в положение курсора в документ.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertInlineImage-DocumentBuilderInsertInlineImage.java" >}}

### Вставить плавающее (абсолютно позиционированное) изображение

Этот пример вставляет плавающее изображение из файла или `URL` в определенном положении и размере.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertFloatingImage-DocumentBuilderInsertFloatingImage.java" >}}

## Вставить закладку

Чтобы вставить закладку в документ, вы должны сделать следующее:

1. Звони. [DocumentBuilder.startBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startBookmark-java.lang.String) Дайте ему желаемое название закладки.
1. Включить текст закладки с использованием `DocumentBuilder` методы.
1. Звони. [DocumentBuilder.endBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endBookmark-java.lang.String) Передав ему то же имя, которое вы использовали с DocumentBuilder.startBookmark.

Закладки могут перекрывать и охватывать любой диапазон. Чтобы создать действительную закладку, вам нужно позвонить в DocumentBuilder.startBookmark и DocumentBuilder.endBookmark с одинаковым названием закладки.

Плохо сформированные закладки или закладки с дублирующими именами будут игнорироваться при сохранении документа.

Следующий пример кода показывает, как вставить закладку в документ с помощью конструктора документов.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertBookmark-DocumentBuilderInsertBookmark.java" >}}

## Вставить поле

Поля в Microsoft Word Документы состоят из кода поля и результата поля. Код поля подобен формуле, а результат поля - значение, которое формула производит. Код поля может также содержать переключатели поля, которые являются дополнительными инструкциями для выполнения конкретного действия. Вы можете переключаться между отображением полевых кодов и результатами в вашем документе. Microsoft Word использование сочетания клавиш Alt+F9. Полевые коды появляются между кудрявыми брекетами ( { } Использовать [DocumentBuilder.insertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) Создание полей в документе. Вам нужно указать тип поля, код поля и значение поля. Если вы не уверены в конкретном синтаксисе кода поля, создайте поле в Microsoft Word Сначала переключитесь, чтобы увидеть код поля
Следующий пример кода вставляет поле слияния в документ с использованием DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertField-DocumentBuilderInsertField.java" >}}

## Вставить `Form` поле

Поля форм представляют собой особый случай полей Word, который позволяет "взаимодействовать" с пользователем. Форма поля в Microsoft Word К ним относятся текстовый ящик, Combobox и чекбокс. DocumentBuilder предоставляет специальные методы для вставки каждого типа поля формы в документ: [DocumentBuilder.insertTextInput](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTextInput-java.lang.String-int-java.lang.String-java.lang.String-int) , [DocumentBuilder.insertCheckBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-boolean-int), и [DocumentBuilder.insertComboBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertComboBox-java.lang.String-java.lang.String---int). Обратите внимание, что если указать имя поля формы, то закладка автоматически создается с таким же названием.

### Вставить текстовый вход

DocumentBuilder.insertTextInput для вставки текстового ящика в документ. Следующий пример кода показывает, как вставить поле формы ввода текста в документ.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTextInputFormField-DocumentBuilderInsertTextInputFormField.java" >}}

### Вставить `CheckBox`

Вызов DocumentBuilder.insert CheckBox вставляет флажок в документ. Следующий пример кода показывает, как вставить поле формы флажка в документ.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertCheckBoxFormField-DocumentBuilderInsertCheckBoxFormField.java" >}}

### Вставить комбо-бокс

Вызов DocumentBuilder.insertComboBox Вставить в документ комбо-бокс. Следующий пример кода показывает, как вставить поле формы комбо-бокса в документ.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertComboBoxFormField-DocumentBuilderInsertComboBoxFormField.java" >}}

## Вставка локализации на уровне поля

Клиенты могут указать Локализуйтесь на уровне поля сейчас и сможете добиться лучшего контроля. местность Иды могут быть связаны с каждым полем внутри DocumentBuilder. Приведенные ниже примеры иллюстрируют, как использовать этот вариант.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.java" >}}

## Вставка HTML

Вы можете легко вставить строку HTML, которая содержит фрагмент HTML или весь HTML-документ в документ Word. Просто передайте эту строку конструктору документов. вставить Метод Html. Одной из полезных реализаций метода является хранение HTML-струны в базе данных и вставка ее в документ во время Mail Merge Добавить отформатированный контент вместо того, чтобы строить его с помощью различных методов конструктора документов. Следующий пример кода показывает вставки HTML в документ с помощью DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHtml-DocumentBuilderInsertHtml.java" >}}

## Вставить гиперссылку

Используйте DocumentBuilder.insertHyperlink для вставки гиперссылки в документ. Этот метод принимает три параметра: текст ссылки для отображения в документе, пункт назначения ссылки (URL или название закладки внутри документа) и булевой параметр, который должен быть true если `URL` Это название закладки внутри документа. DocumentBuilder.insertHyperlink внутренне называется DocumentBuilder.insertField. Метод всегда добавляет апострофы в начале и конце URL. Обратите внимание, что вам нужно указать форматирование шрифта для текста отображения гиперссылки явно с использованием `Font` собственность. Следующий пример кода вставляет гиперссылку в документ с помощью DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHyperlink-DocumentBuilderInsertHyperlink.java" >}}

## Вставить таблицу содержимого

Вы можете вставить `TOC` (таблица содержания) поле в документе на текущей позиции по вызову [DocumentBuilder.insertTableOfContents](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTableOfContents-java.lang.String) метод. Метод DocumentBuilder.insertTableOfContents включает в себя `TOC` поле в документе. Чтобы построить таблицу содержимого и отобразить их в соответствии с номерами страниц, оба **Document.UpdateFields**Метод должен быть назван после вставки поля. Следующий пример кода показывает, как вставить поле "Таблица содержимого" в документ.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTableOfContents-DocumentBuilderInsertTableOfContents.java" >}}

## Вставка Ole Object

Если вам нужен Ole Object [DocumentBuilder.insertOleObjectAsIcon](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObjectAsIcon-java.lang.String-boolean-java.lang.String-java.lang.String).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertOleObject-DocumentBuilderInsertOleObject.java" >}}

## Установите имя файла и расширение при вставке Ole Object

Пакет OLE является устаревшим и "недокументированным" способом хранения встроенных объектов, если обработчик OLE неизвестен. ранний Windows Такие версии, как Windows 3.1, 95 и 98 имели пакеты. Приложение exe, которое может быть использовано для встраивания любого типа данных в документ. Теперь это приложение исключено из Windows Но MS Word и другие приложения по-прежнему используют его для встраивания данных, если обработчик OLE отсутствует или неизвестен. Класс OlePackage позволяет получить доступ к свойствам пакета OLE. Следующий пример кода показывает, как установить имя файла, расширение и отображаемое имя для пакета OLE.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.java" >}}

## Получить доступ к OLE Object Raw Data

Следующий пример кода показывает, как получить OLE Объектные необработанные данные с использованием `OleFormat.GetRawData`() метод.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.java" >}}

## Включить горизонтальный Правило в документе

Следующий пример кода показывает, как вставить горизонтальную форму правила в документ, используя `DocumentBuilder.InsertHorizontalRule` метод.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.java" >}}

## Работа с формами

### Встраивание встроенных и свободно плавающих форм

Вы можете вставить встроенную форму с определенным типом и размером и свободно плавающую форму с указанным положением, размером и типом текстовой обертки в документ, используя `DocumentBuilder.InsertShape` метод. The `DocumentBuilder.InsertShape` Способ позволяет вставить форму DML в модель документа. Документ должен быть сохранен в формате, поддерживающем формы DML, иначе такие узлы будут преобразованы в форму VML, при этом сохраняется документ. Следующий пример кода показывает, как вставить эти типы фигур в документ.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.java" >}}

### Создайте прямоугольник Snip Corner

Вы можете создать угловой прямоугольник с помощью Aspose.Words. Типы фигур: SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRounded OneSnipped, SingleCornerRounded, TopCornersRounded и DiagonalCornersRounded. Форма DML создается с использованием `DocumentBuilder.InsertShape` Метод с этими типами форм. Эти типы не могут быть использованы для создания форм VML. Попытка создать форму с помощью общественного конструктора класса "Форма" поднимает исключение "Неподдерживаемый Исключение". Следующий пример кода показывает, как вставить эти типы фигур в документ.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-AddCornersSnipped.java" >}}

### Импорт форм с помощью Math XML в виде форм DOM

Вы можете использовать `LoadOptions.ConvertShapeToOfficeMath` свойство преобразовывать формы с помощью EquationXML в объекты Office Math. Значение по умолчанию этого свойства соответствует поведению MS Word, т.е. формы с уравнением XML не преобразуются в объекты математики Office.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-ConvertShapeToOfficeMath.java" >}}
