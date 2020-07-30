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
##### **Obtaining Form Fields A collection of form fields is represented by the FormFieldCollection class that can be retrieved using the Range.FormFields property. This means that you can obtain form fields contained in any document node including the document itself.**
##### **Example Shows how to get a collection of form fields. C# string FilePath = @"..\..\..\Sample Files\"; string FileName = FilePath + "Obtaining Form Fields.docx"; //Shows how to get a collection of form fields. Document doc = new Document(FileName); FormFieldCollection formFields = doc.Range.FormFields;**
You can get a particular form field by its index or name. 
##### **Example Shows how to access form fields. C# //Shows how to access form fields. Document myDoc = new Document(FileName); FormFieldCollection documentFormFields = myDoc.Range.FormFields; FormField formField1 = documentFormFields[3]; FormField formField2 = documentFormFields["CustomerName"];**
## **Download Sample Code**
- [Codeplex](https://asposeopenxml.codeplex.com/releases/view/617779)
- [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/MissingFeaturesofOpenXMLWordsv1.1)
- [Code.MSDN](https://code.msdn.microsoft.com/Missing-Features-in-6a2c882b)
## **Download Running Code**
- [Codeplex](http://asposeopenxml.codeplex.com/SourceControl/latest#Aspose.Words Features missing in OpenXML/Obtaining Form Fields/)
- [Github](http://asposeopenxml.codeplex.com/SourceControl/latest#Aspose.Words Features missing in OpenXML/Obtaining Form Fields/)
- [Code.MSDN](https://code.msdn.microsoft.com/Missing-Features-in-6a2c882b/view/SourceCode#content)
