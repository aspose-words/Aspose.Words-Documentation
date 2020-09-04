---
title: Inserting Fields
type: docs
weight: 20
url: /net/inserting-fields/
---

## **Inserting Fields into a Document using DocumentBuilder**
In Aspose.Words the **DocumentBuilder.InsertField** method is used to insert new fields into a document. The first parameter accepts the full field code of the field to be inserted. The second parameter is optional and allows the field result of the field to be set manually. If this is not supplied then the field is updated automatically. You can pass null or empty to this parameter to insert a field with an empty field value. If you are not sure about the particular field code syntax, create the field in Microsoft Word first and switch to see its field code.

{{% alert color="primary" %}} 

If your field code has a parameter containing a space then it must be enclosed within speech marks. Otherwise the field in both Microsoft Word and Aspose.Words may not work as expected as the parameter is treated by both as being truncated

{{% /alert %}} 

Below examples shows how to Inserts a merge field into a document using DocumentBuilder.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Fields-InsertField-InsertField.cs" >}}

Below example inserts a merge field into a document using DocumentBuilder.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-ChangeFieldUpdateCultureSource-DocumentBuilderInsertField.cs" >}}

The same technique is used to insert fields nested within other fields. Below example demonstrates how to insert fields nested within another field using DocumentBuilder.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Fields-InsertNestedFields-InsertNestedFields.cs" >}}
### **Specify Locale at Field Level**
A language identifier is a standard international numeric abbreviation for the language in a country or geographical region. With Aspose.Words, you can specify Locale at field level. Field.LocaleId property gets or sets the locale ID of the field. The example below illustrates how to make use of this option.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.cs" >}}
### **Inserting Untyped/Empty Field**
If you want to insert untyped/empty fields ({}) just like MS Word allows, you can use DocumentBuilder.InsertField method with parameter FieldType.FieldNone. To insert a field in Word document, you can press “Ctrl + F9” key combination. Below code example shows how to insert an empty field in the document.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Fields-InsertFieldNone-InsertFieldNone.cs" >}}
## **Inserting Fields using DOM**
### **Inserting Merge Field into a Document using DOM**
MERGEFIELD field in Word document can be represented by the FieldMergeField class. You can use FieldMergeField class to perform the following operations:

- Specify the name of merge field
- Specify the formatting of merge field
- Specify the text that is between the field separator and field end of merge field
- Specify the text to be inserted after the merge field if the field is not blank
- Specify the text to be inserted before the merge field if the field is not blank.

