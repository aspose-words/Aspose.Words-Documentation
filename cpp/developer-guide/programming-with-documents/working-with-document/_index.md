---
title: Working with Document
type: docs
weight: 20
url: /cpp/working-with-document/
---

## Document Overview

The Document is a central class in Aspose.Words and represents a document and provides various document properties and methods such as saving or protecting the document.

Whatever you want to perform with Aspose.Words: create a new document from scratch, open a template for mail merge, get different parts from the document - use the **Document** class as your starting point. The **Document** object contains all content and formatting, styles, built-in and custom properties, and the MailMerge object that is used for a mail merge.

The **document** allows you to retrieve text, bookmarks and form fields for the whole document or for separate sections. The **document** contains a collection of the Section objects so that you can obtain a particular section or do some manipulations like copying/moving sections. The **document** can be saved at any time to a file or stream. A document can also be sent to a client browser.

## Working with Document Properties

Document properties allow some useful information to be stored along with the document. There is a system (built-in) and user-defined (custom) properties. Built-in properties contain such things as document title, author's name, document statistics, and so on. Custom properties are just name-value pairs where the user defines both the name and value. You can use document properties in your document automation project to store some useful info along with the document such as when the document was received/processed/time stamped and so on. 

{{% alert color="primary" %}} 

Aspose.Words for .NET directly writes the information about API and Version Number in output documents. For example, upon converting Document to DOC, Aspose.Words for C++ writes 8 bytes for AWC.17.9. You can check it by opening the file in some binary editor. For more details, please check, what Generator or Producer Name Values are Included in Output Documents upon Save

Please note that you cannot instruct Aspose.Words for C++ to change or remove this information from output Documents.

{{% /alert %}} 

### Accessing Document Properties in Microsoft Word

You can access document properties in Microsoft Word by using the File | Properties menu.

![todo:image_alt_text](/download/attachments/2884103/2068416172)

### Accessing Document Properties in Aspose.Words

To access document properties in Aspose.Words do the following:

- To obtain built-in document properties, use Document.BuiltInDocumentProperties.
- To obtain custom document properties, use Document.CustomDocumentProperties.

**Document.BuiltInDocumentProperties** returns a BuiltInDocumentProperties object and **Document.CustomDocumentProperties** returns a CustomDocumentProperties object. Both objects are collections of the DocumentProperty objects. These objects can be obtained through the indexer property either by name or by index. **BuiltInDocumentProperties** additionally provides access to the document properties via a set of typed properties that return values of the appropriate type. **CustomDocumentProperties** allows adding or removing document properties from the document. The code sample below shows how to enumerates through all built-in and custom properties in a document. You can download the template file of this example from here.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocProperties-EnumerateProperties.cpp" >}}

The DocumentProperty class allows you to get the name, value, and type of the document property:

- To get the name of a property, use DocumentProperty.Name.
- To get the value of a property, use DocumentProperty.Value. **DocumentProperty.Value** returns an **Object,** but there is a set of methods allowing you to get the value of the property converted to a particular type.
- To get the type of a property, use DocumentProperty.Type. This returns one of the PropertyType enumeration values. After you get to know what type the property is, you can use one of the **DocumentProperty.ToXXX** methods such as DocumentProperty.ToString and DocumentProperty.ToInt to obtain the value of the appropriate type instead of getting **DocumentProperty.Value**.

### Updating Built-In Document Properties

While Microsoft Word automatically updates some document properties when needed, Aspose.Words never automatically changes any properties. For example, Microsoft Word updates the time the document was last printed, last saved, updates statistical properties (word, paragraph, character etc counts). Aspose.Words does not update any properties automatically but provides a method for updating some statistical built-in document properties. Call the Document.UpdateWordCount method to recalculate and update the BuiltInDocumentProperties.Characters , BuiltInDocumentProperties.CharactersWithSpaces , BuiltInDocumentProperties.Words and BuiltInDocumentProperties.Paragraphs properties in the **BuiltInDocumentProperties** collection. This will ensure they are synchronized with changes made after the document was opened or created.

### Adding or Removing Document Properties

You cannot add or remove built-in document properties in Aspose.Words, you can only change their values. To add custom document properties in Aspose.Words, use CustomDocumentProperties.Add passing the name of the new property and the value of the appropriate type. The method returns the newly created **DocumentProperty** object. The code sample below shows how to checks if a custom property with a given name exists in a document and adds few more custom document properties. You can download the template file of this example from here.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocProperties-CustomAdd.cpp" >}}

