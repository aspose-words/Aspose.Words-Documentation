---
title: Style Features Supported on OpenDocument Import
type: docs
weight: 100
url: /java/style-features-supported-on-opendocument-import/
---

{{% alert color="primary" %}} 

A style allows you to define a set of formatting that can be reused on many elements in a document. This saves time and enables for more consistent formatting throughout your document.

A style loaded into a document is represented in the Aspose.Words DOM by the Style class. You can access or modify any type of style (both in-built or custom) in a document.

You can also create a new style from scratch (with the exception of a table style which new styles cannot be created for currently). You can choose to set any style you want to document elements 

You currently cannot rename a style name or remove an existing style from a document. Copying styles from one document to another is also unsupported, however for the time being you can achieve this by copying a node with a style to another document. This will copy the source style along with it.

[Jump to this location in the export section]()

{{% /alert %}} 

## Style Type

See the following links in the documentation for further information:

- **Document.Styles**
- **Style**
- **Style.Name**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Paragraph Style |Yes | |- **StyleType.Paragraph**|
|Character Style |Yes | |- **StyleType.Character**|
|List Style |Yes | |- **StyleType.List**|
|Table Style |N/A | | |

## General

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Aliases |N/A | | |
|Based On |Yes | |- **Style.BaseStyleName**|
|Built-in Styles |Yes | |<p>- **Style.BuiltIn** </p><p>- **Style.StyleIdentifier**</p>|
|Custom Styles |Yes | | |
|Linked Styles |N/A | | |
|Style Name |Yes | |- **Style.Name**|
|Next Style |Yes | |- **Style.NextParagraphStyleName**|
|Paragraph Properties |Yes | |- **Style.ParagraphFormat**|
|Run Properties |Yes | |- **Style.Font**|
|Bullets and Numbering |Yes | |<p>- **Style.List** </p><p>- **Style.ListFormat**</p>|

## Document Defaults

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Paragraph Properties |N/A | | |
|Run Properties |N/A | | |

## Table Style

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Apply Formatting to |N/A | | |
|Table Properties |N/A | | |
|Banding |N/A | | |
|Paragraph Properties |N/A | | |
|Run Properties |N/A | | |

