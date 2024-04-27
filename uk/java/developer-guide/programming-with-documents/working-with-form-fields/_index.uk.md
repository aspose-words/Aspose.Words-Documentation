---
title: Робота з формовими полями в Java
second_title: Aspose.Words для Java
articleTitle: Робота з полями форм
linktitle: Робота з полями форм
description: "Розуміння функцій формових полів, що працюють з полеми форми, використовуючи Javaй"
type: docs
weight: 380
url: /uk/java/working-with-form-fields/
---

Документ, який містить заготовки наповнювачів (полів) відомий як форму. Наприклад, ви можете створити реєстраційну форму в Microsoft Word Користувачі можуть вибрати записи. Про нас `Form` поле є розташуванням, де зберігається окремий тип даних, таких як назва або адреса. Форма поля Microsoft Word включає в себе текстовий вхід, комбобокс і прапорець.

Ви можете використовувати поля форми у вашому проекті для "комунікації" з вашими користувачами. Наприклад, ви створюєте документ, вміст якого захищений, але тільки поля форми редагуються. Користувачі можуть ввести дані у вигляді полів і подати документ. Ваше додаток, яке використовує Aspose.Words може отримувати дані з полів форми та обробляти її.

Розміщення полів форми в документі за допомогою коду легко. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) має спеціальні методи для вставки їх, один для кожного виду поля. Кожен з методів приймає параметр рядка, що представляє назву поля форми. Назва може бути порожнім рядком. Якщо ви вказали ім'я для поля форми, то закладок автоматично створюється з такою назвою.

## Вставити поля форми

Форма поля – це окремий випадок полів Word, що дозволяє "інтеркція" користувачеві. Форма поля Microsoft Word включають в себе текстову скриньку, комбобокс і прапорець.

**DocumentBuilder** забезпечує спеціальні методи вставки кожного типу поля форми в документ: [insertTextInput](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-boolean-int), [insertCheckBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-boolean-int) або [insertComboBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-int)й

Приклад коду показує, як вставити поле форми combobox в документ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertFormFields-InsertFormFields.java" >}}

### Вставте текст Вхід

Використання **Увійти Вхід** спосіб вставити текстову скриньку в документ.

Приклад наступного коду показує, як вставити поле форми тексту в документ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTextInputFormField-DocumentBuilderInsertTextInputFormField.java" >}}

### Вставте прапорець

Дзякуй **вставкаCheckBox** вставити прапорець в документ.

Приклад коду показує, як вставити поле форми прапорця в документ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertCheckBoxFormField-DocumentBuilderInsertCheckBoxFormField.java" >}}

### Вставте комбо Box

Дзякуй **УвійтиComboBox** вставити комбобокс в документ.

Приклад коду показує, як вставити поле форми Combobox в документ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertComboBoxFormField-DocumentBuilderInsertComboBoxFormField.java" >}}

## Зберігати поля форми

Збір полів форми представлений [FormFieldCollection](https://reference.aspose.com/words/java/com.aspose.words/formfieldcollection/) клас, який можна отримати за допомогою [Range.getFormFields](https://reference.aspose.com/words/java/com.aspose.words/range/#getFormFields) майно. Це означає, що ви можете отримати поля, що містяться в будь-якому документі, в тому числі сам документ.

Приклад коду показує, як отримати колекцію бланків форми:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.java" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл зразок з наступних прикладів [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Form%20fields.docx)й

{{% /alert %}}

Ви можете отримати конкретне поле форми за індексом або назвою.

Приклад коду показує, як використовувати поля для доступу:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsGetByName-FormFieldsGetByName.java" >}}

Про нас **FormField** властивості дозволяють працювати з назвою поля, типом та результатом.

Приклад коду показує, як працювати з назвою поля, типом та результатом:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.java" >}}