To remove custom properties, use DocumentPropertyCollection.Remove passing it the name of the property to remove. The code sample below shows how to removes a custom document property.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocProperties-CustomRemove.cpp" >}}

### Configure Link to Content Property

Aspose.Words provides a method **CustomDocumentProperties->AddLinkToContent(string, string)** to create a new linked to content custom document property which returns the newly created property object or null if the link source is invalid. The following code example demonstrates how to configure the link to a content custom property.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocProperties-ConfiguringLinkToContent.cpp" >}}

## Cloning a Document

If you need to generate hundreds or thousands of documents from a single document, just load the document into memory once, clone it, and populate the cloned document with your data. This speeds up the generation of documents because there is no need to load and parse the document from the file every time. Cloning is done with the Document.Clone method that performs a deep copy of the Document and returns it. The code sample below shows how to deep clone a document. You can download the template file of this example from here.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-CloningDocument-CloningDocument.cpp" >}}

## Protecting Documents

When a document is protected, the user can make only limited changes, such as adding annotations, making revisions, or completing a form. Even if a document is protected with a password, Aspose.Words does not require the password to open, modify or unprotect this document. When you use Aspose.Words to protect a document, you have an option of keeping the existing password or specifying a new password.

If you need to make sure the document is really protected from changes, consider digitally signing the document. Aspose.Words supports detecting digital signatures for DOC, OOXML and ODT documents. Aspose.Words also preserves a digital signature applied to the VBA project (macros) contained in a document. For further details see the Working with Digital Signatures article.

Documents protected in Microsoft Word can be easily unprotected even by users without a password. When a document is protected, it can be opened in Microsoft Word, saved as RTF or WordprocessingML document and then the protection password can be removed using Notepad or any plain text editor. Then, the user can open the document again in Microsoft Word and save as an unprotected DOC.

### Protecting a Document

Use the Document.Protect method to protect a document from changes. This method accepts a ProtectionType parameter and optionally a password by passing one as the second parameter Document.Protect. The code sample below shows how to protect a document.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-ProtectDocument-ProtectDocument.cpp" >}}

### Unprotecting a Document

Calling Document.Unprotect unprotects the document even if it has a protection password. The code sample below shows how to unprotect any document. Note that the password is not required.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-ProtectDocument-UnProtectDocument.cpp" >}}

### Getting the Protection Type

You can retrieve the type of document protection by getting the value of the Document.ProtectionType property. The code sample below shows how to get a protection type currently set in the document.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-ProtectDocument-GetProtectionType.cpp" >}}

## Accessing Styles

You can get a collection of styles defined in the document using the Document.Styles property. This collection holds both the built-in and user-defined styles in a document. A particular style could be obtained by its name/alias, style identifier, or index. The code sample below shows how to get access to the collection of styles defined in the document. You can download the template file of this example from here.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-AccessStyles-AccessStyles.cpp" >}}

## Getting Document Variables

You can get a collection of document variables using the Document.Variables property. Variable names and values are strings. The code sample below shows how to enumerate over document variables. You can download the template file of this example from here.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-GetVariables-GetVariables.cpp" >}}

## Manage Tracking Changes

This article outlines how Aspose.Words supports the Track Changes feature of Microsoft Word. The Track Changes feature (also called Reviewing) in Microsoft Word allows you to track changes to content and formatting made by users. When you turn this feature on, all inserted, deleted and modified elements of the document will be visually highlighted with information about who, when and what was changed. The objects that carry the information about what was changed are called "tracking changes" or "revisions".

The Comments feature in Microsoft Word is also related to tracking changes. It allows a user to add a comment to any fragment of text in the document. Note that comments are completely independent of tracking changes.

### Aspose.Words Preserves Comments and Revisions

When you use Aspose.Words to open a Microsoft Word document and then save it, all comments and revisions in the document are preserved.

### Accept Revisions

The Document.AcceptAllRevisions method allows you to "accept" all revisions in the document. Calling this method is similar to selecting "Accept All Changes" in Microsoft Word. Aspose.Words will actually delete fragments that were "delete revisions", retain fragments that were "insert revisions" and apply formatting changes. Note that comments are not affected during this operation. In Aspose.Words, you can accept tracking changes of the document by calling Document.AcceptAllRevisions method. The code sample below shows how to accept all tracking changes in the document. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Programming-Documents/Document/Document.doc).

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-WorkingWithRevisions-AcceptAllRevisions.cpp" >}}

