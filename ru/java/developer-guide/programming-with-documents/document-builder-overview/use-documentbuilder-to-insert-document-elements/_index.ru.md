---
title: Используйте DocumentBuilder для вставки элементов документа
second_title: Aspose.Words для Java
articleTitle: Используйте DocumentBuilder для вставки элементов документа
linktitle: Используйте DocumentBuilder для вставки элементов документа
type: docs
description: "Вставьте элементы документа с помощью конструктора документов в Java."
weight: 10
url: /ru/java/use-documentbuilder-to-insert-document-elements/
timestamp: 2024-01-27-14-07-04
---

Символ [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) используется для изменения документов. В этой статье объясняется и описывается, как выполнять ряд задач.

## Вставка текстовой строки

Просто передайте строку текста, которую вам нужно вставить в документ, в метод [DocumentBuilder.write](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#write(java.lang.String)). Форматирование текста определяется свойством `Font`. Этот объект содержит различные атрибуты шрифта (название шрифта, размер шрифта, цвет и т.д.). Некоторые важные атрибуты шрифта также представлены свойствами [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/), позволяющими получить к ним прямой доступ. Это логические свойства [Font.getBold](https://reference.aspose.com/words/java/com.aspose.words/font/#getBold), [Font.getItalic](https://reference.aspose.com/words/java/com.aspose.words/font/#getItalic) и [Font.getUnderline](https://reference.aspose.com/words/java/com.aspose.words/font/#getUnderline).

{{% alert color="primary" %}}

Обратите внимание, что заданное вами форматирование символов будет применяться ко всему тексту, вставленному начиная с текущей позиции в документе.

{{% /alert %}}

В следующем примере кода форматированный текст вставляется с помощью DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WriteAndFont-WriteAndFont.java" >}}

## Вставка абзаца

DocumentBuilder.writeln также вставляет строку текста в документ, но, кроме того, добавляет разрыв абзаца. Текущее форматирование шрифта также определяется свойством DocumentBuilder.getFont, а текущее форматирование абзаца определяется свойством DocumentBuilder.getParagraphFormat.

В следующем примере кода показано, как вставить абзац в документ.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}

## Вставка таблицы

Базовый алгоритм создания таблицы с использованием `DocumentBuilder` прост:

1. Запустите таблицу с помощью [DocumentBuilder.startTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable).
1. Вставьте ячейку, используя [DocumentBuilder.insertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell). При этом автоматически начнется новая строка. При необходимости используйте свойство [DocumentBuilder.getCellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat), чтобы задать форматирование ячейки.
1. Вставьте содержимое ячейки, используя методы `DocumentBuilder`.
1. Повторяйте шаги 2 и 3, пока строка не будет завершена.
1. Вызовите [DocumentBuilder.endRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow), чтобы завершить текущую строку. При необходимости используйте свойство [DocumentBuilder.RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat), чтобы задать форматирование строки.
1. Повторяйте шаги 2-5, пока таблица не будет заполнена полностью.
1. Вызовите [DocumentBuilder.endTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable), чтобы завершить создание таблицы. Ниже описаны соответствующие методы создания таблицы DocumentBuilder.

### Запуск таблицы

Вызов DocumentBuilder.startTable - это первый шаг в построении таблицы. Он также может быть вызван внутри ячейки, в этом случае он запускает вложенную таблицу. Следующий вызываемый метод - DocumentBuilder.insertCell.

### Вставка ячейки

После вызова DocumentBuilder.insertCell будет создана новая ячейка, и любое содержимое, добавленное с помощью других методов класса `DocumentBuilder`, будет добавлено в текущую ячейку. Чтобы создать новую ячейку в той же строке, снова вызовите DocumentBuilder.insertCell. Используйте свойство DocumentBuilder.getCellFormat, чтобы задать форматирование ячейки. Оно возвращает объект [getCellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/), который представляет все форматирование ячейки таблицы.

### Завершение строки

Вызовите DocumentBuilder.endRow, чтобы завершить текущую строку. Если вы вызовете DocumentBuilder.insertCell сразу после этого, таблица будет продолжена с новой строки. Используйте свойство `DocumentBuilder.RowFormat`, чтобы задать форматирование строк. Он возвращает объект [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/), который представляет все форматирование для строки таблицы.

### Завершение таблицы

Вызовите DocumentBuilder.endTable, чтобы завершить работу с текущей таблицей. Этот метод следует вызывать только один раз после вызова DocumentBuilder.endRow. При вызове DocumentBuilder.endTable курсор перемещается из текущей ячейки в позицию сразу за таблицей. В следующем примере показано, как создать отформатированную таблицу, содержащую 2 строки и 2 столбца.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderBuildTable-DocumentBuilderBuildTable.java" >}}

## Вставка разрыва

Если вы хотите явно начать новую строку, абзац, столбец, раздел или страницу, вызовите DocumentBuilder.insertBreak. Передайте этому методу тип разрыва, который вам нужно вставить, который представлен перечислением `BreakType`.
В следующем примере кода показано, как вставлять разрывы страниц в документ.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertBreak-DocumentBuilderInsertBreak.java" >}}

