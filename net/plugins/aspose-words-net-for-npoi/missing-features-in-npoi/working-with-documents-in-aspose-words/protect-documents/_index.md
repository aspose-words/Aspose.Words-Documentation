---
title: Protect Documents
type: docs
weight: 60
url: /net/protect-documents/
---

## **Aspose.Words - Protect Documents**
Use the **Document.Protect(ProtectionType)** method to protect a document from changes. This method accepts a **ProtectionType** parameter and optionally a password by passing one as the second parameter **Document.Protect(ProtectionType, String)**.

**C#**

{{< highlight csharp >}}
Document doc = new Document("../../data/document.doc");
doc.Protect(ProtectionType.ReadOnly);

// Following other Protection types are also available

// ProtectionType.NoProtection

// ProtectionType.AllowOnlyRevisions

// ProtectionType.AllowOnlyComments

// ProtectionType.AllowOnlyFormFields
doc.Save("AsposeProtect.doc", SaveFormat.Doc);
{{< /highlight >}}
## **Download Running Code**
Download **Protect Documents (Aspose.Words)** form any of the below mentioned social coding sites:

- [CodePlex](https://asposenpoi.codeplex.com/downloads/get/1475282)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/download/Aspose.Words_Features_Missing_in_NPOI_v_1.0/Protect.Documents.Aspose.Words.zip)

{{% alert color="primary" %}} 

For more details, visit [Protecting Documents](http://www.aspose.com/docs/display/wordsnet/Protecting+Documents).

{{% /alert %}}
