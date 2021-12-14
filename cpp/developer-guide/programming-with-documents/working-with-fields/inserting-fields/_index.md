---
title: Inserting Fields
type: docs
weight: 20
url: /cpp/inserting-fields/
---

## Inserting Fields into a Document

In Aspose.Words the **DocumentBuilder.InsertField** method is used to insert new fields into a document. The first parameter accepts the full field code of the field to be inserted. The second parameter is optional and allows the field result of the field to be set manually. If this is not supplied then the field is updated automatically. You can pass null or empty to this parameter to insert a field with an empty field value.

{{% alert color="primary" %}} 

If your field code has a parameter containing a space then it must be enclosed within speech marks. Otherwise the field in both Microsoft Word and Aspose.Words may not work as expected as the parameter is treated by both as being truncated

{{% /alert %}} 

The code example given below shows how to Inserts a merge field into a document using DocumentBuilder.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Fields-InsertField.h" >}}

The same technique is used to insert fields nested within other fields. The code example given below demonstrates how to insert fields nested within another field using DocumentBuilder.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertNestedFields-InsertNestedFields.cpp" >}}

## Inserting Fields using DOM

### Inserting Merge Field into a Document using DOM

MERGEFIELD field in Word document can be represented by the FieldMergeField class. You can use FieldMergeField class to perform the following operations:

- Specify the name of the merge field
- Specify the formatting of the merge field
- Specify the text that is between the field separator and field end of the merge field
- Specify the text to be inserted after the merge field if the field is not blank
- Specify the text to be inserted before the merge field if the field is not blank.

For more details, please refer to FieldMergeField Class API reference. The code example given below shows how to add a Merge Field using DOM to a paragraph in the document.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertMergeFieldUsingDOM-InsertMergeFieldUsingDOM.cpp" >}}

You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-C/blob/master/Examples/Data/Field%20sample%20-%20ADDIN.docx).

### Inserting Mail Merge Address Block field into a Document using DOM

ADDRESSBLOCK field is used to insert a mail merge address block in a Word document. ADDRESSBLOCK field in Word document can be represented by the FieldAddressBlock class. You can use FieldAddressBlock class to perform the following operations:

- Specify whether to include the name of the country/region in the field.
- Specify whether to format the address according to the country/region of the recipient as defined by POST*CODE (Universal Postal Union 2006).
- Specify the excluded country/region name.
- Specify the name and address format.
- Specify the language ID used to format the address.

For more details, please refer to FieldAddressBlock Class API reference. The code example given below shows how to Add a Mail Merge Address Block Field using DOM to a Paragraph in Document.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertMailMergeAddressBlockFieldUsingDOM-InsertMailMergeAddressBlockFieldUsingDOM.cpp" >}}

You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-C/blob/master/Data/Programming-Documents/Fields/in.doc).

### Inserting Advance field into a Document without using DocumentBuilder

The ADVANCE field is used to offset subsequent text within a line to the left, right, up or down. The ADVANCE field in Word document can be represented by the FieldAdvance class. You can use FieldAdvance class to perform the following operations:

- Specify the number of points by which the text that follows the field should be moved vertically from the top edge of the page.
- Specify the number of points by which the text that follows the field should be moved horizontally from the left edge of the column, frame, or text box.
- Specify the number of points by which the text that follows the field should be moved left, right, up or down.

For more details, please refer to FieldAdvance Class API reference. The code example given below shows how to Add an Advance Field using DOM to a Paragraph in Document.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertAdvanceFieldWithoutDocumentBuilder-InsertAdvanceFieldWithoutDocumentBuilder.cpp" >}}

You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-C/blob/master/Data/Programming-Documents/Fields/in.doc).

### Inserting ASK field into a Document without using DocumentBuilder

ASK field is used to prompt the user for text to assign to a Bookmark in Word document. ASK field in Word document can be represented by the FieldAsk class. You can use FieldAsk class to perform the following operations:

- Specify the name of the bookmark.
- Specify default user response (initial value contained in the prompt window).
- Specify whether the user response should be received once per a mail merge operation
- Specify the prompt text (the title of the prompt window).

For more details, please refer to [FieldAsk Class API reference](http://www.aspose.com/docs/display/wordsnet/Aspose.Words.Fields.FieldAsk+Class). The code example given below shows how to Add an ASK Field using DOM to a Paragraph in Document.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertASKFieldWithoutDocumentBuilder-InsertASKFieldWithoutDocumentBuilder.cpp" >}}

You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-C/blob/master/Data/Programming-Documents/Fields/in.doc).

### Inserting AUTHOR field into a Document without using DocumentBuilder

AUTHOR field is used to specify the name of the Document's author from the Document properties. AUTHOR field in Word document can be represented by the FieldAuthor class. You can use FieldAuthor class to perform the following operations:

- Specify the document author's name.

For more details, please refer to [FieldAuthor Class API reference](http://www.aspose.com/docs/display/wordsnet/Aspose.Words.Fields.FieldAuthor+Class). The code example given below shows how to Add an AUTHOR Field using DOM to a Paragraph in Document.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertAuthorField-InsertAuthorField.cpp" >}}

You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-C/blob/master/Data/Programming-Documents/Fields/in.doc).

### Inserting INCLUDETEXT field into a Document without using DocumentBuilder

The INCLUDETEXT field inserts the text and graphics contained in the document named in the field code. You can insert the entire document or a portion of the document referred to by a bookmark. This field in Word document is represented by INCLUDETEXT. You can use FieldIncludeText class to perform the following operations:

- Specify the bookmark's name of the included document. 
- Specify the location of the document.

For more details, please refer to [FieldIncludeText Class API reference](https://apireference.aspose.com/words/net/aspose.words.fields/fieldincludetext). The code example given below shows how to Add an INCLUDETEXT field using DOM to a Paragraph in Document. 

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Fields-InsertFieldIncludeTextWithoutDocumentBuilder.h" >}}

### Inserting TOA field into a Document without using DocumentBuilder

The TOA (*Table of Authorities*) field builds and inserts a table of authorities. The TOA field collects entries marked by TA (*Table of Authorities Entry*) fields. Microsoft Office Word inserts the TOA field when you click *Insert Table of Authorities* in the **Table of Authorities** group on the **References** tab. When you view the TOA field in your document, the syntax looks like this:

{ TOA [Switches ] }

Please refer to FieldToa Class API reference. The code example given below shows how to Add a TOA field using DOM to a Paragraph in Document. 

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertTOAFieldWithoutDocumentBuilder-InsertTOAFieldWithoutDocumentBuilder.cpp" >}}

## Inserting Fields using DocumentBuilder

### How to Insert Untyped/Empty Field

If you want to insert untyped/empty fields ({}) just like MS Word allows, you can use DocumentBuilder.InsertField method with parameter FieldType.FieldNone. To insert a field in a Word document, you can press “Ctrl + F9” key combination. The code example given below shows how to insert an empty field in the document.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertFieldNone-InsertFieldNone.cpp" >}}
