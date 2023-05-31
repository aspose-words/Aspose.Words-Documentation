---
title: Working with Form Fields in C#
second_title: Aspose.Words for .NET
articleTitle: Working with Form Fields
linktitle: Working with Form Fields
description: "Understanding Form Fields feature, working with Form Fields using C#."
type: docs
weight: 180
url: /net/working-with-form-fields/
---

A document that contains fill-in blanks (fields) is known as a form. For example, you can create a registration form in Microsoft Word that uses drop-down lists from which users can select entries. The Form field is a location where a particular type of data, such as a name or address, is stored. Form fields in Microsoft Word include text input, combobox and checkbox.

You can use form fields in your project to "communicate" with your users. For example, you create a document whose content is protected, but only form fields are editable. The users can enter the data in the form fields and submit the document. Your application that uses Aspose.Words can retrieve data from the form fields and process it.

Placing form fields into the document via code is easy. [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) has special methods for inserting them, one for each form field type. Each of the methods accepts a string parameter representing the name of the form field. The name can be an empty string. If however you specify a name for the form field, then a bookmark is automatically created with the same name.

## Insert Form Fields

Form fields are a particular case of Word fields that allows "interaction" with the user. Form fields in Microsoft Word include textbox, combo box and checkbox. **DocumentBuilder** provides special methods to insert each type of form field into the document: [InsertTextInput](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserttextinput/) , [InsertCheckBox](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertcheckbox/), and [InsertComboBox](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertcombobox/). Note that if you specify a name for the form field, then a bookmark is automatically created with the same name.

The following code example shows how to insert a combobox form field into a document:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-InsertFormFields-InsertFormFields.cs" >}}

### Insert a Text Input

USe the **InsertTextInput** method to insert a textbox into the document.

The following code example shows how to insert a text input form field into a document:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertTextInputFormField.cs" >}}

### Insert a Check Box

Call **InsertCheckBox** to insert a checkbox into the document.

The following code example shows how to insert a checkbox form field into a document:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertCheckBoxFormField.cs" >}}

### Insert a Combo Box

Call **InsertComboBox** to insert a combobox into the document.

The following code example shows how to insert a Combobox form field into a document:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertComboBoxFormField.cs" >}}

## Obtain Form Fields

A collection of form fields is represented by the [FormFieldCollection](https://reference.aspose.com/words/net/aspose.words.fields/formfieldcollection/) class that can be retrieved using the [FormFields](https://reference.aspose.com/words/net/aspose.words/range/formfields/) property. This means that you can obtain form fields contained in any document node including the document itself.

{{% alert color="primary" %}}

You can download the sample file of the following examples from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Form%20fields.docx).

{{% /alert %}}

The following code example shows how to get a collection of form fields:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.cs" >}}

You can get a particular form field by its index or name.

The following code example shows how to access form fields:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsGetByName-FormFieldsGetByName.cs" >}}

The **FormField** properties allow you to work with form field name, type, and result.

The following code example shows how to work with form field name, type, and result:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.cs" >}}

## Format Form Fields

The [Font](https://reference.aspose.com/words/net/aspose.words/inline/font/) property of [FormField](https://reference.aspose.com/words/net/aspose.words.fields/formfield/) allows applying font formatting to the **FormField** as a whole including the field value.

The following code example shows how to apply font formatting to the FormField:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsFontFormatting-FormFieldsFontFormatting.cs" >}}
