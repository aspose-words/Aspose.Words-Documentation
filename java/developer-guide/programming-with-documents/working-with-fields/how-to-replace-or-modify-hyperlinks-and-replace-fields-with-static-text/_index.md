---
title: How to Replace or Modify Hyperlinks and Replace Fields with Static Text
type: docs
weight: 50
url: /java/how-to-replace-or-modify-hyperlinks-and-replace-fields-with-static-text/
---

## Replace or Modify Hyperlinks

To find and modify hyperlinks it would be nice to have some sort of Hyperlink object with properties, but in the current version, there is no built-in functionality in Aspose.Words to deal with hyperlink fields. Hyperlinks in Microsoft Word documents are fields. A field consists of the field code and field result. In the current version of Aspose.Words, there is no single object that represents a field. Aspose.Words represents a field by a set of nodes: [FieldStart](https://apireference.aspose.com/words/java/com.aspose.words/FieldStart), one or more [Run](https://apireference.aspose.com/words/java/com.aspose.words/Run) nodes of the field code, [FieldSeparator](https://apireference.aspose.com/words/java/com.aspose.words/FieldSeparator) , one or more **Run** nodes of the field result and [FieldEnd](https://apireference.aspose.com/words/java/com.aspose.words/FieldEnd).

While Aspose.Words does not have a high-level abstraction to represent fields and hyperlink fields in particular, all of the necessary low-level document elements and their properties are exposed and with a bit of coding you can implement quite sophisticated document manipulation features.

This example shows how to create a simple class that represents a hyperlink in the document. Its constructor accepts a **FieldStart** object that must have [FieldType.FieldHyperlink](https://apireference.aspose.com/words/java/com.aspose.words/FieldHyperlink) type. After you use the **Hyperlink** class, you can get or set its **Target** , **Name** , and **IsLocal** properties. Now it is easy to change the targets and names of the hyperlinks throughout the document. In the example, all of the hyperlinks are changed to “<http://aspose.com>”. 

The following code example finds all hyperlinks in a Word document and changes their URL and display name.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Hyperlink-ReplaceHyperlinks-1.java" >}}

## Replace Fields with Static Text

This technique refers to removing dynamic fields from a document which change the text they display when updated and transforming them into plain text that will remain as they are even when fields are updated. This is often required when you wish to save your document as a static copy, for example for when sending as an attachment in an e-mail. The conversion of fields such as a DATE or TIME field to static text will enable them to display the same date as when you sent them. In some situations you may need to remove conditional IF fields from your document and replace them with the most recent text result instead. For example, converting the result of an IF field to static text so it will no longer dynamically change its value if the fields in the document are updated.

### The Solution

The process of converting fields to static text involves extracting the field result (the most recently updated text stored in the field) and retaining this value while removing the field objects around it. This will result in what was a dynamic field to be static text instead.

For example, the diagram below shows how an “IF” field is stored in a document. The text is encompassed by the special field nodes [FieldStart](https://apireference.aspose.com/words/java/com.aspose.words/FieldStart) and [FieldEnd](https://apireference.aspose.com/words/java/com.aspose.words/FieldEnd). The [FieldSeparator](https://apireference.aspose.com/words/java/com.aspose.words/FieldSeparator) node separates the text inside the field into the field code and field result. The field code is what defines the general behavior of the field while the field result stores the most recent result when this field is updated by either by Microsoft Word or Aspose.Words. The field result is what is stored in the field and displayed in the document when viewed.

|![fields-aspose-words-java-1](http://i.imgur.com/ljLbMm0.png)|
| :- |
The structure can also be seen below in hierarchical form using the demo project *“DocumentExplorer”* , which ships with the **Aspose.Words** installer.

|![fields-aspose-words-java-2](http://i.imgur.com/Mn0nxv0.png)|
| :- |
As described in the process above, to convert the field to static text all nodes between the **FieldStart** and **FieldSeparator** inclusive, and also the **FieldEnd** node must be removed. Please note that this technique cannot be used properly on some fields in the header or footer. For example attempting to convert a PAGE field in a header or footer to static text will cause the same value to appear across all pages. This is because headers and footers are repeated across multiple pages and when they remain as fields they are handled especially so they display the correct result for each page. However upon conversion, the field in the header is transformed into a static run of text. This run of text will be evaluated as if it is the last page in the section which will cause any of PAGE field in the header to display the last page over all pages.

### The Code

The implementation which converts fields to static text is described below. The ConvertFieldsToStaticText method can be called at any time within your application. After invoking this method, all of the fields of the specified field type that are contained within the composite node will be transformed into static text. Below class provides a static method convert fields of a particular type to static text.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldHelper-1.java" >}}

The method accepts two parameters, A CompositeNode and a FieldType enumeration. Being able to pass any composite node to this method allows you to convert fields to static text in specific parts of your document only. For example you can pass a Document object and convert the fields of the specified type from the entire document to static text, or you could pass the [Body](http://www.aspose.com/api/java/words/com.aspose.words/classes/Body) object of a section and convert only fields found within that body.

When passing a block level node such as a [Paragraph](http://www.aspose.com/api/java/words/com.aspose.words/classes/Paragraph) , be aware that in some cases fields can span across multiple paragraphs. For instance the **FieldCode** of a field can contain multiple paragraphs which will cause the **FieldEnd** to appear in a separate paragraph from the corresponding **FieldStart**. In this case you will find that a portion of the field code may still remain after the process has finished. If this happens then it is recommended to instead pass the parent of the composite to avoid this.

The **FieldType** enumeration passed to the method specifies what type of field should be convert to static text. A field of any other type encountered in the document will be left unchanged. The code example given below shows how to convert all fields of a specified type in a document to static text. You can download the template file of the below examples from [here](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/com/aspose/words/examples/programming_documents/fields/ConvertFieldsInDocument/TestFile.doc).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInDocument-1.java" >}}

The following code example shows how to convert all fields of a specified type in a body of a document to static text.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInBody-1.java" >}}

The following code example shows how to convert all fields of a specified type in a paragraph to static text.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInParagraph-1.java" >}}
