---
title: Insert and Append Documents
description: "Aspose.Words for Java allows you to combine documents into one: insert or append a document into a new or existing one using find and replace, merge field, bookmark, or simply at the document end."
type: docs
weight: 70
url: /java/insert-and-append-documents/
aliases: 
 - /java/joining-and-appending-documents/
 - /java/join-and-append-documents/
 - /java/appending-documents/
 - /java/how-to-insert-a-document-into-another-document/
 - /java/joining-documents/
 - /java/joining-documents-with-different-formatting/
 - /java/joining-documents-with-headers-and-footers/
---

Sometimes it is required to combine several documents into one. You can do this manually or you can use Aspose.Words insert or append feature. The insert operation allows you to insert the content of previously created documents into a new or existing one.

In turn, the append feature allows you to add a document only at the end of another document.

This article explains how to insert or append a document to another one in different ways and describes the common properties that you can apply while inserting or appending documents.

## Insert a Document

As mentioned above, in Aspose.Words a document is represented as a tree of nodes, and the operation of inserting one document into another is copying nodes from the first document tree to the second one.

You can insert documents in a variety of locations in different ways. For example, you can insert a document through a replace operation, a merge field during a merge operation, or via a bookmark.

You can also use the [InsertDocument](https://apireference.aspose.com/words/cpp/class/aspose.words.document_builder#a26e2212090fca2e40dee1cad06136547) method, which is similar to inserting a document in Microsoft Word, to insert a whole document at the current cursor position without any previous importing.

The following subsections describe the options during which you can insert one document into another.

### Insert a Document During Find and Replace Operation

You can insert documents while performing find and replace operations. For example, a document can contain paragraphs with the text [INTRODUCTION] and [CONCLUSION]. But in the final document, you need to replace those paragraphs with the content obtained from another external document. To achieve that, you will need to create a handler for the replace event.

The following code example shows how to create a handler for the replacing event to use it later in the inserting process:

{{< highlight java >}}
private class InsertDocumentAtReplaceHandler implements IReplacingCallback
{
    public int replacing(ReplacingArgs args) throws Exception
    {
        Document subDoc = new Document(getMyDir() + "Document.docx");

        // Insert a document after the paragraph, containing the match text.
        Paragraph para = (Paragraph)args.getMatchNode().getParentNode();
        insertDocument(para, subDoc);

        // Remove the paragraph with the match text.
        para.remove();
        return ReplaceAction.SKIP;
    }
}
{{< /highlight >}}

The following code example shows how insert content of one document into another during a find and replace operation:

{{< highlight java >}}
// Upload the document.
Document mainDoc = new Document(getMyDir() + "Document insertion destination.docx");

// Set find and replace options.
FindReplaceOptions options = new FindReplaceOptions();
options.setDirection(FindReplaceDirection.BACKWARD);
options.setReplacingCallback(new InsertDocumentAtReplaceHandler());

// Call the replace method.
mainDoc.getRange().replace("\\[MY_DOCUMENT\\]", "", options);
mainDoc.save(getArtifactsDir() + "InsertDocument.InsertDocumentAtReplace.docx");
{{< /highlight >}}

### Insert a Document During Mail Merge Operation

You can insert a document into a merge field during a mail merge operation. For example, a mail merge template can contain a merge field such as [Summary]. But in the final document, you need to insert content obtained from another external document into this merge field. To achieve that, you will need to create a handler for the merge event.

The following code example shows how to create a handler for the merging event to use it later in the inserting process:

{{< highlight java >}}
private class InsertDocumentAtMailMergeHandler implements IFieldMergingCallback
{
    // This handler makes special processing for the "Document_1" field.
    // The field value contains the path to load the document.
    // We load the document and insert it into the current merge field.
    public void fieldMerging(FieldMergingArgs args) throws Exception
    {
        if ("Document_1".equals(args.getDocumentFieldName()))
        {
            // Use document builder to navigate to the merge field with the specified name.
            DocumentBuilder builder = new DocumentBuilder(args.getDocument());
            builder.moveToMergeField(args.getDocumentFieldName());

            // The name of the document to load and insert is stored in the field value.
            Document subDoc = new Document((String)args.getFieldValue());

            // Insert the document.
            insertDocument(builder.getCurrentParagraph(), subDoc);

            // The paragraph that contained the merge field might be empty now and you probably want to delete it.
            if (!builder.getCurrentParagraph().hasChildNodes())
                builder.getCurrentParagraph().remove();

            // Indicate to the mail merge engine that we have inserted what we wanted.
            args.setText(null);
        }
    }
}
{{< /highlight >}}

The following code example shows how to insert a document into the merge field using the created handler:

{{< highlight java >}}
// Open the main document.
Document mainDoc = new Document(getMyDir() + "Document insertion destination.docx");

// Add a handler to MergeField event.
mainDoc.getMailMerge().setFieldMergingCallback(new InsertDocumentAtMailMergeHandler());

// The main document has a merge field in it called "Document_1".
// The corresponding data for this field contains fully qualified path to the document
// that should be inserted to this field.
mainDoc.getMailMerge().execute(new String[] { "Document_1" }, new Object[] { getMyDir() + "Document.docx" });
mainDoc.save(getArtifactsDir() + "InsertDocument.InsertAtMailMerge.docx");
{{< /highlight >}}

### Insert a Document at Bookmark

You can import a text file into a document and insert it right after a bookmark that you have defined in the document. To do this, create a bookmarked paragraph where you want the document to be inserted.

The following coding example shows how to insert the contents of one document to a bookmark in another document:

{{< highlight java >}}
// Load a Document.
Document mainDoc = new Document(getMyDir() + "Document insertion destination.docx");
Document docToInsert = new Document(getMyDir() + "Document.docx");

// Inset the document at the bookmark.
Bookmark bookmark = mainDoc.getRange().getBookmarks().get("insertionPlace");
insertDocument(bookmark.getBookmarkStart().getParentNode(), docToInsert);
mainDoc.save(getArtifactsDir() + "InsertDocument.InsertAtBookmark.docx");
{{< /highlight >}}

{{% alert color="primary" %}} 

Note that the bookmark should not enclose multiple paragraphs or text that you want them to appear in your final resulting document.

{{% /alert %}} 

## Append a Document

You may have a use case where you need to include additional pages from a document to the end of an existing document. To do this, you just need to call the [AppendDocument](https://apireference.aspose.com/words/cpp/class/aspose.words.document#aeb1c57b21244b7c3b4426c0ff6ca5e34) method to add a document to the end of another one.

{{% alert color="primary" %}} 

Note that [AppendChild](https://apireference.aspose.com/words/cpp/class/aspose.words.composite_node#a80e83738141f960d498b4ee06f7ff5ad) is a node level method within a document. For example, you can create a paragraph, set formatting properties, and then append it as a child to the body using the **AppendChild** method.

{{% /alert %}} 

The following code example shows how to append a document to the end of another document:

{{< highlight java >}}
// The document that the content will be appended to.
Document dstDoc = new Document();
dstDoc.getFirstSection().getBody().appendParagraph("Destination document text. ");

// The document to append.
Document srcDoc = new Document();
srcDoc.getFirstSection().getBody().appendParagraph("Source document text. ");

// Append the source document to the destination document.
// Pass format mode to retain the original formatting of the source document when importing it.
dstDoc.appendDocument(srcDoc, ImportFormatMode.KEEP_SOURCE_FORMATTING);

// Save the document.
dstDoc.save(getArtifactsDir() + "Document.AppendDocument.docx");
{{< /highlight >}}

## Import and Insert Nodes Manually

Aspose.Words allows you to insert and append documents automatically without any previous importing requirements. However, if you need to insert or append a specific node of your document, such as a section or a paragraph, then first you need to import this node manually.

When you need to insert or append one section or paragraph to another, you essentially need to import the nodes of the first document node tree into the second one using the [ImportNode](https://apireference.aspose.com/words/cpp/class/aspose.words.node_importer#a21194c4fd308daad4b10ef6ac97e5a46) method. After importing your nodes, you need to use the [InsertAfter](https://apireference.aspose.com/words/cpp/class/aspose.words.composite_node#af9b57adf57898c923d92ee61abb0b0ed)/[InsertBefore](https://apireference.aspose.com/words/cpp/class/aspose.words.composite_node#aaa6066b95aa9df42a8dff970929ccf98) method to insert a new node after/before the reference node. This allows you to customize the inserting process by importing nodes from a document and inserting it at given positions.

You can also use the [AppendChild](https://apireference.aspose.com/words/cpp/class/aspose.words.composite_node#a80e83738141f960d498b4ee06f7ff5ad) method to add a new specified node to the end of the list of child nodes, for example, if you want to append content at the paragraph level instead of at the section level.

The following code example shows how to insert document content into another document using the **InsertDocument** method:

{{< highlight java >}}
// Upload a Document.
Document doc = new Document(getMyDir() + "Document.docx");
DocumentBuilder builder = new DocumentBuilder(doc);
builder.moveToDocumentEnd();
builder.insertBreak(BreakType.PAGE_BREAK);

// Insert a document using the InsertDocument method.
Document docToInsert = new Document(getMyDir() + "Formatted elements.docx");
builder.insertDocument(docToInsert, ImportFormatMode.KEEP_SOURCE_FORMATTING);
builder.getDocument().save(getArtifactsDir() + "DocumentBuilder.InsertDocument.docx");
{{< /highlight >}}

The following code example shows how to manually import nodes and insert them after a specific node using the **InsertAfter** method:

{{< highlight java >}}
public void insertDocument(Node insertionDestination, Document docToInsert)
{
    // Make sure that the node is either a paragraph or table.
    if (((insertionDestination.getNodeType()) == (NodeType.PARAGRAPH)) || ((insertionDestination.getNodeType()) == (NodeType.TABLE)))
    {
        // We will be inserting into the parent of the destination paragraph.
        CompositeNode dstStory = insertionDestination.getParentNode();

        // This object will be translating styles and lists during the import.
        NodeImporter importer = new NodeImporter(docToInsert, insertionDestination.getDocument(), ImportFormatMode.KEEP_SOURCE_FORMATTING);

        // Loop through all block level nodes in the body of the section
        for (Section srcSection : docToInsert.getSections().toArray())
            for (Node srcNode : srcSection.getBody())
            {
                // Let's skip the node if it is a last empty paragraph in a section
                if (((srcNode.getNodeType()) == (NodeType.PARAGRAPH)))
                {
                    Paragraph para = (Paragraph)srcNode;
                    if (para.isEndOfSection() && !para.hasChildNodes())
                        continue;
                }

                // This creates a clone of the node, suitable for insertion into the destination document.
                Node newNode = importer.importNode(srcNode, true);

                // Insert new node after the reference node.
                dstStory.insertAfter(newNode, insertionDestination);
                insertionDestination = newNode;
            }
    }
    else
    {
        throw new IllegalArgumentException("The destination node should be either a paragraph or table.");
    }
}
{{< /highlight >}}

{{% alert color="primary" %}} 

The import creates a new node that is a copy of the original node and suitable for insertion into the destination document.

{{% /alert %}} 

Content is imported into the destination document section by section, which means that settings, such as page setup and headers or footers, are preserved during import. It is also useful to note that you can define formatting settings when you insert or append a document to specify how two documents are joined together.

## Common Properties for Insert and Append Documents

Both [InsertDocument](https://apireference.aspose.com/words/cpp/class/aspose.words.document_builder#a893fb304c8f11e0d720537cd96d798b8) and [AppendDocument](https://apireference.aspose.com/words/cpp/class/aspose.words.document#a7b09f54d466b74ee498156e848b9ba86) methods accept [ImportFormatMode](https://apireference.aspose.com/words/cpp/namespace/aspose.words#aafaa52cbf0baa49c3225787c23a8c949) and [ImportFormatOptions](https://apireference.aspose.com/words/cpp/class/aspose.words.import_format_options) as input parameters. The **ImportFormatMode** allows you to control how document formatting is merged when you import content from one document into another by selecting different format modes such as [UseDestinationStyles](https://apireference.aspose.com/words/cpp/namespace/aspose.words#aafaa52cbf0baa49c3225787c23a8c949), [KeepSourceFormatting](https://apireference.aspose.com/words/cpp/namespace/aspose.words#aafaa52cbf0baa49c3225787c23a8c949), and [KeepDifferentStyles](https://apireference.aspose.com/words/cpp/namespace/aspose.words#aafaa52cbf0baa49c3225787c23a8c949). The **ImportFormatOptions** allows you to select different import options such as [IgnoreHeaderFooter](https://apireference.aspose.com/words/cpp/class/aspose.words.import_format_options#ad4260c1a00c4beaee3be48c478df5979), [IgnoreTextBoxes](https://apireference.aspose.com/words/cpp/class/aspose.words.import_format_options#a6367e32cb6e4b9389197d3965d876223), [KeepSourceNumbering](https://apireference.aspose.com/words/cpp/class/aspose.words.import_format_options#a948875cb87890c1db77f994c132e4196) and [SmartStyleBehavior](https://apireference.aspose.com/words/cpp/class/aspose.words.import_format_options#a0f363fe4e7ea99a6e7e3344afdf625ec).

Aspose.Words allows you to adjust the visualization of a resulting document when two documents are added together in an insert or append operation by using the [Section](https://apireference.aspose.com/words/cpp/class/aspose.words.section) and [PageSetup](https://apireference.aspose.com/words/cpp/class/aspose.words.page_setup/) properties. The **PageSetup** property contains all the attributes of a section such as [SectionStart](https://apireference.aspose.com/words/cpp/class/aspose.words.page_setup#ab033ba83ada1634fecee703880b2652f), [RestartPageNumbering](https://apireference.aspose.com/words/cpp/class/aspose.words.page_setup#addcf361d06bb0a7f0aa8b619063cff6e), [PageStartingNumber](https://apireference.aspose.com/words/cpp/class/aspose.words.page_setup#ae5eb823b2a959d67e345c41ca35a7648), [Orientation](https://apireference.aspose.com/words/cpp/class/aspose.words.page_setup#aeda4d058eb5747bfb605131a9f146e71), and others. The most common use case is to set the **SectionStart** property to define if the added content will appear on the same page or split into a new one.

{{% alert color="primary" %}} 

Note that the **Section** and **PageSetup** properties do not control how two documents are inserted/appended together. They only allow you to change the appearance of your result document.

{{% /alert %}} 

The following code example shows how to append one document to another while keeping the content from splitting across two pages:

{{< highlight java >}}
String dataDir = RunExamples.GetDataDir_JoiningAndAppending();
String fileName = "TestFile.DestinationList.doc";

Document dstDoc = new Document(dataDir + fileName);
Document srcDoc = new Document(dataDir + "TestFile.Source.doc");

// Set the source document to appear straight after the destination document's content.
srcDoc.getFirstSection().getPageSetup().setSectionStart(SectionStart.CONTINUOUS);

// Restart the page numbering on the start of the source document.
srcDoc.getFirstSection().getPageSetup().setRestartPageNumbering(true);
srcDoc.getFirstSection().getPageSetup().setPageStartingNumber(1);

// To ensure this does not happen when the source document has different page setup settings make sure the Settings are
// identical between the last section of the destination document. If there are further continuous sections tha
// follow on in the source document then this will need to be Repeated for those sections as well.
srcDoc.getFirstSection().getPageSetup().setPageWidth(dstDoc.getLastSection().getPageSetup().getPageWidth());
srcDoc.getFirstSection().getPageSetup().setPageHeight(dstDoc.getLastSection().getPageSetup().getPageHeight());
srcDoc.getFirstSection().getPageSetup().setOrientation(dstDoc.getLastSection().getPageSetup().getOrientation());

// Iterate through all sections in the source document.
for (Paragraph para : (Iterable<Paragraph>) srcDoc.getChildNodes(NodeType.PARAGRAPH, true))
{
    para.getParagraphFormat().setKeepWithNext(true);
}

dstDoc.appendDocument(srcDoc, ImportFormatMode.KEEP_SOURCE_FORMATTING);
dataDir = dataDir + RunExamples.GetOutputFilePath(fileName);
dstDoc.save(dataDir);
{{< /highlight >}}

## Common Problems and Solutions

The table below provides typical problems when performing append or insert operation via Aspose.Words, as well as their respective solutions.

| Symptom                                                 | Problem                                                      | Solution                                                     |
| ------------------------------------------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| The appended document does not appear on the same page. | The append result appears on a separate page because of a difference in PageSetup settings for the sections where the documents are appended together. | Make identical PageSetup settings for the sections where the documents are appended together. |