You can also check if a document has any tracking changes using the Document.HasRevisions property.

### Programmatically Access Revisions

There could be insert, delete and formatting change revisions in a Word document. Aspose.Words allows you to programmatically detect certain types of revisions. The IsInsertRevision, IsDeleteRevision, IsMoveFromRevision, and IsMoveToRevision properties available for the Run and Paragraph objects allow you to detect whether this object was inserted, deleted, or moved in Microsoft Word while change tracking was enabled. The Document.HasRevisions property returns true if the document has at least one revision. The Document.TrackRevisions property can be set to true to indicate whether the revision tracking in Microsoft Word will be enabled.

{{% alert color="primary" %}}

Note that this setting does not affect the changes made to the document using Aspose.Words. Changes made to the document using Aspose.Words are never tracked as revisions.

{{% /alert %}}

The below code example shows how to check move from (deleted) and move to (inserted) revisions. 

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-WorkingWithRevisions-GetRevisionTypes.cpp" >}}

### Access Revision Group

A revision in Aspose.Words is a change in one document node. A set of sequential revisions of the same type in adjacent document nodes forms a revision group. Similar revision groups are displayed in the "Reviewing Pane" of MS Word. RevisionGroup class represents a group of sequential Revision objects. The below code example shows how to get a revision and its group.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-WorkingWithRevisions-GetRevisionGroups.cpp" >}}


### Show Comments in PDF

Aspose.Words allows to show the comments while working with revisions and then exporting the word document into PDF. The below code example shows how to set to hide/ show comments in PDF by setting true or false for set_ShowComments method.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-WorkingWithRevisions-SetShowCommentsinPDF.cpp" >}}

### Show Revision in Balloons

The following code example shows how to format revisions in balloons.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-WorkingWithRevisions-SetShowInBalloons.cpp" >}}

### Programmatically Access Comments

Comments are represented in the document tree as objects of the Comment class. You can add, delete or modify comments programmatically like any other node in Aspose.Words Document Object Model. The comment is a composite node and can contain paragraphs and tables that constitute the text of the comment. The Comment class also provides access to the name and initials of the author of the comment.

### Revision Group Details

The Revision.Group property in Revision class can be used to get details if the revision belongs to any group. Its value will be null if the revision does not belong to any group. If the revision type is RevisionType.StyleDefinitionChange or if the revision no longer exists in document context (accepted/rejected) then it means that Revision has no group.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-WorkingWithRevisions-GetRevisionGroupDetails.cpp" >}}

## Setting View Options

You can control a document's view when it is opened in Microsoft Word. For example, you may want to switch to the print layout or change the zoom value. Use the Settings.ViewOptions property of the Document object to set the view options.

Microsoft Word 2013 does not write any zoom factor to a document and no longer sets the default zoom from the value written to the document, instead, it appears to use the zoom factor of the last document that was opened.

The following code shows how to make sure the document is displayed at 50% zoom when opened in Microsoft Word. You can download the template file of this example from here.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-SetViewOption-SetViewOption.cpp" >}}

## How to Compare Two Word Documents

You can use Document.Compare method to compare two documents to see the difference between them. This method mimics Microsoft Word's Compare feature and produces document difference as a number of edit and format revisions. The main idea is that if we reject all revisions then we get a document which is equal to the original document. On the contrary, if we accept all revisions then we get the final (comparison target) document.

{{% alert color="primary" %}}

**Try Online**

You can try this functionality and view the results online at this link:

<https://products.aspose.app/words/comparison>

{{% alert color="primary" %}}

### Limitations

There are a few general limitations:

- The document being compared must not have revisions before this method is called.
- Markup - is limited to SmartTag only. Other markups are ignored completely.
- Dml - Fallback shapes are compared instead of actual Dml comparison.

{{% alert color="primary" %}} 

There is an important note regarding "equal". Actually "equality" means here that the comparison method is not able to represent changes as revisions. In general, it means that both document text and text formatting are the same. But there can be other difference between documents. For example, Word supports only format revisions for styles and we can't represent style insertion/deletion. So documents can have a different set of styles and the Compare method still produces no revisions.

c

Following Example Shows Normal Comparison Case. You can download the template files of below examples from here.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-CompareDocument-NormalComparison.cpp" >}}


