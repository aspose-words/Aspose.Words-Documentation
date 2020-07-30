---
title: Insert a comment into a word processing document
type: docs
weight: 90
url: /net/insert-a-comment-into-a-word-processing-document/
---

### **OpenXML SDK**
{{< highlight csharp >}}

 string FilePath = @"..\..\..\..\Sample Files\";

string File = FilePath + "Insert a comment - OpenXML.docx";

AddCommentOnFirstParagraph(File,

    "author", "initials", "This is my comment.");

// Insert a comment on the first paragraph.

public static void AddCommentOnFirstParagraph(string fileName,

    string author, string initials, string comment)

{

    // Use the file name and path passed in as an 

    // argument to open an existing Wordprocessing document. 

    using (WordprocessingDocument document =

        WordprocessingDocument.Open(fileName, true))

    {

        // Locate the first paragraph in the document.

        Paragraph firstParagraph =

            document.MainDocumentPart.Document.Descendants<Paragraph>().First();

        Comments comments = null;

        string id = "0";

        // Verify that the document contains a 

        // WordProcessingCommentsPart part; if not, add a new one.

        if (document.MainDocumentPart.GetPartsCountOfType<WordprocessingCommentsPart>() > 0)

        {

            comments =

                document.MainDocumentPart.WordprocessingCommentsPart.Comments;

            if (comments.HasChildren)

            {

                // Obtain an unused ID.

                id = comments.Descendants<Comment>().Select(e => e.Id.Value).Max();

            }

        }

        else

        {

            // No WordprocessingCommentsPart part exists, so add one to the package.

            WordprocessingCommentsPart commentPart =

                document.MainDocumentPart.AddNewPart<WordprocessingCommentsPart>();

            commentPart.Comments = new Comments();

            comments = commentPart.Comments;

        }

        // Compose a new Comment and add it to the Comments part.

        Paragraph p = new Paragraph(new Run(new Text(comment)));

        Comment cmt =

            new Comment()

            {

                Id = id,

                Author = author,

                Initials = initials,

                Date = DateTime.Now

            };

        cmt.AppendChild(p);

        comments.AppendChild(cmt);

        comments.Save();

        // Specify the text range for the Comment. 

        // Insert the new CommentRangeStart before the first run of paragraph.

        firstParagraph.InsertBefore(new CommentRangeStart() { Id = id }, firstParagraph.GetFirstChild<Run>());

        // Insert the new CommentRangeEnd after last run of paragraph.

        var cmtEnd = firstParagraph.InsertAfter(new CommentRangeEnd() { Id = id }, firstParagraph.Elements<Run>().Last());

        // Compose a run with CommentReference and insert it.

        firstParagraph.InsertAfter(new Run(new CommentReference() { Id = id }), cmtEnd);

    }

}

{{< /highlight >}}
### **Aspose.Words**
{{< highlight csharp >}}

 string FilePath = @"..\..\..\..\Sample Files\";

string File = FilePath + "Insert a comment - Aspose.docx";

// Create an empty document and DocumentBuilder object.

Document doc = new Document();

DocumentBuilder builder = new DocumentBuilder(doc);

// Create a Comment.

Comment comment = new Comment(doc);

// Insert some text into the comment.

Paragraph commentParagraph = new Paragraph(doc);

commentParagraph.AppendChild(new Run(doc, "This is comment!!!"));

comment.AppendChild(commentParagraph);

// Create CommentRangeStart and CommentRangeEnd.

int commentId = 0;

CommentRangeStart start = new CommentRangeStart(doc, commentId);

CommentRangeEnd end = new CommentRangeEnd(doc, commentId);

// Insert some text into the document.

builder.Write("This is text before comment ");

// Insert comment and comment range start.

builder.InsertNode(comment);

builder.InsertNode(start);

// Insert some more text.

builder.Write("This is commented text ");

// Insert end of comment range.

builder.InsertNode(end);

// And finaly insert some more text.

builder.Write("This is text aftr comment");

// Save output document.

doc.Save(File);

{{< /highlight >}}
## **Download Sample Code**
- [CodePlex](https://asposewordsopenxml.codeplex.com/releases/view/620544)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/AsposeWordsVsOpenXMLv1.2)
- [Code.MSDN](https://code.msdn.microsoft.com/Code-Comparison-of-Common-4ffff4d7#content)
- [Sourceforge](https://sourceforge.net/projects/asposeopenxml/files/Aspose.Words%20Vs%20OpenXML/Insert%20a%20comment%20into%20a%20word%20processing%20document%20\(Aspose.Words\).zip/download)
- [Bitbucket](https://bitbucket.org/asposemarketplace/aspose-for-openxml/wiki/Insert%20a%20comment%20into%20a%20word%20processing%20document)
