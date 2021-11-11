---
title: Public API Changes in Aspose.Words 11.10.0
type: docs
weight: 30
url: /net/public-api-changes-in-aspose-words-11-10-0/
---

{{% alert color="primary" %}} 

These page list public API changes that were introduced in Aspose.Words 11.10.0. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.

{{% /alert %}} 

## Added an Option to choose Image Compression when Rendering to PDF

Aspose.Words 11.10.0 introduces a new save option member to specify the image compression when saving to PDF. Normally images are rendered in the format they appear in the input document, this can often mean a lossless compression format called *Flate compression* is used which provides great quality, but can cause an increase in file size.

You can now use **PdfSaveOptions.ImageCompression** to specify JPEG compression. Use this option in conjunction with the existing **PdfSaveOptions.JpegCompression** option to fully control the level of compression and space saving benefits. 

### Example

*Exports the content of a node to string in HTML format using default options.*

**C#**

{{< highlight csharp >}}
Document doc = new Document(MyDir + "Rendering.doc");
PdfSaveOptions options = new PdfSaveOptions();

// Use JPEG compression at 50% quality to reduce file size.
options.ImageCompression = PdfImageCompression.Jpeg;
options.JpegQuality = 50;
doc.Save(MyDir + "Rendering.JpegImageCompression Out.pdf", options);
{{< /highlight >}}

**Visual Basic**

{{< highlight csharp >}}
Dim doc As Document = new Document(MyDir & "Rendering.doc")
Dim options as PdfSaveOptions = new PdfSaveOptions()
' Use JPEG compression at 50% quality to reduce file size.
options.ImageCompression = PdfImageCompression.Jpeg
options.JpegQuality = 50
doc.Save(MyDir & "Rendering.JpegImageCompression Out.pdf", options);
{{< /highlight >}}

### Added Control for how Lists Labels are Exported to HTML

The ﻿**HtmlSaveOptions.ExportListLabels** property controls how list labels are exported to HTML.

#### Example

*Exports the content of a node to string in HTML format using default options.*

**C#**

{{< highlight csharp >}}
Document doc = new Document(MyDir + "Lists.PrintOutAllLists.doc");
HtmlSaveOptions saveOptions = new HtmlSaveOptions(SaveFormat.Html);

// This option uses <ul> and <ol> tags are used for list label representation if it doesn't cause formatting loss,

// otherwise HTML <p> tag is used. This is also the default value.
saveOptions.ExportListLabels = ExportListLabels.Auto;
doc.Save(MyDir + "Document.ExportListLabels Auto Out.html", saveOptions);

// Using this option the <p> tag is used for any list label representation.
saveOptions.ExportListLabels = ExportListLabels.AsInlineText;
doc.Save(MyDir + "Document.ExportListLabels InlineText Out.html", saveOptions);

// The <ul> and <ol> tags are used for list label representation. Some formatting loss is possible.
saveOptions.ExportListLabels = ExportListLabels.ByHtmlTags;
doc.Save(MyDir + "Document.ExportListLabels HtmlTags Out.html", saveOptions);
{{< /highlight >}}

**Visual Basic**

{{< highlight csharp >}}
Dim doc As New Document(MyDir & "Lists.PrintOutAllLists.doc")
Dim saveOptions As New HtmlSaveOptions(SaveFormat.Html)
' This option uses <ul> and <ol> tags are used for list label representation if it doesn't cause formatting loss,
' otherwise HTML <p> tag is used. This is also the default value.
saveOptions.ExportListLabels = ExportListLabels.Auto
doc.Save(MyDir & "Document.ExportListLabels Auto Out.html", saveOptions)
' Using this option the <p> tag is used for any list label representation.
saveOptions.ExportListLabels = ExportListLabels.AsInlineText
doc.Save(MyDir & "Document.ExportListLabels InlineText Out.html", saveOptions)
' The <ul> and <ol> tags are used for list label representation. Some formatting loss is possible.
saveOptions.ExportListLabels = ExportListLabels.ByHtmlTags
doc.Save(MyDir & "Document.ExportListLabels HtmlTags Out.html", saveOptions)
{{< /highlight >}}

