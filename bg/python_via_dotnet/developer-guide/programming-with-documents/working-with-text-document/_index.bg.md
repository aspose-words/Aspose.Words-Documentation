---
title: Работа с текстов документ
second_title: Aspose.Words вместо Python via .NET
articleTitle: Работа с текстов документ
linktitle: Работа с текстов документ
description: "Работа с текстов документ и промяна на неговите обекти, използвайки Python."
type: docs
weight: 430
url: /bg/python-net/working-with-text-document/
timestamp: 2024-01-27-14-07-04
---

В тази статия ще научим какви опции могат да бъдат полезни за работа с текстов документ чрез Aspose.Words. Моля, имайте предвид, че това не е пълен списък с налични опции, а само пример за работа с някои от тях.

## Добавяне на двуредов Маркировки

Можеш да използваш [add_bidi_marks](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/add_bidi_marks/) собственост, за да се уточни дали да се добавят двупосочни знаци преди всяко Bidi да се стартира при износ в обикновен текстов формат. Aspose.Words вмъква Unicode Character 'RIGHT-TO-LEFT MARK' (U+200F) преди всеки двупосочен [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) в текста. Тази опция съответства на опцията "Добави двупосочни марки" в диалог за преобразуване на файлове в MS Word, когато експортираш в обикновен текстов формат. Обърнете внимание, че тя се появява в диалога само ако някой от арабските или еврейските езици за редактиране е добавен в MS Word.

Следният пример с код показва как да използвате [add_bidi_marks](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/add_bidi_marks/) собственост. По подразбиране стойността на този имот е `False`:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_txt_save_options-AddBidiMarks.py" >}}

## Разпознаване на елементи от списъка при зареждане TXT

Aspose.Words може да импортира елемент от списъка на текстов файл като номера на списък или обикновен текст в неговия документ обект модел. На [detect_numbering_with_whitespaces](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/detect_numbering_with_whitespaces/) Имотът позволява да се посочи как се разпознават номерирани елементи от списъка при внос на документ от обикновен текстов формат:

* Ако е зададена тази опция `True`, whitespaces се използват и като разделители на номера: алгоритъм за разпознаване на списък за номериране на арабски стил (1., 1.1.2.) използва както бели пространства, така и точки (".") символи.
* Ако е зададена тази опция `False`, списък на алгоритмите за признаване открива списък параграфи, когато номерата завършват с точка, дясна скоба или символи на куршум (като например "•," "*," "-" или "o").

Следният пример за код показва как да използвате това свойство:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_txt_load_options-DetectNumberingWithWhitespaces.py" >}}

## Дръжки Водещи и накланящи помещения по време на товарене TXT

Можете да контролирате начина на работа с водещи и следящи пространства по време на зареждане на TXT файл. Водещите пространства могат да бъдат подстригани, консервирани или преобразувани в вдлъбнатини и трасиращи пространства могат да бъдат подрязани или запазени.

Следният пример за код показва как да отрежете водещите и проследяващи пространства, докато внасяте TXT файл:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_txt_load_options-HandleSpacesOptions.py" >}}

## Откриване на документ Посока на текста

Aspose.Words осигурява [document_direction](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/document_direction/) собственост в [TxtLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/) клас за откриване на посоката на текста (RTL/LTR) в документа. Това свойство определя или получава документ текстови указания, предоставени в [DocumentDirection](https://reference.aspose.com/words/python-net/aspose.words.loading/documentdirection/) Изброяване. По подразбиране стойността е отляво надясно.

Следният пример за код показва как да се открие текстовата посока на документа при вноса на TXT файл:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_txt_load_options-DocumentTextDirection.py" >}}

## Export Header and Footer in Output TXT

Ако искате да експортирате заглавната част и подножието в изходния TXT документ, можете да използвате [export_headers_footers_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptionsbase/export_headers_footers_mode/) собственост. Този имот определя начина, по който заглавните части и стъпалата се изнасят в обикновения текстов формат.

Следният пример за код показва как да се експортират заглавни части и подножици в обикновен текстов формат:

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

## Идентифициране на списъка за експортиране в изход TXT

Aspose.Words въведени [TxtListIndentation](https://reference.aspose.com/words/python-net/aspose.words.saving/txtlistindentation/) клас, който позволява да се посочи как се открояват нивата на списъка при износ в обикновен текстов формат. Докато работите с [TxtSaveOption](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/), на [list_indentation](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/list_indentation/) Имотът се предоставя, за да се определи символът, който трябва да се използва за нивата на списъка с вдлъбнатини и да се брои, като се посочи колко знака да се използват като вдлъбнатина на ниво списък. Стойността по подразбиране за символното свойство е '\ 0', което показва, че няма вдлъбнатина. За свойството на преброяването стойността по подразбиране е 0, което означава, че няма вдлъбнатина.

### Използване на знака на подпрозореца

Следният пример за код показва как да се експортират нива на списъка с помощта на таб символи:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_txt_save_options-UseTabCharacterPerLevelForListIndentation.py" >}}

### Използване на космически символ

Следният пример за код показва как да се експортират нива на списъка с използване на космически знаци:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_txt_save_options-UseSpaceCharacterPerLevelForListIndentation.py" >}}

