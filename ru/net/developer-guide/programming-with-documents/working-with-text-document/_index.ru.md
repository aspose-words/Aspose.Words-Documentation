---
title: Работа с текстовым документом в C#
second_title: Aspose.Words для .NET
articleTitle: Работа с текстовым документом
linktitle: Работа с текстовым документом
description: "Расширенная обработка документов TXT, списки, BiDi, заголовки/футер, использование C#."
type: docs
weight: 430
url: /ru/net/working-with-text-document/
---

В этой статье мы узнаем, какие варианты могут быть полезны для работы с текстовым документом. Aspose.Words. Обратите внимание, что это не полный список доступных вариантов, а лишь пример работы с некоторыми из них.

## Добавить би-направление знаки

Вы можете использовать [AddBidiMarks](https://reference.aspose.com/words/net/aspose.words.saving/txtsaveoptions/addbidimarks/) свойство указывать, следует ли добавлять двунаправленные знаки перед каждым запуском BiDi при экспорте в формате простого текста. Aspose.Words В тексте вставляется символ Unicode "Справа налево Марк" (U+200F) перед каждым двунаправленным Запуском. Эта опция соответствует опции "Добавить двунаправленные отметки" в диалоге преобразования файлов MS Word при экспорте в формат простого текста. Обратите внимание, что он появляется в диалоге только в том случае, если в MS Word добавлен какой-либо из языков редактирования на арабском или иврите.

Следующий пример показывает, как использовать **AddBidiMarks** собственность. По умолчанию стоимость этого имущества является *false*:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-AddBidiMarks.cs" >}}

## Распознайте элементы списка во время загрузки TXT

Aspose.Words может импортировать элемент списка текстового файла в виде номеров списка или простого текста в своей модели объекта документа. The [DetectNumberingWithWhitespaces](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/detectnumberingwithwhitespaces/) свойство позволяет указать, насколько пронумерованы пункты списка при импорте документа из простого текстового формата:

* Если эта опция установлена *true*, Белые пробелы также используются в качестве ограничителей номеров списков: алгоритм распознавания списков для нумерации арабского стиля (1., 1.1.2.) использует как белые пробелы, так и символы точки (.).

* Если эта опция установлена *false*, Алгоритм распознавания списков обнаруживает абзацы списков, когда номера списков заканчиваются либо точкой, правой кронштейном, либо символами пули (такими как "•", "*", "-" или "o").

Следующий пример кода показывает, как использовать это свойство:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-DetectNumberingWithWhitespaces.cs" >}}

## Обработка ведущих и прицепных пространств во время загрузки TXT

Вы можете контролировать способ обработки ведущих и отслеживающих пространств при загрузке файла TXT. Ведущие пространства могут быть обрезаны, сохранены или преобразованы в углубления, а задние пространства могут быть обрезаны или сохранены.

Следующий пример кода показывает, как обрезать ведущие и отслеживающие пространства при импорте файла TXT:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-HandleSpacesOptions.cs" >}}

## Обнаружить документ Направление текста

Aspose.Words обеспечивает [DocumentDirection](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/documentdirection/) имуществом в [TxtLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/) класс для определения направления текста (RTL/LTR) в документе. Это свойство устанавливает или получает текстовые указания документа, указанные в разделе. [DocumentDirection](https://reference.aspose.com/words/net/aspose.words.loading/documentdirection/) перечисление. Значение по умолчанию остается на *right*.

Следующий пример кода показывает, как определить текстовое направление документа при импорте файла TXT:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-DocumentTextDirection.cs" >}}

## Экспортный заголовок и фотер на выходе TXT

Если вы хотите экспортировать заголовок и нижний колонтитул в выходном документе TXT, вы можете использовать [ExportHeadersFootersMode](https://reference.aspose.com/words/net/aspose.words.saving/exportheadersfootersmode/) собственность. Это свойство определяет, как заголовки и нижние колонтитулы экспортируются в простой текстовый формат.

Следующий пример кода показывает, как экспортировать заголовки и нижние колонтитулы в простой текстовый формат:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-ExportHeadersFootersMode.cs" >}}

## Экспортный список в Output TXT

Aspose.Words введенный в [TxtListIndentation](https://reference.aspose.com/words/net/aspose.words.saving/txtlistindentation/) Класс, который позволяет указать, как уровни списка изгибаются при экспорте в простой текстовый формат. Во время работы с [TxtSaveOption](https://reference.aspose.com/words/net/aspose.words.saving/txtsaveoptions/), тот [ListIndentation](https://reference.aspose.com/words/net/aspose.words.saving/txtsaveoptions/listindentation/) Предоставляется свойство для указания символа, который будет использоваться для индентирования уровней списка, и подсчета, определяющего, сколько символов использовать в качестве отступов на один уровень списка.

Значение по умолчанию для свойства символа "0", что указывает на отсутствие отступов. Для подсчета свойств значение по умолчанию составляет 0, что означает отсутствие отступов.

### Использование Tab Character

Следующий пример кода показывает, как экспортировать уровни списка с использованием символов вкладки:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-UseTabCharacterPerLevelForListIndentation.cs" >}}

### Использование Space Character

Следующий пример кода показывает, как экспортировать уровни списка с использованием символов пространства:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-UseSpaceCharacterPerLevelForListIndentation.cs" >}}

### Использование Default Indentation

Следующий пример кода показывает, как экспортировать уровни списка с использованием отступов по умолчанию:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-DefaultLevelForListIndentation.cs" >}}
