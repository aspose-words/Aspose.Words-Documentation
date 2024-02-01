---
title: Работа с текстовым документом в C#
second_title: Aspose.Words для .NET
articleTitle: Работа с текстовым документом
linktitle: Работа с текстовым документом
description: "Расширенная обработка документов TXT, списки, двунаправленный текст, верхний/нижний колонтитул, использование C#."
type: docs
weight: 430
url: /ru/net/working-with-text-document/
---

В этой статье мы узнаем, какие опции могут быть полезны для работы с текстовым документом через Aspose.Words. Обратите внимание, что это не полный список доступных опций, а лишь пример работы с некоторыми из них.

## Добавьте двунаправленные метки

Вы можете использовать свойство [AddBidiMarks](https://reference.aspose.com/words/net/aspose.words.saving/txtsaveoptions/addbidimarks/), чтобы указать, следует ли добавлять двунаправленные метки перед каждым запуском двунаправленного текста при экспорте в текстовом формате. Aspose.Words вставляет символ Юникода "ЗНАЧОК СПРАВА НАЛЕВО" (U+200F) перед каждым двунаправленным запуском в тексте. Эта опция соответствует опции "Добавить двунаправленные метки" в диалоговом окне "Преобразование файлов MS Word" при экспорте в формат обычного текста. Обратите внимание, что он появляется в диалоге только в том случае, если в MS Word добавлен какой-либо арабский или иврит язык редактирования.

В следующем примере кода показано, как использовать свойство **AddBidiMarks**. Значение этого свойства по умолчанию — *false*:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-AddBidiMarks.cs" >}}

## Распознавание элементов списка во время загрузки TXT

Aspose.Words может импортировать элемент списка текстового файла в виде номеров списка или обычного текста в свою объектную модель документа. Свойство [DetectNumberingWithWhitespaces](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/detectnumberingwithwhitespaces/) позволяет указать, как распознаются нумерованные элементы списка при импорте документа из обычного текстового формата:

* Если для этой опции установлено значение *true*, в качестве разделителей номеров списков также используются пробелы: алгоритм распознавания списков для нумерации в арабском стиле (1., 1.1.2.) использует как пробелы, так и символы точки (".").

* Если для этой опции установлено значение *false*, алгоритм распознавания списков обнаруживает абзацы списка, если номера списка заканчиваются точкой, правой скобкой или символами маркера (например, "•", "*", "-" или "o").

В следующем примере кода показано, как использовать это свойство:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-DetectNumberingWithWhitespaces.cs" >}}

## Обработка начальных и конечных пробелов во время загрузки TXT

Вы можете контролировать способ обработки начальных и конечных пробелов во время загрузки файла TXT. Ведущие пробелы можно обрезать, сохранить или преобразовать в отступы, а конечные пробелы можно обрезать или сохранить.

В следующем примере кода показано, как обрезать начальные и конечные пробелы при импорте файла TXT:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-HandleSpacesOptions.cs" >}}

## Определить направление текста документа

Aspose.Words предоставляет свойство [DocumentDirection](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/documentdirection/) в классе [TxtLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/) для определения направления текста (RTL/LTR) в документе. Это свойство устанавливает или получает направления текста документа, указанные в перечислении [DocumentDirection](https://reference.aspose.com/words/net/aspose.words.loading/documentdirection/). Значение по умолчанию оставлено *right*.

В следующем примере кода показано, как определить направление текста в документе при импорте файла TXT:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-DocumentTextDirection.cs" >}}

## Экспортировать верхний и нижний колонтитулы в выходной TXT

Если вы хотите экспортировать верхний и нижний колонтитулы в выходной документ TXT, вы можете использовать свойство [ExportHeadersFootersMode](https://reference.aspose.com/words/net/aspose.words.saving/exportheadersfootersmode/). Это свойство определяет способ экспорта верхних и нижних колонтитулов в текстовый формат.

В следующем примере кода показано, как экспортировать верхние и нижние колонтитулы в текстовый формат:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-ExportHeadersFootersMode.cs" >}}

## Отступ списка экспорта в выходном TXT

В версии Aspose.Words представлен класс [TxtListIndentation](https://reference.aspose.com/words/net/aspose.words.saving/txtlistindentation/), который позволяет указывать отступы уровней списка при экспорте в текстовый формат. При работе с [TxtSaveOption](https://reference.aspose.com/words/net/aspose.words.saving/txtsaveoptions/) предоставляется свойство [ListIndentation](https://reference.aspose.com/words/net/aspose.words.saving/txtsaveoptions/listindentation/), позволяющее указать символ, который будет использоваться для отступов на уровнях списка, и количество символов, указывающее, сколько символов использовать в качестве отступа на один уровень списка.

Значением по умолчанию для свойства символов является "\0", что указывает на отсутствие отступов. Для свойства count значение по умолчанию — 0, что означает отсутствие отступов.

### Использование символа табуляции

В следующем примере кода показано, как экспортировать уровни списка с помощью символов табуляции:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-UseTabCharacterPerLevelForListIndentation.cs" >}}

### Использование пробела

В следующем примере кода показано, как экспортировать уровни списка с использованием пробелов:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-UseSpaceCharacterPerLevelForListIndentation.cs" >}}

### Использование отступа по умолчанию

В следующем примере кода показано, как экспортировать уровни списка с использованием отступов по умолчанию:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-DefaultLevelForListIndentation.cs" >}}
