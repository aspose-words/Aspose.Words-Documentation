---
title: Retrieve comments from a word processing document
type: docs
weight: 100
url: /net/retrieve-comments-from-a-word-processing-document/
---

## OpenXML SDK

{{< highlight csharp >}}
string FilePath = @"..\..\..\..\Sample Files\";
string fileName = FilePath + "Retrieve comments.docx";
GetCommentsFromDocument(fileName);
public static void GetCommentsFromDocument(string fileName)
{
    using (WordprocessingDocument wordDoc =
        WordprocessingDocument.Open(fileName, false))
    {
        WordprocessingCommentsPart commentsPart =
            wordDoc.MainDocumentPart.WordprocessingCommentsPart;
        if (commentsPart != null && commentsPart.Comments != null)
        {
            foreach (Comment comment in commentsPart.Comments.Elements<Comment>())
            {
                Console.WriteLine(comment.InnerText);
            }
        }
    }
}
{{< /highlight >}}

### Aspose.Words

{{< highlight csharp >}}
string FilePath = @"..\..\..\..\Sample Files\";
string fileName = FilePath + "Retrieve comments.docx";  
Document doc = new Document(fileName);
ExtractComments(doc);
public static void ExtractComments(Document doc)
{
    ArrayList collectedComments = new ArrayList();

    // Collect all comments in the document
    NodeCollection comments = doc.GetChildNodes(NodeType.Comment, true);

    // Look through all comments and gather information about them.
    foreach (Comment comment in comments)
    {
        collectedComments.Add(comment.Author + " " + comment.DateTime + " " + comment.ToString(SaveFormat.Text));
    }
    foreach (string collectedComment in collectedComments)
    {
        Console.WriteLine(collectedComment);
    }
}
{{< /highlight >}}

## Download Sample Code

- [CodePlex](https://asposewordsopenxml.codeplex.com/releases/view/620544)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/AsposeWordsVsOpenXMLv1.2)
- [Code.MSDN](https://code.msdn.microsoft.com/Code-Comparison-of-Common-4ffff4d7#content)
- [Sourceforge](https://sourceforge.net/projects/asposeopenxml/files/Aspose.Words%20Vs%20OpenXML/Retrieve%20comments%20from%20a%20word%20processing%20document%20\(Aspose.Words\).zip/download)
- [Bitbucket](https://bitbucket.org/asposemarketplace/aspose-for-openxml/wiki/Retrieve%20comments%20from%20a%20word%20processing%20document)
