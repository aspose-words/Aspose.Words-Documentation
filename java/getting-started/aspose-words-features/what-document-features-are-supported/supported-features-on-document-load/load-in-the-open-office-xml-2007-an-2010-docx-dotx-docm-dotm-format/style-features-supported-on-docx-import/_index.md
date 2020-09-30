---
title: Style Features Supported on DOCX Import
type: docs
weight: 100
url: /java/style-features-supported-on-docx-import/
---

{{% alert color="primary" %}} 

A style allows you to define a set of formatting that can be reused on many elements in a document. This saves time and allows for a more consistent formatting throughout your document.

A style loaded into a document is represented in the Aspose.Words DOM by the Style class. You can access or modify any type of style (both in-built or custom) in a document.

You can also create a new style from scratch (with the exception of a table style which new styles cannot be created for currently). You can choose to set any style you want to document elements 

You currently cannot rename a style name or remove an exisiting style from a document. Copying styles from one document to another is also unsupported, however for the time being you can achieve this by copying a node with a style to another document. This will copy the source style along with it.

[Jump to this location in the export section]()

{{% /alert %}} 
##### **Style Type**
See the following links in the documentation for further information:

- **Document.Styles**
- **Style**
- **Style.Name**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Paragraph Style |Yes | |- **StyleType.Paragraph**|
|Character Style |Yes | |- **StyleType.Character**|
|List Style |Yes | |- **StyleType.List**|
|Table Style |Yes | |<p>- **Table.Style** </p><p>- **TableStyle** </p><p>- **StyleType.Table**</p>|
##### **General**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Aliases |Yes | | |
|Based On |Yes | |- **Style.BaseStyleName**|
|Built-in Styles |Yes | |<p>- **Style.BuiltIn** </p><p>- **Style.StyleIdentifier**</p>|
|Custom Styles |Yes | | |
|Linked Styles |Yes | | |
|Style Name |Yes | |- **Style.Name**|
|Next Style |Yes | |- **Style.NextParagraphStyleName**|
|Paragraph Properties |Yes | |- **Style.ParagraphFormat**|
|Run Properties |Yes | |- **Style.Font**|
|Bullets and Numbering |Yes | |<p>- **Style.List** </p><p>- **Style.ListFormat**</p>|
##### **Document Defaults**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Paragraph Properties |Yes | | |
|Run Properties |Yes | | |
##### **Table Style**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Apply Formatting to |Yes | |- **Table.StyleOptions**|
|Table Properties |Yes | |- **TableStyle**|
|Banding |Yes | |- **Table.StyleOptions**|
|Paragraph Properties |Yes | |- **TableStyle.ParagraphFormat**|
|Run Properties |Yes | |- **TableStyle.Font**|

