---
title: Работа с текстовым документом
second_title: Aspose.Words для Python via .NET
articleTitle: Работа с текстовым документом
linktitle: Работа с текстовым документом
description: "Работа с текстовым документом и изменение его объектов с помощью Python."
type: docs
weight: 430
url: /ru/python-net/working-with-text-document/
---

В этой статье мы узнаем, какие варианты могут быть полезны для работы с текстовым документом. Aspose.Words. Обратите внимание, что это не полный список доступных вариантов, а лишь пример работы с некоторыми из них.

## Добавить би-направление знаки

Вы можете использовать [add_bidi_marks](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/add_bidi_marks/) свойство указывать, следует ли добавлять двунаправленные знаки перед каждым запуском BiDi при экспорте в формате простого текста. Aspose.Words Вставка символа Unicode "Справа налево" (U+200F) перед каждым двунаправленным [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) в тексте. Эта опция соответствует опции "Добавить двунаправленные отметки" в диалоге преобразования файлов MS Word при экспорте в формат простого текста. Обратите внимание, что он появляется в диалоге только в том случае, если в MS Word добавлен какой-либо из языков редактирования на арабском или иврите.

Следующий пример показывает, как использовать [add_bidi_marks](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/add_bidi_marks/) собственность. По умолчанию стоимость этого имущества является `False`:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_txt_save_options-AddBidiMarks.py" >}}

## Распознайте элементы списка во время загрузки TXT

Aspose.Words может импортировать элемент списка текстового файла в виде номеров списка или простого текста в своей модели объекта документа. The [detect_numbering_with_whitespaces](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/detect_numbering_with_whitespaces/) свойство позволяет указать, насколько пронумерованы пункты списка при импорте документа из простого текстового формата:

* Если эта опция установлена `True`, Белые пробелы также используются в качестве ограничителей номеров списков: алгоритм распознавания списков для нумерации арабского стиля (1., 1.1.2.) использует как белые пробелы, так и символы точки (.).
* Если эта опция установлена `False`, Алгоритм распознавания списков обнаруживает абзацы списков, когда номера списков заканчиваются либо точкой, правой кронштейном, либо символами пули (такими как "•", "*", "-" или "o").

Следующий пример кода показывает, как использовать это свойство:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_txt_load_options-DetectNumberingWithWhitespaces.py" >}}

## Обработка ведущих и прицепных пространств во время загрузки TXT

Вы можете контролировать способ обработки ведущих и отслеживающих пространств при загрузке файла TXT. Ведущие пространства могут быть обрезаны, сохранены или преобразованы в углубления, а задние пространства могут быть обрезаны или сохранены.

Следующий пример кода показывает, как обрезать ведущие и отслеживающие пространства при импорте файла TXT:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_txt_load_options-HandleSpacesOptions.py" >}}

## Обнаружить документ Направление текста

Aspose.Words обеспечивает [document_direction](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/document_direction/) собственность в [TxtLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/) класс для определения направления текста (RTL/LTR) в документе. Это свойство устанавливает или получает текстовые инструкции документа, указанные в [DocumentDirection](https://reference.aspose.com/words/python-net/aspose.words.loading/documentdirection/) перечисление. Значение по умолчанию слева направо.

Следующий пример кода показывает, как определить текстовое направление документа при импорте файла TXT:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_txt_load_options-DocumentTextDirection.py" >}}

## Экспортный заголовок и фотер на выходе TXT

Если вы хотите экспортировать заголовок и футер в выходном документе TXT, вы можете использовать [export_headers_footers_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptionsbase/export_headers_footers_mode/) собственность. Это свойство определяет, как заголовки и нижние колонтитулы экспортируются в простой текстовый формат.

Следующий пример кода показывает, как экспортировать заголовки и нижние колонтитулы в простой текстовый формат:

{{< highlight python >}}
doc = aw.Document(docs_base.my_dir + "Document.docx")

options = aw.saving.TxtSaveOptions()
options.save_format = aw.SaveFormat.TEXT

# All headers and footers are placed at the very end of the output document.
options.export_headers_footers_mode = aw.saving.TxtExportHeadersFootersMode.ALL_AT_END
doc.save(docs_base.artifacts_dir + "WorkingWithTxtSaveOptions.export_headers_footers_mode_A.txt", options)

# Only primary headers and footers are exported at the beginning and end of each section.
options.export_headers_footers_mode = aw.saving.TxtExportHeadersFootersMode.PRIMARY_ONLY
doc.save(docs_base.artifacts_dir + "WorkingWithTxtSaveOptions.export_headers_footers_mode_B.txt", options)

# No headers and footers are exported.
options.export_headers_footers_mode = aw.saving.TxtExportHeadersFootersMode.NONE
doc.save(docs_base.artifacts_dir + "WorkingWithTxtSaveOptions.export_headers_footers_mode_C.txt", options)
{{< /highlight >}}

## Экспортный список в Output TXT

Aspose.Words введенный [TxtListIndentation](https://reference.aspose.com/words/python-net/aspose.words.saving/txtlistindentation/) Класс, который позволяет указать, как уровни списка изгибаются при экспорте в простой текстовый формат. Во время работы с [TxtSaveOption](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/), тот [list_indentation](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/list_indentation/) Предоставляется свойство для указания символа, который будет использоваться для индентирования уровней списка, и подсчета, определяющего, сколько символов использовать в качестве отступов на один уровень списка. Значение по умолчанию для свойства символа "0", что указывает на отсутствие отступов. Для подсчета свойств значение по умолчанию составляет 0, что означает отсутствие отступов.

### Использование Tab Character

Следующий пример кода показывает, как экспортировать уровни списка с использованием символов вкладки:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_txt_save_options-UseTabCharacterPerLevelForListIndentation.py" >}}

### Использование Space Character

Следующий пример кода показывает, как экспортировать уровни списка с использованием символов пространства:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_txt_save_options-UseSpaceCharacterPerLevelForListIndentation.py" >}}

