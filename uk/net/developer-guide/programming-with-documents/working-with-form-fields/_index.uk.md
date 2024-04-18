---
title: Робота з формовими полями в C#
second_title: Aspose.Words для .NET
articleTitle: Робота з полями форм
linktitle: Робота з полями форм
description: "Розуміння функцій формових полів, що працюють з формовими полями, використовуючи C#й"
type: docs
weight: 380
url: /uk/net/working-with-form-fields/
---

Документ, який містить заготовки наповнювача (польів) відомий як форму. Наприклад, ви можете створити реєстраційну форму в Microsoft Word Користувачі можуть вибрати записи. Про нас `Form` поле є розташуванням, де зберігається окремий тип даних, таких як назва або адреса. Форма поля Microsoft Word включає в себе текстовий вхід, комбобокс і прапорець.

Ви можете використовувати поля форми у вашому проекті для "комунікації" з вашими користувачами. Наприклад, ви створюєте документ, вміст якого захищений, але тільки поля форми редагуються. Користувачі можуть ввести дані у вигляді полів і подати документ. Ваше додаток, яке використовує Aspose.Words може отримувати дані з полів форми та обробляти її.

Розміщення форм полів у документ за допомогою коду легко. [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) має спеціальні методи для вставки їх, для кожного виду форми. Кожен з методів приймає параметр рядка, що представляє назву поля форми. Назва може бути порожнім рядком. Якщо ви вказали ім'я для поля форми, то закладок автоматично створюється з такою назвою.

## Вставити поля форми

Форма поля – це окремий випадок полів Word, що дозволяє "інтеркція" користувачеві. Форма поля Microsoft Word включає в себе текстову скриньку, комбобокс і прапорець.

**DocumentBuilder** надає спеціальні методи вставки кожного виду поля у документ: [InsertTextInput](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserttextinput/) й [InsertCheckBox](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertcheckbox/), і [InsertComboBox](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertcombobox/)й Зверніть увагу, що якщо вказати ім'я для поля форми, то закладку автоматично створюється з такою назвою.

Приклад коду показує, як вставити поле форму комбобокса в документ:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-InsertFormFields-InsertFormFields.cs" >}}

### Вставте текст Вхід

Використання **InsertTextInput** метод вставки текстової скриньки в документ.

Приклад наступного коду показує, як вставити поле форми тексту в документ:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertTextInputFormField.cs" >}}

### Вставте прапорець

Дзякуй **InsertCheckBox** вставити прапорець в документ.

Приклад коду показує, як вставити поле форми прапорця в документ:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertCheckBoxFormField.cs" >}}

### Вставте комбо Box

Дзякуй **InsertComboBox** вставити комбобокс в документ.

Приклад коду показує, як вставити поле форми комбобокса в документ:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertComboBoxFormField.cs" >}}

## Зберігати поля форми

Збір полів форми представлений [FormFieldCollection](https://reference.aspose.com/words/net/aspose.words.fields/formfieldcollection/) клас, який можна отримати за допомогою [FormFields](https://reference.aspose.com/words/net/aspose.words/range/formfields/) майно. Це означає, що ви можете отримати поля, що містяться в будь-якому документі, в тому числі сам документ.

{{% alert color="primary" %}}

Ви можете завантажити файл зразок з наступних прикладів [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Form%20fields.docx)й

{{% /alert %}}

Приклад коду показує, як отримати збірку форм полів:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.cs" >}}

Ви можете отримати конкретне поле форми за індексом або назвою.

Приклад коду показує, як використовувати поля:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsGetByName-FormFieldsGetByName.cs" >}}

Про нас **FormField** властивості дозволяють працювати з іменем поля, типом та результатом.

Приклад коду показує, як працювати з ім'ям поля, типом та результатом:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.cs" >}}

## Формат форми поля

Про нас [Font](https://reference.aspose.com/words/net/aspose.words/inline/font/) нерухомість [FormField](https://reference.aspose.com/words/net/aspose.words.fields/formfield/) дозволяє застосувати форматування шрифту до **FormField** в цілому, включаючи значення поля.

Приклад наступного коду показує, як застосувати форматування шрифтів до **FormField**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsFontFormatting-FormFieldsFontFormatting.cs" >}}
