---
title: Робота з формовими полями в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Робота з полями форм
linktitle: Робота з полями форм
description: "Вставити, отримати або форматувати поле форми в документі за допомогою Pythonй"
type: docs
weight: 380
url: /uk/python-net/working-with-form-fields/
timestamp: 2024-01-27-14-07-04
---

Документ, який містить заготовки наповнювача (польів) відомий як форму. Наприклад, ви можете створити реєстраційну форму в Microsoft Word Користувачі можуть вибрати записи. Про нас `Form` поле є розташуванням, де зберігається окремий тип даних, таких як назва або адреса. Форма поля Microsoft Word включає в себе текстовий вхід, комбобокс і прапорець.

Ви можете використовувати поля форми у вашому проекті для "комунікації" з вашими користувачами. Наприклад, ви створюєте документ, вміст якого захищений, але тільки поля форми редагуються. Користувачі можуть ввести дані у вигляді полів і подати документ. Ваше додаток, яке використовує Aspose.Words може отримувати дані з полів форми та обробляти її.

Розміщення форм полів у документ за допомогою коду легко. [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) має спеціальні методи для вставки їх, для кожного виду форми. Кожен з методів приймає параметр рядка, що представляє назву поля форми. Назва може бути порожнім рядком. Якщо ви вказали ім'я для поля форми, то закладок автоматично створюється з такою назвою.

## Вставки формові поля

Форма поля – це окремий випадок полів Word, що дозволяє "інтеркція" користувачеві. Форма поля Microsoft Word включає в себе текстову скриньку, комбобокс і прапорець.

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) надає спеціальні методи вставки кожного виду поля у документ: [insert_text_input](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_text_input/), [insert_check_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_check_box/), і [insert_combo_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_combo_box/)й Зверніть увагу, що якщо вказати ім'я для поля форми, то закладку автоматично створюється з такою назвою.

Приклад коду показує, як вставити поле форму комбобокса в документ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-InsertFormFields.py" >}}

### Вставте текст Вхід

Використання [insert_text_input](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_text_input/) метод вставки текстової скриньки в документ.

Приклад наступного коду показує, як вставити поле форми тексту в документ:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", "Hello", 0)
        
doc.save(docs_base.artifacts_dir + "WorkingWithFormFields.document_builder_insert_text_input_form_field.docx")
{{< /highlight >}}

### Вставте прапорець

Дзякуй [insert_check_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_check_box/) вставити прапорець в документ.

Приклад коду показує, як вставити поле форми прапорця в документ:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_check_box("CheckBox", True, True, 0)
        
doc.save(docs_base.artifacts_dir + "WorkingWithFormFields.document_builder_insert_check_box_form_field.docx")
{{< /highlight >}}

### Вставте комбо Box

Дзякуй [insert_combo_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_combo_box/) вставити Combobox в документ.

Приклад коду показує, як вставити поле форми комбобокса в документ:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

items =  ["One", "Two", "Three"] 
builder.insert_combo_box("DropDown", items, 0)

doc.save(docs_base.artifacts_dir + "WorkingWithFormFields.document_builder_insert_combo_box_form_field.docx")
{{< /highlight >}}

## Зберігати поля форми

Збір полів форми представлений [FormFieldCollection](https://reference.aspose.com/words/python-net/aspose.words.fields/formfieldcollection/) клас, який можна отримати за допомогою [form_fields](https://reference.aspose.com/words/python-net/aspose.words/range/form_fields/) майно. Це означає, що ви можете отримати поля, що містяться в будь-якому документі, в тому числі сам документ.

{{% alert color="primary" %}}

Ви можете завантажити файл зразок з наступних прикладів [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Form%20fields.docx)й

{{% /alert %}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsGetFormFieldsCollection.py" >}}

Ви можете отримати конкретне поле форми за індексом або назвою.

Приклад коду показує, як використовувати поля:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsGetByName.py" >}}

Про нас [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) властивості дозволяють працювати з іменем поля, типом та результатом.

Приклад коду показує, як працювати з ім'ям поля, типом та результатом:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsWorkWithProperties.py" >}}

## Формат форми поля

Про нас [font](https://reference.aspose.com/words/python-net/aspose.words/inline/font/) нерухомість [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) дозволяє застосувати форматування шрифту до [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) в цілому, включаючи значення поля.

Приклад наступного коду показує, як застосувати форматування шрифтів до **FormField**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsFontFormatting.py" >}}
