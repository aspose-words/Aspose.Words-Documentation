---
title: Removing Form Field from Document
type: docs
weight: 20
url: /net/removing-form-field-from-document/
---

## **Aspose.Words - Removing Form Field from Document**
Sometimes it is necessary to remove a field from the document. This may occur when it is to be replaced with a different field type or when the field is no longer needed in the document. For example a TOC field when saving to HTML.
A field inserted into the document using DocumentBuilder.InsertField returns a Field object which provides a convenience method to easily remove the field from the document.

**C#**

{{< highlight csharp >}}
            Document doc = new Document();
            DocumentBuilder builder = new DocumentBuilder(doc);
            Field field = builder.InsertField("PAGE");

            // Calling this method completely removes the field from the document.
            field.Remove();
            doc.Save("FormFieldTest.docx");
{{< /highlight >}}
## **Download Running Code**
Download **Removing Form Field from Document** form any of the below mentioned social coding sites:

- [CodePlex](https://asposenpoi.codeplex.com/downloads/get/1525855)
- [GitHub](https://github.com/asposewords/Aspose.Words-for-.NET/releases/download/Aspose.Words_Features_Missing_in_NPOI-v1.1/06.02-RemoveFormField.zip)

{{% alert color="primary" %}} 

For more details, visit [Removing a Field](http://www.aspose.com/docs/display/wordsnet/Removing+a+Field).

{{% /alert %}}
