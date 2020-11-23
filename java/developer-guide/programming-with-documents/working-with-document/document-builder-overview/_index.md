---
title: Document Builder Overview
type: docs
weight: 10
url: /java/document-builder-overview/
---

[](http://www.aspose.com/api/net/words/aspose.words/documentbuilder)

[
DocumentBuilder](https://apireference.aspose.com/words/java/com.aspose.words/DocumentBuilder) is a powerful class that is associated with a [Document](https://apireference.aspose.com/words/java/com.aspose.words/Document) and allows dynamic document building from scratch or the addition of new elements to an existing document. It provides methods to insert text, checkbox, ole object, paragraphs, lists, tables, images and other contents, specification of font, paragraph, and section formatting, and other things.

[DocumentBuilder](https://apireference.aspose.com/words/java/com.aspose.words/DocumentBuilder) complements classes and methods available in the Aspose.Words Document Object Model by simplifying most common document building tasks, such as inserting text, checkbox, ole object, tables, fields, and hyperlinks.

Everything that is possible with [DocumentBuilder](https://apireference.aspose.com/words/java/com.aspose.words/DocumentBuilder) is also possible when using the classes of the Aspose.Words Document Object Model directly, but using Aspose.Words DOM classes directly usually require more lines of code than using [DocumentBuilder](https://apireference.aspose.com/words/java/com.aspose.words/DocumentBuilder).

[DocumentBuilder](https://apireference.aspose.com/words/java/com.aspose.words/DocumentBuilder) has an internal cursor that you can navigate to a different location in a document using various **DocumentBuilder.MoveToXXX** methods such as [DocumentBuilder.MoveToDocumentStart](https://apireference.aspose.com/words/java/com.aspose.words/documentbuilder#moveToDocumentStart\(\)) and [DocumentBuilder.MoveToField](https://apireference.aspose.com/words/java/com.aspose.words/documentbuilder#moveToDocumentEnd\(\)) .

You can insert text, checkbox, ole object, images, bookmarks, form fields, and other document elements at the cursor position using any of **DocumentBuilder.InsertXXX** methods such as [DocumentBuilder.InsertField](https://apireference.aspose.com/words/java/com.aspose.words/documentbuilder#insertField\(java.lang.String\)), [DocumentBuilder.InsertHtml](https://apireference.aspose.com/words/java/com.aspose.words/documentbuilder#insertField\(java.lang.String,java.lang.String\)) and other similar methods.

Aspose.Words API provides several classes responsible for different document elements’ formatting. Each of the classes encapsulates a number of formatting properties related to a particular document element such as text, paragraph, section, and so on. For example, the [Font](https://apireference.aspose.com/words/java/com.aspose.words/Font) class represents character formatting properties, the [ParagraphFormat](https://apireference.aspose.com/words/java/com.aspose.words/ParagraphFormat) class represents paragraph formatting properties, etc. The objects of these classes are returned by the corresponding **DocumentBuilder** properties (that have the same names as the classes) so you can access them and set the desired formatting during the document build.

To start, you need to create a **DocumentBuilder** and associate it with a **Document** object. Create a new instance of DocumentBuilder by calling its constructor and pass to it a Document object for attachment to the builder. To insert a text, simply pass the string of text you need to insert into the document to the [DocumentBuilder.Write](https://apireference.aspose.com/words/java/com.aspose.words/documentbuilder#write\(java.lang.String\)) method. The following code example demonstrates how to create a simple document using a document builder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithDocumentBuilder-CreateSimpleDocument.java" >}}

Text formatting is determined by the Font property. This object contains different font attributes (font name, font size, color, and so on). Some important font attributes are also represented by DocumentBuilder properties to allow you to access them directly. These are Boolean properties [Font.Bold](https://apireference.aspose.com/words/java/com.aspose.words/font#Bold), [Font.Italic](https://apireference.aspose.com/words/java/com.aspose.words/font#Italic), and [Font.Underline](https://apireference.aspose.com/words/java/com.aspose.words/font#Underline). The code example given below Inserts formatted text using DocumentBuilder:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithDocumentBuilder-SetFontFormatting.java" >}}

{{% alert color="primary" %}} 

Note that the character formatting you set will apply to all text inserted from the current position in the document onwards.

{{% /alert %}}
