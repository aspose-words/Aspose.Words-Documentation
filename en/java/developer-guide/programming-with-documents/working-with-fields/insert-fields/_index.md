---
title: Insert Fields in Java
second_title: Aspose.Words for Java
articleTitle: Insert Fields
linktitle: Insert Fields
description: "Different ways to insert fields into your document using Java."
type: docs
weight: 20
url: /java/insert-fields/
aliases: [/java/insert-and-remove-field/]
timestamp: 2024-01-27-14-07-04
---

There are several different ways to insert fields into a document:

- using [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)
- using [FieldBuilder](https://reference.aspose.com/words/java/com.aspose.words/fieldbuilder/)
- using [Aspose.Words Document Object Model (DOM)](/words/java/aspose-words-document-object-model/)

In this article, we will look at each way in more detail and analyze how to insert certain fields using these options.

## Inserting Fields into a Document using DocumentBuilder

In Aspose.Words the [InsertField](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder#insertField(int,boolean)) method is used to insert new fields into a document. The first parameter accepts the full field code of the field to be inserted. The second parameter is optional and allows the field result of the field to be set manually. If this is not supplied then the field is updated automatically. You can pass null or empty to this parameter to insert a field with an empty field value. If you are not sure about the particular field code syntax, create the field in Microsoft Word first and switch to see its field code.

{{% alert color="primary" %}}

If your field code has a parameter containing a space then it must be enclosed within speech marks. Otherwise the field in both Microsoft Word and Aspose.Words may not work as expected as the parameter is treated by both as being truncated.

{{% /alert %}}

The following code example shows how to inserts a merge field into a document using **DocumentBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-InsertField.java" >}}

The same technique is used to insert fields nested within other fields.

The following code example demonstrates how to insert fields nested within another field using **DocumentBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertNestedFields-InsertNestedFields.java" >}}

### Specify Locale at Field Level

A language identifier is a standard international numeric abbreviation for the language in a country or geographical region. With Aspose.Words, you can specify the Locale at the field level using the [LocaleId](https://reference.aspose.com/words/java/com.aspose.words/field/#getLocaleId) property, which gets or sets the field's locale ID.

The following code example shows how to use this option:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.java" >}}

### Insert Untyped/Empty Field

If you want to insert untyped/empty fields ({}) just like Microsoft Word allows, you can use the [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) method with the [FieldType.FieldNone](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) parameter. To insert a field into a Word document, you can press “Ctrl + F9” key combination.

The following code example shows how to insert an empty field into the document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertFieldNone-InsertFieldNone.java" >}}

### Insert `COMPARE` Field

The `COMPARE` field compares two values and returns the numeric value 1 if the comparison is true or 0 if the comparison is false.

The following code example shows how to add `COMPARE` fields using DocumentBuilder:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldCompare.java" >}}

### Insert `IF` Field

The `IF` field can be used to evaluate arguments conditionally.

The following code example shows how to add `IF` fields using DocumentBuilder:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldIf.java" >}}

## Inserting Fields into a Document using FieldBuilder

The alternative way to insert fields in Aspose.Words is the [FieldBuilder](https://reference.aspose.com/words/java/com.aspose.words/fieldbuilder/) class. It provides fluent interface to specify field switches and argument values as text, nodes or even nested fields.

The following code example shows how to insert a field into a document using **FieldBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-FieldBuilder.java" >}}

## Inserting Fields using DOM

You can also insert various types of fields using [Aspose.Words Document Object Model (DOM)](/words/java/aspose-words-document-object-model/). In this section, we will look at a few examples.

### Inserting Merge Field into a Document using DOM

`MERGEFIELD` field in Word document can be represented by the [FieldMergeField](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/) class. You can use **FieldMergeField** class to perform the following operations:

- specify the name of the merge field
- specify the formatting of the merge field
- specify the text that is between the field separator and field end of the merge field
- specify the text to be inserted after the merge field if the field is not blank
- specify the text to be inserted before the merge field if the field is not blank

{{% alert color="primary" %}}

For more details, see the [FieldMergeField](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/) class API.

{{% /alert %}}

The following code example shows how to add the `MERGE` field using DOM to a paragraph in a document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertMergeFieldUsingDOM-InsertMergeFieldUsingDOM.java" >}}

### Inserting Mail Merge `ADDRESSBLOCK` field into a Document using DOM

The `ADDRESSBLOCK` field is used to insert a Mail Merge address block in a Word document. `ADDRESSBLOCK` field in Word document can be represented by the [FieldAddressBlock](https://reference.aspose.com/words/java/com.aspose.words/fieldaddressblock/) class. You can use **FieldAddressBlock** class to perform the following operations:

- specify whether to include the name of the country/region in the field
- specify whether to format the address according to the country/region of the recipient as defined by POST*CODE (Universal Postal Union 2006)
- specify the excluded country/region name
- specify the name and address format
- specify the language ID used to format the address

{{% alert color="primary" %}}

For more details, see the [FieldAddressBlock](https://reference.aspose.com/words/java/com.aspose.words/fieldaddressblock/) class API.

{{% /alert %}}

The following code example shows how to add the Mail Merge `ADDRESSBLOCK` Field using DOM to a paragraph in a document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertMailMergeAddressBlockFieldUsingDOM-InsertMailMergeAddressBlockFieldUsingDOM.java" >}}

### Inserting `ADVANCE` field into a Document without using DocumentBuilder

The `ADVANCE` field is used to offset subsequent text within a line to the left, right, up or down. `ADVANCE` field in Word document can be represented by the [FieldAdvance](https://reference.aspose.com/words/java/com.aspose.words/fieldadvance/) class. You can use the **FieldAdvance** class to perform following operations:

- specify the number of points by which the text that follows the field should be moved vertically from the top edge of the page
- specify the number of points by which the text that follows the field should be moved horizontally from the left edge of the column, frame, or text box
- specify the number of points by which the text that follows the field should be moved left, right, up or down

{{% alert color="primary" %}}

For more details, see the [FieldAdvance](https://reference.aspose.com/words/java/com.aspose.words/fieldadvance/) class API.

{{% /alert %}}

The following code example shows how to add the `ADVANCE` Field using DOM to a paragraph in a document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldAdvance.java" >}}

### Inserting `ASK` field into a Document without using DocumentBuilder

The `ASK` field is used to prompt the user for text to assign to a Bookmark in Word document. `ASK` field in Word document can be represented by the [FieldAsk](https://reference.aspose.com/words/java/com.aspose.words/fieldask/) class. You can use **FieldAsk** class to perform following operations:

- specify the name of the bookmark
- specify default user response (initial value contained in the prompt window)
- specify whether the user response should be received once per a Mail Merge operation
- specify the prompt text (the title of the prompt window)

{{% alert color="primary" %}}

For more details, see the [FieldAsk](https://reference.aspose.com/words/java/com.aspose.words/fieldask/) class API.

{{% /alert %}}

The following code example shows how to add the `ASK` Field using DOM to a paragraph in a document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldAsk.java" >}}

### Inserting `AUTHOR` field into a Document without using DocumentBuilder

The `AUTHOR` field is used to specify the name of Document's author from the `Document` properties. `AUTHOR` field in Word document can be represented by the [FieldAuthor](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/) class. You can use **FieldAuthor** class to perform following operations:

- specify the document author's name

{{% alert color="primary" %}}

For more details, see the [FieldAuthor](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/) class API.

{{% /alert %}}

The following code example shows how to add the `AUTHOR` Field using DOM to a paragraph in a document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertAuthorField-InsertAuthorField.java" >}}

### Inserting `INCLUDETEXT` field into a Document without using DocumentBuilder

The `INCLUDETEXT` field inserts the text and graphics contained in the document named in the field code. You can insert the entire document or a portion of the document referred to by a bookmark. This field in Word document is represented by INCLUDETEXT. You can use [FieldIncludeText](https://reference.aspose.com/words/java/com.aspose.words/fieldincludetext/) class to perform following operations:

- specify the bookmark's name of included document
- specify the location of the document

{{% alert color="primary" %}}

For more details, see the [FieldIncludeText](https://reference.aspose.com/words/java/com.aspose.words/fieldincludetext/) class API.

{{% /alert %}}

The following code example shows how to add the `INCLUDETEXT` field using DOM to a paragraph in a document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldIncludeText.java" >}}

### Inserting `TOA` field into a Document without using DocumentBuilder

The `TOA` (*Table of Authorities*) field builds and inserts a table of authorities. The `TOA` field collects entries marked by `TA` (*Table of Authorities Entry*) fields. Microsoft Office Word inserts the `TOA` field when you click *Insert Table of Authorities* in the **Table of Authorities** group on the **References** tab. When you view the `TOA` field in your document, the syntax looks like this:

{ `TOA` [Switches ] }

{{% alert color="primary" %}}

For more details, see the [FieldToa](https://reference.aspose.com/words/java/com.aspose.words/fieldtoa/) class API.

{{% /alert %}}

The following code example shows how to add the `TOA` field using DOM to a paragraph in a document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertTOAField-InsertTOAField.java" >}}