For more details, please refer to [FieldMergeField Class API reference](https://apireference.aspose.com/words/net/aspose.words.fields/fieldmergefield). Below example shows how to add a Merge Field using DOM to a paragraph in the document. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Programming-Documents/Fields/in.doc).

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Fields-InsertMergeFieldUsingDOM-InsertMergeFieldUsingDOM.cs" >}}
### **Inserting Mail Merge Address Block field into a Document using DOM**
ADDRESSBLOCK field is used to insert a mail merge address block in Word document. ADDRESSBLOCK field in Word document can be represented by the FieldAddressBlock class. You can use FieldAddressBlock class to perform the following operations:

- Specify whether to include the name of the country/region in the field.
- Specify whether to format the address according to the country/region of the recipient as defined by POST*CODE (Universal Postal Union 2006).
- Specify the excluded country/region name.
- Specify the name and address format.
- Specify the language ID used to format the address.

For more details, please refer to [FieldAddressBlock Class API reference](https://apireference.aspose.com/words/net/aspose.words.fields/fieldaddressblock). Below example shows how to Add a Mail Merge Address Block Field using DOM to a Paragraph in Document. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Programming-Documents/Fields/in.doc).

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Fields-InsertMailMergeAddressBlockFieldUsingDOM-InsertMailMergeAddressBlockFieldUsingDOM.cs" >}}
### **Inserting Advance field into a Document without using DocumentBuilder**
The ADVANCE field is used to offset subsequent text within a line to the left, right, up or down. The ADVANCE field in Word document can be represented by the FieldAdvance class. You can use FieldAdvance class to perform the following operations:

- Specify the number of points by which the text that follows the field should be moved vertically from the top edge of the page.
- Specify the number of points by which the text that follows the field should be moved horizontally from the left edge of the column, frame, or text box.
- Specify the number of points by which the text that follows the field should be moved left, right, up or down.

For more details, please refer to [FieldAdvance Class API reference](https://apireference.aspose.com/words/net/aspose.words.fields/fieldadvance). Below example shows how to Add an Advance Field using DOM to a Paragraph in Document. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Programming-Documents/Fields/in.doc).

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Fields-InsertAdvanceFieldWithOutDocumentBuilder-InsertAdvanceFieldWithOutDocumentBuilder.cs" >}}
### **Inserting ASK field into a Document without using DocumentBuilder**
ASK field is used to prompt the user for text to assign to a Bookmark in Word document. ASK field in Word document can be represented by the FieldAsk class. You can use FieldAsk class to perform the following operations:

- Specify the name of the bookmark.
- Specify default user response (initial value contained in the prompt window).
- Specify whether the user response should be received once per a mail merge operation
- Specify the prompt text (the title of the prompt window).

For more details, please refer to [FieldAsk Class API reference](https://apireference.aspose.com/words/net/aspose.words.fields/fieldask). Below example shows how to Add an ASK Field using DOM to a Paragraph in Document. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Programming-Documents/Fields/in.doc).

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Fields-InsertASKFieldWithOutDocumentBuilder-InsertASKFieldWithOutDocumentBuilder.cs" >}}
### **Inserting AUTHOR field into a Document without using DocumentBuilder**
AUTHOR field is used to specify the name of Document's author from the Document properties. AUTHOR field in Word document can be represented by the FieldAuthor class. You can use FieldAuthor class to perform the following operations:

- Specify the document author's name.

For more details, please refer to [FieldAuthor Class API reference](https://apireference.aspose.com/words/net/aspose.words.fields/fieldauthor). Below example shows how to Add an AUTHOR Field using DOM to a Paragraph in Document. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Programming-Documents/Fields/in.doc).

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Fields-InsertAuthorField-InsertAuthorField.cs" >}}
### **Inserting INCLUDETEXT field into a Document without using DocumentBuilder**
The INCLUDETEXT field inserts the text and graphics contained in the document named in the field code. You can insert the entire document or a portion of the document referred to by a bookmark. This field in Word document is represented by INCLUDETEXT. You can use FieldIncludeText class to perform the following operations:

- Specify the bookmark's name of the included document. 
- Specify the location of the document.

For more details, please refer to [FieldIncludeText Class API reference](https://apireference.aspose.com/net/words/aspose.words.fields/fieldincludetext). Below example shows how to Add an INCLUDETEXT field using DOM to a Paragraph in Document. 

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Fields-InsertIncludeFieldWithoutDocumentBuilder-InsertFieldIncludeTextWithoutDocumentBuilder.cs" >}}
### **Inserting TOA field into a Document without using DocumentBuilder**
The TOA (*Table of Authorities*) field builds and inserts a table of authorities. The TOA field collects entries marked by TA (*Table of Authorities Entry*) fields. Microsoft Office Word inserts the TOA field when you click *Insert Table of Authorities* in the **Table of Authorities** group on the **References** tab. When you view the TOA field in your document, the syntax looks like this:

{ TOA [Switches ] }

Please refer to [FieldToa Class API ](https://apireference.aspose.com/net/words/aspose.words.fields/fieldtoa)reference. Below example shows how to Add a TOA field using DOM to a Paragraph in Document. 

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Fields-InsertTOAFieldWithoutDocumentBuilder-InsertTOAFieldWithoutDocumentBuilder.cs" >}}
