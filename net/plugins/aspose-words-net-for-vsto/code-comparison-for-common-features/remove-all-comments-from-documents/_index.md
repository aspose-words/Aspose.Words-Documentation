---
title: Remove All Comments from Documents
type: docs
weight: 130
url: /net/remove-all-comments-from-documents/
---

## VSTO Words

Call the **DeleteAllComments** method of the Document from which you want to remove comments.The following code example removes all comments from the active document. To use this code example, run it from the ThisAddIn class in your project.

{{< highlight csharp >}}
this.Application.ActiveDocument.DeleteAllComments();
{{< /highlight >}}

## Aspose.Words

Below is the code to remove comments from the document.

{{< highlight csharp >}}
string FileName = "YourFileName.docx";
Document doc = new Document(FileName);

// Collect all comments in the document
NodeCollection comments = doc.GetChildNodes(NodeType.Comment, true);

// Remove all comments.
comments.Clear();
{{< /highlight >}}

For more details you can go [here](https://docs.aspose.com/words/net/working-with-comments/#how-to-extract-or-remove-comments)

## Download Running Code Example

- [CodePlex](https://asposevsto.codeplex.com/releases/view/616042)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/AsposeWordsForVSTOv1.1)

## Sample Code

- [CodePlex](https://asposevsto.codeplex.com/SourceControl/latest#Aspose.Words Vs VSTO Words/Remove All Comments from Documents/)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Plugins/Aspose.Words%20Vs%20VSTO%20Word/Code%20Comparison%20of%20Common%20Features/Remove%20All%20Comments%20from%20Documents)
