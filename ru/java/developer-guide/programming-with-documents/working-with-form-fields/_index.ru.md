---
title: Работа с полями формы в Java
second_title: Aspose.Words для Java
articleTitle: Работа с полями формы
linktitle: Работа с полями формы
description: "Понимание особенностей полей формы, работа с полями формы с помощью Java."
type: docs
weight: 380
url: /ru/java/working-with-form-fields/
timestamp: 2024-01-27-14-07-04
---

Документ, содержащий заполняемые поля, называется формой. Например, в Microsoft Word можно создать регистрационную форму, в которой используются раскрывающиеся списки, из которых пользователи могут выбирать записи. Поле `Form` - это место, где хранятся данные определенного типа, такие как имя или адрес. Поля формы в Microsoft Word включают ввод текста, combobox и checkbox.

Вы можете использовать поля формы в своем проекте для "общения" с пользователями. Например, вы создаете документ, содержимое которого защищено, но доступны для редактирования только поля формы. Пользователи могут вводить данные в поля формы и отправлять документ. Ваше приложение, использующее Aspose.Words, может извлекать данные из полей формы и обрабатывать их.

Поместить поля формы в документ с помощью кода несложно. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) для их вставки есть специальные методы, по одному для каждого типа поля формы. Каждый из методов принимает строковый параметр, представляющий имя поля формы. Имя может быть пустой строкой. Однако, если вы укажете имя для поля формы, то автоматически будет создана закладка с таким же именем.

## Вставка полей формы

Поля формы являются частным случаем полей Word, которые позволяют "взаимодействовать" с пользователем. Поля формы в Microsoft Word включают текстовое поле, поле со списком и checkbox.

**DocumentBuilder**

В следующем примере кода показано, как вставить поле формы combobox в документ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertFormFields-InsertFormFields.java" >}}

### Вставьте текстовый ввод

Используйте метод **insertTextInput**, чтобы вставить текстовое поле в документ.

В следующем примере кода показано, как вставить поле формы ввода текста в документ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTextInputFormField-DocumentBuilderInsertTextInputFormField.java" >}}

### Установите флажок

Вызовите **insertCheckBox**, чтобы вставить checkbox в документ.

В следующем примере кода показано, как вставить поле формы checkbox в документ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertCheckBoxFormField-DocumentBuilderInsertCheckBoxFormField.java" >}}

### Вставьте поле со списком

Вызовите **insertComboBox**, чтобы вставить combobox в документ.

В следующем примере кода показано, как вставить поле формы Combobox в документ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertComboBoxFormField-DocumentBuilderInsertComboBoxFormField.java" >}}

## Получение полей формы

Набор полей формы представлен классом [FormFieldCollection](https://reference.aspose.com/words/java/com.aspose.words/formfieldcollection/), который можно получить с помощью свойства [Range.getFormFields](https://reference.aspose.com/words/java/com.aspose.words/range/#getFormFields). Это означает, что вы можете получить поля формы, содержащиеся в любом узле документа, включая сам документ.

В следующем примере кода показано, как получить набор полей формы:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.java" >}}

{{% alert color="primary" %}}

Вы можете скачать примерный файл со следующими примерами по адресу [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Form%20fields.docx).

{{% /alert %}}

Вы можете найти конкретное поле формы по его индексу или названию.

В следующем примере кода показано, как получить доступ к полям формы:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsGetByName-FormFieldsGetByName.java" >}}

Свойства **FormField** позволяют вам работать с именем, типом и результатом поля формы.

В следующем примере кода показано, как работать с именем, типом и результатом поля формы:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.java" >}}
