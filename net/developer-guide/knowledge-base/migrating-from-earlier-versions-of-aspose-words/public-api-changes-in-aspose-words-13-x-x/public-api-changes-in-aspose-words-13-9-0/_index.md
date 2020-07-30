---
title: Public API Changes in Aspose.Words 13.9.0
type: docs
weight: 90
url: /net/public-api-changes-in-aspose-words-13-9-0/
---

{{% alert color="primary" %}} 

These page list public API changes that were introduced in Aspose.Words 13.9.0. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.

{{% /alert %}} 
### **PageMode added to PdfSaveOptions**
The **PdfSaveOptions.PageMode** property determines how the PDF document should be displayed when opened in the PDF reader.
### **Fractional Border Widths Correctly handled when saving to HTML Based Formats**
Some borders with fractional border widths encounter problems when exported to HTML or EPUB and viewed on browsers based on the WebKit engine. In these browsers fractional border widths are rounded down and the border disappears. Now Aspose.Words will make sure that any borders less than 0.75pt (1px at 96dpi) is exported at 0.75pt so they are preserved correctly.
### **Dropdown List Structured Document Tag supports Data Bound Items**
Basic support for data bound items has been included in Structured Document Tags (content controls) so data bound items appear correctly in the drop down list.
### **Rendering of Diagonal Borders**
Different styles of diagonal borders are now correctly rendered when saving to fixed page formats e.g PDF, XPS etc.
### **PageMode added to PdfSaveOptions**
The **PdfSaveOptions.PageMode** property determines how the PDF document should be displayed when opened in the PDF reader.
### **Aspose.Words Opens a Zero-byte Length Document as a Blank Document**
Occasionally a user tries to open a document that is zero size, this happens when a new document is created via explorer which writes an empty file as a place holder. In previous versions of Aspose.Words trying to load such a document would throw an exception. This caused some confusion with customers so now Aspose.Words can open such documents. Any document that is zero bytes in length loaded via disk or stream will be imported into Aspose.Words as a blank document.
