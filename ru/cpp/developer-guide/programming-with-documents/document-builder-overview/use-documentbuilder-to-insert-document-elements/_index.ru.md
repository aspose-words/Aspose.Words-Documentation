---
title: Используйте `DocumentBuilder` для вставки элементов документа
second_title: Aspose.Words для C++
articleTitle: Используйте `DocumentBuilder` для вставки элементов документа
linktitle: Используйте `DocumentBuilder` для вставки элементов документа
type: docs
description: "Вставляйте элементы документа с помощью конструктора документов на C++."
weight: 80
url: /ru/cpp/use-documentbuilder-to-insert-document-elements/
---

`DocumentBuilder` используется для изменения документов. В этой статье объясняется и описывается, как выполнять ряд задач:

## Вставка текстовой строки

Просто передайте строку текста, которую вам нужно вставить в документ, методу `DocumentBuilder.Write`. Форматирование текста определяется свойством `Font`. Этот объект содержит различные атрибуты шрифта (название шрифта, размер шрифта, цвет и т.д.). Некоторые важные атрибуты шрифта также представлены свойствами DocumentBuilder, что позволяет получить к ним прямой доступ. Это логические свойства `Font.Bold`, `Font.Italic` и `Font.Underline`.

Обратите внимание, что заданное вами форматирование символов будет применяться ко всему тексту, вставленному начиная с текущей позиции в документе.

Приведенный ниже пример вставляет форматированный текст с помощью DocumentBuilder.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-WriteAndFont-WriteAndFont.cpp" >}}

## Вставка абзаца

 `DocumentBuilder.Writeln` также вставляет строку текста в документ, но, кроме того, добавляет разрыв абзаца. Текущее форматирование шрифта также определяется свойством `DocumentBuilder.Font`, а текущее форматирование абзаца определяется свойством `DocumentBuilder.ParagraphFormat`. В приведенном ниже примере показано, как вставить абзац в документ.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cpp" >}}

## Вставка таблицы

Базовый алгоритм создания таблицы с помощью DocumentBuilder прост:

1. Запустите таблицу с помощью `DocumentBuilder.StartTable`.
1. Вставьте ячейку, используя `DocumentBuilder.InsertCell`. При этом автоматически начнется новая строка. При необходимости используйте свойство `DocumentBuilder.CellFormat`, чтобы задать форматирование ячейки.
1. Вставьте содержимое ячейки, используя методы `DocumentBuilder`.
1. Повторяйте шаги 2 и 3, пока строка не будет завершена.
1. Вызовите `DocumentBuilder.EndRow`, чтобы завершить текущую строку. При необходимости используйте свойство `DocumentBuilder.RowFormat`, чтобы задать форматирование строки.
1. Повторяйте шаги 2-5, пока таблица не будет заполнена полностью.
1. Вызовите `DocumentBuilder.EndTable`, чтобы завершить создание таблицы. Ниже описаны соответствующие методы создания таблиц в DocumentBuilder.

### Запуск таблицы

Вызов `DocumentBuilder.StartTable` является первым шагом в построении таблицы. Он также может быть вызван внутри ячейки, и в этом случае запускается вложенная таблица. Следующий вызываемый метод - `DocumentBuilder.InsertCell`.

### Вставка ячейки

После вызова `DocumentBuilder->InsertCell` будет создана новая ячейка, и любое содержимое, добавленное с помощью других методов класса `DocumentBuilder`, будет добавлено в текущую ячейку. Чтобы создать новую ячейку в той же строке, снова вызовите `DocumentBuilder->InsertCell`. Используйте свойство `DocumentBuilder.CellFormat`, чтобы задать форматирование ячейки. Оно возвращает объект `CellFormat`, который представляет все форматирование ячейки таблицы.

### Завершение строки

Вызовите `DocumentBuilder.EndRow`, чтобы завершить текущую строку. Если вы вызовете `DocumentBuilder->InsertCell` сразу после этого, таблица будет продолжена с новой строки.

