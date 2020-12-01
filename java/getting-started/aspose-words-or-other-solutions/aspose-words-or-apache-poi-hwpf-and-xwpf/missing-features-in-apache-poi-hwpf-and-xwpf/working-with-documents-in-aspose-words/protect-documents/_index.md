---
title: Protect Documents
type: docs
weight: 70
url: /java/protect-documents/
---

## Aspose.Words - Protect Documents

Use the **Document.protect(ProtectionType)** method to protect a document from changes. This method accepts a **ProtectionType** parameter and optionally a password by passing one as the second parameter **Document.protect(ProtectionType, String)**.

**Java**

{{< highlight csharp >}}
Document doc = new Document(dataDir + "document.doc");
doc.protect(ProtectionType.READ_ONLY);

// Following other Protection types are also available

// ProtectionType.ALLOW_ONLY_COMMENTS

// ProtectionType.ALLOW_ONLY_FORM_FIELDS

// ProtectionType.ALLOW_ONLY_REVISIONS
doc.save(dataDir + "AsposeProtect.doc", SaveFormat.DOC);
{{< /highlight >}}

## Download Running Code

- [CodePlex](https://asposewordsjavaapachepoi.codeplex.com/releases/view/618321)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Apache_POI_WP-v1.0.0)

## Download Sample Code

- [CodePlex](https://asposewordsjavaapachepoi.codeplex.com/SourceControl/latest#src/main/java/com/aspose/words/examples/asposefeatures/workingwithdocument/protectdoc/AsposeProtectDoc.java)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Plugins/Aspose_Words_for_Apache_POI/src/main/java/com/aspose/words/examples/asposefeatures/workingwithdocument/protectdoc/AsposeProtectDoc.java)

{{% alert color="primary" %}} 

For more details, visit [Protecting Documents](/words/java/working-with-document/#workingwithdocument-protectingdocuments).

{{% /alert %}}
