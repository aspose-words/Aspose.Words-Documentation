---
title: Working with Form Fields in Java
second_title: Aspose.Words for Java
articleTitle: Working with Form Fields
linktitle: Working with Form Fields
description: "Understanding Form Fields feature, working with Form Fields using Java."
type: docs
weight: 140
url: /java/working-with-form-fields/
---

## Form Fields Overview

A document that contains fill-in blanks (fields) is known as a form. For example, you can create a registration form in Microsoft Word that uses drop-down lists from which users can select entries. The Form field is a location where a particular type of data, such as a name or address, is stored. Form fields in Microsoft Word include text input, combobox and checkbox.

You can use form fields in your project to "communicate" with your users. For example, you create a document whose content is protected, but only form fields are editable. The users can enter the data in the form fields and submit the document. Your application that uses Aspose.Words can retrieve data from the form fields and process it.

## Form Fields in Microsoft Word

### Inserting Form Fields in Microsoft Word

Use the **Forms** toolbar to insert form fields. To display the **Forms** toolbar, point to **Toolbars** on the **View** menu, and then click **Forms**. 

|![form-field-aspose-words-java-1](https://i.imgur.com/9ggObES.png)|
| :- |


1. In the document, click where you want to insert the form field.
1. Do any of the following:
   1. **To insert a text input where users can enter text** , click **Text Form Field** . You can specify a default entry so that users do not have to type an entry unless they want to change the response.
   1. **To insert a check box that the user can select or clear** , click **Check Box Form Field** .
   1. **To insert a drop-down list box that restricts available choices to those you specify** , click **Drop-Down Form Field** . If needed, a user can scroll through the list to view additional choices. 

![form-field-aspose-words-java-2](https://i.imgur.com/QvsQC5W.png)

{{% alert color="primary" %}}

**Note:** before you can make a form available to users, you must protect it by clicking **Protect Form** on the **Forms** toolbar. Protection allows users to fill in the form but prevents them from changing the form's layout and its standard elements. When you want to go back to writing or modifying the form, click **Protect Form** again to unprotect the form.

{{% /alert %}}

### Deleting Form Fields in Microsoft Word

Simply select a form field and press DELETE.

## Form Fields in Aspose.Words

Placing form fields into the document via code is easy. DocumentBuilder has special methods for inserting them, one for each form field type. Each of the methods accepts a string parameter representing the name of the form field. The name can be an empty string. If however you specify a name for the form field, then a bookmark is automatically created with the same name.

### Inserting Form Fields

Use [DocumentBuilder.insertTextInput](https://apireference.aspose.com/words/java/com.aspose.words/DocumentBuilder#insertTextInput(java.lang.String,int,java.lang.String,java.lang.String,int))**,** [DocumentBuilder.insertCheckBox](https://apireference.aspose.com/words/java/com.aspose.words/DocumentBuilder#insertCheckBox(java.lang.String,boolean,boolean,int)) or DocumentBuilder.insertComboBox (https://apireference.aspose.com/words/java/com.aspose.words/DocumentBuilder#insertComboBox(java.lang.String,java.lang.String[],int)) to insert form fields into a document. Below example shows how to insert a combobox form field into a document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertFormFields-InsertFormFields.java" >}}

#### Inserting a Text Input

DocumentBuilder.InsertTextInput to insert a textbox into the document. The code example given below shows how to insert a text input form field into a document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTextInputFormField-DocumentBuilderInsertTextInputFormField.java" >}}

#### Inserting a Check Box

Call DocumentBuilder.InsertCheckBox to insert a checkbox into the document. The code example given below shows how to insert a checkbox form field into a document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertCheckBoxFormField-DocumentBuilderInsertCheckBoxFormField.java" >}}

#### Inserting a Combo Box

Call DocumentBuilder.InsertComboBox to insert a Combobox into the document. The code example given below shows how to insert a Combobox form field into a document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertComboBoxFormField-DocumentBuilderInsertComboBoxFormField.java" >}}

### Obtaining Form Fields

A collection of form fields is represented by the [FormFieldCollection](https://apireference.aspose.com/words//java/com.aspose.words/formfieldcollection) class that can be retrieved using the [Range.getFormFields](https://apireference.aspose.com/words/java/com.aspose.words/range#FormFields) property. This means that you can obtain form fields contained in any document node including the document itself. The code example given below shows how to get a collection of form fields. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/com/aspose/words/examples/programming_documents/fields/FormFieldsGetFormFieldsCollection/FormFields.doc).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.java" >}}

You can get a particular form field by its index or name. The code example given below shows how to access form fields. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/com/aspose/words/examples/programming_documents/fields/FormFieldsGetByName/FormFields.doc).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsGetByName-FormFieldsGetByName.java" >}}

The FormField properties allow you to work with form field name, type, and result. The code example given below shows how to work with the form field name, type, and result. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/com/aspose/words/examples/programming_documents/fields/FormFieldsWorkWithProperties/FormFields.doc).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.java" >}}
