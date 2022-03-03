---
title: Retrieve Comments from a Document
second_title: Aspose.Words for .NET
articleTitle: Retrieve Comments from a Document
linktitle: Retrieve Comments from a Document
description: "Retrieve comments from a word processing  document easily and fast instead of using Open XML SDK in C#."
type: docs
weight: 190
url: /net/retrieve-comments-from-a-word-processing-document/
---

On this page we will look at how to retrieve comments from a Word Processing  document  using Aspose.Words or Open XML SDK.

{{< nosnippet >}}

{{< tabs tabTotal="2" tabID="1" tabName1="Aspose.Words" tabName2="Open XML SDK" >}}

{{< tab tabNum="1" >}}

In Aspose.Words, use the [Comment](https://apireference.aspose.com/words/net/aspose.words/comment) class and  the [Document.GetChildNodes](https://apireference.aspose.com/words/net/aspose.words/compositenode/methods/getchildnodes) method to get all comments from a document.

The following code example shows how to retrieve comments from a Word Document:

{{< highlight csharp >}}
public void RetrieveCommentsFeature()
{
	Document doc = new Document(MyDir + "Comments.docx");
	ArrayList collectedComments = new ArrayList();
	NodeCollection comments = doc.GetChildNodes(NodeType.Comment, true);
	// Look through all comments and gather information about them.
	foreach (Comment comment in comments)
	collectedComments.Add(comment.Author + " " + comment.DateTime + " " + comment.ToString(SaveFormat.Text));
	foreach (string collectedComment in collectedComments)
		Console.WriteLine(collectedComment);
}
{{< /highlight >}}

{{< /tab >}}

{{< tab tabNum="2" >}}

You can also do the same using the Open XML SDK. At the same time, note that it looks somewhat more complicated and more cumbersome.

Following are the namespaces we need to add:

{{< highlight csharp >}}
using System;
using DocumentFormat.OpenXml.Packaging;
using DocumentFormat.OpenXml.Wordprocessing;
using NUnit.Framework;
{{< /highlight >}}

The following code example shows how to retrieve comments from a Word Document:

{{< highlight csharp >}}
public static void RetrieveCommentsFeature()
{
	using (WordprocessingDocument wordDoc = WordprocessingDocument.Open(MyDir + "Comments.docx", false))
	{
		WordprocessingCommentsPart commentsPart = wordDoc.MainDocumentPart.WordprocessingCommentsPart;
		if (commentsPart?.Comments != null)
			foreach (Comment comment in commentsPart.Comments.Elements<Comment>())
				Console.WriteLine(comment.InnerText);
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