## Вставка изображения

DocumentBuilder содержит несколько дополнений к методу [DocumentBuilder.insertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte), который позволяет вставлять встроенное или плавающее изображение. Если изображение представляет собой метафайл EMF или WMF, оно будет вставлено в документ в формате метафайла. Все остальные изображения будут сохранены в формате PNG. Метод DocumentBuilder.insertImage может использовать изображения из разных источников:

- Из файла или `URL` путем передачи строкового параметра
- Из потока путем передачи параметра `Stream`
- Из объекта Image путем передачи параметра Image
- Из массива байтов путем передачи параметра массива байтов
- И другие

Для каждого из методов DocumentBuilder.insertImage существуют дополнительные перегрузки, которые позволяют вставлять изображение со следующими параметрами:

- Встроенный или плавающий в определенном положении
- Процентная шкала или пользовательский размер

Кроме того, метод DocumentBuilder.insertImage возвращает объект [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/), который был только что создан и вставлен, чтобы вы могли дополнительно изменять свойства фигуры.

### Вставка встроенного изображения

Передайте одну строку, представляющую файл, содержащий изображение, в DocumentBuilder.insertImage, чтобы вставить изображение в документ в качестве встроенного графического изображения. В следующем примере кода показано, как вставить встроенное изображение в положение курсора в документе.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertInlineImage-DocumentBuilderInsertInlineImage.java" >}}

### Вставка плавающего (абсолютно расположенного) Изображение

В этом примере вставляется плавающее изображение из файла или `URL` в указанном положении и размере.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertFloatingImage-DocumentBuilderInsertFloatingImage.java" >}}

## Вставка закладки

Чтобы вставить закладку в документ, вам необходимо выполнить следующие действия:

1. Вызовите [DocumentBuilder.startBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startBookmark-java.lang.String), передав ему желаемое название закладки.
1. Вставьте текст закладки, используя методы `DocumentBuilder`.
1. Вызовите [DocumentBuilder.endBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endBookmark-java.lang.String), передав ему то же имя, которое вы использовали в DocumentBuilder.startBookmark.

Закладки могут перекрываться и охватывать любой диапазон. Чтобы создать действительную закладку, вам нужно вызвать оба параметра DocumentBuilder.startBookmark и DocumentBuilder.endBookmark с одинаковым именем закладки.

Неправильно оформленные закладки или закладки с повторяющимися названиями будут проигнорированы при сохранении документа.

В следующем примере кода показано, как вставить закладку в документ с помощью конструктора документов.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertBookmark-DocumentBuilderInsertBookmark.java" >}}

## Вставка поля

Поля в документах Microsoft Word состоят из кода поля и результата работы с полем. Код поля подобен формуле, а результат работы с полем - это значение, которое выдает формула. Код поля может также содержать переключатели полей, которые являются дополнительными инструкциями для выполнения определенного действия. Вы можете переключаться между отображением кодов полей и результатов в вашем документе в Microsoft Word с помощью сочетания клавиш Alt+F9. Коды полей отображаются в фигурных скобках ( { } ).Используйте [DocumentBuilder.insertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) для создания полей в документе. Вам необходимо указать тип поля, код поля и значение поля. Если вы не уверены в синтаксисе конкретного кода поля, сначала создайте поле в Microsoft Word и переключитесь на просмотр его кода поля.
Следующий пример кода вставляет поле слияния в документ, используя DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertField-DocumentBuilderInsertField.java" >}}

## Вставка поля `Form`

Поля формы - это частный случай полей Word, которые позволяют "взаимодействовать" с пользователем. Поля формы в Microsoft Word включают текстовое поле, Combobox и checkbox. DocumentBuilder предоставляет специальные методы для вставки каждого типа полей формы в документ: [DocumentBuilder.insertTextInput](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTextInput-java.lang.String-int-java.lang.String-java.lang.String-int), [DocumentBuilder.insertCheckBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-boolean-int) и [DocumentBuilder.insertComboBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertComboBox-java.lang.String-java.lang.String---int). Обратите внимание, что если вы укажете имя для поля формы, то автоматически будет создана закладка с таким же именем.

### Вставка текста для ввода

DocumentBuilder.insertTextInput чтобы вставить текстовое поле в документ. В следующем примере кода показано, как вставить поле формы ввода текста в документ.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTextInputFormField-DocumentBuilderInsertTextInputFormField.java" >}}

### Вставка `CheckBox`

Вызовите DocumentBuilder.insertCheckBox, чтобы вставить checkbox в документ. В следующем примере кода показано, как вставить поле формы checkbox в документ.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertCheckBoxFormField-DocumentBuilderInsertCheckBoxFormField.java" >}}

### Вставка поля со списком

Вызовите DocumentBuilder.insertComboBox, чтобы вставить поле со списком в документ. В следующем примере кода показано, как вставить поле формы со списком в документ.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertComboBoxFormField-DocumentBuilderInsertComboBoxFormField.java" >}}

## Вставка языкового стандарта на уровне поля

