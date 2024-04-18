---
title: Работа с форма полета в C#
second_title: Aspose.Words вместо .NET
articleTitle: Работа с полета за форма
linktitle: Работа с полета за форма
description: "Схващане на функцията Form Fields, работа с Form Fields използване C#."
type: docs
weight: 380
url: /bg/net/working-with-form-fields/
---

Документ, който съдържа бланки за попълване (полета) е известен като формуляр. Например, можете да създадете регистрационен формуляр в Microsoft Word който използва падащи списъци, от които потребителите могат да избират записи. На `Form` поле е място, където се съхранява определен тип данни, като например име или адрес. Формиране на полета в Microsoft Word включва текстов вход, комбокса и чекова кутия.

Можете да използвате форма полета във вашия проект за "комуникиране" с вашите потребители. Например, създавате документ, чието съдържание е защитено, но само полетата с форма могат да бъдат редактирани. Потребителите могат да въвеждат данните във форма полета и да представят документа. Вашата молба, която използвате Aspose.Words може да извлича данни от полетата на формата и да ги обработва.

Поставянето на полета с форма в документа чрез код е лесно. [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) има специални методи за поставянето им, по един за всеки вид поле. Всеки от методите приема низов параметър, представляващ името на полето на формата. Името може да бъде празен низ. Ако обаче посочите име за полето на формата, тогава отметките автоматично се създават със същото име.

## Вмъкване на полета с формуляри

Полета за форма са конкретен случай на Word полета, които позволяват "вмешателство" с потребителя. Формиране на полета в Microsoft Word включва текстова кутия, комбинирана кутия и чекова кутия.

**DocumentBuilder** предоставя специални методи за вмъкване на всеки вид поле на формата в документа: [InsertTextInput](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserttextinput/) , [InsertCheckBox](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertcheckbox/), както и [InsertComboBox](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertcombobox/). Имайте предвид, че ако посочите име за полето на формата, тогава отметките автоматично се създават със същото име.

Следният пример за код показва как да се вмъкне полето на комбобокс във форма в документ:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-InsertFormFields-InsertFormFields.cs" >}}

### Вмъкване на текстов вход

Използвайте **InsertTextInput** метод за въвеждане на текстова кутия в документа.

Следният пример с код показва как да се вмъкне поле с текстова форма в документ:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertTextInputFormField.cs" >}}

### Вмъкване на отметка

Обаждане **InsertCheckBox** да поставите отметка в документа.

Следният пример за код показва как да се постави поле за форма на отметка в документ:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertCheckBoxFormField.cs" >}}

### Вмъкване на Combo Box

Обаждане **InsertComboBox** да вмъкнете комбобокс в документа.

Следният пример за код показва как да се въведе поле за формуляр Combobox в документ:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertComboBoxFormField.cs" >}}

## Получете полета с форма

Колекция от полета с форми се представя от [FormFieldCollection](https://reference.aspose.com/words/net/aspose.words.fields/formfieldcollection/) клас, който може да се извлече чрез [FormFields](https://reference.aspose.com/words/net/aspose.words/range/formfields/) собственост. Това означава, че можете да получите полета във форма, съдържащи се във всеки документ възел, включително самия документ.

{{% alert color="primary" %}}

Можете да изтеглите примерния файл на следните примери от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Form%20fields.docx).

{{% /alert %}}

Следният пример за код показва как да се получи събиране на полета форма:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.cs" >}}

Можете да получите определена форма поле по индекс или име.

Следният пример за код показва как да получите достъп до полетата:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsGetByName-FormFieldsGetByName.cs" >}}

На **FormField** имоти ви позволяват да работите с форма поле име, тип и резултат.

Следният пример с код показва как да се работи с името на полето, вида и резултата:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.cs" >}}

## Формиране на полета

На [Font](https://reference.aspose.com/words/net/aspose.words/inline/font/) на [FormField](https://reference.aspose.com/words/net/aspose.words.fields/formfield/) позволява прилагането на форматиране на шрифта към **FormField** като цяло, включително стойността на полето.

Следният пример с код показва как да се приложи форматиране на шрифта към **FormField**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsFontFormatting-FormFieldsFontFormatting.cs" >}}
