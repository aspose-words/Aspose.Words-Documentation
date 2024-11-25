---
title: Работа с текстовым документом в Java
second_title: Aspose.Words для Java
articleTitle: Работа с текстовым документом
linktitle: Работа с текстовым документом
description: "Расширенная обработка документов TXT, списков, BiDi, верхних и нижних колонтитулов с использованием Java."
type: docs
weight: 430
url: /ru/java/working-with-text-document/
timestamp: 2024-01-27-14-07-04
---

В этой статье мы узнаем, какие опции могут быть полезны для работы с текстовым документом через Aspose.Words. Пожалуйста, обратите внимание, что это не полный список доступных опций, а лишь пример работы с некоторыми из них.

## Добавление двунаправленных меток

Вы можете использовать свойство [AddBidiMarks](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getAddBidiMarks), чтобы указать, следует ли добавлять двунаправленные метки перед каждым запуском BiDi при экспорте в обычном текстовом формате. Aspose.Words вставляет символ Юникода 'RIGHT-TO-LEFT MARK' (U+200F) перед каждым двунаправленным вводом в тексте. Этот параметр соответствует параметру "Добавить двунаправленные метки" в диалоговом окне преобразования файлов MS Word при экспорте в обычный текстовый формат. Обратите внимание, что он отображается в диалоговом окне только в том случае, если в MS Word добавлен какой-либо из языков редактирования - арабский или иврит.

В следующем примере кода показано, как использовать свойство `TxtSaveOptions.AddBidiMarks`. Значение этого свойства по умолчанию равно *true*:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-AddBidiMarks.java" >}}

## Распознавать элементы Списка Во время Загрузки TXT

Aspose.Words может импортировать элементы списка из текстового файла в виде списковых номеров или обычного текста в свою объектную модель документа. Свойство [DetectNumberingWithWhitespaces](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDetectNumberingWithWhitespaces) позволяет указать, как распознаются элементы нумерованного списка при импорте документа из обычного текстового формата:

* Если для этого параметра установлено значение *true*, пробелы также используются в качестве разделителей номеров списков: алгоритм распознавания списков для нумерации в арабском стиле (1., 1.1.2.) использует как пробелы, так и точки (".").
* Если для этого параметра установлено значение *false*, алгоритм распознавания списков распознает абзацы списка, когда номера списков заканчиваются точкой, правой скобкой или маркером (например, "•", "*", "-" или "o").

В следующем примере кода показано, как использовать это свойство:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-DetectNumberingWithWhitespaces.java" >}}

## Обрабатывать начальные и конечные пробелы во время загрузки TXT

Вы можете управлять способом обработки начальных и конечных пробелов при загрузке файлов TXT. Начальные пробелы могут быть обрезаны, сохранены или преобразованы в отступ, а конечные пробелы могут быть обрезаны или сохранены.

В примере кода, приведенном ниже, показано, как обрезать начальные и конечные пробелы при импорте файла TXT:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-HandleSpacesOptions.java" >}}

## Определение направления текста документа

Aspose.Words предоставляет свойство [DocumentDirection](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDocumentDirection) в классе [TxtLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/) для определения направления текста (RTL / LTR) в документе. Это свойство задает или возвращает направление текста документа, указанное в перечислении [DocumentDirection](https://reference.aspose.com/words/java/com.aspose.words/documentdirection/). Значение по умолчанию - слева направо.

В следующем примере кода показано, как определить направление текста документа при импорте файла TXT:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-DocumentTextDirection.java" >}}

## Экспортируйте верхний и нижний колонтитулы в выходной файл TXT

Если вы хотите экспортировать верхний и нижний колонтитулы в выходной документ TXT, вы можете использовать свойство [ExportHeadersFootersMode](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getExportHeadersFootersMode). Это свойство определяет способ экспорта верхних и нижних колонтитулов в обычный текстовый формат.

В следующем примере кода показано, как экспортировать верхние и нижние колонтитулы в обычный текстовый формат:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-ExportHeadersFootersMode.java" >}}

## Отступ для списка экспорта в выходных данных TXT

Aspose.Words введен класс [TxtListIndentation](https://reference.aspose.com/words/java/com.aspose.words/txtlistindentation/), который позволяет указывать отступы для уровней списка при экспорте в обычный текстовый формат. При работе с [TxtSaveOption](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/) свойство [ListIndentation](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getListIndentation) используется для указания символа, который будет использоваться для отступов на уровнях списка, и для определения количества символов, которые будут использоваться в качестве отступов на одном уровне списка.

Значение по умолчанию для свойства character равно '\0', что указывает на отсутствие отступа. Для свойства count значение по умолчанию равно 0, что означает отсутствие отступа.

### Использование символа табуляции

В следующем примере кода показано, как экспортировать уровни списка с использованием символов табуляции:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-useTabCharacterPerLevelForListIndentation.java" >}}

### Использование символа пробела

В следующем примере кода показано, как экспортировать уровни списка с использованием пробелов:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-useSpaceCharacterPerLevelForListIndentation.java" >}}

### Использование отступов по умолчанию

В следующем примере кода показано, как экспортировать уровни списка с использованием отступов по умолчанию:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-defaultLevelForListIndentation.java" >}}
