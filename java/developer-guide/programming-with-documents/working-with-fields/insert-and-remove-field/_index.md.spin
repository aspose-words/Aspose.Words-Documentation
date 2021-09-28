---
title: Insert and Remove Field
type: docs
weight: 30
url: /java/insert-and-remove-field/
---

## Inserting Fields into a Document

In Aspose.Words the [DocumentBuilder.insertField](https://apireference.aspose.com/words/java/com.aspose.words/documentbuilder#insertField(int,boolean)) method is used to insert new fields into a document. The first parameter accepts the full field code of the field to be inserted. The second parameter is optional and allows the field result of the field to be set manually. If this is not supplied then the field is updated automatically. You can pass null or empty to this parameter to insert a field with an empty field value.

{{% alert color="primary" %}} 

If your field code has a parameter containing a space then it must be enclosed within speech marks. Otherwise the field in both Microsoft Word and Aspose.Words may not work as expected as the parameter is treated by both as being truncated

{{% /alert %}} 

The following code example shows how to Inserts a merge field into a document using DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UpdateFields-1.java" >}}

The same technique is used to insert fields nested within other fields. The following code example demonstrates how to insert fields nested within another field using DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertField-1.java" >}}

## Finding the Field Code and Field Result

A field which is inserted using DocumentBuilder.insertField returns a Field object. This is a façade class which provides useful methods to quickly find such properties of a field. Note if you are only looking for the names of merge fields in the document then you can instead use the built-in method [MailMerge.getFieldNames](https://apireference.aspose.com/words/java/com.aspose.words/mailmerge#getFieldNames()). Below example shows how to get names of all merge fields in a document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertNestedFields-1.java" >}}

## Update Fields having Dirty Attribute

The w:dirty is a field-level attribute that will refresh only the field you specify when the document is opened. It tells MS Word to only refresh this field the next time the document is opened. You can use LoadOptions.setUpdateDirtyFields() property to specify whether to update the fields with the dirty attribute. When the value of LoadOptions.setUpdateDirtyFields() is set to *true*, all fields having *true* value for Field.IsDirty or FieldChar.IsDirty property are updated on document load. 

The following example shows how to update fields having the dirty attribute.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-LoadOptionsUpdateDirtyFields-LoadOptionsUpdateDirtyFields.java" >}}

## Inserting Fields using DOM

### Inserting Merge Field into a Document using DOM

MERGEFIELD field in Word document can be represented by the FieldMergeField class. You can use FieldMergeField class to perform the following operations:

- Specify the name of the merge field
- Specify the formatting of the merge field
- Specify the text that is between the field separator and field end of the merge field
- Specify the text to be inserted after the merge field if the field is not blank
- Specify the text to be inserted before the merge field if the field is not blank.

You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/com/aspose/words/examples/programming_documents/fields/InsertMergeFieldUsingDOM/in.doc).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertMergeFieldUsingDOM-1.java" >}}

### Inserting Mail Merge Address Block field into a Document using DOM

ADDRESSBLOCK field is used to insert a mail merge address block in a Word document. ADDRESSBLOCK field in Word document can be represented by the FieldAddressBlock class. You can use FieldAddressBlock class to perform the following operations:

- Specify whether to include the name of the country/region in the field.
- Specify whether to format the address according to the country/region of the recipient as defined by POST*CODE (Universal Postal Union 2006).
- Specify the excluded country/region name.
- Specify the name and address format.
- Specify the language ID used to format the address.

You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/com/aspose/words/examples/programming_documents/fields/InsertMailMergeAddressBlockFieldUsingDOM/in.doc).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertMailMergeAddressBlockFieldUsingDOM-1.java" >}}

### Inserting Advance field into a Document without using DocumentBuilder

ADVANCE field is used to offset subsequent text within a line to the left, right, up or down. ADVANCE field in Word document can be represented by the FieldAdvance class. You can use FieldAdvance class to perform following operations:

- Specify the number of points by which the text that follows the field should be moved vertically from the top edge of the page.
- Specify the number of points by which the text that follows the field should be moved horizontally from the left edge of the column, frame, or text box.
- Specify the number of points by which the text that follows the field should be moved left, right, up or down.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertAdvanceFieldWithOutDocumentBuilder-1.java" >}}

### Inserting ASK field into a Document without using DocumentBuilder

ASK field is used to prompt the user for text to assign to a Bookmark in Word document. ASK field in Word document can be represented by the FieldAsk class. You can use FieldAsk class to perform following operations:

- Specify the name of the bookmark.
- Specify default user response (initial value contained in the prompt window).
- Specify whether the user response should be received once per a mail merge operation
- Specify the prompt text (the title of the prompt window).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertASKFieldWithOutDocumentBuilder-1.java" >}}

