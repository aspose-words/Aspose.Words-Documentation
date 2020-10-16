---
title: Public API Changes in Aspose.Words 14.1.0
type: docs
weight: 10
url: /net/public-api-changes-in-aspose-words-14-1-0/
---

{{% alert color="primary" %}} 

These page list public API changes that were introduced in Aspose.Words 14.1.0. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.

{{% /alert %}} 

## Comments are exported to HTML as Footnotes and can be Round tripped

Comments inside Microsoft Word documents are exported to HTML as Footnote elements. This behavior matches how Microsoft Word exports comments to HTML and greatly improves document fidelity and the ability to round trip such documents from DOC to HTML to DOC.

### CustomTocStyleSeparator added to FieldOptions

The property **FieldOptions.CustomTocStyleSeparator** has been added allowing you to sets custom style separator for \t switch in TOC field.

By default, custom styles defined by the \t switch in the TOC field are separated by a delimiter taken from the current culture. This property overrides that behavior by specifying a user defined delimiter.

### Rendering Revision Options Exposed

**Document.LayoutOptions** provides members to control how revisions are displayed in rendered documents.

### Changes to Downsampling API Members

**DownsampleOptions.ResolutionThreshold** is a new member added to control under which circumstances when images should be down sampled. Any image which has a PPI less than the given value will not be down sampled. A value of 0 is equal to situation before this option was introduced.

Also **PdfSaveOptions.DownsampleImages** and **PdfSaveOptions.DownsampleResolution** properties have been marked with Obsolete attribute. The **DownsampleOptions** class has been introduced to keep all related options in one place.

### Form fields default value behaves more like Microsoft Word

In previous versions resetting a form field text by passing an empty string to **FormField.Result** would result in a form field that could not be properly selected in the output document. This behavior has been fixed and form fields reset in this fashion now appear correctly and can be selected.

### Hidden content is not exported to PDF

In previous versions hidden content would be exported to PDF. This behavior has been corrected and any hidden content does not appear in the output PDF.

### HTML Round-trip of Header Footers Improved

Headers and footers are not native to HTML formats as they are page-less therefore they are normally exported as plain text and when reopened in Aspose.Words, they are no longer read as actual header footers.

This version of Aspose.Words introduces proper round-trip of headers and footers and does so by writing the content to HTML as div elements to separate them from the main text in HTML documents. A custom HTML attribute ‘data-headerfooter-type’ is used to distinguish the div elements as actual header footers when reloading the document.

### Rendering of DrawingML SoftEdge effect

Starting from 14.1.0 version Aspose.Words supports rendering of SoftEdge effect.

### Support for Exporting Drop-down Form Fields as Text while saving to HTML

The ability to export drop down form fields in Word documents as text when saving to HTML has been added. By default such fields are exported as "SELECT" tag in HTML however by using **HtmlSaveOptions.ExportDropDownFormFieldAsText** output can be changed to plain text.

### Support for Left, Right, Center Text alignment for Multiline WordArt Objects

Starting from 14.1.0 version Aspose.Words supports multi-line WordArt objects, but with the following restrictions:

\1. Only Left, Right and Center text alignments are supported.

\2. Bezier fit for multiline WordArt doesn't correctly work with the following curves: "Deflate Inflate", "Deflate Inflate Deflate", "Button", "Circle (Curve)", "Arc Up" and "Arc Down".

### Support for Loading Documents via URI

The document constructor used to load external documents into the Aspose.Words DOM now accepts a **URI** parameter to load documents from the web. By default when an **URI** is passed to to the Document constructor the designated file is retrieved using a GET operation of **HttpWebRequest**. Further ability to control how the document is loaded from the URI can be controlled using **IResourceLoadingCallback**.
