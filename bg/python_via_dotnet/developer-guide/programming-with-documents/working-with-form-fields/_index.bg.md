---
title: Работа с форма полета в Python
second_title: Aspose.Words вместо Python via .NET
articleTitle: Работа с полета за форма
linktitle: Работа с полета за форма
description: "Вмъкване, получаване или форматиране на полето на формата в документ, като се използва Python."
type: docs
weight: 380
url: /bg/python-net/working-with-form-fields/
timestamp: 2024-01-27-14-07-04
---

Документ, който съдържа бланки за попълване (полета) е известен като формуляр. Например, можете да създадете регистрационен формуляр в Microsoft Word който използва падащи списъци, от които потребителите могат да избират записи. На `Form` поле е място, където се съхранява определен тип данни, като например име или адрес. Формиране на полета в Microsoft Word включва текстов вход, комбокса и чекова кутия.

Можете да използвате форма полета във вашия проект за "комуникиране" с вашите потребители. Например, създавате документ, чието съдържание е защитено, но само полетата с форма могат да бъдат редактирани. Потребителите могат да въвеждат данните във форма полета и да представят документа. Вашата молба, която използвате Aspose.Words може да извлича данни от полетата на формата и да ги обработва.

Поставянето на полета с форма в документа чрез код е лесно. [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) има специални методи за поставянето им, по един за всеки вид поле. Всеки от методите приема низов параметър, представляващ името на полето на формата. Името може да бъде празен низ. Ако обаче посочите име за полето на формата, тогава отметките автоматично се създават със същото име.

## Вмъкване на полета с форма

Полета за форма са конкретен случай на Word полета, които позволяват "вмешателство" с потребителя. Формиране на полета в Microsoft Word включва текстова кутия, комбинирана кутия и чекова кутия.

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) предоставя специални методи за вмъкване на всеки вид поле на формата в документа: [insert_text_input](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_text_input/), [insert_check_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_check_box/), както и [insert_combo_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_combo_box/). Имайте предвид, че ако посочите име за полето на формата, тогава отметките автоматично се създават със същото име.

Следният пример за код показва как да се вмъкне полето на комбобокс във форма в документ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-InsertFormFields.py" >}}

### Вмъкване на текстов вход

Използвайте [insert_text_input](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_text_input/) метод за въвеждане на текстова кутия в документа.

Следният пример с код показва как да се вмъкне поле с текстова форма в документ:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", "Hello", 0)
        
doc.save(docs_base.artifacts_dir + "WorkingWithFormFields.document_builder_insert_text_input_form_field.docx")
{{< /highlight >}}

### Вмъкване на отметка

Обаждане [insert_check_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_check_box/) да поставите отметка в документа.

Следният пример за код показва как да се постави поле за форма на отметка в документ:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_check_box("CheckBox", True, True, 0)
        
doc.save(docs_base.artifacts_dir + "WorkingWithFormFields.document_builder_insert_check_box_form_field.docx")
{{< /highlight >}}

### Вмъкване на Combo Box

Обаждане [insert_combo_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_combo_box/) да поставите Combobox в документа.

Следният пример за код показва как да се въведе поле за формуляр Combobox в документ:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

items =  ["One", "Two", "Three"] 
builder.insert_combo_box("DropDown", items, 0)

doc.save(docs_base.artifacts_dir + "WorkingWithFormFields.document_builder_insert_combo_box_form_field.docx")
{{< /highlight >}}

## Получете полета с форма

Колекция от полета с форми се представя от [FormFieldCollection](https://reference.aspose.com/words/python-net/aspose.words.fields/formfieldcollection/) клас, който може да се извлече чрез [form_fields](https://reference.aspose.com/words/python-net/aspose.words/range/form_fields/) собственост. Това означава, че можете да получите полета във форма, съдържащи се във всеки документ възел, включително самия документ.

{{% alert color="primary" %}}

Можете да изтеглите примерния файл на следните примери от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Form%20fields.docx).

{{% /alert %}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsGetFormFieldsCollection.py" >}}

Можете да получите определена форма поле по индекс или име.

Следният пример за код показва как да получите достъп до полетата:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsGetByName.py" >}}

На [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) имоти ви позволяват да работите с форма поле име, тип и резултат.

Следният пример с код показва как да се работи с името на полето, вида и резултата:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsWorkWithProperties.py" >}}

## Формиране на полета

На [font](https://reference.aspose.com/words/python-net/aspose.words/inline/font/) на [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) позволява прилагането на форматиране на шрифта към [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) като цяло, включително стойността на полето.

Следният пример с код показва как да се приложи форматиране на шрифта към **FormField**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsFontFormatting.py" >}}
