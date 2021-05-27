---
title: Style Features Supported on Rich Text Import
type: docs
weight: 110
url: /net/style-features-supported-on-rich-text-import/
---

{{% alert color="primary" %}} 

A style allows you to define a set of formatting that can be reused on many elements in a document. This saves time and allows for a more consistent formatting throughout your document.

A style loaded into a document is represented in the Aspose.Words DOM by the Style class. You can access or modify any type of style (both in-built or custom) in a document.

You can also create a new style from scratch (with the exception of a table style which new styles cannot be created for currently). You can choose to set any style you want to document elements 

You currently cannot rename a style name or remove an exisiting style from a document. Copying styles from one document to another is also unsupported, however for the time being you can achieve this by copying a node with a style to another document. This will copy the source style along with it.

[Jump to this location in the export section](/words/net/style-features-supported-on-rich-text-export/)

{{% /alert %}} 

## Style Type

See the following links in the documentation for further information:

- [Document.Styles](https://apireference.aspose.com/words/net/aspose.words/documentbase/properties/styles)
- [Style](https://apireference.aspose.com/words/net/aspose.words/style/properties/name)
- [Style.Name](https://apireference.aspose.com/words/net/aspose.words/style/properties/name)

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Paragraph Style |Yes | |- [StyleType.Paragraph](https://apireference.aspose.com/words/net/aspose.words/styletype)|
|Character Style |Yes | |- [StyleType.Character](https://apireference.aspose.com/words/net/aspose.words/styletype)|
|List Style |Yes | |- [StyleType.List](https://apireference.aspose.com/words/net/aspose.words/styletype)|
|Table Style |Planned | |<p>- **Table.Style** </p><p>- [TableStyle](https://apireference.aspose.com/words/net/aspose.words/tablestyle) </p><p>- [StyleType.Table](https://apireference.aspose.com/words/net/aspose.words/styletype)</p>|

## General

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Aliases |Yes | | |
|Based On |Yes | |- [Style.BaseStyleName](https://apireference.aspose.com/words/net/aspose.words/style/properties/basestylename)|
|Built-in Styles |Yes | |<p>- [Style.BuiltIn](https://apireference.aspose.com/words/net/aspose.words/style/properties/builtin) </p><p>- [Style.StyleIdentifier](https://apireference.aspose.com/words/net/aspose.words/style/properties/styleidentifier)</p>|
|Custom Styles |Yes | | |
|Linked Styles |Yes | | |
|Style Name |Yes | |- **Style.Name**|
|Next Style |Yes | |- [Style.NextParagraphStyleName](https://apireference.aspose.com/words/net/aspose.words/style/properties/nextparagraphstylename)|
|Paragraph Properties |Yes | |- [Style.ParagraphFormat](https://apireference.aspose.com/words/net/aspose.words/style/properties/paragraphformat)|
|Run Properties |Yes | |- [Style.Font](https://apireference.aspose.com/words/net/aspose.words/style/properties/font)|
|Bullets and Numbering |Yes | |<p>- [Style.List](https://apireference.aspose.com/words/net/aspose.words/style/properties/list) </p><p>- [Style.ListFormat](https://apireference.aspose.com/words/net/aspose.words/style/properties/listformat)</p>|

## Document Defaults

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Paragraph Properties |Planned | | |
|Run Properties |Yes | | |

## Table Style

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Apply Formatting to |Planned | |- **Table.StyleOptions**|
|Table Properties |Planned | |- **TableStyle**|
|Banding |Planned | |- **Table.StyleOptions**|
|Paragraph Properties |Planned | |- [TableStyle.ParagraphFormat](https://apireference.aspose.com/words/net/aspose.words/style/properties/paragraphformat)|
|Run Properties |Planned | |- [TableStyle.Font](https://apireference.aspose.com/words/net/aspose.words/style/properties/font)|

