---
title: Работа с полями формы в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Работа с полями форм
linktitle: Работа с полями форм
description: "Вставить, получить или форматировать поле формы в документе, используя Python."
type: docs
weight: 380
url: /ru/python-net/working-with-form-fields/
timestamp: 2024-01-27-14-07-04
---

Документ, содержащий заполненные бланки (поля), называется формой. Например, можно создать регистрационную форму в Microsoft Word использует выпадающие списки, из которых пользователи могут выбирать записи. The `Form` Поле - это место, где хранится определенный тип данных, таких как имя или адрес. Форма поля в Microsoft Word Включает в себя текстовый ввод, комбокс и чекбокс.

Вы можете использовать поля формы в вашем проекте, чтобы "общаться" с вашими пользователями. Например, вы создаете документ, содержание которого защищено, но редактируются только поля форм. Пользователи могут ввести данные в поля формы и представить документ. Ваше приложение, которое использует Aspose.Words Он может извлекать данные из полей форм и обрабатывать их.

Размещение полей формы в документе с помощью кода легко. [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) Имеет специальные способы их вставки, по одному для каждого типа поля формы. Каждый из методов принимает параметр строки, представляющий имя поля формы. Название может быть пустой строкой. Если, однако, вы указываете имя поля формы, закладка автоматически создается с тем же именем.

## Вставка полей формы

Поля Формы - это особый случай полей Word, который позволяет "взаимодействовать" с пользователем. Форма поля в Microsoft Word К ним относятся текстовый ящик, комбо-бокс и чекбокс.

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) Предусмотрены специальные методы включения каждого вида поля формы в документ: [insert_text_input](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_text_input/), [insert_check_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_check_box/), и [insert_combo_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_combo_box/). Обратите внимание, что если указать имя поля формы, то закладка автоматически создается с таким же названием.

Следующий пример кода показывает, как вставить поле формы комбобокса в документ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-InsertFormFields.py" >}}

### Включить ввод текста

Используйте [insert_text_input](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_text_input/) Способ вставки текстового ящика в документ.

Следующий пример кода показывает, как вставить поле формы ввода текста в документ:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", "Hello", 0)
        
doc.save(docs_base.artifacts_dir + "WorkingWithFormFields.document_builder_insert_text_input_form_field.docx")
{{< /highlight >}}

### Вставьте галочку

Звони. [insert_check_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_check_box/) Вставить в документ чекбокс.

Следующий пример кода показывает, как вставить поле формы флажка в документ:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_check_box("CheckBox", True, True, 0)
        
doc.save(docs_base.artifacts_dir + "WorkingWithFormFields.document_builder_insert_check_box_form_field.docx")
{{< /highlight >}}

### Вставьте комбо-бокс

Звони. [insert_combo_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_combo_box/) Вставить в документ комбобокс.

Следующий пример кода показывает, как вставить поле формы Combobox в документ:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

items =  ["One", "Two", "Three"] 
builder.insert_combo_box("DropDown", items, 0)

doc.save(docs_base.artifacts_dir + "WorkingWithFormFields.document_builder_insert_combo_box_form_field.docx")
{{< /highlight >}}

## Получить поля формы

Коллекция полей форм представлена [FormFieldCollection](https://reference.aspose.com/words/python-net/aspose.words.fields/formfieldcollection/) класс, который можно восстановить с помощью [form_fields](https://reference.aspose.com/words/python-net/aspose.words/range/form_fields/) собственность. Это означает, что вы можете получить поля формы, содержащиеся в любом узле документа, включая сам документ.

{{% alert color="primary" %}}

Вы можете скачать образец файла следующих примеров из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Form%20fields.docx).

{{% /alert %}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsGetFormFieldsCollection.py" >}}

Вы можете получить определенное поле формы по его индексу или названию.

Следующий пример кода показывает, как получить доступ к полям форм:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsGetByName.py" >}}

The [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) Свойства позволяют работать с именем поля формы, типом и результатом.

Следующий пример кода показывает, как работать с именем поля формы, типом и результатом:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsWorkWithProperties.py" >}}

## Форма формата поля

The [font](https://reference.aspose.com/words/python-net/aspose.words/inline/font/) имущество [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) позволяет применять форматирование шрифтов к [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) В целом, включая стоимость поля.

Следующий пример кода показывает, как применять форматирование шрифта к **FormField**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsFontFormatting.py" >}}
