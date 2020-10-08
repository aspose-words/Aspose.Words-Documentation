---
title: Working with Digital Signatures using Aspose.Words
type: docs
weight: 100
url: /java/working-with-digital-signatures-using-aspose-words/
---

## **Aspose.Words - Working with Digital Signatures**

A digital signature is used to authenticate a document to establish that the sender of the document is who they say they are and the content of the document has not been tampered with.

Aspose.Words supports documents with digital signatures and provide access to them allowing you to detect and validate digital signatures on a document. At the present time, digital signatures are supported on DOC, OOXML and ODT documents.

**Java**

{{< highlight csharp >}}
String filePath = dataDir + "document.docx";
FileFormatInfo info = FileFormatUtil.detectFileFormat(filePath);
if (info.hasDigitalSignature())
{
    System.out.println(java.text.MessageFormat.format(
            "Document {0} has digital signatures, they will be lost if you open/save this document with Aspose.Words.",
            new File(filePath).getName()));
}
else
{
	System.out.println("Document has no digital signature.");
}
{{< /highlight >}}

## **Download Running Code**

- [CodePlex](https://asposewordsjavaapachepoi.codeplex.com/releases/view/618321)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Apache_POI_WP-v1.0.0)

## **Download Sample Code**

- [CodePlex](https://asposewordsjavaapachepoi.codeplex.com/SourceControl/latest#src/main/java/com/aspose/words/examples/asposefeatures/workingwithdocument/workingwithdigitalsignature/AsposeDigitalSignatures.java)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Plugins/Aspose_Words_for_Apache_POI/src/main/java/com/aspose/words/examples/asposefeatures/workingwithdocument/workingwithdigitalsignature/AsposeDigitalSignatures.java)

{{% alert color="primary" %}} 

For more details, visit [Working with Digital Signatures](/words/java/working-with-digital-signatures/).

{{% /alert %}}
