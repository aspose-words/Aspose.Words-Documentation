---
title: Get and Set Bookmark Text – Aspose.Words for .NET
articleTitle: Get and Set Bookmark Text
linktitle: Get and Set Bookmark Text
description: "Aspose.Words for .NET allows you to get and set bokmark textin a document easily and fast instead of using Open XML SDK."
type: docs
weight: 130
url: /net/get-and-set-bookmark-text/
---

On this page we will look at how to get and set bokmark text in a document using Aspose.Words or Open XML SDK.

{{< nosnippet >}}

{{< tabs tabTotal="2" tabID="1" tabName1="Aspose.Words" tabName2="Open XML SDK" >}}

{{< tab tabNum="1" >}}

In Aspose.Words, use the class [
Bookmark](https://apireference.aspose.com/words/net/aspose.words/bookmark) to work with a single bookmark ant the [BookmarkCollection](https://apireference.aspose.com/words/net/aspose.words/bookmarkcollection) class to work with a collection of bookmark objects.

The following code example shows how to get and set bokmark text in a document:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-BookmarkNameAndText-BookmarkNameAndText.cs" >}}

{{< /tab >}}

{{< tab tabNum="2" >}}

You can also do the same using the Open XML SDK. At the same time, note that it looks somewhat more complicated and more cumbersome.

Below is the code example for getting and setting Bookmark text in word document using OpenXML SDK.

Following are the namespaces we need to add:

{{< highlight csharp >}}
using System.Collections.Generic;
using DocumentFormat.OpenXml.Packaging;
using DocumentFormat.OpenXml.Wordprocessing;
using NUnit.Framework;
{{< /highlight >}}

The following code example shows how to get and set bokmark text in a document:

{{< highlight csharp >}}
public void GetAndSetBookmarkTextFeature()
{
	IDictionary<string, BookmarkStart> bookmarkMap = new Dictionary<string, BookmarkStart>();
	using (WordprocessingDocument wordDocument = WordprocessingDocument.Open(MyDir + "Get and set bookmark text.docx", true))
	{
		foreach (BookmarkStart bookmarkStart in wordDocument.MainDocumentPart.Document.Body.Descendants<BookmarkStart>())
		{
			bookmarkMap[bookmarkStart.Name] = bookmarkStart;
			foreach (BookmarkStart bookmark in bookmarkMap.Values)
			{
				Run bookmarkText = bookmark.NextSibling<Run>()
				if (bookmarkText != null)
					bookmarkText.GetFirstChild<Text>().Text = "Test";
			}
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

For more information about Aspose.Words feature please visit [Working with Bookmarks](/words/net/working-with-bookmarks/).

{{% /alert %}}