Используйте свойство `DocumentBuilder.RowFormat`, чтобы указать форматирование строк. Оно возвращает объект `RowFormat`, который представляет все форматирование для строки таблицы.

### Завершение таблицы

Вызовите `DocumentBuilder.EndTable`, чтобы завершить работу с текущей таблицей. Этот метод следует вызывать только один раз после вызова `DocumentBuilder->EndRow`. При вызове `DocumentBuilder.EndTable` курсор перемещается из текущей ячейки в позицию сразу за таблицей. В следующем примере показано, как создать отформатированную таблицу, содержащую 2 строки и 2 столбца.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderBuildTable-DocumentBuilderBuildTable.cpp" >}}

## Вставка разрыва

Если вы хотите явно начать новую строку, абзац, столбец, раздел или страницу, вызовите `DocumentBuilder.InsertBreak`. Передайте этому методу тип разрыва, который вам нужно вставить, который представлен перечислением `BreakType`. В приведенном ниже примере показано, как вставлять разрывы страниц в документ.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertBreak-DocumentBuilderInsertBreak.cpp" >}}

## Вставка изображения

DocumentBuilder предоставляет несколько дополнений к методу `DocumentBuilder->InsertImage`, который позволяет вставлять встроенное или плавающее изображение. Если изображение представляет собой метафайл EMF или WMF, оно будет вставлено в документ в формате метафайла. Все остальные изображения будут сохранены в формате PNG. Метод `DocumentBuilder->InsertImage` позволяет использовать изображения из разных источников:

- Из файла или `URL`, передав строковый параметр `DocumentBuilder->InsertImage`.
- Из потока путем передачи параметра `Stream` `DocumentBuilder->InsertImage`.
- Из объекта Image путем передачи параметра Image `DocumentBuilder->InsertImage`.
- Из массива байтов путем передачи параметра массива байтов `DocumentBuilder.InsertImage`.Для каждого из методов `DocumentBuilder->InsertImage` существуют дополнительные перегрузки, которые позволяют вставлять изображение со следующими параметрами:
- Встроенный или плавающий в определенном положении, например, `DocumentBuilder->InsertImage`.
- Процентный масштаб или пользовательский размер, например, `DocumentBuilder.InsertImage`. Кроме того, метод `DocumentBuilder->InsertImage` возвращает объект `Shape`, который был только что создан и вставлен, чтобы вы могли дополнительно изменять свойства фигуры.

### Вставка встроенного изображения

Передайте одну строку, представляющую файл, содержащий изображение, в `DocumentBuilder->InsertImage`, чтобы вставить изображение в документ в качестве встроенной графики. В приведенном ниже примере показано, как вставить встроенное изображение в положение курсора в документе.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertInlineImage.cpp" >}}

### Вставка плавающего (абсолютно расположенного) Изображение

В этом примере вставляется плавающее изображение из файла или `URL` в указанном положении и размере.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertFloatingImage.cpp" >}}

## Вставка закладки

Чтобы вставить закладку в документ, вам необходимо выполнить следующие действия:

1. Вызовите `DocumentBuilder->StartBookmark`, передав ему желаемое название закладки.
1. Вставьте текст закладки, используя методы DocumentBuilder.
1. Вызовите `DocumentBuilder.EndBookmark`, передав ему то же имя, которое вы использовали в **DocumentBuilder->StartBookmark**.
1. Закладки могут перекрываться и охватывать любой диапазон. Чтобы создать действительную закладку, вам нужно вызвать как `DocumentBuilder->StartBookmark`, так и `DocumentBuilder->EndBookmark` с одинаковым именем закладки.

{{% alert color="primary" %}}

Неправильно оформленные закладки или закладки с повторяющимися названиями будут проигнорированы при сохранении документа.

{{% /alert %}}

В приведенном ниже примере показано, как вставить закладку в документ с помощью конструктора документов.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertBookmark-DocumentBuilderInsertBookmark.cpp" >}}

## Вставка поля `Form`

