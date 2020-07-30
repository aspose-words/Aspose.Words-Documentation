---
title: Style Features Supported on OpenDocument Import
type: docs
weight: 110
url: /net/style-features-supported-on-opendocument-import/
---

{{% alert color="primary" %}} 

A style allows you to define a set of formatting that can be reused on many elements in a document. This saves time and allows for a more consistent formatting throughout your document.

A style loaded into a document is represented in the Aspose.Words DOM by the Style class. You can access or modify any type of style (both in-built or custom) in a document.

You can also create a new style from scratch (with the exception of a table style which new styles cannot be created for currently). You can choose to set any style you want to document elements 

You currently cannot rename a style name or remove an exisiting style from a document. Copying styles from one document to another is also unsupported, however for the time being you can achieve this by copying a node with a style to another document. This will copy the source style along with it.

[Jump to this location in the export section](/pages/createpage.action?spaceKey=wordsnet&title=Style+Type+Odt+Export&linkCreation=true&fromPageId=2595962)

{{% /alert %}} 
##### **Style Type**
See the following links in the documentation for further information:

- [Document.Styles](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.documentbase.styles.html)
- [Style](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.style.html)
- [Style.Name](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.style.name.html)

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Paragraph Style |Yes | |- [StyleType.Paragraph](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.styletype.html)|
|Character Style |Yes | |- [StyleType.Character](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.styletype.html)|
|List Style |Yes | |- [StyleType.List](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.styletype.html)|
|Table Style |N/A | | |
##### **General**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Aliases |N/A | | |
|Based On |Yes | |- [Style.BaseStyleName](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.style.basestylename.html)|
|Built-in Styles |Yes | |<p>- [Style.BuiltIn](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.style.builtin.html) </p><p>- [Style.StyleIdentifier](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.style.styleidentifier.html)</p>|
|Custom Styles |Yes | | |
|Linked Styles |N/A | | |
|Style Name |Yes | |- **Style.Name**|
|Next Style |Yes | |- [Style.NextParagraphStyleName](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.style.nextparagraphstylename.html)|
|Paragraph Properties |Yes | |- [Style.ParagraphFormat](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.style.paragraphformat.html)|
|Run Properties |Yes | |- [Style.Font](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.style.font.html)|
|Bullets and Numbering |Yes | |<p>- [Style.List](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.style.list.html) </p><p>- [Style.ListFormat](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.style.listformat.html)</p>|
##### **Document Defaults**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Paragraph Properties |N/A | | |
|Run Properties |N/A | | |
##### **Table Style**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Apply Formatting to |N/A | | |
|Table Properties |N/A | | |
|Banding |N/A | | |
|Paragraph Properties |N/A | | |
|Run Properties |N/A | | |

