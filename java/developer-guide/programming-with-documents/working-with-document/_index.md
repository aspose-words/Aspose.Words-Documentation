---
title: Working with Document
type: docs
weight: 20
url: /java/working-with-document/
---

## Document Overview

The [Document](http://www.aspose.com/api/java/words/com.aspose.words/classes/Document) is a central class in Aspose.Words and represents a document and provides various document properties and methods such as saving or protecting the document.

Whatever you want to perform with Aspose.Words:

- Create a new document from scratch.
- Open a template for a mail merge.
- Get different parts from the document.

Use the [Document](http://www.aspose.com/api/java/words/com.aspose.words/classes/Document) class as your starting point.

The [Document](http://www.aspose.com/api/java/words/com.aspose.words/classes/Document) object contains all content and formatting, styles, built-in and custom properties, and the [MailMerge](http://www.aspose.com/api/java/words/com.aspose.words/classes/MailMerge) object that is used for a mail merge. The document allows you to retrieve text, bookmarks and form fields for the whole document or for separate sections. The document contains a collection of the [Section](http://www.aspose.com/api/java/words/com.aspose.words/classes/Section) objects so that you can obtain a particular section or do some manipulations like copying/moving sections. The document can be saved at any time to a file or stream. A document can also be sent to a client browser.

## Working with Document Properties

Document properties allow some useful information to be stored along with the document. There is a system (built-in) and user-defined (custom) properties. Built-in properties contain such things as document title, author's name, document statistics, and so on. Custom properties are just name-value pairs where the user defines both the name and value.

You can use document properties in your document automation project to store some useful info along with the document such as when the document was received/processed/time stamped and so on.

{{% alert color="primary" %}} 

Aspose.Words for Java directly writes the information about API and Version Number in output documents. For example, upon rendering Document to PDF, Aspose.Words for Java populates the **Application** field with value 'Aspose.Words' and **PDF Producer** field with value 'Aspose.Words for Java 17.9'. For more details, please check, [what Generator or Producer Name Values are Included in Output Documents upon Save](/words/java/generator-or-producer-name-included-in-output-documents/)

Please note that you cannot instruct Aspose.Words for Java to change or remove this information from output Documents.

{{% /alert %}} 

### Accessing Document Properties in Microsoft Word

You can access document properties in Microsoft Word by using the **File | Properties** menu.

![todo:image_alt_text](working-with-document_1.png)

### Accessing Document Properties in Aspose.Words

To access document properties in Aspose.Words do the following:

- To obtain built-in document properties, use [Document.getBuiltInDocumentProperties()](http://www.aspose.com/api/java/words/com.aspose.words/classes/document/methods/getBuiltInDocumentProperties\(\)/).
- To obtain custom document properties, use [Document.getCustomDocumentProperties()](http://www.aspose.com/api/java/words/com.aspose.words/classes/document/methods/getCustomDocumentProperties\(\)/).

[Document.getBuiltInDocumentProperties()](http://www.aspose.com/api/java/words/com.aspose.words/classes/document/methods/getBuiltInDocumentProperties\(\)/) returns a [BuiltInDocumentProperties](http://www.aspose.com/api/java/words/com.aspose.words/classes/BuiltInDocumentProperties) object and [Document.getCustomDocumentProperties()](http://www.aspose.com/api/java/words/com.aspose.words/classes/document/methods/getCustomDocumentProperties\(\)/) returns a [CustomDocumentProperties](http://www.aspose.com/api/java/words/com.aspose.words/classes/CustomDocumentProperties) object. Both objects are collections of the [DocumentProperty](http://www.aspose.com/api/java/words/com.aspose.words/classes/DocumentProperty) objects. These objects can be obtained through the indexer property either by name or by index. [BuiltInDocumentProperties](http://www.aspose.com/api/java/words/com.aspose.words/classes/BuiltInDocumentProperties) additionally provides access to the document properties via a set of typed properties that return values of the appropriate type. [CustomDocumentProperties](http://www.aspose.com/api/java/words/com.aspose.words/classes/CustomDocumentProperties) allows adding or removing document properties from the document. The code sample below shows how to enumerates through all built-in and custom properties in a document.

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-properties-AccessingDocumentProperties-AccessingDocumentProperties.java" >}}

The [DocumentProperty](http://www.aspose.com/api/java/words/com.aspose.words/classes/DocumentProperty) class allows you to get the name, value, and type of the document property:

- To get the name of a property, use [DocumentProperty.getName()](http://www.aspose.com/api/java/words/com.aspose.words/classes/documentproperty/methods/getName\(\)/).
- To get the value of a property, use [DocumentProperty.getValue()](http://www.aspose.com/api/java/words/com.aspose.words/classes/documentproperty/methods/getValue\(\)/). [DocumentProperty.getValue()](http://www.aspose.com/api/java/words/com.aspose.words/classes/documentproperty/methods/getValue\(\)/) returns an Object, but there is a set of methods allowing you to get the value of the property converted to a particular type.
- To get the type of a property, use [DocumentProperty.getType()](http://www.aspose.com/api/java/words/com.aspose.words/classes/documentproperty/methods/getType\(\)/). This returns one of the PropertyType enumeration values. After you get to know what type the property is, you can use one of the DocumentProperty.toXXX() methods such as [DocumentProperty.toString()](http://www.aspose.com/api/java/words/com.aspose.words/classes/documentproperty/methods/toString\(\)/) and [DocumentProperty.toInt()](http://www.aspose.com/api/java/words/com.aspose.words/classes/documentproperty/methods/toInt\(\)/) to obtain the value of the appropriate type instead of getting [DocumentProperty.getValue()](http://www.aspose.com/api/java/words/com.aspose.words/classes/documentproperty/methods/getValue\(\)/).

### Updating Built-In Document Properties

While Microsoft Word automatically updates some document properties when needed, Aspose.Words never automatically change any properties. For example, Microsoft Word updates the time the document was last printed, last saved, updates statistical properties (word, paragraph, character, etc counts).

Aspose.Words does not update any properties automatically, but provides a method for updating some statistical built-in document properties. Call the [Document.updateWordCount()](http://www.aspose.com/api/java/words/com.aspose.words/classes/document/methods/updateWordCount\(\)/) method to recalculate and update the [BuiltInDocumentProperties.getCharacters()](http://www.aspose.com/api/java/words/com.aspose.words/classes/builtindocumentproperties/methods/getCharacters\(\)/), [BuiltInDocumentProperties.getCharactersWithSpaces()](http://www.aspose.com/api/java/words/com.aspose.words/classes/builtindocumentproperties/methods/getCharactersWithSpaces\(\)/), [BuiltInDocumentProperties.getWords()](http://www.aspose.com/api/java/words/com.aspose.words/classes/builtindocumentproperties/methods/getWords\(\)/) and [BuiltInDocumentProperties.getParagraphs()](http://www.aspose.com/api/java/words/com.aspose.words/classes/builtindocumentproperties/methods/getParagraphs\(\)/) properties in the [BuiltInDocumentProperties](http://www.aspose.com/api/java/words/com.aspose.words/classes/BuiltInDocumentProperties) collection. This will ensure they are synchronized with changes made after the document was opened or created.

Note that Aspose.Words never updates the [BuiltInDocumentProperties.getLines()](http://www.aspose.com/api/java/words/com.aspose.words/classes/builtindocumentproperties/properties/getLines\(\)/) and [BuiltInDocumentProperties.getPages()](http://www.aspose.com/api/java/words/com.aspose.words/classes/builtindocumentproperties/properties/getPages\(\)/) properties.

### Update LastSavedTime Property Before Saving

You can set SaveOptions.setUpdateLastSavedTimeProperty property to true to update the corresponding built-in document property (BuiltInDocumentProperties.LastSavedTime) on document save. Following example shows how to update this property. 

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithSaveOptions-UpdateLastSavedTimeProperty.java" >}}


### Adding or Removing Document Properties

You cannot add or remove built-in document properties in Aspose.Words, you can only change their values. To add custom document properties in Aspose.Words, use [CustomDocumentProperties.add()](http://www.aspose.com/api/java/words/com.aspose.words/classes/CustomDocumentProperties) passing the name of the new property and the value of the appropriate type. The method returns the newly created [DocumentProperty](http://www.aspose.com/api/java/words/com.aspose.words/classes/DocumentProperty) object. The code sample below shows how to checks if a custom property with a given name exists in a document and adds few more custom document properties.

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-properties-AddOrRemoveDocumentProperties-AddDocumentProperties.java" >}}

To remove custom properties, use [DocumentPropertyCollection.remove(java.lang.String)](http://www.aspose.com/api/java/words/com.aspose.words/classes/documentpropertycollection/methods/remove\(java.lang.String\)/) passing it the name of the property to remove. The code sample below shows how to removes a custom document property.

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-properties-AddOrRemoveDocumentProperties-RemoveDocumentProperty.java" >}}

### Configure Link to Content Property

Aspose.Words provides a method [**CustomDocumentProperties.AddLinkToContent(string, string)**](https://apireference.aspose.com/java/words/com.aspose.words/customdocumentproperties#addLinkToContent\(java.lang.String,java.lang.String\))** **to create a new linked to content custom document property which returns the newly created property object or null if the link source is invalid. The following code example demonstrates how to configure the link to a content custom property.

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-properties-ConfiguringLinkToContent-ConfiguringLinkToContent.java" >}}

## Cloning a Document

If you need to generate hundreds or thousands of documents from a single document, just load the document into memory once, clone it, and populate the cloned document with your data. This speeds up the generation of documents because there is no need to load and parse the document from the file every time. Cloning is done with the [Document.deepClone()](http://www.aspose.com/api/java/words/com.aspose.words/classes/Document) method that performs a deep copy of the [Document](http://www.aspose.com/api/java/words/com.aspose.words/classes/Document) and returns it. The code sample below shows how to deep clone a document.

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CloneDocument-.java" >}}

## Display the Document Title in the Window Title bar of PDF document

If you need to show the title of the document in the window title bar of PDF, PdfSaveOptions setDisplayDocTitle serves this purpose. Set the value of this property to *true* to show the document's title in the window title bar. If the value of this property is *false*, the title bar should instead display the name of the PDF file containing the document.

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-loading_saving-DisplayDocTitleInWindowTitlebar-DisplayDocTitleInWindowTitlebar.java" >}}


## Protecting Documents

When a document is protected, the user can make only limited changes, such as adding annotations, making revisions, or completing a form. Even if a document is protected with a password, Aspose.Words does not require the password to open, modify or unprotect this document. When you use Aspose.Words to protect a document, you have the option of keeping the existing password or specifying a new password. If you need to make sure the document is really protected from changes, consider digitally signing the document. Aspose.Words supports detecting digital signatures for DOC, OOXML and ODT documents. Aspose.Words also preserves a digital signature applied to the VBA project (macros) contained in a document. For further details see the [Working with Digital Signatures](https://docs.aspose.com/words/java/working-with-digital-signatures/) article.

{{% alert color="primary" %}} 

Documents protected in Microsoft Word can be easily unprotected even by users without a password. When a document is protected, it can be opened in Microsoft Word, saved as RTF or WordprocessingML document and then the protection password can be removed using Notepad or any plain text editor. Then, the user can open the document again in Microsoft Word and save as an unprotected DOC.

{{% /alert %}} 

### Protecting a Document

Use the [Document.protect(int)](http://www.aspose.com/api/java/words/com.aspose.words/classes/document/methods/protect\(int\)/) method to protect a document from changes. This method accepts a ProtectionType parameter and optionally a password by passing one as the second parameter [Document.protect(int, java.lang.String)](http://www.aspose.com/api/java/words/com.aspose.words/classes/document/methods/protect\(int,java.lang.String\)/). The code sample below shows how to protect a document.

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-ProtectADocument.java" >}}

### Unprotecting a Document

Calling [Document.unprotect()](http://www.aspose.com/api/java/words/com.aspose.words/classes/document/methods/unprotect\(\)/) unprotects the document even if it has a protection password. The code sample below shows how to unprotect any document. Note that the password is not required.

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-UnprotectADocument.java" >}}

### Getting the Protection Type

You can retrieve the type of document protection by getting the value of the [Document.getProtectionType()](http://www.aspose.com/api/java/words/com.aspose.words/classes/document/methods/getProtectionType\(\)/) property. The code sample below shows how to get a protection type currently set in the document.

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-GetTheProtectionType.java" >}}

## Accessing Styles

You can get a collection of styles defined in the document using the [Document.getStyles()](http://www.aspose.com/api/java/words/com.aspose.words/classes/document/methods/getStyles\(\)/) property. This collection holds both the built-in and user-defined styles in a document. A particular style could be obtained by its name/alias, style identifier, or index. Styles and formatting are discussed in more detail later in this documentation. The code sample below shows how to get access to the collection of styles defined in the document.

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-AccessStyles-AccessStyles.java" >}}

[Document.getStyles()](http://www.aspose.com/api/java/words/com.aspose.words/classes/document/methods/getStyles\(\)/) also contains the style aliases. So, please use [Style.getAliases()](http://www.aspose.com/api/java/words/com.aspose.words/classes/style/methods/getAliases\(\)/) property to get all aliases of a style. If the style has no aliases then an empty array of a string is returned. If you want to iterate through only unique styles in a document, please use the following code example.

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-AccessStyles-IterateThroughStyles.java" >}}

## Getting Document Variables

You can get a collection of document variables using the [Document.getVariables()](http://www.aspose.com/api/java/words/com.aspose.words/classes/document/methods/getVariables\(\)/) property. Variable names and values are strings. The code sample below shows how to enumerate over document variables.

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-GetDocumentVariables-.java" >}}

## Manage Tracking Changes

This article outlines how Aspose.Words supports the Track Changes feature of Microsoft Word. The Track Changes feature (also called Reviewing) in Microsoft Word allows you to track changes to content and formatting made by users. When you turn this feature on, all inserted, deleted and modified elements of the document will be visually highlighted with information about who, when and what was changed. The objects that carry the information about what was changed are called "tracking changes" or "revisions".

The Comments feature in Microsoft Word is also related to tracking changes. It allows a user to add a comment to any fragment of text in the document. Note that comments are completely independent of tracking changes.

### Aspose.Words Preserves Comments and Revisions

When you use Aspose.Words to open a Microsoft Word document and then save it, all comments and revisions in the document are preserved.

### Accept Revisions

The [Document.acceptAllRevisions()](http://www.aspose.com/api/java/words/com.aspose.words/classes/document/methods/acceptAllRevisions\(\)/) method allows you to "accept" all revisions in the document. Calling this method is similar to selecting "Accept All Changes" in Microsoft Word. Aspose.Words will actually delete fragments that were "delete revisions", retain fragments that were "insert revisions" and apply formatting changes. Note that comments are not affected during this operation. In Aspose.Words, you can accept tracking changes of the document by calling [Document.acceptAllRevisions()](http://www.aspose.com/api/java/words/com.aspose.words/classes/document/methods/acceptAllRevisions\(\)/). The code sample below shows how to accept all tracking changes in the document.

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-.java" >}}

You can also check if a document has any tracking changes using the [Document.hasRevisions()](http://www.aspose.com/api/java/words/com.aspose.words/classes/document/methods/hasRevisions\(\)/) property.

### Programmatically Access Revisions

There could be insert, delete and formatting change revisions in a Word document. Aspose.Words allows you to programmatically detect certain types of revisions. The IsInsertRevision, IsDeleteRevision, IsMoveFromRevision, and IsMoveToRevision properties available for the Run and Paragraph objects allow you to detect whether this object was inserted, deleted, or moved in Microsoft Word while change tracking was enabled. The Document.HasRevisions property returns true if the document has at least one revision. The Document.TrackRevisions property can be set to true to indicate whether the revision tracking in Microsoft Word will be enabled.

{{% alert color="primary" %}} 

Note that this setting does not affect the changes made to the document using Aspose.Words. Changes made to the document using Aspose.Words are never tracked as revisions.

{{% /alert %}} 

The given below code example shows how to check move from (deleted) and move to (inserted) revisions. 

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-GetRevisionTypes.java" >}}

### How to Access the Revised Version of a Document

The API provides *RevisionsView* public enumeration which allows specifying whether to work with the original or revised version of a document. The document class provides RevisionsView property which gets or sets enumeration value. The default value is Aspose.Words.RevisionsView.Original. 

The code example given below shows how to use this enumeration and access the revised version.

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-AccessRevisedVersion.java" >}}

### Access Revision Group

A revision in Aspose.Words is a change in one document node. A set of sequential revisions of the same type in adjacent document nodes forms a revision group. Similar revision groups are displayed in the "Reviewing Pane" of MS Word. RevisionGroup class represents a group of sequential Revision objects. The below code example shows how to get a revision and its group.

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-GetRevisionGroups.java" >}}

### Programmatically Access Comments

Comments are represented in the document tree as objects of the Comment class. You can add, delete or modify comments programmatically like any other node in Aspose.Words Document Object Model. A comment is a composite node and can contain paragraphs and tables that constitute the text of the comment. The Comment class also provides access to the name and initials of the author of the comment.

### Revision Group Details

The Revision.Group property in Revision class can be used to get details if the revision belongs to any group. Its value will be null if the revision does not belong to any group. If the revision type is RevisionType.StyleDefinitionChange or if the revision no longer exists in document context (accepted/rejected) then it means that Revision has no group.

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-GetRevisionGroupDetails.java" >}}

## Setting View Options

You can control a document's view when it is opened in Microsoft Word. For example, you may want to switch to the print layout or change the zoom value. Use the [ViewOptions](http://www.aspose.com/api/java/words/com.aspose.words/classes/ViewOptions) property of the [Document](http://www.aspose.com/api/java/words/com.aspose.words/classes/Document) object to set the view options. The following code shows how to make sure the document is displayed at 50% zoom when opened in Microsoft Word.

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SetViewOptions-.java" >}}

## Remove Unused Styles and Lists from Document

If you want to remove only unused styles or lists from the document, you can use Document.cleanup method with CleanupOptions. CleanupOptions class allows specifying options for document cleaning. The following code example shows how to remove only unused styles from the document. 

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-CleansUnusedStylesandLists-CleansUnusedStylesandLists.java" >}}

## Set Lines per Page and Number of Characters per Line

If you want to set the numbers of characters per line, please use the CharactersPerLine property of PageSetup. The minimum value of this property is 1. The maximum value depends on page width and font size of the Normal style. The minimum character pitch is 90 percent of the font size. For example, a maximum number of characters per line of a Letter page with one-inch margins is 43. By default, the property has a value, on which character pitch equals to the font size of the Normal style.

You can also set the number of lines per page for Word document. Please use the LinesPerPage property of PageSetup to get or set the number of lines per page in the document grid. The minimum value of the property is 1. The maximum value depends on page height and font size of the Normal style. The minimum line pitch is 136 percent of the font size. For example, a maximum number of lines per page of a Letter page with one-inch margins is 39. By default, the property has a value, on which line pitch is 1.5 times greater than the font size of the Normal style.

The following code example shows how to set the number of characters per line and number of lines per page for Word document. 

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentPageSetup-DocumentPageSetup.java" >}}

## Working with Footnote and Endnote

### Insert Endnote and Set Numbering Options

If you want to insert a footnote or an endnote in Word document, please use DocumentBuilder.InsertFootnote method. This method inserts a footnote or endnote into the document. EndnoteOptions and FootnoteOptions classes represent numbering options for footnote and endnote. The following code example shows how to insert endnote into a document and set its numbering options. 

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetEndnoteOptions.java" >}}

### How to Set Number of Footnote Layout Columns

You can set the number of footnote layout columns using FootnoteOptions.Columns property. If this property has the value of 0, the footnotes area is formatted with a number of columns based on the number of columns on the displayed page. Below example shows how to set the number of columns for footnote layout.

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetFootNoteColumns.java" >}}

### How to Set the Position of Footnote and EndNote

The footnote position can be at the bottom of each page or beneath the text on each page. The endnote position can be at the end of the section or at the end of the document. The following code example shows how to set the position of footnote and endnote.

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetFootnoteAndEndNotePosition.java" >}}

## Optimize Document to Particular MS Word Version

CompatibilityOptions.OptimizeFor method allows optimizing the document contents as well as default Aspose.Words behavior to a particular version of MS Word. You can use this method to prevent MS Word from displaying "Compatibility mode" ribbon upon document loading. Note that you may also need to set the Compliance property to Iso29500_2008_Transitional or higher. The following code example shows how to optimize document contents to MS Word 2016.

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SetCompatibilityOptions-optimizeFor.java" >}}

## Allowing to Setup Language Preferences

Displaying the document in MS Word depends on what languages are set in defaults of that document. But what to do, if there are no languages are set in defaults? In this case, Word takes information from '*Set the Office Language Preferences*' dialogue, which for example, can be found under 'File -> Options -> Language' menu in Word 2016. With Aspose.Words, you can set up language preferences using LanguagePreferences class. The following code example shows how to add the Japanese language to the editing languages. 

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SetupLanguagePreferences-AddJapaneseAsEditinglanguages.java" >}}

The following code example shows how to set the Russian language as the default editing language.

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SetupLanguagePreferences-SetRussianAsDefaultEditingLanguage.java" >}}

## Remove Personal Information from Document

If you want to share Word document with other people, you can remove personal information, such as author name and company. You can use the Document.RemovePersonalInformation property to set the flag indicating that Microsoft Word will remove all user information from comments, revisions and document properties upon saving the document. 

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-properties-DocProperties-RemovePersonalInformation.java" >}}

## Working With Import Format Options

Aspose.Words provide ImportFormatOptions class which allows specifying various import options to format output.

### Set Smart Style Behavior

ImportFormatOptions class provides **SmartStyleBehavior** property to work when styles clashes upon importing.

When this option is **enabled**, a source style will be expanded into a direct attribute inside a destination document, if KeepSourceFormatting importing mode is used.
When this option is **disabled**, a source style will be expanded only if it is numbered. Existing destination attributes will not be overridden, including lists.

For a moment, this option can be used only with a new public method of a DocumentBuilder class as shown in the example given below:

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithImportFormatOptions-SmartStyleBehavior.java" >}}


### Set Keep Source Numbering

When import nodes between different documents there can be a situation when source document has lists with the same identifiers that were already used in a destination document. Word in such cases always uses the formatting from the destination lists. To allow users to choose an appropriate behavior, the KeepSourceNumbering property was introduced in ImportFormatOptions class which specifies how the numbering will be imported when it clashes in source and destination documents. The default value is false.

For using this property, a new public method that accepts the new KeepSourceNumbering option was introduced as shown in the following example:

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithImportFormatOptions-KeepSourceNumbering.java" >}}

### Set Ignore Text Boxes

When import a text box between different documents, the formatting of the destination document is applied to it. This corresponds to the behavior of Word. To allow users to choose an appropriate behavior, the IgnoreTextBoxes option was introduced in ImportFormatOptions class. This property indicates whether to ignore formatting in the text boxes of the source destination during the import and the default value is true.

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithImportFormatOptions-IgnoreTextBoxes.java" >}}

## Get Font Line Spacing

The line spacing of a font is the vertical distance between the baselines of two consecutive lines of text. Thus, the line spacing includes the blank space between lines along with the height of the character itself.

The LineSpacing property was introduced in the Font class to obtain this value as shown in the example given below:

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-GetFontLineSpacing-GetFontLineSpacing.java" >}}

## Paragraph Style Separator

Aspose.Words provides a public property BreakIsStyleSeparator into a Paragraph class allows identifying Style Separator Paragraph as shown in the example given below:

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ParagraphStyleSeparator-ParagraphStyleSeparator.java" >}}
