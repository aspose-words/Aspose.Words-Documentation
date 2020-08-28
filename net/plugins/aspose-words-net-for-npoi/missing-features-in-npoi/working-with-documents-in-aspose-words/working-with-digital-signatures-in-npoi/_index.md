---
title: Working with Digital Signatures in NPOI
type: docs
weight: 90
url: /net/working-with-digital-signatures-in-npoi/
---

## **Aspose.Words - Working with Digital Signatures**
A digital signature is used to authenticate a document to establish that the sender of the document is who they say they are and the content of the document has not been tampered with.

Aspose.Words supports documents with digital signatures and provides access to them allowing you to detect and validate digital signatures on a document . At the present time digital signatures are supported on DOC, OOXML and ODT documents.

**C#**

{{< highlight csharp >}}

// The path to the document which is to be processed.
string filePath = "../../data/document.doc";
FileFormatInfo info = FileFormatUtil.DetectFileFormat(filePath);
if (info.HasDigitalSignature)
{
	Console.WriteLine(string.Format("Document {0} has digital signatures, they will be lost if you open/save this document with Aspose.Words.", new FileInfo(filePath).Name));
}
else
{
	Console.WriteLine("Document has no digital signature.");
}
{{< /highlight >}}
## **Download Running Code**
Download **Working with Digital Signatures** form any of the below mentioned social coding sites:

- [CodePlex](https://asposenpoi.codeplex.com/downloads/get/1475285)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/download/Aspose.Words_Features_Missing_in_NPOI_v_1.0/Working.with.Digital.Signatures.Aspose.Words.zip)

{{% alert color="primary" %}} 

For more details, visit [Working with Digital Signatures](http://www.aspose.com/docs/display/wordsnet/Working+with+Digital+Signatures).

{{% /alert %}}
