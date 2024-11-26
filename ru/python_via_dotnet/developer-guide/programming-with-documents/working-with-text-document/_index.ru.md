---
title: Работа с текстовым документом
second_title: Aspose.Words для Python via .NET
articleTitle: Работа с текстовым документом
linktitle: Работа с текстовым документом
description: "Работайте с текстовым документом и изменяйте его объекты, используя Python."
type: docs
weight: 430
url: /ru/python-net/working-with-text-document/
timestamp: 2024-01-27-14-07-04
---

В этой статье мы узнаем, какие опции могут быть полезны для работы с текстовым документом через Aspose.Words. Пожалуйста, обратите внимание, что это не полный список доступных опций, а лишь пример работы с некоторыми из них.

## Добавление двунаправленных меток

Вы можете использовать свойство [add_bidi_marks](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/add_bidi_marks/), чтобы указать, следует ли добавлять двунаправленные метки перед каждым запуском BiDi при экспорте в обычный текстовый формат. Aspose.Words вставляет символ Юникода 'RIGHT-TO-LEFT MARK' (U+200F) перед каждым двунаправленным символом [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) в тексте. Эта опция соответствует опции "Добавить двунаправленные метки" в диалоге преобразования файлов MS Word при экспорте в обычный текстовый формат. Обратите внимание, что она отображается в диалоге только в том случае, если в MS Word добавлен какой-либо из языков редактирования - арабский или иврит.

В следующем примере кода показано, как использовать свойство [add_bidi_marks](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/add_bidi_marks/). Значение этого свойства по умолчанию равно `False`:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_txt_save_options-AddBidiMarks.py" >}}

## Распознавать элементы Списка Во время Загрузки TXT

Aspose.Words может импортировать элементы списка из текстового файла в виде списковых номеров или обычного текста в свою объектную модель документа. Свойство [detect_numbering_with_whitespaces](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/detect_numbering_with_whitespaces/) позволяет указать способ распознавания элементов нумерованного списка при импорте документа из обычного текстового формата:

* Если для этого параметра установлено значение `True`, пробелы также используются в качестве разделителей номеров списков: алгоритм распознавания списков для нумерации в арабском стиле (1., 1.1.2.) использует как пробелы, так и точки (".").
* Если для этой опции установлено значение `False`, алгоритм распознавания списков распознает абзацы списка, когда номера списка заканчиваются точкой, правой скобкой или маркером (например, "•", "*", "-" или "o").

В следующем примере кода показано, как использовать это свойство:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_txt_load_options-DetectNumberingWithWhitespaces.py" >}}

## Обрабатывать начальные и конечные пробелы во время загрузки TXT

Вы можете управлять способом обработки начальных и конечных пробелов во время загрузки файла TXT. Начальные пробелы могут быть обрезаны, сохранены или преобразованы в отступ, а конечные пробелы могут быть обрезаны или сохранены.

В следующем примере кода показано, как обрезать начальные и конечные пробелы при импорте файла TXT:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_txt_load_options-HandleSpacesOptions.py" >}}

## Определение направления текста документа

Aspose.Words предоставляет свойство [document_direction](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/document_direction/) в классе [TxtLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/) для определения направления текста (RTL / LTR) в документе. Это свойство задает или возвращает направление текста документа, указанное в перечислении [DocumentDirection](https://reference.aspose.com/words/python-net/aspose.words.loading/documentdirection/). Значение по умолчанию - слева направо.

В следующем примере кода показано, как определить направление текста документа при импорте файла TXT:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_txt_load_options-DocumentTextDirection.py" >}}

## Экспортируйте верхний и нижний колонтитулы в выходные данные TXT

Если вы хотите экспортировать верхний и нижний колонтитулы в выходной документ TXT, вы можете использовать свойство [export_headers_footers_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptionsbase/export_headers_footers_mode/). Это свойство определяет способ экспорта верхних и нижних колонтитулов в обычный текстовый формат.

В следующем примере кода показано, как экспортировать верхние и нижние колонтитулы в обычный текстовый формат:

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

## Отступ для списка экспорта в выходных данных TXT

Aspose.Words введен класс [TxtListIndentation](https://reference.aspose.com/words/python-net/aspose.words.saving/txtlistindentation/), который позволяет указывать отступы для уровней списка при экспорте в обычный текстовый формат. При работе с [TxtSaveOption](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/) свойство [list_indentation](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/list_indentation/) используется для указания символа, который будет использоваться для отступов на уровнях списка, и для определения количества символов, которые будут использоваться в качестве отступа на одном уровне списка. Значение свойства character по умолчанию равно '\0', что указывает на отсутствие отступа. Для свойства count значение по умолчанию равно 0, что означает отсутствие отступов.

### Использование символа табуляции

В следующем примере кода показано, как экспортировать уровни списка с использованием символов табуляции:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_txt_save_options-UseTabCharacterPerLevelForListIndentation.py" >}}

### Использование символа пробела

В следующем примере кода показано, как экспортировать уровни списка с использованием пробелов:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_txt_save_options-UseSpaceCharacterPerLevelForListIndentation.py" >}}

