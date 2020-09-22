---
title: Public API Changes in Aspose.Words 13.6.0
type: docs
weight: 60
url: /net/public-api-changes-in-aspose-words-13-6-0/
---

{{% alert color="primary" %}} 

These page list public API changes that were introduced in Aspose.Words 13.6.0. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.

{{% /alert %}} 

### **Added a Method to Remove Unused Resources from a Document**

A new member has been added to the public API to remove unused resources from a loaded document. Use **Document.RemoveUnusedStyles** to delete any styles or list that are included in the document but are not use.

### **Added an Option to Generate Scalable SVG Output**

The **SvgSaveOptions.FitToViewPort** option has been added to the public API. When set to true the SVG image scales to fill the available viewport space.

### **The Correct Font is now used for ComboBox Form Fields when Saving to PDF Format.**

When saving to PDF with the **PreserveFormFields** option set to true legacy comboboxes are exported to PDF as native form fields. There was a bug that was preventing the correct default font being used for the combobox which was fixed. It is unknown at this point if this indirectly causes a problem with the form field combobox size.

### **Custom Tags to Specify MailMerge Regions**

Using **MailMerge.RegionStartTag** and **MailMerge.RegionEndTag** properties you can now specify what tags the mail merge engine should use while looking for regions. The default values are "TableStart" and "TableEnd" for backward compatibility.

### **Images Larger than Maximum Size are no longer Scaled Down when Loading HTML**

Word document formats have constraints on the maximum dimensions that images can be inserted as. Aspose.Words normally resizes any images that exceed this maximum size when loading and resets the shape size to minimum size (1px). Starting with this release this behavior differs for the HTML based formats, as images that exceed maximum size are now scaled to fit the container instead of reset to minimum size. Other formats still reset image size to minimum. This change was made to match behavior with Microsoft word. 

When an image inserted using DocumentBuilder or directly using the DOM and one of dimensions of image is greater than maximum allowed shape size, the image is scaled to fit the container.

### **Ordered and Unordered HTML List Styles Supported**

Ordered and unordered list style can now be properly read when loading HTML documents into Aspose.Words.

### **OpenXps (ECMA-388) save format introduced.**

OpneXps (ECMA-388) save format has been introduced. OpenXps document can be saved by specifying “.oxps” extension, by passing **SaveFormat.OpenXps** into **Document.Save** method or by passing **XpsSaveOptions** with **SaveFormat.OpenXps** specified.

### **PAGE Field as Fixed Value when saving to HTML Based Formats**

When saving to HTML based formats such as HTML, MHTML, EPUB (but not FixedHtml) a PAGE field is now exported with a fixed value of 1. For example page "1 of 46". This change was implemented to improve the output of this field as HTML based formats are pageless and in previous versions the default value of this field was exported incorrectly to HTML formats shown.

### **PAGE Field as Fixed Value when saving to HTML Based Formats**

Text wrapping for a table can now be specified in the API by using Table.TextWrapping property. As with some other table properties this option can only be set if the table has at least one row first.

### **TextWrapping Property Added to Table Object**

Text wrapping for a table can now be specified in the API by using Table.TextWrapping property. As with some other table properties this option can only be set if the table has at least one row first.

### **Theme Font Information Exposed in the Public API**

In previous versions the font name returned by members of the **Font** class such as **Font.Name**, **Font.NameAscii**, **Font.NameFarEast**, **FontName.Other**, **FontName.Bi** would return the applied font without taking theme information into account. If a theme was applied to the element in question then the wrong font name could be returned. This issue is now resolved and the font name properly resolved when themes are applied. The behavior of the setters is not changed.
