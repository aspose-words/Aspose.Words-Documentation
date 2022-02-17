---
title: Remove Comments of All or a Specific Author – Aspose.Words for .NET
articleTitle: Remove Comments of All or a Specific Author
linktitle: Remove Comments of All or a Specific Author
description: "Aspose.Words for .NET allows you to remove comments of all or a specific author easily and fast instead of using Open XML SDK."
type: docs
weight: 200
url: /net/delete-comments-by-all-or-a-specific-author/
---

On this page we will look at how to remove comments of all or a specific author using Aspose.Words or Open XML SDK.

{{< nosnippet >}}

{{< tabs tabTotal="2" tabID="1" tabName1="Aspose.Words" tabName2="Open XML SDK" >}}

{{< tab tabNum="1" >}}

In Aspose.Words you can work with comments by using the [Comment](https://apireference.aspose.com/words/net/aspose.words/comment) class.

The following code example shows how to remove all comments in a document:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-RemoveComments.cs" >}}

The following code example shows how to remove comments of a speciffic author:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-RemoveCommentsByAuthor.cs" >}}

{{< /tab >}}

{{< tab tabNum="2" >}}

You can also do the same using the Open XML SDK. At the same time, note that it looks somewhat more complicated and more cumbersome.

Following are the namespaces we need to add:

{{< highlight csharp >}}
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using DocumentFormat.OpenXml.Packaging;
using DocumentFormat.OpenXml.Wordprocessing;
using NUnit.Framework;
{{< /highlight >}}

The following code example shows how to remove comments in a document:

{{< highlight csharp >}}
public void DeleteCommentsByAllOrASpecificAuthorFeature()
{
	RemoveComments("");
}
private void RemoveComments(string author)
{
	// Get an existing Wordprocessing document.
	using (WordprocessingDocument document =
		WordprocessingDocument.Open(MyDir + "Comments.docx", true))
	{
		WordprocessingCommentsPart commentPart =
			document.MainDocumentPart.WordprocessingCommentsPart;
		// If no "WordprocessingCommentsPart" exists, there can be no comments.
		// Stop execution and return from the method.
		if (commentPart == null)
			return;
		// Create a list of comments by the specified author.
		// If the author name is empty, then list all authors.
		List<Comment> commentsToDelete =
			commentPart.Comments.Elements<Comment>().ToList();
		if (!String.IsNullOrEmpty(author))
		{
			commentsToDelete = commentsToDelete.Where(c => c.Author == author).ToList();
		}
		IEnumerable<string> commentIds =
			commentsToDelete.Select(r => r.Id.Value);
		foreach (Comment c in commentsToDelete)
			c.Remove();
		// Save changes to the comments part.
		commentPart.Comments.Save();
		Document doc = document.MainDocumentPart.Document;
		// Delete the "CommentRangeStart" for each deleted comment in the main document.
		List<CommentRangeStart> commentRangeStartToDelete =
		doc.Descendants<CommentRangeStart>().Where(c => commentIds.Contains(c.Id.Value)).ToList();
		foreach (CommentRangeStart c in commentRangeStartToDelete)
		c.Remove();
		// Delete the "CommentRangeEnd" for each deleted comment in the main document.
		List<CommentRangeEnd> commentRangeEndToDelete =
		doc.Descendants<CommentRangeEnd>().Where(c => commentIds.Contains(c.Id.Value)).ToList();
		foreach (CommentRangeEnd c in commentRangeEndToDelete)
			c.Remove();
		// Delete the "CommentReference" for each deleted comment in the main document.
		List<CommentReference> commentRangeReferenceToDelete =
			doc.Descendants<CommentReference>().Where(c => commentIds.Contains(c.Id.Value)).ToList();
		foreach (CommentReference c in commentRangeReferenceToDelete)
			c.Remove();
		using (Stream stream = File.Open(ArtifactsDir + "Remove comments - OpenXML.docx", FileMode.CreateNew))
		{
			doc.Save(stream);
		}
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
