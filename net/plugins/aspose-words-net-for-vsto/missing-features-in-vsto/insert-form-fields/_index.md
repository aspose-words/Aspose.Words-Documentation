---
title: Insert Form Fields
type: docs
weight: 20
url: /net/insert-form-fields/
---

Form fields are a particular case of Word fields that allows "interaction" with the user. Form fields in Microsoft Word include textbox, combobox and checkbox.

DocumentBuilder provides special methods to insert each type of form field into the document: [] , [], and []. Note that if you specify a name for the form field, then a bookmark is automatically created with the same name.
##### **Example**
*Below is the example of inserting ComboBox formfield by calling DocumentBuilder.InsertComboBox into the document.*

**C#**

{{< highlight cs >}}
 Document doc = new Document();
 DocumentBuilder builder = new DocumentBuilder(doc);
 string[] items = { "One", "Two", "Three" };
 builder.InsertComboBox("DropDown", items, 0);
{{< /highlight >}}
### **Download Running Examples**
- [Codeplex](https://asposewordsvsto.codeplex.com/SourceControl/latest#Aspose.Words Features missing in VSTO/Inserting Form Fields/)
- [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Plugins/Aspose.Words%20Vs%20VSTO%20Word/Aspose.Words%20Features%20missing%20in%20VSTO/Inserting%20Form%20Fields/)
- [Code.MSDN](https://code.msdn.microsoft.com/AsposeWords-Features-bfd6167c/view/SourceCode#content)
### **Download Sample Code**
- [Codeplex](https://asposewordsvsto.codeplex.com/releases/view/619474)
- [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/MissingFeaturesofVSTOv1.1)
- [Code.MSDN](https://code.msdn.microsoft.com/AsposeWords-Features-bfd6167c#content)

{{% alert color="primary" %}} 

For more details, visit [Form Fields](/words/net/working-with-form-fields/#workingwithformfields-insertingformfieldsinmicrosoftword).

{{% /alert %}}
