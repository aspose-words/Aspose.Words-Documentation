---
title: Public API Changes in Aspose.Words 13.7.0
type: docs
weight: 70
url: /net/public-api-changes-in-aspose-words-13-7-0/
---

{{% alert color="primary" %}} 

These page list public API changes that were introduced in Aspose.Words 13.7.0. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.

{{% /alert %}} 

## Added Options to Downsample Images when saving to PDF

**DownsampleImages** and **DownsampleResolution** options added to **PdfSaveOptions** which allows to downsample images when saving to PDF. By default images are downsample to 220 ppi. It seems that Microsoft Word uses this resolution to downsample images when saving to PDF.

In previous version DrwaingML images was downsampled to approximately 150 ppi unconditionally. All other images was not downsampled.

### Border Width is taken into Account when Exporting Paragraphs to HTML

In previous version when Aspose.Words calculates the position of paragraphs in an HTML document it ignores the widths of borders around the paragraphs. The difference is insignificant in most cases, however becomes apparent when the borders are wide. This issue has been fixed so paragraphs with thick borders will be positioned correctly, however the fix only applies when using inline styles and not when using a embedded or external style sheet.

### DocumentBuilder now Inherits Formatting from Previous Run instead of Next Run

This change was implemented to fix a reported bug. This behavior now better matches how Microsoft Word inherits formatting from the current position of the cursor.

### DrawingML Images are Rendered to PDF as a Regular Image

In Aspose.Words a DrawingML Image is rendered internally as a texture brush and saved to PDF as tiling pattern. This was found to cause some problems when the PDF was viewed in the FireFox web browser. This implementation has been changed to solve this issue and now DrawingML images are now rendered a simple image object instead of a tiling pattern. This behavior now matches how Microsoft Word exports such images.

### Drop-down Form Field with long lines now wrap when Saved to PDF

When rendering to PDF some drop-down form fields with long text was not wrapped when rendering to PDF, this can cause part of the content to be truncated. Starting with this version of Aspose.Words such form fields are exported to PDF with lines wrapped. This is seen as an improvement to how Microsoft Word handles such fields as it will only export plain text in this situation.

### Empty Headings are no longer included in PDF Document Outline

In previous versions of Aspose.Words outline paragraphs that contained no text were exported to PDF as empty outline headings. In this version these headings no longer appear in the document outline when exporting to PDF.

### Hidden Text is no longer Exported to XAML

In previous versions the output was incorrect and hidden text would remain in XAML output. Now these runs are skipped during export.

### Structured Document Tags are Exported to PDF as Editable Form Fields

In previous versions when **PdfSaveOptions,PreserveFormFields** is set to true any legacy form fields are exported as an equivalent editable form field to PDF. Starting with this version this option also preserves structured document tags as editable form fields when saving to PDF.
