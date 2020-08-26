---
title: Protect Documents using Aspose.Words
type: docs
weight: 70
url: /java/protect-documents-using-aspose-words/
---

## **Aspose.Words - Protect Documents**
Use the **Document.protect(ProtectionType)** method to protect a document from changes. This method accepts a **ProtectionType** parameter and optionally a password bypassing one as the second parameter **Document.protect(ProtectionType, String)**.

**Java**

{{< highlight csharp >}}

 Document doc = new Document(dataDir + "document.doc");

doc.protect(ProtectionType.READ_ONLY);

// doc.protect(ProtectionType.ALLOW_ONLY_COMMENTS);

// doc.protect(ProtectionType.ALLOW_ONLY_FORM_FIELDS);

// doc.protect(ProtectionType.ALLOW_ONLY_REVISIONS);


{{< /highlight >}}
## **Download Running Code**
- [CodePlex](https://aspose-wordsjavadocx4j.codeplex.com/releases/view/618874)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Docx4j-v1.0.0)
## **Download Sample Code**
- [CodePlex](https://aspose-wordsjavadocx4j.codeplex.com/SourceControl/latest#src/main/java/com/aspose/words/examples/asposefeatures/documents/protectdocuments/AsposeProtectDoc.java)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Plugins/Aspose.Words-for-Java_for_Docx4j/src/main/java/com/aspose/words/examples/asposefeatures/documents/protectdocuments/AsposeProtectDoc.java)

{{% alert color="primary" %}} 

For more details, visit [Protecting Documents](/words/java/protect-documents/).

{{% /alert %}}
