---
title: OpenDocument Import - Style Features
second_title: Aspose.Words for .NET
articleTitle: Style Features Supported on OpenDocument Import
linktitle: Style Features Supported on OpenDocument Import
description: "Import ODT document using style load options in C#."
type: docs
weight: 110
url: /net/style-features-supported-on-opendocument-import/
---

{{% alert color="warning" %}}

This page has been archived and has not been updated for some time. It contains information for reference only.

{{% /alert %}}

{{% alert color="primary" %}}

A style allows you to define a set of formatting that can be reused on many elements in a document. This saves time and allows for a more consistent formatting throughout your document.

A style loaded into a document is represented in the Aspose.Words DOM by the Style class. You can access or modify any type of style (both in-built or custom) in a document.

You can also create a new style from scratch (with the exception of a table style which new styles cannot be created for currently). You can choose to set any style you want to document elements 

You currently cannot rename a style name or remove an exisiting style from a document. Copying styles from one document to another is also unsupported, however for the time being you can achieve this by copying a node with a style to another document. This will copy the source style along with it.

[Jump to this location in the export section](/words/net/style-features-supported-on-opendocument-export/)

{{% /alert %}}

## Style Type

See the following links in the documentation for further information:

- [Document.Styles](https://reference.aspose.com/words/net/aspose.words/documentbase/properties/styles)
- [Style](https://reference.aspose.com/words/net/aspose.words/style)
- [Style.Name](https://reference.aspose.com/words/net/aspose.words/style/properties/name)

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Paragraph Style |Yes | |- [StyleType.Paragraph](https://reference.aspose.com/words/net/aspose.words/styletype/)|
|Character Style |Yes | |- [StyleType.Character](https://reference.aspose.com/words/net/aspose.words/styletype/)|
|List Style |Yes | |- [StyleType.List](https://reference.aspose.com/words/net/aspose.words/styletype/)|
|Table Style |N/A | | |

## General

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Aliases |N/A | | |
|Based On |Yes | |- [Style.BaseStyleName](https://reference.aspose.com/words/net/aspose.words/style/basestylename/)|
|Built-in Styles |Yes | |<p>- [Style.BuiltIn](https://reference.aspose.com/words/net/aspose.words/style/builtin/) </p><p>- [Style.StyleIdentifier](https://reference.aspose.com/words/net/aspose.words/style/styleidentifier/)</p>|
|Custom Styles |Yes | | |
|Linked Styles |N/A | | |
|Style Name |Yes | |- **Style.Name**|
|Next Style |Yes | |- [Style.NextParagraphStyleName](https://reference.aspose.com/words/net/aspose.words/style/nextparagraphstylename/)|
|Paragraph Properties |Yes | |- [Style.ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/style/paragraphformat/)|
|Run Properties |Yes | |- [Style.Font](https://reference.aspose.com/words/net/aspose.words/style/font/)|
|Bullets and Numbering |Yes | |<p>- [Style.List](https://reference.aspose.com/words/net/aspose.words/style/list/) </p><p>- [Style.ListFormat](https://reference.aspose.com/words/net/aspose.words/style/list/format)</p>|

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

