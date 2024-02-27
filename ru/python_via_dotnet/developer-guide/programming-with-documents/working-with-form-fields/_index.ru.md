---
title: Работа с полями формы в Python
second_title: Aspose.Words за Python via .NET
articleTitle: Работа с полями формы
linktitle: Работа с полями формы
description: "Вставьте, получите или отформатируйте поле формы в документе, используя Python."
type: docs
weight: 380
url: /ru/python-net/working-with-form-fields/
---

Документ, содержащий пустые поля (поля), называется формой. Например, вы можете создать регистрационную форму в Microsoft Word, в которой используются раскрывающиеся списки, из которых пользователи могут выбирать записи. Поле `Form` — это место, где хранятся данные определенного типа, например имя или адрес. Поля формы в Microsoft Word включают ввод текста, поле со списком и флажок.

Вы можете использовать поля формы в своем проекте для "общения" с вашими пользователями. Например, вы создаете документ, содержимое которого защищено, но редактировать можно только поля формы. Пользователи могут ввести данные в поля формы и отправить документ. Ваше приложение, использующее Aspose.Words, может извлекать данные из полей формы и обрабатывать их.

Разместить поля формы в документе с помощью кода очень просто. [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) имеет специальные методы для их вставки, по одному для каждого типа поля формы. Каждый из методов принимает строковый параметр, представляющий имя поля формы. Имя может быть пустой строкой. Однако если вы укажете имя для поля формы, то автоматически создастся закладка с тем же именем.

## Вставка полей формы

Поля формы — это частный случай полей Word, который позволяет "взаимодействовать" с пользователем. Поля формы в Microsoft Word включают текстовое поле, поле со списком и флажок.

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) предоставляет специальные методы для вставки в документ полей формы каждого типа: [insert_text_input](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_text_input/), [insert_check_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_check_box/) и [insert_combo_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_combo_box/). Обратите внимание: если вы укажете имя для поля формы, то автоматически создастся закладка с тем же именем.

В следующем примере кода показано, как вставить поле формы со списком в документ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-InsertFormFields.py" >}}

### Вставка текстового ввода

Используйте метод [insert_text_input](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_text_input/), чтобы вставить текстовое поле в документ.

В следующем примере кода показано, как вставить поле формы ввода текста в документ:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", "Hello", 0)
        
doc.save(docs_base.artifacts_dir + "WorkingWithFormFields.document_builder_insert_text_input_form_field.docx")
{{< /highlight >}}

### Вставьте флажок

Позвоните по номеру [insert_check_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_check_box/), чтобы вставить флажок в документ.

В следующем примере кода показано, как вставить поле формы флажка в документ:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_check_box("CheckBox", True, True, 0)
        
doc.save(docs_base.artifacts_dir + "WorkingWithFormFields.document_builder_insert_check_box_form_field.docx")
{{< /highlight >}}

### Вставить поле со списком

Позвоните по номеру [insert_combo_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_combo_box/), чтобы вставить в документ поле со списком.

В следующем примере кода показано, как вставить поле формы Combobox в документ:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

items =  ["One", "Two", "Three"] 
builder.insert_combo_box("DropDown", items, 0)

doc.save(docs_base.artifacts_dir + "WorkingWithFormFields.document_builder_insert_combo_box_form_field.docx")
{{< /highlight >}}

## Получить поля формы

Коллекция полей формы представлена классом [FormFieldCollection](https://reference.aspose.com/words/python-net/aspose.words.fields/formfieldcollection/), который можно получить с помощью свойства [form_fields](https://reference.aspose.com/words/python-net/aspose.words/range/form_fields/). Это означает, что вы можете получить поля формы, содержащиеся в любом узле документа, включая сам документ.

{{% alert color="primary" %}}

Вы можете скачать образец файла следующих примеров по адресу [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Form%20fields.docx).

{{% /alert %}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsGetFormFieldsCollection.py" >}}

Вы можете получить определенное поле формы по его индексу или имени.

В следующем примере кода показано, как получить доступ к полям формы:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsGetByName.py" >}}

Свойства [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) позволяют работать с именем, типом и результатом поля формы.

В следующем примере кода показано, как работать с именем, типом и результатом поля формы:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsWorkWithProperties.py" >}}

## Форматирование полей формы

Свойство [font](https://reference.aspose.com/words/python-net/aspose.words/inline/font/) объекта [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) позволяет применять форматирование шрифта ко всему [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) в целом, включая значение поля.

В следующем примере кода показано, как применить форматирование шрифта к **FormField**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsFontFormatting.py" >}}
