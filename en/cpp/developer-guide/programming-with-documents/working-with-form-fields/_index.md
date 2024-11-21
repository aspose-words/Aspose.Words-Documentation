---
title: Working with Form Fields in C++
second_title: Aspose.Words for C++
articleTitle: Working with Form Fields
linktitle: Working with Form Fields
description: "Understanding Form Fields feature, working with Form Fields using C++."
type: docs
weight: 380
url: /cpp/working-with-form-fields/
timestamp: 2024-01-27-14-07-04
---

A document that contains fill-in blanks (fields) is known as a form. For example, you can create a registration form in Microsoft Word that uses drop-down lists from which users can select entries. A form field is a location where a particular type of data, such as a name or address, is stored. Form fields in Microsoft Word include text input, Combobox and checkbox.

You can use form fields in your project to "communicate" with your users. For example, you create a document whose content is protected, but only form fields are editable. The users can enter the data in the form fields and submit the document. Your application that uses Aspose.Words can retrieve data from the form fields and process it.

Placing form fields into the document via code is easy. [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) has special methods for inserting them, one for each form field type. Each of the methods accepts a string parameter representing the name of the form field. The name can be an empty string. If however you specify a name for the form field, then a bookmark is automatically created with the same name.

## Inserting Form Fields

Form fields are a particular case of Word fields that allows "interaction" with the user. Form fields in Microsoft Word include textbox, combo box and checkbox.

**DocumentBuilder** provides special methods to insert each type of form field into the document: [InsertTextInput](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/inserttextinput/) , [InsertCheckBox](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertcheckbox/), and [InsertComboBox](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertcombobox/). Note that if you specify a name for the form field, then a bookmark is automatically created with the same name.

The following code example shows how to insert a combobox form field into a document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertFormFields-InsertFormFields.cpp" >}}

## Obtaining Form Fields

A collection of form fields is represented by the [FormFieldCollection](https://reference.aspose.com/words/cpp/aspose.words.fields/formfieldcollection/) class that can be retrieved using the [FormFields](https://reference.aspose.com/words/cpp/aspose.words/range/get_formfields/) property. This means that you can obtain form fields contained in any document node including the document itself.

The following code example shows how to get a collection of form fields:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.cpp" >}}

You can get a particular form field by its index or name.

The following code example shows how to access form fields:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormFieldsGetByName-FormFieldsGetByName.cpp" >}}

The **FormField** properties allow you to work with form field name, type, and result.

The following code example shows how to work with form field name, type, and result:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.cpp" >}}
