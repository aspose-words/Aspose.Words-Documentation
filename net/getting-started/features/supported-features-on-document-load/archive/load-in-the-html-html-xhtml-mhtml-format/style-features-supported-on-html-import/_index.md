---
title: HTML Import - Style Features
second_title: Aspose.Words for .NET
articleTitle: Style Features Supported on HTML Import
linktitle: Style Features Supported on HTML Import
description: "Import HTML-based document using style load options in C#."
type: docs
weight: 110
url: /net/style-features-supported-on-html-import/
---

{{% alert color="warning" %}}

This page has been archived and has not been updated for some time. It contains information for reference only.

{{% /alert %}}

{{% alert color="primary" %}}

A style allows you to define a set of formatting that can be reused on many elements in a document. This saves time and allows for a more consistent formatting throughout your document.

A style loaded into a document is represented in the Aspose.Words DOM by the Style class. You can access or modify any type of style (both in-built or custom) in a document.

You can also create a new style from scratch (with the exception of a table style which new styles cannot be created for currently). You can choose to set any style you want to document elements 

You currently cannot rename a style name or remove an exisiting style from a document. Copying styles from one document to another is also unsupported, however for the time being you can achieve this by copying a node with a style to another document. This will copy the source style along with it.

Styles are imported from embedded or external CSS style sheets. Each selector is imported as a new Style in the Aspose.Words model. All styles are imported even if they are not actually used within the HTML body.

Style type is calculated based on the elements that the style is applied to. The appropriate style type is created from this.

The logic used when a external style sheet is enctounered on ocument load can be controlled using IResourceLoadingCallback. Using this callback you can choose to download the external style sheet, skip loading and avoid applying the styles from the sheet or specify your own style sheet to use instead.

{{% /alert %}}

## Style Type

Styles are imported from embedded or external CSS style sheets. Each selector is imported as a new Style in the Aspose.Words model. All styles are imported even if they are not actually used within the HTML body.

Style type is calculated based on the elements that the style is applied to. The appropriate style type is created from this.

The logic used when a external style sheet is enctounered on ocument load can be controlled using IResourceLoadingCallback. Using this callback you can choose to download the external style sheet, skip loading and avoid applying the styles from the sheet or specify your own style sheet to use instead.

See the following links in the documentation for further information:

- [Document.Styles](https://reference.aspose.com/words/net/aspose.words/documentbase/properties/styles)
- [Style](https://reference.aspose.com/words/net/aspose.words/style)
- [Style.Name](https://reference.aspose.com/words/net/aspose.words/style/properties/name)
- [IResourceLoadingCallback](https://reference.aspose.com/words/net/aspose.words.loading/iresourceloadingcallback)

|Feature|Supported|Comment|See Also|
| :- | :- | :- | :- |
|Paragraph Style |Yes |Imported from "class" attribute on HTML paragraph elements. |- [StyleType.Paragraph](https://reference.aspose.com/words/net/aspose.words/StyleType)|
|Character Style |Yes |Imported from "class" attribute on span elements. |- [StyleType.Character](https://reference.aspose.com/words/net/aspose.words/StyleType)|
|List Style |Planned | |- [StyleType.List](https://reference.aspose.com/words/net/aspose.words/StyleType)|
|Table Style |Planned | |<p>- **Table.Style** </p><p>- [TableStyle](https://reference.aspose.com/words/net/aspose.words/tablestyle) </p><p>- [StyleType.Table](https://reference.aspose.com/words/net/aspose.words/StyleType)</p>|

## General

|Feature|Supported|Comment|See Also|
| :- | :- | :- | :- |
|Aliases |Yes |Aliases are exported as ordinary CSS classes. On subsequent import they produce independent styles. | |
|Based On |Planned | |- [Style.BaseStyleName](https://reference.aspose.com/words/net/aspose.words/style/properties/basestylename)|
|Built-in Styles |Yes |Some built-in styles are imported from specific elements. <br><br>For instance Normal redirects to general &lt;p&gt; element, &lt;h1&gt; to Heading 1 etc. |<p>- [Style.BuiltIn](https://reference.aspose.com/words/net/aspose.words/style/properties/builtin) </p><p>- [Style.StyleIdentifier](https://reference.aspose.com/words/net/aspose.words/style/properties/styleidentifier)</p>|
|Custom Styles |Yes |A new style is created for all other CSS styles in the HTML document. | |
|Linked Styles |Planned | | |
|Style Name |Yes | |- **Style.Name**|
|Next Style |N/A | | |
|Paragraph Properties |Yes | |- [Style.ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/style/properties/paragraphformat)|
|Run Properties |Yes | |- [Style.Font](https://reference.aspose.com/words/net/aspose.words/style/properties/font)|
|Bullets and Numbering |Yes | |<p>- [Style.List](https://reference.aspose.com/words/net/aspose.words/style/properties/list) </p><p>- [Style.ListFormat](https://reference.aspose.com/words/net/aspose.words/style/properties/listformat)</p>|

## Document Defaults

|Feature|Supported|Comment|See Also|
| :- | :- | :- | :- |
|Paragraph Properties |N/A | | |
|Run Properties |N/A | | |

## Table Style

|Feature|Supported|Comment|See Also|
| :- | :- | :- | :- |
|Apply Formatting to |Planned | |- [Table.StyleOptions](https://reference.aspose.com/words/net/aspose.words.tables/table/properties/styleoptions)|
|Table Properties |Planned | |- **TableStyle**|
|Banding |Planned | |- **Table.StyleOptions**|
|Paragraph Properties |Planned | |- [TableStyle.ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/style/properties/paragraphformat)|
|Run Properties |Planned | |- [TableStyle.Font](https://reference.aspose.com/words/net/aspose.words/style/properties/font)|
