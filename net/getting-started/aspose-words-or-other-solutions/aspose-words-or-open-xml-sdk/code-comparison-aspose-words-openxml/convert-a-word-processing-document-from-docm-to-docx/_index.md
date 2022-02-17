---
title: Convert DOCM to DOCX – Aspose.Words for .NET
articleTitle: Convert DOCM to DOCX
linktitle: Convert DOCM to DOCX
description: "Aspose.Words for .NET allows you to convert DOCM to DOCX easily and fast instead of using Open XML SDK."
type: docs
weight: 50
url: /net/convert-a-word-processing-document-from-docm-to-docx/
aliases: [/net/convert-a-word-processing-document-from-the-docm-to-the-docx-file-format/]
---

On this page we will look at how to convert a document that contains VBA code and has a .docm extension to a .docx document. With this conversion, macros and vbaProject parts stored in a document in DOCM format will not be written to the DOCX.

{{< nosnippet >}}

{{< tabs tabTotal="2" tabID="1" tabName1="Aspose.Words" tabName2="Open XML SDK" >}}

{{< tab tabNum="1" >}}

In Aspose.Words, we normally use the [Document](https://apireference.aspose.com/words/net/aspose.words/document/constructors/main) constructor of Aspose.Words API to load a document in DOCM format and the  [Document.Save](https://apireference.aspose.com/words/net/aspose.words/document/methods/save/index) method to save the document to DOCX.

The following code example shows how to convert DOCM to DOCX:

{{< highlight csharp >}}
Document doc = new Document("SourceDocument.docm");
doc.Save("ResultDocument.docx");
{{< /highlight >}}

{{< /tab >}}

{{< tab tabNum="2" >}}

You can also do the same using the Open XML SDK. At the same time, note that it looks somewhat more complicated and more cumbersome.

Following are the namespaces we need to add:

{{< highlight csharp >}}
using System.IO;
using DocumentFormat.OpenXml;
using DocumentFormat.OpenXml.Packaging;
using NUnit.Framework;
{{< /highlight >}}

The following code example modifies the specified document by verifying that the document contains a vbaProject part and removing that part. After the code removes the part, it changes the document type internally and renames the document so that it uses .docx extension.

{{< highlight csharp >}}
public void ConvertFromDocmToDocxFeature()
{
	bool fileChanged = false;
	using (WordprocessingDocument document =
	WordprocessingDocument.Open(MyDir + "Convert from docm to docx.docm", true))
	{
		var docPart = document.MainDocumentPart;
		// Look for the vbaProject part. If it is there, delete it.
		var vbaPart = docPart.VbaProjectPart;
		if (vbaPart != null)
		{
			// Delete the vbaProject part and then save the document.
			docPart.DeletePart(vbaPart);
			docPart.Document.Save();
			// Change the document type to not macro-enabled.
			document.ChangeDocumentType(
				WordprocessingDocumentType.Document);
			fileChanged = true;
		}
	}
	// If anything goes wrong in this file handling,
	// the code will raise an exception back to the caller.
	if (fileChanged)
	{
		if (File.Exists(ArtifactsDir + "Convert from docm to docx - OpenXML.docm"))
		File.Delete(ArtifactsDir + "Convert from docm to docx - OpenXML.docm");
		File.Move(MyDir + "Convert from docm to docx.docm",
		ArtifactsDir + "Convert from docm to docx - OpenXML.docm");
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

For more information about Aspose.Words features please visit [Convert a Document](/words/net/convert-a-document/).

{{% /alert %}}