### Inserting AUTHOR field into a Document without using DocumentBuilder

AUTHOR field is used to specify the name of Document's author from the Document properties. AUTHOR field in Word document can be represented by the FieldAuthor class. You can use FieldAuthor class to perform following operations:

- Specify the document author's name.
  For more details, please refer to [FieldAuthor Class API reference](http://www.aspose.com/api/java/words/com.aspose.words/classes/FieldAuthor).

Below example shows how to Add a AUTHOR Field using DOM to a Paragraph in Document.

**Java**

{{< highlight csharp >}}
Document doc = new Document(getMyDir() + "in.docx");

// Get paragraph you want to append this Ask field to
Paragraph para = (Paragraph)doc.getChildNodes(NodeType.PARAGRAPH, true).get(1);

// We want to insert an AUTHOR field like this:

// { AUTHOR Test1 }

// Create instance of FieldAuthor class and lets build the above field code
FieldAuthor field = (FieldAuthor)para.appendField(FieldType.FIELD_AUTHOR, false);

// { AUTHOR Test1 }
field.setAuthorName("Test1");

// Finally update this AUTHOR field
field.update();
doc.save(getMyDir() + "out.docx");
{{< /highlight >}}

### Inserting INCLUDETEXT field into a Document without using DocumentBuilder

The INCLUDETEXT field inserts the text and graphics contained in the document named in the field code. You can insert the entire document or a portion of the document referred to by a bookmark. This field in Word document is represented by INCLUDETEXT. You can use FieldIncludeText class to perform following operations:

- Specify the bookmark's name of included document. 
- Specify the location of the document.

For more details, please refer to [FieldIncludeText Class API reference](https://apireference.aspose.com/java/words/com.aspose.words/FieldIncludeText). Below example shows how to Add a INCLUDETEXT field using DOM to a Paragraph in Document. 

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertIncludeFieldWithoutDocumentBuilder.java" >}}

### Inserting TOA field into a Document without using DocumentBuilder

The TOA (*Table of Authorities*) field builds and inserts a table of authorities. The TOA field collects entries marked by TA (*Table of Authorities Entry*) fields. Microsoft Office Word inserts the TOA field when you click *Insert Table of Authorities* in the **Table of Authorities** group on the **References** tab. When you view the TOA field in your document, the syntax looks like this:

{ TOA [Switches ] }

Please refer to [FieldToa Class API reference](https://apireference.aspose.com/java/words/com.aspose.words/FieldToa). The following code example shows how to Add a TOA field using DOM to a Paragraph in Document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertTOAFieldWithoutDocumentBuilder.java" >}}


## Removing a Field

Sometimes it is necessary to remove a field from the document. This may occur when it is to be replaced with a different field type or when the field is no longer needed in the document. For example a TOC field when saving to HTML. A field inserted into the document using DocumentBuilder.insertField returns a Field object which provides a convenience method to easily remove the field from the document. Below example removes a field from the document. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/com/aspose/words/examples/programming_documents/fields/RemoveField/Field.RemoveField.doc).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-RemoveField-1.java" >}}

## How to Apply Custom Formatting to Field Result

Aspose.Words provides API for custom formatting of field's result. You can implement IFieldResultFormatter interface to control how the field result is formatted. You can apply numeric format switch, i.e. \# "#.##", date/time format switch, i.e. \@ "dd.MM.yyyy", and number format switch, i.e. \* Ordinal. Following code example shows how to apply custom formatting for field's result.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormatFieldResult-FormatFieldResult.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormatFieldResult-FieldResultFormatter.java" >}}

## How to evaluate IF condition

If you want to evaluate IF condition after mail merge, you can use FieldIf.EvaluateCondition method that immediately returns the result of expression's evaluation. Below code example shows how to use this method.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-EvaluateIFCondition-EvaluateIFCondition.java" >}}

## Inserting Fields using DocumentBuilder

### How to Insert Untyped/Empty Field

If you want to insert untyped/empty fields ({}) just like MS Word allows, you can use DocumentBuilder.InsertField method with parameter FieldType.FieldNone. To insert a field in a Word document, you can press “Ctrl + F9” key combination. 

The code example shows how to insert empty field in the document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertFieldNone-InsertFieldNone.java" >}}

### Insert Compare Field in Word Document

COMPARE field compares two values and returns the numeric value 1 if the comparison is true or 0 if the comparison is false. The following example shows how to add COMPARE fields by using DocumentBuilder to a Word Document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldCompare.java" >}}

### Insert IF Field in Word Document

IF field can be used to evaluate arguments conditionally. The following example shows how to add IF fields by using DocumentBuilder to a Word Document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldIf.java" >}}
