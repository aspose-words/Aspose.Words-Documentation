---
title: Joining Word Documents Together
second_title: Aspose.Words for .NET
articleTitle: Joining Word Documents Together
linktitle: Joining Word Documents Together
description: "Join a few document together or append them easily and fast instead of using VSTO in C#."
type: docs
weight: 20
url: /net/joining-word-documents-together/
timestamp: 2024-01-27-14-07-04
---

## VSTO

{{< highlight csharp >}}
string mypath = "Document.docx";
Word.Application wordApp = Application;
wordApp.Documents.Open(mypath);
int recordCount = 2;
int i = 0;
for (i = 0; i <= recordCount; i++)
	wordApp.Selection.WholeStory();
wordApp.Selection.EndOf();
wordApp.Selection.InsertFile("DetailsList.docx");
if (i < recordCount)
{
	wordApp.Selection.Range.InsertBreak(2);
}
{{< /highlight >}}

The above code runs in a loop and inserts a document at the end of the current document. The content from each joined document is separated by a section break and the headers and footers of this new section are unlinked so they do not continue on from the previous section’s headers and footers.

When migrating to Aspose.Words you will find that this task above is very easy to achieve. Aspose.Words provides a special `Document.AppendDocument` method for this purpose and is used to join two documents together.

This method copies the sections from the source document to the destination document. This removes any need to insert any section breaks which is required in automation.

## Aspose.Words

{{< highlight csharp >}}

// The document that the other documents will be appended to.
Document dstDoc = new Document( );

// We should call this method to clear this document of any existing content.
dstDoc.RemoveAllChildren();
int recordCount = 1;
for (int i = 1; i <= recordCount; i++)
{
	// Open the document to join.
	Document srcDoc = new Document( "src.doc");

	// Append the source document at the end of the destination document.
	dstDoc.AppendDocument(srcDoc, ImportFormatMode.UseDestinationStyles);
	Document doc2 = new Document("Section.ModifyPageSetupInAllSections.doc");
	dstDoc.AppendDocument(doc2, ImportFormatMode.UseDestinationStyles);
	
	// In automation you were required to insert a new section break at this point, however in
	// Aspose.Words we don't need to do anything here as the appended document is imported as
	   separate sections already.
	
	// If this is the second document or above being appended then unlink all headers footers in
	// this section from the headers and footers of the previous section.
	if (i > 1)
		dstDoc.Sections[i].HeadersFooters.LinkToPrevious(false);
}
dstDoc.Save("updated.doc");
{{< /highlight >}}

**Note** 
you can control how the documents appear joined together i.e continuous or on a new page by using the [PageSetup.SectionStart](https://reference.aspose.com/words/net/aspose.words/pagesetup/sectionstart/) property of the appropriate [Section](https://reference.aspose.com/words/net/aspose.words/section/) object.

## Download Sample Code

- [Github](https://github.com/asposemarketplace/Aspose_for_VSTO/releases/download/2/Joining.Documents.Together.Aspose.Words.zip)
