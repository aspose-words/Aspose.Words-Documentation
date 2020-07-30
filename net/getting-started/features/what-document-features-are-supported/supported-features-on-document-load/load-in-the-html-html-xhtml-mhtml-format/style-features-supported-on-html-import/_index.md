---
title: Style Features Supported on HTML Import
type: docs
weight: 110
url: /net/style-features-supported-on-html-import/
---

{{% alert color="primary" %}} 

A style allows you to define a set of formatting that can be reused on many elements in a document. This saves time and allows for a more consistent formatting throughout your document.

A style loaded into a document is represented in the Aspose.Words DOM by the Style class. You can access or modify any type of style (both in-built or custom) in a document.

You can also create a new style from scratch (with the exception of a table style which new styles cannot be created for currently). You can choose to set any style you want to document elements 

You currently cannot rename a style name or remove an exisiting style from a document. Copying styles from one document to another is also unsupported, however for the time being you can achieve this by copying a node with a style to another document. This will copy the source style along with it.

Styles are imported from embedded or external CSS style sheets. Each selector is imported as a new Style in the Aspose.Words model. All styles are imported even if they are not actually used within the HTML body.

Style type is calculated based on the elements that the style is applied to. The appropriate style type is created from this.

The logic used when a external style sheet is enctounered on ocument load can be controlled using IResourceLoadingCallback. Using this callback you can choose to download the external style sheet, skip loading and avoid applying the styles from the sheet or specify your own style sheet to use instead.

{{% /alert %}} 
## **Style Type**
Styles are imported from embedded or external CSS style sheets. Each selector is imported as a new Style in the Aspose.Words model. All styles are imported even if they are not actually used within the HTML body.

Style type is calculated based on the elements that the style is applied to. The appropriate style type is created from this.

The logic used when a external style sheet is enctounered on ocument load can be controlled using IResourceLoadingCallback. Using this callback you can choose to download the external style sheet, skip loading and avoid applying the styles from the sheet or specify your own style sheet to use instead.

See the following links in the documentation for further information:

- [Document.Styles](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.documentbase.styles.html)
- [Style](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.style.html)
- [Style.Name](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.style.name.html)
- [IResourceLoadingCallback](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.loading.iresourceloadingcallback.html)

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Paragraph Style |Yes |Imported from "class" attribute on HTML paragraph elements. |- [StyleType.Paragraph](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.styletype.html)|
|Character Style |Yes |Imported from "class" attribute on span elements. |- [StyleType.Character](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.styletype.html)|
|List Style |Planned | |- [StyleType.List](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.styletype.html)|
|Table Style |Planned | |<p>- **Table.Style** </p><p>- [TableStyle](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.tablestyle.html) </p><p>- [StyleType.Table](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.styletype.html)</p>|
## **General**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Aliases |Yes |Aliases are exported as ordinary CSS classes. On subsequent import they produce independent styles. | |
|Based On |Planned | |- [Style.BaseStyleName](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.style.basestylename.html)|
|Built-in Styles |Yes |Some built-in styles are imported from specific elements. <br><br>For instance Normal redirects to general <p> element, <h1> to Heading 1 etc. |<p>- [Style.BuiltIn](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.style.builtin.html) </p><p>- [Style.StyleIdentifier](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.style.styleidentifier.html)</p>|
|Custom Styles |Yes |A new style is created for all other CSS styles in the HTML document. | |
|Linked Styles |Planned | | |
|Style Name |Yes | |- **Style.Name**|
|Next Style |N/A | | |
|Paragraph Properties |Yes | |- [Style.ParagraphFormat](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.style.paragraphformat.html)|
|Run Properties |Yes | |- [Style.Font](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.style.font.html)|
|Bullets and Numbering |Yes | |<p>- [Style.List](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.style.list.html) </p><p>- [Style.ListFormat](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.style.listformat.html)</p>|
## **Document Defaults**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Paragraph Properties |N/A | | |
|Run Properties |N/A | | |
## **Table Style**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Apply Formatting to |Planned | |- [Table.StyleOptions](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.tables.table.styleoptions.html)|
|Table Properties |Planned | |- **TableStyle**|
|Banding |Planned | |- **Table.StyleOptions**|
|Paragraph Properties |Planned | |- [TableStyle.ParagraphFormat](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.style.paragraphformat.html)|
|Run Properties |Planned | |- [TableStyle.Font](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.style.font.html)|

