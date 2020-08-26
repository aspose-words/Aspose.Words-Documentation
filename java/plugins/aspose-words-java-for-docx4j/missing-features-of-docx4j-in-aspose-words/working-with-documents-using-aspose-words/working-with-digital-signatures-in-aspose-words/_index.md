---
title: Working with Digital Signatures in Aspose.Words
type: docs
weight: 80
url: /java/working-with-digital-signatures-in-aspose-words/
---

## **Aspose.Words - Working with Digital Signatures**
A digital signature is used to authenticate a document to establish that the sender of the document is who they say they are and the content of the document has not been tampered with.

Aspose.Words supports documents with digital signatures and provides access to them allowing you to detect and validate digital signatures on a document . At the present time digital signatures are supported on DOC, OOXML and ODT documents.

**Java**

{{< highlight csharp >}}

 // The path to the document which is to be processed.

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
- [CodePlex](https://aspose-wordsjavadocx4j.codeplex.com/releases/view/618874)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Docx4j-v1.0.0)
## **Download Sample Code**
- [CodePlex](https://aspose-wordsjavadocx4j.codeplex.com/SourceControl/latest#src/main/java/com/aspose/words/examples/asposefeatures/loadingsavingandconverting/digitalsignature/AsposeDigitalSignatures.java)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Plugins/Aspose.Words-for-Java_for_Docx4j/src/main/java/com/aspose/words/examples/asposefeatures/loadingsavingandconverting/digitalsignature/AsposeDigitalSignatures.java)

{{% alert color="primary" %}} 

For more details, visit [Working with Digital Signatures](/words/java/working-with-digital-signatures/).

{{% /alert %}}
