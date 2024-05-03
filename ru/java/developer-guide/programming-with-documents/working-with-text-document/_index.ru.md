---
title: Работа с текстовым документом в Java
second_title: Aspose.Words для Java
articleTitle: Работа с текстовым документом
linktitle: Работа с текстовым документом
description: "Расширенная обработка документов TXT, списки, BiDi, заголовки/футер, использование Java."
type: docs
weight: 430
url: /ru/java/working-with-text-document/
---

В этой статье мы узнаем, какие варианты могут быть полезны для работы с текстовым документом. Aspose.Words. Обратите внимание, что это не полный список доступных вариантов, а лишь пример работы с некоторыми из них.

## Добавить би-направление знаки

Вы можете использовать [AddBidiMarks](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getAddBidiMarks) свойство указывать, следует ли добавлять двунаправленные знаки перед каждым запуском BiDi при экспорте в формате простого текста. Aspose.Words Вставляется символ Unicode 'Right-to-LEFT MARK' (U+200F) перед каждым двунаправленным Запуском в тексте. Эта опция соответствует опции "Добавить двунаправленные отметки" в диалоге преобразования файлов MS Word при экспорте в формат простого текста. Обратите внимание, что он появляется в диалоге только в том случае, если какой-либо из языков редактирования на арабском или иврите добавлен в MS Word.

Следующий пример показывает, как использовать `TxtSaveOptions.AddBidiMarks` собственность. По умолчанию стоимость этого имущества является *true*:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-AddBidiMarks.java" >}}

## Распознайте элементы списка во время загрузки TXT

Aspose.Words может импортировать элемент списка текстового файла в виде номеров списка или простого текста в своей модели объекта документа. The [DetectNumberingWithWhitespaces](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDetectNumberingWithWhitespaces) свойство позволяет указать, насколько пронумерованы пункты списка при импорте документа из простого текстового формата:

* Если эта опция установлена *true*, Белые пробелы также используются в качестве ограничителей номеров списков: алгоритм распознавания списков для нумерации арабского стиля (1., 1.1.2.) использует как белые пробелы, так и символы точки (.).
* Если эта опция установлена *false*, Алгоритм распознавания списков обнаруживает абзацы списков, когда номера списков заканчиваются либо точкой, правой кронштейном, либо символами пули (такими как "•", "*", "-" или "o").

Следующий пример кода показывает, как использовать это свойство:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-DetectNumberingWithWhitespaces.java" >}}

## Обработка ведущих и прицепных пространств во время загрузки TXT

Вы можете контролировать способ обработки ведущих и отслеживающих пространств при загрузке файлов TXT. Ведущие пространства могут быть обрезаны, сохранены или преобразованы в углубления, а задние пространства могут быть обрезаны или сохранены.

Приведенный ниже пример кода показывает, как обрезать ведущие и задающие пробелы при импорте файла TXT:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-HandleSpacesOptions.java" >}}

## Обнаружить документ Направление текста

Aspose.Words обеспечивает [DocumentDirection](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDocumentDirection) собственность в [TxtLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/) класс для определения направления текста (RTL/LTR) в документе. Это свойство устанавливает или получает текстовые указания документа, указанные в [DocumentDirection](https://reference.aspose.com/words/java/com.aspose.words/documentdirection/) перечисление. Значение по умолчанию слева направо.

Следующий пример кода показывает, как определить текстовое направление документа при импорте файла TXT:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-DocumentTextDirection.java" >}}

## Экспортный заголовок и фойе в Output TXT File

Если вы хотите экспортировать заголовок и нижний колонтитул в выходном документе TXT, вы можете использовать [ExportHeadersFootersMode](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getExportHeadersFootersMode) собственность. Это свойство определяет, как заголовки и нижние колонтитулы экспортируются в простой текстовый формат.

Следующий пример кода показывает, как экспортировать заголовки и нижние колонтитулы в простой текстовый формат:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-ExportHeadersFootersMode.java" >}}

## Экспортный список в Output TXT

Aspose.Words введенный [TxtListIndentation](https://reference.aspose.com/words/java/com.aspose.words/txtlistindentation/) Класс, который позволяет указать, как уровни списка изгибаются при экспорте в простой текстовый формат. Во время работы с [TxtSaveOption](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/), тот [ListIndentation](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getListIndentation) Предоставляется свойство для указания символа, который будет использоваться для индентирования уровней списка, и подсчета, определяющего, сколько символов использовать в качестве отступов на один уровень списка.

Значение по умолчанию для свойства символа "0", что указывает на отсутствие отступов. Для подсчета свойств значение по умолчанию составляет 0, что означает отсутствие отступов.

### Использование Tab Character

Следующий пример кода показывает, как экспортировать уровни списка с помощью символов вкладки:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-useTabCharacterPerLevelForListIndentation.java" >}}

### Использование Space Character

Следующий пример кода показывает, как экспортировать уровни списка с использованием символов пространства:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-useSpaceCharacterPerLevelForListIndentation.java" >}}

### Использование Default Indentation

Следующий пример кода показывает, как экспортировать уровни списка с использованием отступов по умолчанию:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-defaultLevelForListIndentation.java" >}}
