---
title: Extend and Contribute to CRM Duplicate Detection
description: "How to defined a custom workflow using Aspose.Words to detect duplicated documents."
type: docs
weight: 10
url: /net/extend-and-contribute-to-crm-duplicate-detection/
---

You can download the latest source code at:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Plugins/Dynamics%20CRM/Aspose.DuplicateDocument)
- [Code.MSDN](https://code.msdn.microsoft.com/Aspose-NET-Duplicate-9e6aaba6/view/SourceCode)

In this scenario we have used Aspose.Words.dll to generate document from a template. We have defined a custom workflow assembly that can be used with Workflows and Dialogs in CRM.

{{< highlight csharp >}}
Document Result = new Document();
DocumentBuilder ResultWriter = new DocumentBuilder(Result);

// Read Attachment in Aspose
byte[] DocumentBody = Convert.FromBase64String(Note["documentbody"].ToString());
MemoryStream fileStream = new MemoryStream(DocumentBody);
Document doc = new Document(fileStream);
ResultWriter.Writeln("Comparing Document: " + FileName);
ResultWriter.StartTable();

// Read Attachment in Aspose
byte[] OtherDocumentBody = Convert.FromBase64String(OtherNote["documentbody"].ToString());
MemoryStream fileStream2 = new MemoryStream(OtherDocumentBody);
Document doc2 = new Document(fileStream);
ResultWriter.InsertCell();
ResultWriter.Write(OtherFileName);

// Comparing document with other attachments
doc.Compare(doc2, "a", DateTime.Now);
if (doc.Revisions.Count == 0)
{
    // If documents are same
    ResultWriter.InsertCell();
    ResultWriter.Write("Duplicate Documents");
}
ResultWriter.EndRow();
ResultWriter.EndTable();
{{< /highlight >}}
