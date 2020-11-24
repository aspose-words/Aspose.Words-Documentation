---
title: Protect Documents and Parts of Documents
type: docs
weight: 120
url: /net/protect-documents-and-parts-of-documents/
---

You can add protection to Word documents to prevent users from making any edits to the document.

## VSTO Words

The following code example protects the active document. To use this code example, run it from the ThisAddIn class in your project.

{{< highlight csharp >}}
object noReset = false;
object password = System.String.Empty;
object useIRM = false;
object enforceStyleLock = false;
this.Application.ActiveDocument.Protect(Word.WdProtectionType.wdAllowOnlyReading,
ref noReset, ref password, ref useIRM, ref enforceStyleLock);
{{< /highlight >}}

## Aspose.Words

When a document is protected, the user can make only limited changes, such as adding annotations, making revisions, or completing a form.
Even if a document is protected with a password, Aspose.Words does not require the password to open, modify or unprotect this document.

When you use Aspose.Words to protect a document, you have an option of keeping the existing password or specifying a new password.

Use the **Document.Protect** method to protect a document from changes. This method accepts a **ProtectionType** parameter and optionally a password by passing one as the second parameter **Document.Protect**.

{{< highlight csharp >}}
Document doc = new Document();
doc.Protect(ProtectionType.AllowOnlyFormFields, "password");
{{< /highlight >}}

## Download Running Code Example

- [CodePlex](https://asposevsto.codeplex.com/releases/view/616042)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/AsposeWordsForVSTOv1.1)

## Sample Code

- [CodePlex](https://archive.codeplex.com/?p=asposevsto#Aspose.Words%20Vs%20VSTO%20Words/Protect%20Documents/)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Plugins/Aspose.Words%20Vs%20VSTO%20Word/Code%20Comparison%20of%20Common%20Features/Protect%20Documents)
