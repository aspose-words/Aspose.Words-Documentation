---
title: Obtaining Form Fields
type: docs
weight: 90
url: /net/obtaining-form-fields/
---

{{% alert color="primary" %}} 

Placing form fields into the document via code is easy. DocumentBuilder has special methods for inserting them, one for each form field type.

Each of the methods accepts a string parameter representing the name of the form field. The name can be an empty string. If however you specify a name for the form field, then a bookmark is automatically created with the same name.

{{% /alert %}} 

## Obtaining Form Fields 

A collection of form fields is represented by the FormFieldCollection class that can be retrieved using the Range.FormFields property. This means that you can obtain form fields contained in any document node including the document itself.

The following example shows how to get a collection of form fields:

**C#**

{{< highlight csharp >}}
string FilePath = @"..\..\..\Sample Files\";
string FileName = FilePath + "Obtaining Form Fields.docx";

//Shows how to get a collection of form fields. Document doc = new Document(FileName); FormFieldCollection formFields = doc.Range.FormFields;
{{< /highlight >}}

You can get a particular form field by its index or name. 

The following example shows how to access form fields:

**C#**

{{< highlight csharp >}}
//Shows how to access form fields.
Document myDoc = new Document(FileName);
FormFieldCollection documentFormFields = myDoc.Range.FormFields;
FormField formField1 = documentFormFields[3];
FormField formField2 = documentFormFields["CustomerName"];
{{< /highlight >}}

## Download Sample Code

- [Codeplex](https://asposeopenxml.codeplex.com/releases/view/617779)
- [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/MissingFeaturesofOpenXMLWordsv1.1)
- [Code.MSDN](https://code.msdn.microsoft.com/Missing-Features-in-6a2c882b)

## Download Running Code

- [Codeplex](https://archive.codeplex.com/?p=asposeopenxml#Aspose.Words%20Features%20missing%20in%20OpenXML/Obtaining%20Form%20Fields/)
- [Github](https://archive.codeplex.com/?p=asposeopenxml#Aspose.Words%20Features%20missing%20in%20OpenXML/Obtaining%20Form%20Fields/)
- [Code.MSDN](https://code.msdn.microsoft.com/Missing-Features-in-6a2c882b/view/SourceCode#content)