Теперь клиенты могут указывать языковой стандарт на уровне поля и могут лучше контролировать ситуацию. Идентификаторы языковых стандартов могут быть привязаны к каждому полю внутри DocumentBuilder. Приведенные ниже примеры иллюстрируют, как использовать эту опцию.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.java" >}}

## Вставка HTML

Вы можете легко вставить строку HTML, содержащую фрагмент HTML или весь документ HTML, в документ Word. Просто передайте эту строку методу DocumentBuilder.insertHtml. Одной из полезных реализаций метода является сохранение строки HTML в базе данных и вставка ее в документ во время Mail Merge для добавления отформатированного содержимого вместо его создания с использованием различных методов конструктора документов. В следующем примере кода показано, как вставить HTML в документ с помощью DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHtml-DocumentBuilderInsertHtml.java" >}}

## Вставка гиперссылки

Используйте DocumentBuilder.insertHyperlink, чтобы вставить гиперссылку в документ. Этот метод принимает три параметра: текст ссылки, которая будет отображаться в документе, место назначения ссылки (URL или название закладки внутри документа) и логический параметр, который должен иметь значение true, если `URL` является именем закладки внутри документа. DocumentBuilder.insertHyperlink вызывает внутренний вызов DocumentBuilder.insertField. Метод всегда добавляет апострофы в начале и конце URL. Обратите внимание, что вам необходимо явно указать форматирование шрифта для текста, отображаемого гиперссылкой, используя свойство `Font`. Следующий пример кода вставляет гиперссылку в документ, используя DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHyperlink-DocumentBuilderInsertHyperlink.java" >}}

## Вставка оглавления

Вы можете вставить поле `TOC` (оглавление) в документ в текущей позиции, вызвав метод [DocumentBuilder.insertTableOfContents](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTableOfContents-java.lang.String). Метод DocumentBuilder.insertTableOfContents вставит в документ только поле `TOC`. Чтобы создать оглавление и отобразить его в соответствии с номерами страниц, после вставки поля необходимо вызвать метод both **Document.UpdateFields**. В следующем примере кода показано, как вставить поле оглавления в документ.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTableOfContents-DocumentBuilderInsertTableOfContents.java" >}}

## Вставка Ole-объекта

Если вы хотите, чтобы Ole-объект вызывал [DocumentBuilder.insertOleObjectAsIcon](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObjectAsIcon-java.lang.String-boolean-java.lang.String-java.lang.String).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertOleObject-DocumentBuilderInsertOleObject.java" >}}

## Задайте имя и расширение файла при вставке Ole-объекта

OLE пакет - это устаревший и "недокументированный" способ хранения встроенных объектов, если обработчик OLE неизвестен. В ранних версиях Windows, таких как Windows 3.1, 95 и 98, было приложение Packager.exe, которое можно было использовать для встраивания в документ данных любого типа. Теперь это приложение исключено из Windows, но MS Word и другие приложения по-прежнему используют его для встраивания данных, если обработчик OLE отсутствует или неизвестен. OlePackage класс позволяет получить доступ к OLE Package свойствам.В следующем примере кода показано, как задать имя файла, расширение и отображаемое имя для OLE Package.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.java" >}}

## Получить доступ к необработанным данным объекта OLE

Следующий пример кода демонстрирует, как получить необработанные данные объекта OLE с помощью метода `OleFormat.GetRawData`().

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.java" >}}

## Вставить горизонтальную линейку в документ

В следующем примере кода показано, как вставить форму горизонтальной линейки в документ, используя метод `DocumentBuilder.InsertHorizontalRule`.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.java" >}}

## Работа с формами

### Вставка встроенных и свободно плавающих фигур

Вы можете вставить в документ встроенную фигуру заданного типа и размера и свободно перемещающуюся фигуру с заданным положением, размером и типом переноса текста, используя метод `DocumentBuilder.InsertShape`. Метод `DocumentBuilder.InsertShape` позволяет вставить фигуру DML в модель документа. Документ должен быть сохранен в формате, поддерживающем формы DML, в противном случае такие узлы будут преобразованы в форму VML при сохранении документа. В следующем примере кода показано, как вставить эти типы фигур в документ.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.java" >}}

### Создайте прямоугольник с отрезанным углом

Вы можете создать прямоугольник с отрезанным углом, используя Aspose.Words. Существуют следующие типы фигур SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded, и DiagonalCornersRounded. Фигура DML создается с использованием метода `DocumentBuilder.InsertShape` с использованием этих типов фигур. Эти типы не могут быть использованы для создания фигур VML. Попытка создать фигуру с помощью открытого конструктора класса "Shape" приводит к возникновению исключения "NotSupportedException". В следующем примере кода показано, как вставлять эти типы фигур в документ.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-AddCornersSnipped.java" >}}

### Импортируйте фигуры с математикой XML в виде фигур в DOM

Вы можете использовать свойство `LoadOptions.ConvertShapeToOfficeMath` для преобразования фигур с уравнением EquationXML в объекты Office Math. Значение этого свойства по умолчанию соответствует MS поведению Word, т.е. фигуры с уравнением XML не преобразуются в объекты Office math.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-ConvertShapeToOfficeMath.java" >}}
