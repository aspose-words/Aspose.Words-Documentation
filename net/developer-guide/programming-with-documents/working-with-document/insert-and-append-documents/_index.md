---
title: Insert and Append Documents
description: "Aspose.Words for .NET allows you to combine documents into one: insert or append a document into a new or existing one using find and replace, merge field, bookmark, or simply at the document end."
type: docs
weight: 70
url: /net/insert-and-append-documents/
aliases: [/net/join-and-append-documents/]
---

Sometimes it is required to combine several documents into one. You can do this manually or you can use Aspose.Words insert or append feature. The insert operation allows you to insert the content of previously created documents into a new or existing one.

In turn, the append feature allows you to add a document only at the end of another document.

This article explains how to insert or append a document to another one in different ways and describes the common properties that you can apply while inserting or appending documents.

## Insert a Document

As mentioned above, in Aspose.Words a document is represented as a tree of nodes, and the operation of inserting one document into another is copying nodes from the first document tree to the second one.

You can insert documents in a variety of locations in different ways. For example, you can insert a document through a replace operation, a merge field during a merge operation, or via a bookmark.

You can also use the [InsertDocument](https://apireference.aspose.com/words/net/aspose.words/documentbuilder/methods/insertdocument/index) method, which is similar to inserting a document in Microsoft Word, to insert a whole document at the current cursor position without any previous importing.

The following subsections describe the options during which you can insert one document into another.

### Insert a Document During Find and Replace Operation

You can insert documents while performing find and replace operations. For example, a document can contain paragraphs with the text [INTRODUCTION] and [CONCLUSION]. But in the final document, you need to replace those paragraphs with the content obtained from another external document. To achieve that, you will need to create a handler for the replace event.

The following code example shows how to create a handler for the replacing event to use it later in the inserting process:

{{< highlight csharp >}}
private class InsertDocumentAtReplaceHandler : IReplacingCallback
{
	ReplaceAction IReplacingCallback.Replacing(ReplacingArgs args)
	{
		Document subDoc = new Document(MyDir + "Document.docx");

		// Insert a document after the paragraph, containing the match text.
		Paragraph para = (Paragraph)args.MatchNode.ParentNode;
		InsertDocument(para, subDoc);
	
		// Remove the paragraph with the match text.
		para.Remove();
		return ReplaceAction.Skip;
	}
}
{{< /highlight >}}

The following code example shows how insert content of one document into another during a find and replace operation:

{{< highlight csharp >}}
// Upload the document.
Document mainDoc = new Document(MyDir + "Document insertion destination.docx");

// Set find and replace options.
FindReplaceOptions options = new FindReplaceOptions();
options.Direction = FindReplaceDirection.Backward;
options.ReplacingCallback = new InsertDocumentAtReplaceHandler();

// Call the replace method.
mainDoc.Range.Replace(new Regex("\\[MY_DOCUMENT\\]"), "", options);
mainDoc.Save(ArtifactsDir + "InsertDocument.InsertDocumentAtReplace.docx");
{{< /highlight >}}

### Insert a Document During Mail Merge Operation

You can insert a document into a merge field during a mail merge operation. For example, a mail merge template can contain a merge field such as [Summary]. But in the final document, you need to insert content obtained from another external document into this merge field. To achieve that, you will need to create a handler for the merge event.

The following code example shows how to create a handler for the merging event to use it later in the inserting process:

{{< highlight csharp >}}
private class InsertDocumentAtMailMergeHandler : IFieldMergingCallback
{
	// This handler makes special processing for the "Document_1" field.
	// The field value contains the path to load the document. 
	// We load the document and insert it into the current merge field.
	void IFieldMergingCallback.FieldMerging(FieldMergingArgs args)
	{
		if (args.DocumentFieldName == "Document_1")
		{
			// Use document builder to navigate to the merge field with the specified name.
			DocumentBuilder builder = new DocumentBuilder(args.Document);
			builder.MoveToMergeField(args.DocumentFieldName);

			// The name of the document to load and insert is stored in the field value.
			Document subDoc = new Document((string)args.FieldValue);
	
			// Insert the document.
			InsertDocument(builder.CurrentParagraph, subDoc);
	
			// The paragraph that contained the merge field might be empty now and you probably want to delete it.
			if (!builder.CurrentParagraph.HasChildNodes)
				builder.CurrentParagraph.Remove();
	
			// Indicate to the mail merge engine that we have inserted what we wanted.
			args.Text = null;
		}
	}
}
{{< /highlight >}}

The following code example shows how to insert a document into the merge field using the created handler:

{{< highlight csharp >}}
// Open the main document.
Document mainDoc = new Document(MyDir + "Document insertion destination.docx");

// Add a handler to MergeField event.
mainDoc.MailMerge.FieldMergingCallback = new InsertDocumentAtMailMergeHandler();

// The main document has a merge field in it called "Document_1".
// The corresponding data for this field contains fully qualified path to the document
// that should be inserted to this field.
mainDoc.MailMerge.Execute(new string[] { "Document_1" }, new object[] { MyDir + "Document.docx" });
mainDoc.Save(ArtifactsDir + "InsertDocument.InsertAtMailMerge.docx");
{{< /highlight >}}

### Insert a Document at Bookmark

You can import a text file into a document and insert it right after a bookmark that you have defined in the document. To do this, create a bookmarked paragraph where you want the document to be inserted.

The following coding example shows how to insert the contents of one document to a bookmark in another document:

{{< highlight csharp >}}
// Load a Document.
Document mainDoc = new Document(MyDir + "Document insertion destination.docx");
Document docToInsert = new Document(MyDir + "Document.docx");

// Inset the document at the bookmark.
Bookmark bookmark = mainDoc.Range.Bookmarks["insertionPlace"];
InsertDocument(bookmark.BookmarkStart.ParentNode, docToInsert);
mainDoc.Save(ArtifactsDir + "InsertDocument.InsertAtBookmark.docx");
{{< /highlight >}}

{{% alert color="primary" %}} 

Note that the bookmark should not enclose multiple paragraphs or text that you want them to appear in your final resulting document.

{{% /alert %}} 

## Append a Document

You may have a use case where you need to include additional pages from a document to the end of an existing document. To do this, you just need to call the [AppendDocument](https://apireference.aspose.com/words/net/aspose.words/document/methods/appenddocument) method to add a document to the end of another one.

{{% alert color="primary" %}} 

Note that [AppendChild](https://apireference.aspose.com/words/net/aspose.words/compositenode/methods/appendchild) is a node level method within a document. For example, you can create a paragraph, set formatting properties, and then append it as a child to the body using the **AppendChild** method.

{{% /alert %}} 

The following code example shows how to append a document to the end of another document:

{{< highlight csharp >}}
// The document that the content will be appended to.
Document dstDoc = new Document();
dstDoc.FirstSection.Body.AppendParagraph("Destination document text. ");

// The document to append.
Document srcDoc = new Document();
srcDoc.FirstSection.Body.AppendParagraph("Source document text. ");

// Append the source document to the destination document.
// Pass format mode to retain the original formatting of the source document when importing it.
dstDoc.AppendDocument(srcDoc, ImportFormatMode.KeepSourceFormatting);

// Save the document.
dstDoc.Save(ArtifactsDir + "Document.AppendDocument.docx");
{{< /highlight >}}

## Import and Insert Nodes Manually

Aspose.Words allows you to insert and append documents automatically without any previous importing requirements. However, if you need to insert or append a specific node of your document, such as a section or a paragraph, then first you need to import this node manually.

When you need to insert or append one section or paragraph to another, you essentially need to import the nodes of the first document node tree into the second one using the [ImportNode](https://apireference.aspose.com/words/net/aspose.words/nodeimporter/methods/importnode) method. After importing your nodes, you need to use the [InsertAfter](https://apireference.aspose.com/words/net/aspose.words/compositenode/methods/insertafter)/[InsertBefore](https://apireference.aspose.com/words/net/aspose.words/compositenode/methods/insertbefore) method to insert a new node after/before the reference node. This allows you to customize the inserting process by importing nodes from a document and inserting it at given positions.

You can also use the [AppendChild](https://apireference.aspose.com/words/net/aspose.words/compositenode/methods/appendchild) method to add a new specified node to the end of the list of child nodes, for example, if you want to append content at the paragraph level instead of at the section level.

The following code example shows how to insert document content into another document using the **InsertDocument** method:

{{< highlight csharp >}}
// Upload a Document.
Document doc = new Document(MyDir + "Document.docx");
DocumentBuilder builder = new DocumentBuilder(doc);
builder.MoveToDocumentEnd();
builder.InsertBreak(BreakType.PageBreak);

// Insert a document using the InsertDocument method.
Document docToInsert = new Document(MyDir + "Formatted elements.docx");
builder.InsertDocument(docToInsert, ImportFormatMode.KeepSourceFormatting);
builder.Document.Save(ArtifactsDir + "DocumentBuilder.InsertDocument.docx");
{{< /highlight >}}

The following code example shows how to manually import nodes and insert them after a specific node using the **InsertAfter** method:

{{< highlight csharp >}}
public void InsertDocument(Node insertionDestination, Document docToInsert)
{
	// Make sure that the node is either a paragraph or table.
	if (insertionDestination.NodeType.Equals(NodeType.Paragraph) || insertionDestination.NodeType.Equals(NodeType.Table))
	{
		// We will be inserting into the parent of the destination paragraph.
		CompositeNode dstStory = insertionDestination.ParentNode;

		// This object will be translating styles and lists during the import.
		NodeImporter importer = new NodeImporter(docToInsert, insertionDestination.Document, ImportFormatMode.KeepSourceFormatting);
	
		// Loop through all block level nodes in the body of the section
		foreach (Section srcSection in docToInsert.Sections.OfType<Section>())
			foreach (Node srcNode in srcSection.Body)
			{
				// Let's skip the node if it is a last empty paragraph in a section
				if (srcNode.NodeType.Equals(NodeType.Paragraph))
				{
					Paragraph para = (Paragraph)srcNode;
					if (para.IsEndOfSection && !para.HasChildNodes)
						continue;
				}
	
				// This creates a clone of the node, suitable for insertion into the destination document.
				Node newNode = importer.ImportNode(srcNode, true);
				
				// Insert new node after the reference node.
				dstStory.InsertAfter(newNode, insertionDestination);
				insertionDestination = newNode;
			}
	}
	else
	{
		throw new ArgumentException("The destination node should be either a paragraph or table.");
	}
}
{{< /highlight >}}

{{% alert color="primary" %}} 

The import creates a new node that is a copy of the original node and suitable for insertion into the destination document.

{{% /alert %}} 

Content is imported into the destination document section by section, which means that settings, such as page setup and headers or footers, are preserved during import. It is also useful to note that you can define formatting settings when you insert or append a document to specify how two documents are joined together.

## Common Properties for Insert and Append Documents

Both [InsertDocument](https://apireference.aspose.com/words/net/aspose.words.documentbuilder/insertdocument/methods/1) and [AppendDocument](https://apireference.aspose.com/words/net/aspose.words.document/appenddocument/methods/1) methods accept [ImportFormatMode](https://apireference.aspose.com/words/net/aspose.words/importformatmode) and [ImportFormatOptions](https://apireference.aspose.com/words/net/aspose.words/importformatoptions) as input parameters. The **ImportFormatMode** allows you to control how document formatting is merged when you import content from one document into another by selecting different format modes such as [UseDestinationStyles](https://apireference.aspose.com/words/net/aspose.words/importformatmode), [KeepSourceFormatting](https://apireference.aspose.com/words/net/aspose.words/importformatmode), and [KeepDifferentStyles](https://apireference.aspose.com/words/net/aspose.words/importformatmode). The **ImportFormatOptions** allows you to select different import options such as [IgnoreHeaderFooter](https://apireference.aspose.com/words/net/aspose.words/importformatoptions/properties/ignoreheaderfooter), [IgnoreTextBoxes](https://apireference.aspose.com/words/net/aspose.words/importformatoptions/properties/ignoretextboxes), [KeepSourceNumbering](https://apireference.aspose.com/words/net/aspose.words/importformatoptions/properties/keepsourcenumbering) and [SmartStyleBehavior](https://apireference.aspose.com/words/net/aspose.words/importformatoptions/properties/smartstylebehavior).

Aspose.Words allows you to adjust the visualization of a resulting document when two documents are added together in an insert or append operation by using the [Section](https://apireference.aspose.com/words/net/aspose.words/section/properties/index) and [PageSetup](https://apireference.aspose.com/words/net/aspose.words/documentbuilder/properties/pagesetup) properties. The **PageSetup** property contains all the attributes of a section such as [SectionStart](https://apireference.aspose.com/words/net/aspose.words/pagesetup/properties/sectionstart), [RestartPageNumbering](https://apireference.aspose.com/words/net/aspose.words/pagesetup/properties/restartpagenumbering), [PageStartingNumber](https://apireference.aspose.com/words/net/aspose.words/pagesetup/properties/pagestartingnumber), [Orientation](https://apireference.aspose.com/words/net/aspose.words/pagesetup/properties/orientation), and others. The most common use case is to set the **SectionStart** property to define if the added content will appear on the same page or split into a new one.

{{% alert color="primary" %}} 

Note that the **Section** and **PageSetup** properties do not control how two documents are inserted/appended together. They only allow you to change the appearance of your result document.

{{% /alert %}} 

The following code example shows how to append one document to another while keeping the content from splitting across two pages:

{{< highlight csharp >}}
string dataDir = RunExamples.GetDataDir_JoiningAndAppending();
string fileName = "TestFile.DestinationList.doc";

Document dstDoc = new Document(dataDir + fileName);
Document srcDoc = new Document(dataDir + "TestFile.Source.doc");

// Set the source document to appear straight after the destination document's content.
srcDoc.FirstSection.PageSetup.SectionStart = SectionStart.Continuous;

// Restart the page numbering on the start of the source document.
srcDoc.FirstSection.PageSetup.RestartPageNumbering = true;
srcDoc.FirstSection.PageSetup.PageStartingNumber = 1;

// To ensure this does not happen when the source document has different page setup settings make sure the Settings are
// identical between the last section of the destination document. If there are further continuous sections tha
// follow on in the source document then this will need to be Repeated for those sections as well. 
srcDoc.FirstSection.PageSetup.PageWidth = dstDoc.LastSection.PageSetup.PageWidth;
srcDoc.FirstSection.PageSetup.PageHeight = dstDoc.LastSection.PageSetup.PageHeight;
srcDoc.FirstSection.PageSetup.Orientation = dstDoc.LastSection.PageSetup.Orientation;

// Iterate through all sections in the source document.
foreach (Paragraph para in srcDoc.GetChildNodes(NodeType.Paragraph, true))
{
	para.ParagraphFormat.KeepWithNext = true;
}

dstDoc.AppendDocument(srcDoc, ImportFormatMode.KeepSourceFormatting);
dataDir = dataDir + RunExamples.GetOutputFilePath(fileName);
dstDoc.Save(dataDir);
{{< /highlight >}}

## Common Problems and Solutions

The table below provides typical problems when performing append or insert operation via Aspose.Words, as well as their respective solutions.

| Symptom                                                 | Problem                                                      | Solution                                                     |
| ------------------------------------------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| The appended document does not appear on the same page. | The append result appears on a separate page because of a difference in PageSetup settings for the sections where the documents are appended together. | Make identical PageSetup settings for the sections where the documents are appended together. |