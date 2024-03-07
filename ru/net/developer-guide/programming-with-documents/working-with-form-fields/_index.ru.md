---
title: Работа с полями формы в C#
second_title: Aspose.Words для .NET
articleTitle: Работа с полями формы
linktitle: Работа с полями формы
description: "Понимание функции полей формы, работа с полями формы с использованием C#."
type: docs
weight: 380
url: /ru/net/working-with-form-fields/
---

Документ, содержащий пробелы (поля) для заполнения, называется формой. Например, вы можете создать регистрационную форму в Microsoft Word, в которой используются раскрывающиеся списки, из которых пользователи могут выбирать записи. Поле `Form` — это место, где хранятся данные определенного типа, например имя или адрес. Поля формы в Microsoft Word включают ввод текста, поле со списком и флажок.

Вы можете использовать поля формы в своем проекте для "общения" с пользователями. Например, вы создаете документ, содержимое которого защищено, но редактировать можно только поля формы. Пользователи могут ввести данные в поля формы и отправить документ. Ваше приложение, использующее Aspose.Words, может извлекать данные из полей формы и обрабатывать их.

Разместить поля формы в документе с помощью кода очень просто. [DocumentBuilder](https://reference.aspose.com/words/ru/net/aspose.words/documentbuilder/) имеет специальные методы для их вставки, по одному для каждого типа поля формы. Каждый из методов принимает строковый параметр, представляющий имя поля формы. Имя может быть пустой строкой. Однако если вы укажете имя для поля формы, то автоматически создастся закладка с тем же именем.

## Вставка полей формы

Поля формы — это частный случай полей Word, который позволяет "взаимодействовать" с пользователем. Поля формы в Microsoft Word включают текстовое поле, поле со списком и флажок.

**DocumentBuilder** предоставляет специальные методы для вставки каждого типа поля формы в документ: [InsertTextInput](https://reference.aspose.com/words/ru/net/aspose.words/documentbuilder/inserttextinput/), [InsertCheckBox](https://reference.aspose.com/words/ru/net/aspose.words/documentbuilder/insertcheckbox/) и [InsertComboBox](https://reference.aspose.com/words/ru/net/aspose.words/documentbuilder/insertcombobox/). Обратите внимание, что если вы укажете имя для поля формы, то автоматически создастся закладка с тем же именем.

В следующем примере кода показано, как вставить поле формы со списком в документ:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-InsertFormFields-InsertFormFields.cs" >}}

### Вставка текстового ввода

Используйте метод **InsertTextInput**, чтобы вставить текстовое поле в документ.

В следующем примере кода показано, как вставить поле формы ввода текста в документ:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertTextInputFormField.cs" >}}

### Вставьте флажок

Позвоните по номеру **InsertCheckBox**, чтобы вставить флажок в документ.

В следующем примере кода показано, как вставить поле формы флажка в документ:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertCheckBoxFormField.cs" >}}

### Вставить поле со списком

Позвоните по номеру **InsertComboBox**, чтобы вставить в документ поле со списком.

В следующем примере кода показано, как вставить поле формы Combobox в документ:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertComboBoxFormField.cs" >}}

## Получить поля формы

Коллекция полей формы представлена классом [FormFieldCollection](https://reference.aspose.com/words/ru/net/aspose.words.fields/formfieldcollection/), который можно получить с помощью свойства [FormFields](https://reference.aspose.com/words/ru/net/aspose.words/range/formfields/). Это означает, что вы можете получить поля формы, содержащиеся в любом узле документа, включая сам документ.

{{% alert color="primary" %}}

Вы можете скачать образец файла следующих примеров по адресу [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Form%20fields.docx).

{{% /alert %}}

В следующем примере кода показано, как получить коллекцию полей формы:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.cs" >}}

Вы можете получить определенное поле формы по его индексу или имени.

В следующем примере кода показано, как получить доступ к полям формы:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsGetByName-FormFieldsGetByName.cs" >}}

Свойства **FormField** позволяют работать с именем, типом и результатом поля формы.

В следующем примере кода показано, как работать с именем, типом и результатом поля формы:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.cs" >}}

## Форматирование полей формы

Свойство [Font](https://reference.aspose.com/words/ru/net/aspose.words/inline/font/) объекта [FormField](https://reference.aspose.com/words/ru/net/aspose.words.fields/formfield/) позволяет применять форматирование шрифта к **FormField** в целом, включая значение поля.

В следующем примере кода показано, как применить форматирование шрифта к **FormField**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsFontFormatting-FormFieldsFontFormatting.cs" >}}
