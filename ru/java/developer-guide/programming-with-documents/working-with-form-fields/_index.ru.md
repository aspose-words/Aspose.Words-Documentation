---
title: Работа с полями формы в Java
second_title: Aspose.Words для Java
articleTitle: Работа с полями форм
linktitle: Работа с полями форм
description: "Понимание особенностей полей форм, работа с полями форм с использованием Java."
type: docs
weight: 380
url: /ru/java/working-with-form-fields/
---

Документ, содержащий заполненные бланки (поля), называется формой. Например, можно создать регистрационную форму в Microsoft Word использует выпадающие списки, из которых пользователи могут выбирать записи. The `Form` Поле - это место, где хранится определенный тип данных, таких как имя или адрес. Форма поля в Microsoft Word Включает в себя текстовый ввод, комбокс и чекбокс.

Вы можете использовать поля формы в вашем проекте, чтобы "общаться" с вашими пользователями. Например, вы создаете документ, содержание которого защищено, но редактируются только поля форм. Пользователи могут ввести данные в поля формы и представить документ. Ваше приложение, которое использует Aspose.Words Он может извлекать данные из полей форм и обрабатывать их.

Размещение полей формы в документе с помощью кода легко. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) Имеет специальные способы их вставки, по одному для каждого типа поля формы. Каждый из методов принимает параметр строки, представляющий имя поля формы. Название может быть пустой строкой. Если, однако, вы указываете имя поля формы, закладка автоматически создается с тем же именем.

## Вставить поля формы

Поля форм представляют собой особый случай полей Word, который позволяет "взаимодействовать" с пользователем. Форма поля в Microsoft Word К ним относятся текстовый ящик, комбо-бокс и чекбокс.

**DocumentBuilder** Предоставляет специальные методы включения каждого вида поля формы в документ: [insertTextInput](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-boolean-int), [insertCheckBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-boolean-int) или [insertComboBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-int).

Следующий пример кода показывает, как вставить поле формы комбобокса в документ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertFormFields-InsertFormFields.java" >}}

### Вставить текстовый вход

Используйте **вставить Текстовый вход** Способ вставки текстового ящика в документ.

Следующий пример кода показывает, как вставить поле формы ввода текста в документ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTextInputFormField-DocumentBuilderInsertTextInputFormField.java" >}}

### Вставьте галочку

Звони. **Вставить Checkbox** Вставить чекбокс в документ.

Следующий пример кода показывает, как вставить поле формы флажка в документ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertCheckBoxFormField-DocumentBuilderInsertCheckBoxFormField.java" >}}

### Вставить коробку Combo

Звони. **вставитьComboBox** Вставить в документ комбобокс.

Следующий пример кода показывает, как вставить поле формы Combobox в документ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertComboBoxFormField-DocumentBuilderInsertComboBoxFormField.java" >}}

## Получить поля формы

Коллекция полей форм представлена [FormFieldCollection](https://reference.aspose.com/words/java/com.aspose.words/formfieldcollection/) класс, который можно восстановить с помощью [Range.getFormFields](https://reference.aspose.com/words/java/com.aspose.words/range/#getFormFields) собственность. Это означает, что вы можете получить поля формы, содержащиеся в любом узле документа, включая сам документ.

Следующий пример кода показывает, как получить набор полей формы:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.java" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла следующих примеров из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Form%20fields.docx).

{{% /alert %}}

Вы можете получить определенное поле формы по его индексу или названию.

Следующий пример кода показывает, как получить доступ к полям форм:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsGetByName-FormFieldsGetByName.java" >}}

The **FormField** Свойства позволяют работать с именем поля формы, типом и результатом.

Следующий пример кода показывает, как работать с именем поля формы, типом и результатом:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.java" >}}
