---
title: Conversion from Docx to Doc format
type: docs
weight: 10
url: /net/conversion-from-docx-to-doc-format/
---

**Aspose.Words** unique feature that provide flexibility in version conversions without affecting work.**SaveFormat** is enumeration that can convert document in the extensions given below in table.

|**Member Name** |**Value** |**Description** |
| :- | :- | :- |
|Unknown |0 |Indicates the format in which the document is saved. |
|Doc |1 |Indicates the format in which the document is saved. |
|Dot |2 |Indicates the format in which the document is saved. |
|Docx |3 |Indicates the format in which the document is saved. |
|Docm |4 |Indicates the format in which the document is saved. |
|Dotx |5 |Indicates the format in which the document is saved. |
|Dotm |6 |Indicates the format in which the document is saved. |
|FlatOpc |7 |Indicates the format in which the document is saved. |
|FlatOpcMacroEnabled |8 |Indicates the format in which the document is saved. |
|FlatOpcTemplate |9 |Indicates the format in which the document is saved. |
|FlatOpcTemplateMacroEnabled |10 |Indicates the format in which the document is saved. |
|Rtf |11 |Indicates the format in which the document is saved. |
|WordML |12 |Indicates the format in which the document is saved. |
|Pdf |13 |Indicates the format in which the document is saved. |
|Xps |14 |Indicates the format in which the document is saved. |
|XamlFixed |15 |Indicates the format in which the document is saved. |
|Swf |16 |Indicates the format in which the document is saved. |
|Svg |17 |Indicates the format in which the document is saved. |
|Html |18 |Indicates the format in which the document is saved. |
|Mhtml |19 |Indicates the format in which the document is saved. |
|Epub |20 |Indicates the format in which the document is saved. |
|Odt |21 |Indicates the format in which the document is saved. |
|Ott |22 |Indicates the format in which the document is saved. |
|Text |23 |Indicates the format in which the document is saved. |
|XamlFlow |24 |Indicates the format in which the document is saved. |
|Tiff |25 |Indicates the format in which the document is saved. |
|Png |26 |Indicates the format in which the document is saved. |
|Bmp |27 |Indicates the format in which the document is saved. |
|Emf |28 |Indicates the format in which the document is saved. |
|Jpeg |29 |Indicates the format in which the document is saved |
Below is code snippet that shows conversion from docx to doc you can do it vice versa as well

{{< highlight java >}}

 Document doc = new Document("Sample.docx");

doc.Save("Converted.doc",SaveFormat.Doc);

{{< /highlight >}}
## **Download Sample Code**
- [Codeplex](https://asposevsto.codeplex.com/downloads/get/813253)
- [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Plugins/Aspose.Words%20Vs%20VSTO%20Word/Aspose.Words%20Features%20missing%20in%20VSTO/Conversion%20between%20different%20Office%20Word%20formats/Conversion%20from%20docx%20to%20doc)
- [Bitbucket](https://bitbucket.org/asposemarketplace/aspose-for-openxml/downloads/ConvertFromDOCMtoDOCX.zip)
