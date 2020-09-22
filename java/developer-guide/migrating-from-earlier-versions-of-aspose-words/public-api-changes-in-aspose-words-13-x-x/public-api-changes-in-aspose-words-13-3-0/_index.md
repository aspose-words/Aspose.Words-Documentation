---
title: Public API Changes in Aspose.Words 13.3.0
type: docs
weight: 30
url: /java/public-api-changes-in-aspose-words-13-3-0/
---

{{% alert color="primary" %}} 

These page list public API changes that were introduced in Aspose.Words 13.3.0. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.

{{% /alert %}} 

### **New HtmlFixed Save Format Introduced**

Save any document to fixed HTML based format. All elements in this output are absolutely positioned that allows displaying document in browser exactly as it looks in Microsoft Word.

- Text is rendered as absolutely positioned spans. Fonts are exported as subsets in Woff (Web Open Font Format) and can be either embedded or stored as external resources.
- Vector graphics are rendered as embedded SVG images.

The following public API members were introduced:

- **SaveFormat.HtmlFixed** – Save format enumeration added for the new rendering format.
- **HtmlFixedSaveOptions** – Save options class added for the new rendering format.
- **IResourceSavingCallback** and **ResourceSavingArgs** members. A class implementing IResourceSavingCallback is used to control saving external resources (images, fonts, css) upon rendering document to fixed HTML or SVG format. This callback is used for all rendering formats which require saving external resources.

![todo:image_alt_text](public-api-changes-in-aspose-words-13-3-0_1.jpg)

### **Exposed Properties on Shape to Detect 3D and Shadow Effects**

The properties **ExtrusionEnabled** and **ShadowEnabled** have been added to Shape.

These properties have no setter and become true if Extrusion/Shadow effect is enabled.

### **Added MailMerge.MergeDuplicateRegions Property to Control if Duplicate Regions are Merged**

With the introduction of this setting a single data source can now merge multiple regions with the name in a document. This can be achieved by setting **MailMerge.MergeDuplicateRegions** to true before mail merge is executed. With this setting enabled if a document contains three mail merge regions all with the same name then all three are merged with the same data when mail merge is executed (this happens regardless of the data source type used). The default value for this option is false to allow backward compatibility.

This behavior applies to the following MailMerge methods:

- **MailMerge.ExecuteWithRegions(IMailMergeDataSource)**
- **MailMerge.ExecuteWithRegions(DataTable)**
- **MailMerge.ExecuteWithRegions(DataView)**
- **MailMerge.ExecuteWithRegions(IDataReader)**
- **MailMerge.ExecuteWithRegionsADO(object, string)**

### **Mail Merge Regions with an Empty Name are now Merged**

In previous versions a merge field with an empty string as a table name would be merged i.e **TableStart:**. This behavior was changed in recent versions as only region names with at least one character would be merged. This fix allows regions with empty table names to be merged once again.

### **Non-standard Quotation Marks are Recognized in Fields**

Microsoft Word recognizes quotation marks in fields from several Unicode characters: U+0022 (standard), U+00AB, U+00BB, U+201C, U+201D, U+201E, U+201E. Aspose.Words previously only recognized the standard quotation marks, however with this release it now recongizes all of the listed characters.

### **Partial Support of 3D Chart Rendering**

Rendering of right angled 3D charts is supported starting from this version of Aspose.Words.

The following 3D charts are supported:

- Bar charts including Box, Pyramid, Cylinder and Cone shapes.
- Line chart.
- Area chart.
- Pie chart.
- Rendering of bubbles in 3D mode is now supported.

### **Changes to Outline Options when Saving to Rendered Formats**

- All outline options are moved to separate class **﻿OutlineOptions**. Existing individual outline properties found in any **SaveOptions** class are now marked as Obsolete. Use the **OutlineOptions** property on appropriate rendered SaveOptions classes.
- DefaultBookmarksOutlineLevel option (which was previously **BookmarksOutlineLevel**) made 1-based instead of 0-based for PDF and SWF formats. This may lead to changes in the outline navigation results if this option is set in existing code.
- The outline tree building algorithm for XPS format has been made the same as for PDF and SWF formats. This may lead to changes in navigation tree result for this format.
- The **OutlineOptions.BookmarkOutlineLevels** property has been added. Use this feature to set the outline level for individual bookmarks by name.