Поля формы - это частный случай полей Word, которые позволяют "взаимодействовать" с пользователем. Поля формы в Microsoft Word включают текстовое поле, поле со списком и флажок.DocumentBuilder предоставляет специальные методы для вставки каждого типа полей формы в документ: `DocumentBuilder.InsertTextInput`, `DocumentBuilder->InsertCheckBox` и `DocumentBuilder.InsertComboBox`. Обратите внимание, что если вы укажете имя для поля формы, то автоматически будет создана закладка с таким же именем.

### Вставка текста для ввода

 `DocumentBuilder.InsertTextInput` чтобы вставить текстовое поле в документ. В приведенном ниже примере показано, как вставить поле формы ввода текста в документ.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertTextInputFormField.cpp" >}}

### Установка флажка

Вызовите `DocumentBuilder.InsertCheckBox`, чтобы вставить флажок в документ. В приведенном ниже примере показано, как вставить поле формы с флажком в документ.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertCheckBoxFormField.cpp" >}}

### Вставка поля со списком

Вызовите `DocumentBuilder.InsertComboBox`, чтобы вставить поле со списком в документ. В приведенном ниже примере показано, как вставить поле формы со списком в документ.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertComboBoxFormField.cpp" >}}

## Вставка языкового стандарта на уровне поля

Теперь пользователи могут указывать языковой стандарт на уровне поля и могут лучше контролировать его. С каждым полем в DocumentBuilder можно связать идентификаторы языкового стандарта. Приведенные ниже примеры иллюстрируют, как использовать эту опцию.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.cpp" >}}

## Вставка гиперссылки

Используйте `DocumentBuilder.InsertHyperlink`, чтобы вставить гиперссылку в документ. Этот метод принимает три параметра: текст ссылки, которая будет отображаться в документе, адрес назначения ссылки (URL или название закладки внутри документа) и логический параметр, который должен иметь значение true, если `URL` является именем закладки внутри документа.DocumentBuilder.InsertHyperlink выполняет внутренний вызов `DocumentBuilder.InsertField`.Этот метод всегда добавляет апострофы в начале и конце URL-адреса. Обратите внимание, что вам необходимо явно указать форматирование шрифта для отображаемого текста гиперссылки, используя свойство `Font`. Приведенный ниже пример вставляет гиперссылку в документ с помощью DocumentBuilder.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHyperlink.cpp" >}}

## Вставка Ole-объекта

Если вам нужен Ole-объект, вызовите `DocumentBuilder.InsertOleObject`. Передайте этому методу значение `ProgId` явно с другими параметрами. В приведенном ниже примере показано, как вставить Ole-объект в документ.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertOleObject.cpp" >}}

## Задайте имя и расширение файла при вставке Ole-объекта

OLE-пакет - это устаревший и "недокументированный" способ хранения внедренного объекта, если обработчик OLE неизвестен. В ранних версиях Windows, таких как Windows 3.1, 95 и 98, было Packager.exe приложение, которое можно было использовать для встраивания данных любого типа в документ. Теперь это приложение исключено из Windows, но MS Word и другие приложения по-прежнему используют его для встраивания данных, если обработчик OLE отсутствует или неизвестен. Класс OlePackage позволяет получить доступ к свойствам пакета OLE. В приведенном ниже примере показано, как задать имя файла, расширение и отображаемое имя для OLE-пакета.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.cpp" >}}

## Вставка HTML-кода

Вы можете легко вставить HTML-строку, содержащую HTML-фрагмент или весь HTML-документ целиком, в документ Word. Просто передайте эту строку методу `DocumentBuilder->InsertHtml`. Одной из полезных реализаций метода является сохранение HTML-строки в базе данных и вставка ее в документ во время mail merge для добавления отформатированного содержимого вместо его создания с помощью различных методов конструктора документов. В приведенном ниже примере показано, как HTML-строка вставляется в документ с помощью DocumentBuilder.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHtml.cpp" >}}

## Вставить горизонтальную линейку в документ

В примере low code показано, как вставить форму горизонтальной линейки в документ, используя метод `DocumentBuilder->InsertHorizontalRule`.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.cpp" >}}
