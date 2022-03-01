---
title: Insert a Comment into a Word Processing Document – Aspose.Words for .NET
articleTitle: Insert a Comment into a Word Processing Document
linktitle: Insert a Comment into a Word Processing Document
description: "Insert a comment into a word document easily and fast instead of using Open XML SDK in C#."
type: docs
weight: 180
url: /net/insert-a-comment-into-a-word-processing-document/
---

On this page we will look at how to insert a comment into a word processing document using Aspose.Words or Open XML SDK.

{{< nosnippet >}}

{{< tabs tabTotal="2" tabID="1" tabName1="Aspose.Words" tabName2="Open XML SDK" >}}

{{< tab tabNum="1" >}}

In Aspose.Words you can work with comments by using the [Comment](https://apireference.aspose.com/words/net/aspose.words/comment) class.

The following code example shows how to insert a comment into a Word document:

{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
Comment comment = new Comment(doc);
// Insert some text into the comment.
Paragraph commentParagraph = new Paragraph(doc);
commentParagraph.AppendChild(new Run(doc, "This is comment!!!"));
comment.AppendChild(commentParagraph);
// Create a "CommentRangeStart" and "CommentRangeEnd".
int commentId = 0;
CommentRangeStart start = new CommentRangeStart(doc, commentId);
CommentRangeEnd end = new CommentRangeEnd(doc, commentId);
builder.Write("This text is before the comment. ");
// Insert comment and comment range start.
builder.InsertNode(comment);
builder.InsertNode(start);
// Insert some more text.
builder.Write("This text is commented. ");
// Insert end of comment range.
builder.InsertNode(end);
builder.Write("This text is after the comment.");
doc.Save(ArtifactsDir + "Insert a comment - Aspose.Words.docx");
{{< /highlight >}}

{{< /tab >}}

{{< tab tabNum="2" >}}

You can also do the same using the Open XML SDK. At the same time, note that it looks somewhat more complicated and more cumbersome.

Following are the namespaces we need to add:

{{< highlight csharp >}}
using System;
using System.Linq;
using DocumentFormat.OpenXml;
using DocumentFormat.OpenXml.Packaging;
using DocumentFormat.OpenXml.Wordprocessing;
using NUnit.Framework;
{{< /highlight >}}

The following code example shows how to insert a comment into a Word document:

{{< highlight csharp >}}
public void InsertACommentFeature()
{
	using (WordprocessingDocument document =
		WordprocessingDocument.Create(ArtifactsDir + "Insert a comment - OpenXML.docx",
			WordprocessingDocumentType.Document))
	{
		// Locate the first paragraph in the document.
		Paragraph firstParagraph =
			document.MainDocumentPart.Document.Descendants<Paragraph>().First();
		Comments comments;
		string id = "0";
		// Verify that the document contains a 
		// WordProcessingCommentsPart part; if not, add a new one.
		if (document.MainDocumentPart.GetPartsOfType<WordprocessingCommentsPart>().Any())
		{
			comments =
				document.MainDocumentPart.WordprocessingCommentsPart.Comments;
			if (comments.HasChildren)
				// Obtain an unused ID.
				id = comments.Descendants<Comment>().Select(e => e.Id.Value).Max();
			}
			else
			{
				// No "WordprocessingCommentsPart" part exists, so add one to the package.
				WordprocessingCommentsPart commentPart =
					document.MainDocumentPart.AddNewPart<WordprocessingCommentsPart>();
				commentPart.Comments = new Comments();
				comments = commentPart.Comments;
			}
			// Compose a new Comment and add it to the Comments part.
			Paragraph p = new Paragraph(new Run(new Text("This is my comment.")));
			Comment cmt = new Comment
			{
				Id = id,
				Author = "author",
				Initials = "initials",
				Date = DateTime.Now
			};
			cmt.AppendChild(p);
			comments.AppendChild(cmt);
			comments.Save();
			// Specify the text range for the Comment. 
			// Insert the new CommentRangeStart before the first run of paragraph.
			firstParagraph.InsertBefore(new CommentRangeStart {Id = id}, firstParagraph.GetFirstChild<Run>());
			// Insert the new CommentRangeEnd after last run of paragraph.
			var cmtEnd = firstParagraph.InsertAfter(new CommentRangeEnd {Id = id},
			firstParagraph.Elements<Run>().Last());
			// Compose a run with CommentReference and insert it.
			firstParagraph.InsertAfter(new Run(new CommentReference {Id = id}), cmtEnd);
	}
}
{{< /highlight >}}

{{< /tab >}}

{{< /tabs >}}

{{< /nosnippet >}}

{{% alert color="primary" %}}

You can download the sample file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Plugins/Aspose.Words%20Vs%20OpenXML%20Words/Aspose.Words%20VS%20OpenXML).

{{% /alert %}}

{{% alert color="primary" %}}

For more information about Aspose.Words features please visit [Working with Comments](/words/net/working-with-comments/).

{{% /alert %}}
