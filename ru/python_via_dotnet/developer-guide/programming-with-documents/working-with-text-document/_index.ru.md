---
title: Работа с текстовым документом
second_title: Aspose.Words для Python via .NET
articleTitle: Работа с текстовым документом
linktitle: Работа с текстовым документом
description: "Работайте с текстовым документом и изменяйте его объекты, используя Python."
type: docs
weight: 430
url: /ru/python-net/working-with-text-document/
---

В этой статье мы узнаем, какие опции могут пригодиться для работы с текстовым документом через Aspose.Words. Обратите внимание, что это не полный список доступных опций, а лишь пример работы с некоторыми из них.

## Добавьте двунаправленные метки

Вы можете использовать свойство [add_bidi_marks](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/add_bidi_marks/), чтобы указать, следует ли добавлять двунаправленные метки перед каждым запуском двунаправленного текста при экспорте в текстовом формате. Aspose.Words вставляет символ Юникода "ЗНАЧОК СПРАВА НА ЛЕВУ" (U+200F) перед каждым двунаправленным числом [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) в тексте. Эта опция соответствует опции "Добавить двунаправленные метки" в диалоговом окне "Преобразование файлов MS Word" при экспорте в формат обычного текста. Обратите внимание, что он появляется в диалоге только в том случае, если в MS Word добавлен какой-либо арабский или иврит язык редактирования.

В следующем примере кода показано, как использовать свойство [add_bidi_marks](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/add_bidi_marks/). Значение этого свойства по умолчанию — `False`:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_txt_save_options-AddBidiMarks.py" >}}

## Распознавание элементов списка во время загрузки TXT

Aspose.Words может импортировать элемент списка текстового файла в виде номеров списка или обычного текста в свою объектную модель документа. Свойство [detect_numbering_with_whitespaces](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/detect_numbering_with_whitespaces/) позволяет указать, как распознаются нумерованные элементы списка при импорте документа из обычного текстового формата:

* Если для этой опции установлено значение `True`, в качестве разделителей номеров списков также используются пробелы: алгоритм распознавания списков для нумерации в арабском стиле (1., 1.1.2.) использует как пробелы, так и символы точки ("".").
* Если для этой опции установлено значение `False`, алгоритм распознавания списков обнаруживает абзацы списка, если номера списка заканчиваются точкой, правой скобкой или символами маркера (например, "•", "*", "-" или "o").

В следующем примере кода показано, как использовать это свойство:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_txt_load_options-DetectNumberingWithWhitespaces.py" >}}

## Обработка начальных и конечных пробелов во время загрузки TXT

Вы можете контролировать способ обработки начальных и конечных пробелов во время загрузки файла TXT. Ведущие пробелы можно обрезать, сохранить или преобразовать в отступы, а конечные пробелы можно обрезать или сохранить.

В следующем примере кода показано, как обрезать начальные и конечные пробелы при импорте файла TXT:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_txt_load_options-HandleSpacesOptions.py" >}}

## Определить направление текста документа

Aspose.Words предоставляет свойство [document_direction](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/document_direction/) в классе [TxtLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/) для определения направления текста (RTL/LTR) в документе. Это свойство устанавливает или получает направления текста документа, указанные в перечислении [DocumentDirection](https://reference.aspose.com/words/python-net/aspose.words.loading/documentdirection/). Значение по умолчанию — слева направо.

В следующем примере кода показано, как определить направление текста в документе при импорте файла TXT:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_txt_load_options-DocumentTextDirection.py" >}}

## Экспортировать верхний и нижний колонтитулы в выходной TXT

Если вы хотите экспортировать верхний и нижний колонтитулы в выходной документ TXT, вы можете использовать свойство [export_headers_footers_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptionsbase/export_headers_footers_mode/). Это свойство определяет способ экспорта верхних и нижних колонтитулов в текстовый формат.

В следующем примере кода показано, как экспортировать верхние и нижние колонтитулы в текстовый формат:

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

## Отступ списка экспорта в выходном TXT

В версии Aspose.Words представлен класс [TxtListIndentation](https://reference.aspose.com/words/python-net/aspose.words.saving/txtlistindentation/), который позволяет указывать отступы уровней списка при экспорте в текстовый формат. При работе с [TxtSaveOption](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/) предоставляется свойство [list_indentation](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/list_indentation/), позволяющее указать символ, который будет использоваться для отступов на уровнях списка, и количество символов, указывающее, сколько символов использовать в качестве отступа на один уровень списка. Значением по умолчанию для свойства символов является "\0", что указывает на отсутствие отступов. Для свойства count значение по умолчанию — 0, что означает отсутствие отступов.

### Использование символа табуляции

В следующем примере кода показано, как экспортировать уровни списка с помощью символов табуляции:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_txt_save_options-UseTabCharacterPerLevelForListIndentation.py" >}}

### Использование пробела

В следующем примере кода показано, как экспортировать уровни списка с использованием пробелов:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_txt_save_options-UseSpaceCharacterPerLevelForListIndentation.py" >}}

