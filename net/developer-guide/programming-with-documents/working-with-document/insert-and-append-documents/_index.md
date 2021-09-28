---
title: Insert and Append Documents
description: "Aspose.Words for .NET allows you to combine documents into one: insert or append a document into a new or existing one using find and replace, merge field, bookmark, or simply at the document end."
type: docs
weight: 70
url: /net/insert-and-append-documents/
aliases: [/net/join-and-append-documents/]
---

Sometimes it is required to combine several documents into one. You can do this manually or you can use Aspose.Words insert or append feature.

The insert operation allows you to insert the content of previously created documents into a new or existing one.

In turn, the append feature allows you to add a document only at the end of another document.

This article explains how to insert or append a document to another one in different ways and describes the common properties that you can apply while inserting or appending documents.

## Insert a Document

As mentioned above, in Aspose.Words a document is represented as a tree of nodes, and the operation of inserting one document into another is copying nodes from the first document tree to the second one.

You can insert documents in a variety of locations in different ways. For example, you can insert a document through a replace operation, a merge field during a merge operation, or via a bookmark.

You can also use the [InsertDocument](https://apireference.aspose.com/words/net/aspose.words/documentbuilder/methods/insertdocument/index) method, which is similar to inserting a document in Microsoft Word, to insert a whole document at the current cursor position without any previous importing.

The following subsections describe the options during which you can insert one document into another.

### Insert a Document During Find and Replace Operation

You can insert documents while performing find and replace operations. For example, a document can contain paragraphs with the text [INTRODUCTION] and [CONCLUSION]. But in the final document, you need to replace those paragraphs with the content obtained from another external document. To achieve that, you will need to create a handler for the replace event.

The following code example demonstrates how to create a handler for the replacing event to use it later in the inserting process:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Clone and combine documents-InsertDocumentAtReplaceHandler.cs" >}}

The following code example demonstrates how insert content of one document into another during a find and replace operation:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Clone and combine documents-InsertDocumentAtReplace.cs" >}}

### Insert a Document During Mail Merge Operation

You can insert a document into a merge field during a mail merge operation. For example, a mail merge template can contain a merge field such as [Summary]. But in the final document, you need to insert content obtained from another external document into this merge field. To achieve that, you will need to create a handler for the merge event.

The following code example demonstrates how to create a handler for the merging event to use it later in the inserting process:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Clone and combine documents-InsertDocumentAtMailMergeHandler.cs" >}}

The following code example demonstrates how to insert a document into the merge field using the created handler:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Clone and combine documents-InsertDocumentAtMailMerge.cs" >}}

### Insert a Document at Bookmark

You can import a text file into a document and insert it right after a bookmark that you have defined in the document. To do this, create a bookmarked paragraph where you want the document to be inserted.

The following coding example demonstrates how to insert the contents of one document to a bookmark in another document:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Clone and combine documents-InsertDocumentAtBookmark.cs" >}}

{{% alert color="primary" %}} 

Note that the bookmark should not enclose multiple paragraphs or text that you want them to appear in your final resulting document.

{{% /alert %}} 

## Append a Document

You may have a use case where you need to include additional pages from a document to the end of an existing document. To do this, you just need to call the [AppendDocument](https://apireference.aspose.com/words/net/aspose.words/document/methods/appenddocument) method to add a document to the end of another one.

{{% alert color="primary" %}} 

Note that [AppendChild](https://apireference.aspose.com/words/net/aspose.words/compositenode/methods/appendchild) is a node level method within a document. For example, you can create a paragraph, set formatting properties, and then append it as a child to the body using the **AppendChild** method.

{{% /alert %}} 

The following code example demonstrates how to append a document to the end of another document:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Join and append documents-KeepSourceFormatting.cs" >}}

## Import and Insert Nodes Manually

Aspose.Words enables you to insert and append documents automatically without any previous importing requirements. However, if you need to insert or append a specific node of your document, such as a section or a paragraph, then first you need to import this node manually.

When you need to insert or append one section or paragraph to another, you essentially need to import the nodes of the first document node tree into the second one using the [ImportNode](https://apireference.aspose.com/words/net/aspose.words/nodeimporter/methods/importnode) method. After importing your nodes, you need to use the [InsertAfter](https://apireference.aspose.com/words/net/aspose.words/compositenode/methods/insertafter)/[InsertBefore](https://apireference.aspose.com/words/net/aspose.words/compositenode/methods/insertbefore) method to insert a new node after/before the reference node. This enables you to customize the inserting process by importing nodes from a document and inserting it at given positions.

You can also use the [AppendChild](https://apireference.aspose.com/words/net/aspose.words/compositenode/methods/appendchild) method to add a new specified node to the end of the list of child nodes, for example, if you want to append content at the paragraph level instead of at the section level.

The following code example demonstrates how to insert document content into another document using the **InsertDocument** method:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Join and append documents-InsertDocumentWithBuilder.cs" >}}

The following code example shows how to manually import nodes and insert them after a specific node using the **InsertAfter** method:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Clone and combine documents-InsertDocument.cs" >}}

{{% alert color="primary" %}} 

The import creates a new node that is a copy of the original node and suitable for insertion into the destination document.

{{% /alert %}} 

Content is imported into the destination document section by section, which means that settings, such as page setup and headers or footers, are preserved during import. It is also useful to note that you can define formatting settings when you insert or append a document to specify how two documents are joined together.

## Common Properties for Insert and Append Documents

Both [InsertDocument](https://apireference.aspose.com/words/net/aspose.words.documentbuilder/insertdocument/methods/1) and [AppendDocument](https://apireference.aspose.com/words/net/aspose.words.document/appenddocument/methods/1) methods accept [ImportFormatMode](https://apireference.aspose.com/words/net/aspose.words/importformatmode) and [ImportFormatOptions](https://apireference.aspose.com/words/net/aspose.words/importformatoptions) as input parameters. The **ImportFormatMode** allows you to control how document formatting is merged when you import content from one document into another by selecting different format modes such as [UseDestinationStyles](https://apireference.aspose.com/words/net/aspose.words/importformatmode), [KeepSourceFormatting](https://apireference.aspose.com/words/net/aspose.words/importformatmode), and [KeepDifferentStyles](https://apireference.aspose.com/words/net/aspose.words/importformatmode). The **ImportFormatOptions** enables you to select different import options such as [IgnoreHeaderFooter](https://apireference.aspose.com/words/net/aspose.words/importformatoptions/properties/ignoreheaderfooter), [IgnoreTextBoxes](https://apireference.aspose.com/words/net/aspose.words/importformatoptions/properties/ignoretextboxes), [KeepSourceNumbering](https://apireference.aspose.com/words/net/aspose.words/importformatoptions/properties/keepsourcenumbering), [MergePastedLists](https://apireference.aspose.com/words/net/aspose.words/importformatoptions/properties/mergepastedlists), and [SmartStyleBehavior](https://apireference.aspose.com/words/net/aspose.words/importformatoptions/properties/smartstylebehavior).

Aspose.Words enables you to adjust the visualization of a resulting document when two documents are added together in an insert or append operation by using the [Section](https://apireference.aspose.com/words/net/aspose.words/section/properties/index) and [PageSetup](https://apireference.aspose.com/words/net/aspose.words/documentbuilder/properties/pagesetup) properties. The **PageSetup** property contains all the attributes of a section such as [SectionStart](https://apireference.aspose.com/words/net/aspose.words/pagesetup/properties/sectionstart), [RestartPageNumbering](https://apireference.aspose.com/words/net/aspose.words/pagesetup/properties/restartpagenumbering), [PageStartingNumber](https://apireference.aspose.com/words/net/aspose.words/pagesetup/properties/pagestartingnumber), [Orientation](https://apireference.aspose.com/words/net/aspose.words/pagesetup/properties/orientation), and others. The most common use case is to set the **SectionStart** property to define if the added content will appear on the same page or split into a new one.

{{% alert color="primary" %}} 

Note that the **Section** and **PageSetup** properties do not control how two documents are inserted/appended together. They only allow you to change the appearance of your result document.

{{% /alert %}} 

The following code example shows how to append one document to another while keeping the content from splitting across two pages:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Join and append documents-DifferentPageSetup.cs" >}}
