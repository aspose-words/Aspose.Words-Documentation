---
title: Delete Comments by All or a Specific Author
type: docs
weight: 80
url: /net/delete-comments-by-all-or-a-specific-author/
---

## OpenXML SDK

{{< highlight csharp >}}
string FilePath = @"..\..\..\..\Sample Files\";
string File = FilePath + "Delete comments - OpenXML.docx";
DeleteComments(File, "");

// Delete comments by a specific author. Pass an empty string for the

// author to delete all comments, by all authors.
public static void DeleteComments(string fileName,
    string author = "")
{
    // Get an existing Wordprocessing document.
    using (WordprocessingDocument document =
        WordprocessingDocument.Open(fileName, true))
    {
        // Set commentPart to the document WordprocessingCommentsPart,
        // if it exists.
        WordprocessingCommentsPart commentPart =
            document.MainDocumentPart.WordprocessingCommentsPart;

        // If no WordprocessingCommentsPart exists, there can be no
        // comments. Stop execution and return from the method.
        if (commentPart == null)
        {
            return;
        }
    
        // Create a list of comments by the specified author, or
        // if the author name is empty, all authors.
        List<Comment> commentsToDelete =
            commentPart.Comments.Elements<Comment>().ToList();
        if (!String.IsNullOrEmpty(author))
        {
            commentsToDelete = commentsToDelete.
            Where(c => c.Author == author).ToList();
        }
        IEnumerable<string> commentIds =
            commentsToDelete.Select(r => r.Id.Value);
    
        // Delete each comment in commentToDelete from the
        // Comments collection.
        foreach (Comment c in commentsToDelete)
        {
            c.Remove();
        }
    
        // Save the comment part change.
        commentPart.Comments.Save();
        Document doc = document.MainDocumentPart.Document;
    
        // Delete CommentRangeStart for each
        // deleted comment in the main document.
        List<CommentRangeStart> commentRangeStartToDelete =
            doc.Descendants<CommentRangeStart>().
            Where(c => commentIds.Contains(c.Id.Value)).ToList();
        foreach (CommentRangeStart c in commentRangeStartToDelete)
        {
            c.Remove();
        }
    
        // Delete CommentRangeEnd for each deleted comment in the main document.
        List<CommentRangeEnd> commentRangeEndToDelete =
            doc.Descendants<CommentRangeEnd>().
            Where(c => commentIds.Contains(c.Id.Value)).ToList();
        foreach (CommentRangeEnd c in commentRangeEndToDelete)
        {
            c.Remove();
        }
    
        // Delete CommentReference for each deleted comment in the main document.
        List<CommentReference> commentRangeReferenceToDelete =
            doc.Descendants<CommentReference>().
            Where(c => commentIds.Contains(c.Id.Value)).ToList();
        foreach (CommentReference c in commentRangeReferenceToDelete)
        {
            c.Remove();
        }
    
        // Save changes back to the MainDocumentPart part.
        doc.Save();
    }
{{< /highlight >}}

## Aspose.Words

{{< highlight csharp >}}
string FilePath = @"..\..\..\..\Sample Files\";
string File = FilePath + "Delete comments - Aspose.docx";
RemoveComments(File, "");
public static void RemoveComments(string File, string authorName)
{
    Document doc = new Document(File);

    // Collect all comments in the document
    NodeCollection comments = doc.GetChildNodes(NodeType.Comment, true);
    if (authorName == "")
    {
        // Remove all comments.
        comments.Clear();
    }
    else
    {
        // Look through all comments and remove those written by the authorName author.
        for (int i = comments.Count - 1; i >= 0; i--)
        {
            Comment comment = (Comment)comments[i];
            if (comment.Author == authorName)
                comment.Remove();
        }
    }
    doc.Save(File);
}
{{< /highlight >}}

## Download Sample Code

- [CodePlex](https://archive.codeplex.com/?p=asposewordsopenxml)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/AsposeWordsVsOpenXMLv1.2)
- [Sourceforge](https://sourceforge.net/projects/asposeopenxml/files/Aspose.Words%20Vs%20OpenXML/Delete%20comments%20by%20all%20or%20a%20specific%20author%20\(Aspose.Words\).zip/download)
- [Bitbucket](https://bitbucket.org/asposemarketplace/aspose-for-openxml/wiki/Delete%20comments%20by%20all%20or%20a%20specific%20author)
