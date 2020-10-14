---
title: Inserting Form Fields
type: docs
weight: 70
url: /net/inserting-form-fields/
---

Form fields are a particular case of Word fields that allows "interaction" with the user. Form fields in Microsoft Word include textbox, combobox and checkbox.

DocumentBuilder provides special methods to insert each type of form field into the document: [] , [], and []. Note that if you specify a name for the form field, then a bookmark is automatically created with the same name.

##### Example">Example

*Below is the example of inserting ComboBox formfield by calling DocumentBuilder.InsertComboBox into the document.*

**C#**

{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
string[] items = { "One", "Two", "Three" };
builder.InsertComboBox("DropDown", items, 0);
{{< /highlight >}}

## Download Sample Code

- [Codeplex](https://asposeopenxml.codeplex.com/releases/view/617779)
- [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/MissingFeaturesofOpenXMLWordsv1.1)
- [Code.MSDN](https://code.msdn.microsoft.com/Missing-Features-in-6a2c882b)

## Download Running Code

- [Codeplex|Document doc = new Document();
  DocumentBuilder builder = new DocumentBuilder(doc);

string[] items = 

Unknown macro: { "One", "Two", "Three" }

;
builder.InsertComboBox("DropDown", items, 0);]

- [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Plugins/Aspose.Words%20Vs%20OpenXML%20Words/OpenXMLMissingFeatures/Inserting%20Form%20Fields)
- [Code.MSDN](https://code.msdn.microsoft.com/Missing-Features-in-6a2c882b/view/SourceCode#content)
