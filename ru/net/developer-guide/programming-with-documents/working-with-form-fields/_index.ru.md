---
title: Работа с полями формы в C#
second_title: Aspose.Words для .NET
articleTitle: Работа с полями форм
linktitle: Работа с полями форм
description: "Понимание особенностей полей форм, работа с полями форм с использованием C#."
type: docs
weight: 380
url: /ru/net/working-with-form-fields/
timestamp: 2024-01-27-14-07-04
---

Документ, содержащий заполненные бланки (поля), называется формой. Например, можно создать регистрационную форму в Microsoft Word использует выпадающие списки, из которых пользователи могут выбирать записи. The `Form` Поле - это место, где хранится определенный тип данных, таких как имя или адрес. Форма поля в Microsoft Word Включает в себя текстовый ввод, комбокс и чекбокс.

Вы можете использовать поля формы в вашем проекте, чтобы "общаться" с вашими пользователями. Например, вы создаете документ, содержание которого защищено, но редактируются только поля форм. Пользователи могут ввести данные в поля формы и представить документ. Ваше приложение, которое использует Aspose.Words Он может извлекать данные из полей форм и обрабатывать их.

Размещение полей формы в документе с помощью кода легко. [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) Имеет специальные способы их вставки, по одному для каждого типа поля формы. Каждый из методов принимает параметр строки, представляющий имя поля формы. Название может быть пустой строкой. Если, однако, вы указываете имя поля формы, закладка автоматически создается с тем же именем.

## Вставить поля формы

Поля Формы - это особый случай полей Word, который позволяет "взаимодействовать" с пользователем. Форма поля в Microsoft Word К ним относятся текстовый ящик, комбо-бокс и чекбокс.

**DocumentBuilder** Предусмотрены специальные методы включения каждого вида поля формы в документ: [InsertTextInput](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserttextinput/) , [InsertCheckBox](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertcheckbox/), и [InsertComboBox](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertcombobox/). Обратите внимание, что если указать имя поля формы, то закладка автоматически создается с таким же названием.

Следующий пример кода показывает, как вставить поле формы комбобокса в документ:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-InsertFormFields-InsertFormFields.cs" >}}

### Включить ввод текста

Используйте **InsertTextInput** Способ вставки текстового ящика в документ.

Следующий пример кода показывает, как вставить поле формы ввода текста в документ:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertTextInputFormField.cs" >}}

### Вставьте галочку

Звони. **InsertCheckBox** Вставить в документ чекбокс.

Следующий пример кода показывает, как вставить поле формы флажка в документ:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertCheckBoxFormField.cs" >}}

### Вставьте комбо-бокс

Звони. **InsertComboBox** Вставить в документ комбобокс.

Следующий пример кода показывает, как вставить поле формы Combobox в документ:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertComboBoxFormField.cs" >}}

## Получить поля формы

Коллекция полей форм представлена [FormFieldCollection](https://reference.aspose.com/words/net/aspose.words.fields/formfieldcollection/) класс, который можно восстановить с помощью [FormFields](https://reference.aspose.com/words/net/aspose.words/range/formfields/) собственность. Это означает, что вы можете получить поля формы, содержащиеся в любом узле документа, включая сам документ.

{{% alert color="primary" %}}

Вы можете скачать образец файла следующих примеров из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Form%20fields.docx).

{{% /alert %}}

Следующий пример кода показывает, как получить набор полей формы:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.cs" >}}

Вы можете получить определенное поле формы по его индексу или названию.

Следующий пример кода показывает, как получить доступ к полям форм:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsGetByName-FormFieldsGetByName.cs" >}}

The **FormField** Свойства позволяют работать с именем поля формы, типом и результатом.

Следующий пример кода показывает, как работать с именем поля формы, типом и результатом:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.cs" >}}

## Форма формата поля

The [Font](https://reference.aspose.com/words/net/aspose.words/inline/font/) имущество [FormField](https://reference.aspose.com/words/net/aspose.words.fields/formfield/) позволяет применять форматирование шрифтов к **FormField** В целом, включая стоимость поля.

Следующий пример кода показывает, как применять форматирование шрифта к **FormField**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsFontFormatting-FormFieldsFontFormatting.cs" >}}
