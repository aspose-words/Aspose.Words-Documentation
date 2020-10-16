---
title: Working with Form Fields
type: docs
weight: 210
url: /java/working-with-form-fields/
---

## Form Fields Overview

A document that contains fill-in blanks (fields) is known as a form. For example, you can create a registration form in Microsoft Word that uses drop-down lists from which users can select entries. Form field is a location where a particular type of data, such as a name or address, is stored. Form fields in Microsoft Word include text input, combobox and checkbox.

You can use form fields in your project to "communicate" with your users. For example, you create a document whose content is protected, but only form fields are editable. The users can enter the data in the form fields and submit the document. Your application that uses Aspose.Words can retrieve data from the form fields and process it.

## Form Fields in Microsoft Word

### Inserting Form Fields in Microsoft Word

Use the **Forms** toolbar to insert form fields. To display the **Forms** toolbar, point to **Toolbars** on the **View** menu, and then click **Forms**. 

|![todo:image_alt_text](http://i.imgur.com/9ggObES.png)|
| :- |


1. In the document, click where you want to insert the form field.
1. Do any of the following:
   1. **To insert a text input where users can enter text** , click **Text Form Field** . You can specify a default entry so that users do not have to type an entry unless they want to change the response.
   1. **To insert a check box that the user can select or clear** , click **Check Box Form Field** .
   1. **To insert a drop-down list box that restricts available choices to those you specify** , click **Drop-Down Form Field** . If needed, a user can scroll through the list to view additional choices. 

![todo:image_alt_text](http://i.imgur.com/QvsQC5W.png)

{{% alert color="primary" %}} 

**Note:** before you can make a form available to users, you must protect it by clicking **Protect Form** on the **Forms** toolbar. Protection allows users to fill in the form but prevents them from changing the form's layout and its standard elements. When you want to go back to writing or modifying the form, click **Protect Form** again to unprotect the form.

{{% /alert %}}

### Deleting Form Fields in Microsoft Word

Simply select a form field and press DELETE.

## Form Fields in Aspose.Words

Placing form fields into the document via code is easy. DocumentBuilder has special methods for inserting them, one for each form field type. Each of the methods accepts a string parameter representing the name of the form field. The name can be an empty string. If however you specify a name for the form field, then a bookmark is automatically created with the same name.

### Inserting Form Fields

Use [DocumentBuilder.insertTextInput](http://www.aspose.com/api/java/words/com.aspose.words/classes/documentbuilder/methods/insertTextInput\(java.lang.String,int,java.lang.String,java.lang.String,int\)/)**,** [DocumentBuilder.insertCheckBox](http://www.aspose.com/api/java/words/com.aspose.words/classes/documentbuilder/methods/insertCheckBox\(java.lang.String,boolean,int\)/) or DocumentBuilder.insertComboBox (http://www.aspose.com/api/java/words/com.aspose.words/classes/documentbuilder/methods/insertComboBox(java.lang.String,java.lang.String\[\],int)/) to insert form fields into a document. Below example shows how to insert a combobox form field into a document.

{{< gist "aspose-words" "b37032675133885c4c91814fb3d51a25" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertFormFields-1.java" >}}

### Obtaining Form Fields

A collection of form fields is represented by the [FormFieldCollection](http://www.aspose.com/api/java/words/com.aspose.words/classes/FormFieldCollection) class that can be retrieved using the [Range.getFormFields](http://www.aspose.com/api/java/words/com.aspose.words/classes/range/methods/getFormFields\(\)/) property. This means that you can obtain form fields contained in any document node including the document itself. Below example shows how to get a collection of form fields. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/com/aspose/words/examples/programming_documents/fields/FormFieldsGetFormFieldsCollection/FormFields.doc).

{{< gist "aspose-words" "b37032675133885c4c91814fb3d51a25" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsGetFormFieldsCollection-1.java" >}}

You can get a particular form field by its index or name. Below example shows how to access form fields. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/com/aspose/words/examples/programming_documents/fields/FormFieldsGetByName/FormFields.doc).

{{< gist "aspose-words" "b37032675133885c4c91814fb3d51a25" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsGetByName-1.java" >}}

The FormField properties allow you to work with form field name, type, and result. Below example shows how to work with form field name, type, and result. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/com/aspose/words/examples/programming_documents/fields/FormFieldsWorkWithProperties/FormFields.doc).

{{< gist "aspose-words" "b37032675133885c4c91814fb3d51a25" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsWorkWithProperties-1.java" >}}
