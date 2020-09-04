---
title: Document Features Supported on EPUB Export
type: docs
weight: 30
url: /net/document-features-supported-on-epub-export/
---

{{% alert color="primary" %}} 

Note that not all Microsoft Word document features are avlaible in HTML format and some features may be lost or converted to image.

If you are looking for a way to easily store documents in a database then it is suggested to use the WordML or FlatOPC format. Both formats are fully XML based making them easy to store into a database but they are native word formats which allows you to preserve full fidelty of Microsoft Word features such as WordArt, Textboxex etc.

Aspose.Words saves any loaded document that to valid HTML 4.0 or XHTML 1.0 specifcations. EPUB documents are exported as EPUB 2.0. There are plans to support HTML 5 and EPUB 3.0 specification as well. There are also numerous save options avaliable to control a document is exported to HTML. Here a some examples of what you can do:

Control the CSS style sheet type

- Specify the directory or streams where images should be saved to.
- Specify where how the URL for an image is constructed.
- Split the internal HTML files when saving to HTML or EPUB to restrict HTML part size to less than 300kb. Some eReaders open EPUB files that have HTML files greater than this size slowly or not at all. Therefore it is recommended to export EPUBs using this option to allow all devices to read the file easily and correctly.
- Export images as embedded Base64.
- Export font size in relative units (em).
- Save fonts with the HTML output.

Some features which are unsupported in HTML are exported as image. It is the Aspose.Words rendering engine takes care of rendering the feature to image. In such cases, the level of support for this rendered feature can be found under the "Save to Image Format" supported features section.

You can also choose to create your own HTML writer for your own custom needs by building off the Aspose.Words rich DOM. Using the DocumentVisitor you can visit each node and build the HTML node by node.

Currently most of the special Microsoft "Mso" attributes, which are normally added by Microsoft Word to HTML output to make it round-trip capable back to Word formats, are not written during export to HTML or MHTML. This makes the HTML produced by Aspose.Words much cleaner than the output produced by Microsoft Word which is often bloated with these many round-trip based attributes.

In the future we will add full support for these in import and allow an option to export control if these attributes are written at all during export.

See the following links in the documentation for further information:

- [Save a Document](/words/net/saving-a-document/)
- [HtmlSaveOptions](https://apireference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions)
- [HtmlSaveOptions.CssStyleSheetType](https://apireference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/properties/cssstylesheettype)
- [HtmlSaveOptions.Encoding](https://apireference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/properties/encoding)

{{% /alert %}} 
##### **General**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Attached Template |N/A | | |
|Built-In Properties |Yes |Built-in properties such as word and character count are updated using Aspose.Words but are not updated automatically on save. <br><br>Instead you need to explictly update these properties using the appropriate Document member. We will add automatic update of these properties in a future version. <br><br>There is a save option that controls whether document properties are exported or not. <br><br>Title, Keywords, Description properties are always exported as title and meta tags to HTML or MHTML and as the appropriate Dublin Core tags when saving as EPUB. <br><br>Additional built-in properties are exported as custom <o:> tags. In EPUB format properties are also exported as Dublin Core tags. |<p>- [Document.UpdateWordCount](https://apireference.aspose.com/words/net/aspose.words/document/methods/updatewordcount) </p><p>- [HtmlSaveOptions.ExportDocumentProperties](https://apireference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/properties/exportdocumentproperties)</p>|
|Custom Properties |Yes |Custom properties are exported as custom <o:> tags to HTML. |- **HtmlSaveOptions.ExportDocumentProperties**|
|Custom Payload Part |N/A | | |
|Custom XML Data Storage |N/A | | |
|Digital Signature |N/A | | |
|Embedded Package |N/A |Exported as a plain image. | |
|Encryption |N/A | | |
|Font Table |Yes | | |
|Glossary Document/Quick Parts/Auto Text |N/A | | |
|Hyphenation |Planned |Paragraphs are exported as normal. | |
|Key Map Customizations |N/A | | |
|Mail Merge Recipient Data |N/A | | |
|Office Math |Planned |It is planned to export Office Math as an image to formats that do not have native support for it. | |
|Themes |Yes |Theme formatting is exported as direct formatting to HTML. <br><br>Only some theme formatting such as fonts are supported. | |
|Toolbar Customizations |N/A | | |
|Variables |N/A | | |
|VBA Project (Macro) |N/A |Macros are not exported to HTML based formats. | |
|VBA Project Digital Signature |N/A | | |
|Background |Yes |Only solid background is exported. Exported as style="background:xxx" on each &lt;body&gt; tag. <br><br>There are plans to export background shape as style-background. | |
|Thumbnail |Yes |You can include a cover image on output EPUB documents either by importing an existing image or by generating a thumbnail of one of the document page's using Aspose.Words |- **InBuiltDocumentProperties.Thumbnail**|
##### **Embedded Fonts**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Embedding Fonts |Yes |There is an option to subset and export font resources to EPUB, MHTML and HTML. <br><br>Fonts that are embedded in the original DOCX can be optionally exported. |<p>- [HtmlSaveOptions.ExportFontResources](https://apireference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/properties/exportfontresources) </p><p>- [HtmlSaveOptions.FontResourcesSubsettingSizeThreshold](https://apireference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/properties/fontresourcessubsettingsizethreshold) </p><p>- [HtmlSaveOptions.FontsFolder](https://apireference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/properties/fontsfolder) </p><p>- [HtmlSaveOptions.FontSavingCallback](https://apireference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/properties/fontsavingcallback)</p>|
|Embed Only Non-Standard Fonts |N/A | | |
##### **Bibliography**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Bibliography |Yes |Bibliography text is saved to HTML formats as normal text. | |
|Sources/Citations |Yes |Bibliography sources are not saved to HTML. | |
|Citation Style |N/A | | |
##### **Protection**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Allow Only Comments |N/A | | |
|Allow Only Form Fields |N/A | | |
|Allow Only Revisions |N/A | | |
|Limit Formatting to Selection of Styles |N/A | | |
|Protection Password (Legacy) |N/A | | |
|Protection Password (OOXML) |N/A | | |
|Protected Sections |N/A | | |
|Protection Ranges |N/A | | |
|Read Only |N/A | | |
##### **Settings**
Only some settings can be exported.

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Asian Typography Settings |N/A | | |
|Compatibility Options |Planned | | |
|Endnote Options |N/A | | |
|Footnote Options |N/A | | |
|Mail Merge Settings |N/A | | |
|Print Settings |N/A | | |
|Show/Hide Settings |N/A | | |
|View Settings |N/A | | |
|Web Settings |N/A | | |
|XML Settings |N/A | | |

