---
title: Работа с форма полета в Java
second_title: Aspose.Words вместо Java
articleTitle: Работа с форма полета
linktitle: Работа с форма полета
description: "Схващане на функцията Form Fields, работа с Form Fields използване Java."
type: docs
weight: 380
url: /bg/java/working-with-form-fields/
---

Документ, който съдържа празноти (полета) е известен като формуляр. Например, можете да създадете регистрационен формуляр в Microsoft Word който използва падащи списъци, от които потребителите могат да избират записи. На `Form` поле е място, където се съхранява определен тип данни, като име или адрес. Формиране на полета в Microsoft Word включва текстов вход, комбокса и чекова кутия.

Можете да използвате форма полета във вашия проект за "комуникиране" с вашите потребители. Например, създавате документ, чието съдържание е защитено, но само полетата за форма могат да бъдат редактирани. Потребителите могат да въвеждат данните във форма полета и да представят документа. Вашата молба, която използвате Aspose.Words може да извлича данни от полетата на формата и да ги обработва.

Поставянето на полета с форма в документа чрез код е лесно. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) има специални методи за вмъкване, по един за всеки тип форма поле. Всеки от методите приема низов параметър, представляващ името на полето на формата. Името може да бъде празен низ. Ако обаче посочите име за полето на формата, тогава отметките автоматично се създават със същото име.

## Вмъкване на полета с форма

Полета за форма са конкретен случай на Word полета, които позволяват "вмешателство" с потребителя. Формиране на полета в Microsoft Word включва текстова кутия, комбинирана кутия и чекова кутия.

**DocumentBuilder** предоставя специални методи за вмъкване на всеки тип форма в документа: [insertTextInput](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-boolean-int), [insertCheckBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-boolean-int) или [insertComboBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-int).

Следният пример за код показва как да вмъкнете полето на комбобокс във форма в документ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertFormFields-InsertFormFields.java" >}}

### Вмъкване на текстов вход

Използвайте **вмъкване Текст** метод за въвеждане на текстова кутия в документа.

Следният пример с код показва как да се въведе поле с текстова форма в документ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTextInputFormField-DocumentBuilderInsertTextInputFormField.java" >}}

### Вмъкване на отметка

Обаждане **вложка CheckBox** да поставите отметка в документа.

Следният пример за код показва как да се въведе поле за форма на отметка в документ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertCheckBoxFormField-DocumentBuilderInsertCheckBoxFormField.java" >}}

### Вмъкване на Combo Box

Обаждане **вмъкванеComboBox** да вмъкнете комбобокс в документа.

Следният пример за код показва как да вмъкнете поле за формуляр Combobox в документ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertComboBoxFormField-DocumentBuilderInsertComboBoxFormField.java" >}}

## Получаване на полета с форма

Колекция от полета с форми е представена от [FormFieldCollection](https://reference.aspose.com/words/java/com.aspose.words/formfieldcollection/) клас, който може да бъде изтеглен с помощта на [Range.getFormFields](https://reference.aspose.com/words/java/com.aspose.words/range/#getFormFields) собственост. Това означава, че можете да получите полета форма, съдържащи се във всеки документ възел, включително самия документ.

Следният пример за код показва как да получите събиране на полета форма:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.java" >}}

{{% alert color="primary" %}}

Можете да изтеглите примерния файл на следните примери от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Form%20fields.docx).

{{% /alert %}}

Можете да получите определена форма поле по индекс или име.

Следният пример за код показва как да получите достъп до полета:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsGetByName-FormFieldsGetByName.java" >}}

На **FormField** имоти ви позволяват да работите с форма поле име, тип и резултат.

Следният пример за код показва как да работите с името на полето, вида и резултата:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.java" >}}