### Full Support for Object.Attribute Syntax for all Merge Field Types

The Object.Attribute merge field syntax allows querying any data source and an attribute through the use of one field e.g Customer.Name. This feature was introduced with mustache merge fields in Aspose.Words 11.2.0. Some bug fixes and improvements to this feature means that it is now fully supported on both mustache and regular merge fields.

With the release of Aspose.Words 11.10.0 when executing mail merge, any merge field that includes a dot e.g "Customer.Name" will be first interpreted as requesting the "Customer" child datasource and the "Name" attribute. If this returns a valid data source then the field is merged with the result. Otherwise the current datasource is queried for a "Customer.Name" attribute.

It is suggested to avoid using dots in mail merge field names if you are not indenting to use the Object.Attribute syntax.

### Rendering OOXML Charts Supported Features

Additional features are now supported when rendering OOXML charts to PDF, XPS, image etc.

- Legend
- Chart Title
- Axis Title (partially supported)
- Data Labels (partiaully supported)
- Error Bars
- Picture Shapes and Textboxes
- Axis
- Data Point
- Legend
- Font
- Manual Layout
- Overlapping

See ﻿["Working with Charts"](/words/net/working-with-charts/) for more details.

### Improved Bookmark Export to HTML

Aspose.Words converts bookmarks in word documents as anchor tags (&lt;a&gt;) when saving to HTML. In previous versions of Aspose.Words a bookmark was exported to HTML without the actual text content of the bookmark inbetween e.g **"&lt;a name='BookmarkName'&gt;&lt;/a&gt;&lt;span&gt;Text that is actually inside the bookmark&lt;/span&gt;"**.

Aspose.Words 11.10.0 provides an improved export of bookmarks to HTML and attempts to preserve bookmark's boundary. Therefore the same example above is now exported as: **"&lt;a name='BookmarkName'&gt;Text that is actually inside the bookmark&lt;/a&gt;"**

Note that because HTML does not allow some tags to be embedded inside anchor tags in general any tags to be overlapped, during HTML export Aspose.Words still forcibly ends bookmark before:

1. New bookmark
1. Hyperlink
1. End of a paragraph
1. Text Form Field
1. Check Box Form Field
1. Drop-Down Form Field

For all other cases the bookmark should end as it appears in the word document.

### Added Resilience to Unexpected Changes in DocumentBuilder Cursor Position

There are times when **DocumentBuilder** can be made to point to a node which is no longer part of the document hierarchy, this can happen when the node the builder is pointing to is removed from the document, for example when the builder points to the start of a field and that field is removed from the document through the execution of mail merge. The node that the builder points to is no longer part of the document so if the builder is then used to insert content in the document a **NullPointerException** occurs because the node was removed from the document.

Improvements to the **DocumentBuilder** class will now avoid such scenarios by maintaining a reference to the current node's parent node. In the event the current node is removed the builder recovers by moving to the node's parent.

### Range.ToDocument Public Member Added

Call **Range.ToDocument** to retrieve a document from a given node's range.

### Added SvgSaveOptions.ImageSavingCallback Property

This allows the user to control process of saving images during export of documents to SVG format. This property is required when saving to a stream. The semantics is identical to XAML and HTML analogous public callbacks.

### Custom Properties Changed

In order to support custom properties with spaces and other characters when exporting to PDF the XML written had to be tweaked. If you read these custom properties using Aspose.Pdf or using any other methods then this must be taken into account.

This is an example of XML written for custom properties in Aspose.Words for .NET 11.10.0.

{{< highlight csharp >}}
<rdf:Description rdf:about="" xmlns:custprops="http://aspose.com/">
  <custprops:Property1>
    <rdf:Description>
      <custprops:Name>prop 1</custprops:Name>
      <custprops:Value>True</custprops:Value>
    </rdf:Description>
  </custprops:Property1>
  <custprops:Property2>
    <rdf:Description>
      <custprops:Name>prop 2</custprops:Name>
      <custprops:Value>10</custprops:Value>
    </rdf:Description>
  </custprops:Property2>
</rdf:Description>
{{< /highlight >}}
