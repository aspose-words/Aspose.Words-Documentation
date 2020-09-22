---
title: Public API Changes in Aspose.Words 13.11.0
type: docs
weight: 110
url: /net/public-api-changes-in-aspose-words-13-11-0/
---

{{% alert color="primary" %}} 

These page list public API changes that were introduced in Aspose.Words 13.11.0. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.

{{% /alert %}} 

### **Field.Remove Behavior and Return Type Changed**

Calling this method will remove the desired field from the document and will now return the node found directly after the field before removal. If the field's end is the last node in the parent paragraph then it returns the parent paragraph. If the field has already been removed it will return null. This return type is particularly useful when working with nested fields as a reference to the inner part of the field code can be retained

### **Field Engine Refactored and Performance Improved**

A rework to the field engine has resulted in better performance of field update in large documents. This fix solved several issues at once and it also increases the resiliency of the field engine so the chance of future issues is lowered.

### **FontFormat property added to HtmlFixedSaveOptions**

The (HtmlFixedSaveOptions.FontFormat( public property has been added which allows specifies the format that is used to export fonts while rendering to HTML fixed format. Using this option can choose to export fonts as either the True Type Font Format or Web Open Font Format.

#### **FontFormat Property Added to HtmlFixedSaveOptions**

Joins of the adjacent runs with the same formatting now supporting on paragraph level by calling **Paragraph.JoinRunsWithSameFormatting**.

#### **RemoveStaticFields Flag Added to MailMergeCleanupOptions**

The public flag MailMergeCleanupOptions.RemoveStaticFields has been added which specifies whether static fields should be removed from the document. Static fields are fields which results remain the same upon any document change. Fields which do not store their results in a document and are calculated on the fly are not considered to be static.

#### **SaveRoutingSlip Option is added to DocSaveOption Object**

Use the **DocSaveOptions.SaveRoutingSlip** member to control if routing slip data is exported with the document.

#### **TiffBinarizationMethod added to ImageSaveOptions**

When **ImageSaveOptions.TiffCompression** is set to **TiffCompression.Ccitt3** or **ImageSaveOptions.TiffCompression** is set to **TiffCompression.Ccitt4** the output image is black and white (1 bbp pixel format). Previously to convert images to black and white the threshold method was used, if sum of RGB components of pixel is more than threshold, new pixel becomes white otherwise if less it becomes black.

Now a new method of binarization has been introduced, dithering using Floyd-Steinberg error diffusion. 
User can specify which binarization method to use by setting the **ImageSaveOptions.TiffBinarizationMethod** property.