Below example shows how to test that Word Documents are "Equal".

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-CompareDocument-CompareForEqual.cpp" >}}

### Compare Word Documents and Ignore Document Formatting

CompareOptions class allows to choose advanced options for document comparison operation. You can ignore document formatting, headers-footers, fields, footnotes, tables, text boxes, comments and case changes when documents are compared. Set the value of CompareOptions->IgnoreFormatting property to *true* to ignore the document formatting. The headers and footers contents are ignored when CompareOptions->IgnoreHeadersAndFooters is set to *true*. The following code example shows how to ignore the document's formatting and headers footers contents.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-CompareDocument-CompareDocumentWithCompareOptions.cpp" >}}

### Set Target Document for Comparison Differences

MS Word has "Show changes in" option in compare document dialogue box and the result of the comparison depends on this option. CompareOptions->Target property serves this purpose. This property specifies which document shall be used as a target during the comparison. For example, this option together with IgnoreFormatting setting determines which document has to be used as a formatting source for ranges of equal text. ComparisonTargetType enumeration is used to specify base document which will be used during the comparison. The below code example shows how to set the target document for a comparison of two documents. 

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-CompareDocument-CompareDocumentWithComparisonTarget.cpp" >}}

### Set Comparison Granularity

Aspose.Words provides the [Granularity](https://apireference.aspose.com/words/cpp/class/aspose.words.compare_options#a14c4731651de1c44e602db44a0a00313) option, allowing the customer to specify comparison granularity. This feature allows you to specify the exact granularity of changes to track when comparing two documents. The following code example demonstrates how to specify comparison granularity.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-CompareDocument-SpecifyComparisonGranularity.cpp" >}}


## Working with Footnote and Endnote

### Insert Endnote and Set Numbering Options

If you want to insert footnote or endnote in Word document, please use DocumentBuilder.InsertFootnote method. This method inserts a footnote or endnote into the document. EndnoteOptions and FootnoteOptions classes represent numbering options for footnote and endnote. Following code example show how to insert endnote into the document and set its numbering options. 

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-WorkingWithFootnote-SetEndnoteOptions.cpp" >}}

### How to Set Number of Footnote Layout Columns

You can set the number of footnote layout columns using FootnoteOptions.Columns property. If this property has the value of 0, the footnotes area is formatted with a number of columns based on the number of columns on the displayed page. Below example shows how to set the number of columns for footnote layout.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-WorkingWithFootnote-SetFootNoteColumns.cpp" >}}

## Optimize Document to Particular MS Word Version

CompatibilityOptions.OptimizeFor method allows to optimize the document contents as well as default Aspose.Words behavior to a particular version of MS Word. You can use this method to prevent MS Word from displaying "Compatibility mode" ribbon upon document loading. Note that you may also need to set the Compliance property to Iso29500_2008_Transitional or higher. The below code example shows how to optimize document contents to MS Word 2016.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-SetCompatibilityOptions-OptimizeFor.cpp" >}}

## Allowing to Setup Language Preferences

Displaying the document in MS Word depends on what languages are set in defaults of that document. But what to do, if there are no languages are set in defaults? In this case, Word takes information from '*Set the Office Language Preferences*' dialog, which for example, can be found under 'File -> Options -> Language' menu in Word 2016. With Aspose.Words, you can set up language preferences using LanguagePreferences class. The below code example shows how to add the Japanese language to the editing languages. 

{{< gist "aspose-words" "38845012a35610163a07b547a36d6563" "cpp-Programming-Documents-Document-Setuplanguagepreferences-AddJapaneseAsEditinglanguages.cpp" >}}

The below code example shows how to set the Russian language as the default editing language.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-Setuplanguagepreferences-SetRussianAsDefaultEditingLanguage.cpp" >}}

## Get Font Line Spacing

The line spacing of a font is the vertical distance between the baselines of two consecutive lines of text. Thus, the line spacing includes the blank space between lines along with the height of the character itself.

The LineSpacing property was introduced in the Font class to obtain this value as shown in the example given below:

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-GetFontLineSpacing-GetFontLineSpacing.cpp" >}}

## Paragraph Style Separator

Aspose.Words provides a public property BreakIsStyleSeparator into a Paragraph class allows identifying Style Separator Paragraph as shown in the example given below:

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-ParagraphStyleSeparator-ParagraphStyleSeparator.cpp" >}}



