---
title: Public API Changes in Aspose.Words 13.2.0
type: docs
weight: 20
url: /net/public-api-changes-in-aspose-words-13-2-0/
---

{{% alert color="primary" %}} 

These page list public API changes that were introduced in Aspose.Words 13.2.0. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.

{{% /alert %}} 

## LayoutEnumerator.MoveNode is made Obsolete and LayoutCollector.GetEntity Method Added

**LayoutEnumerator.MoveNode** method should no longer be used. The functionality to move to the layout entity of a node should is now achieved using a combination of **LayoutCollector.GetEntity(Node)** and passing the opaque object which is returned to **LayoutEnumerator.Current**.

### Improved Finding the Layout Entity from a Document Node

**LayoutEnumerator** supports moving to the layout entity of a corresponding node for more node types when compared to Aspose.Words 13.1.0. Use the new **LayoutCollector.GetEntity** and **LayoutEnumerator.Current** to move to the entity of a node.

All node types can be moved to with the exception of:

- Run nodes.
- Table nodes (can be found using the first row of the table instead)
- Nodes in the header footer.
- Nodes in the DOM that are higher in the hierarchy than a story e.g Body and Section.

### Improved Support for Unescaped Angled Brackets when Loading HTML

The loading of HTML documents with un-escaped "<" brackets inside elements could sometimes cause truncation when converting to other formats. Support for this has been improved.

### Defining a Border with Line Style and Zero Width now Exports a Visible Border

Microsoft Word was found to interpret any borders set with a line style but having zero line width as having a visible line (at 1/4 point width, the smallest width possible). Aspose.Words in this situation would not export any border, this has now been corrected to match the behavior of Microsoft Word.

### PageInfo PaperSize and PaperSource Methods Changed Signature

In previous versions **PageInfo.GetDotNetPaperSize** and **PageInfo.GetSpecifiedPrinterPaperSource** methods used to accept a **PrinterSettingsContainer** class which is used in caching. Now these methods directly accept properties from **PrinterSettings**. You can still create your own caching to improve performance when printing if desired.

### PdfSaveOptions.OpenHyperlinksInNewWindow Property Added

When enabled this property adds Javascript to the output PDF which causes any hyperlinks that are activated to be opened in a new frame or window.

### Rendering Checkboxes to PDF Format no longer Requires WINGDINGS Font

Aspose.Words now matches Microsoft Word behavior and renders a checkbox instead of simulating one using the WINGDINGS font. Some customers originally had trouble with this simulation on servers where this font was not present.

### Heading Style Indices are Supported on STYLEREF Fields

Fields like **{ STYLEREF 1 }** are now supported and will reference heading styles, for instance in this example Heading 1.

### Unprotecting a Document no longer Disables Track Changes

This is to match the behavior of Microsoft Word which does not disable track changes when unprotecting a document.

### Fonts Resources are now Exported to FixedXaml in .ttf Format instead of .odttf

This was changed to fix a bug which occurs on the .NET Framework 4.0.
