---
title: Joining Multiple Document
type: docs
weight: 10
url: /net/joining-multiple-document/
---

The simplest way to join documents involves a single call the **Document.AppendDocument** method. This method will append the Document object passed as a parameter to the end of the Document object which called the method. The second parameter accepts an **ImportFormatMode** enumeration which defines how conflicting styles are handled when one document is imported into the other.

{{< highlight csharp >}}
string FilePath = @"..\..\..\Sample Files\";
string SrcFileName = FilePath + "Joining Mutiple documents 1.docx";
string DestFileName = FilePath + "Joining Mutiple documents 2.docx";

// The document that the other documents will be appended to.
Document dstDoc = new Document();

// We should call this method to clear this document of any existing content.
dstDoc.RemoveAllChildren();
int recordCount = 1;
for (int i = 1; i <= recordCount; i++)
{
    // Open the document to join.
    Document srcDoc = new Document(SrcFileName);

    // Append the source document at the end of the destination document.
    dstDoc.AppendDocument(srcDoc, ImportFormatMode.UseDestinationStyles);
    Document doc2 = new Document(DestFileName);
    dstDoc.AppendDocument(doc2, ImportFormatMode.UseDestinationStyles);

    // If this is the second document or above being appended then unlink all headers footers in this section
    // from the headers and footers of the previous section.
    if (i > 1)
        dstDoc.Sections[i].HeadersFooters.LinkToPrevious(false);
}
dstDoc.Save(DestFileName);
{{< /highlight >}}

## **Download Sample Code**

- [Codeplex](https://asposeopenxml.codeplex.com/releases/view/617779)
- [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/MissingFeaturesofOpenXMLWordsv1.1)
- [Code.MSDN](https://code.msdn.microsoft.com/Missing-Features-in-6a2c882b)
