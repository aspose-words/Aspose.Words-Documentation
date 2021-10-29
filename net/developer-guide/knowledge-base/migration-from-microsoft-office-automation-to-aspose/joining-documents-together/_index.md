---
title: Joining Documents Together
type: docs
weight: 20
url: /net/joining-documents-together/
---

{{% alert color="primary" %}} 

A common task of document processing is to join multiple small documents together to create a complete document.

{{% /alert %}} 

If you are using Microsoft Word Automation, then you may have something like the following code to achieve this:

{{< highlight csharp >}}
for i = 1 to recordCount then
   myDoc.Selection.WholeStory()
   myDoc.Selection.EndOf()
   myDoc.Selection.InsertFile "C:\DetailsList.doc"
   if i < recordCount then
      myDoc.Selection.Range.InsertBreak 2
      if i > 1 then
         myDoc.ActiveDocument.Sections(i).Headers(1).LinkToPrevious = False
      end if
   end if
next
{{< /highlight >}}

The above code runs in a loop and inserts a document at the end of the current document. The content from each joined document is separated by a section break and the headers and footers of this new section are unlinked so they do not continue on from the previous section’s headers and footers.

When migrating to Aspose.Words you will find that this task above is very easy to achieve. Aspose.Words provides a special Document.AppendDocument method for this purpose and is used to join two documents together.

This method copies the sections from the source document to the destination document. This removes any need to insert any section breaks which is required in automation. Also note that you can control how the documents appear joined together i.e continuous or on a new page by using the [PageSetup.SectionStart](https://apireference.aspose.com/words/net/aspose.words/pagesetup/properties/sectionstart) property of the appropriate [Section](https://apireference.aspose.com/words/net/aspose.words/section) object.

*Shows how to join a few documents together.*

**C#**

{{< highlight csharp >}}

// The document that the other documents will be appended to.
Document doc = new Document();

// We should call this method to clear this document of any existing content.
doc.RemoveAllChildren();
int recordCount = 5;
for (int i = 1; i <= recordCount; i++)
{
    // Open the document to join.
    Document srcDoc = new Document(@"C:\DetailsList.doc");

    // Append the source document at the end of the destination document.
    doc.AppendDocument(srcDoc, ImportFormatMode.UseDestinationStyles);
    
    // In automation you were required to insert a new section break at this point, however in Aspose.Words we
    // don't need to do anything here as the appended document is imported as separate sectons already.
    // If this is the second document or above being appended then unlink all headers footers in this section
    // from the headers and footers of the previous section.
    if (i > 1)
        doc.Sections[i].HeadersFooters.LinkToPrevious(false);
}
{{< /highlight >}}

**Visual Basic**

{{< highlight csharp >}}
' The document that the other documents will be appended to.
Dim doc As New Document()
' We should call this method to clear this document of any existing content.
doc.RemoveAllChildren()
Dim recordCount As Integer = 5
For i As Integer = 1 To recordCount
    ' Open the document to join.
    Dim srcDoc As New Document("C:\DetailsList.doc")
    ' Append the source document at the end of the destination document.
    doc.AppendDocument(srcDoc, ImportFormatMode.UseDestinationStyles)
    ' In automation you were required to insert a new section break at this point, however in Aspose.Words we
    ' don't need to do anything here as the appended document is imported as separate sectons already.
    ' If this is the second document or above being appended then unlink all headers footers in this section
    ' from the headers and footers of the previous section.
    If i > 1 Then
        doc.Sections(i).HeadersFooters.LinkToPrevious(False)
    End If
Next i
{{< /highlight >}}

For further information on this topic see the [Joining and Appending Documents](https://docs.aspose.com/words/net/join-and-append-documents/) section of the documentation.
