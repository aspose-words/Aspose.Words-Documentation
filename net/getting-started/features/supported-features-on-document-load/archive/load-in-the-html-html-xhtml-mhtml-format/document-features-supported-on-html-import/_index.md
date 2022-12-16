---
title: HTML Import - Document Features
second_title: Aspose.Words for .NET
articleTitle: Document Features Supported on HTML Import
linktitle: Document Features Supported on HTML Import
description: "Import HTML-based using document load options in C#."
type: docs
weight: 30
url: /net/document-features-supported-on-html-import/
---

{{% alert color="warning" %}}

This page has been archived and has not been updated for some time. It contains information for reference only.

{{% /alert %}}

{{% alert color="primary" %}}

Aspose.Words supports importing and exporting HTML based documents. You can load such documents in the Document Object Model, edit and add new content and convert them to any supported format such as DOCX, PDF, Image etc.

The Aspose.Words HTML engine is resilient and can properly import simple and complex HTML even if there are problems with it, resolving any malformed structure, parts and ignoring any unsupported tags. Most common native HTML tags and CSS formatting are supported during import. The input HTML can skip tags and still be imported well e.g you can miss out &lt;p&gt; or &lt;span&gt; tags and the text content is still imported properly.

Note that Aspose.Words works with Word documents, therefore not all HTML features are supported during import and export. Not all HTML attributes may be imported as they do not have Microsoft Word equivalents. Also during export some document features may not be included as they cannot be represented in HTML properly. There may be many "N/A" values in this list for these reasons however Aspose.Words strives to support all HTML features possible.

Normally elements or attributes that do not have an eqivilant feature in a Microsoft Word document are ignored during import.

You can set the BaseUri path of the document being loaded so relative resources can be correctly imported.

Aspose.Words supports most CSS 1 and CCS 2 properties that have an eqivilant use in Word documents. Note that multiple classes on a single class attribute is currently not supported during import.

The HTML produced by Aspose.Words conforms to HTML 4.0 or XHTML 1.0 Transitional specifications. Multiparts/mixed content is supported in HTML during load. You can choose the encoding used during import from and export to HTML based formats. During load you can choose to auto detect the encoding.

Aspose.Words does not deal with Javascript and no Javascript is read or written during open and save. If you are dealing with a page which part of is generated dynamically using Javascript then you still achieve the same results by first emulating the page in a browser and then importing the page source. This can be automated. Adding Javascript to an output HTML document can be done with some simple postprocessing.

Currently special Microsoft "mso" attributes are not imported or exported with the exception of "mso-break-type"which is supported both in import and export. These properties help with round-tripping HTML back to a document format but significantly bloat the HTML which is why most users want to avoid such extra markup. However since it is a useful tool to provide Word-HTML round-trip, we will support these attributes both import and export in a future version.

See the following links in the documentation for further information:

- [Loading, Saving and Converting](/words/net/loading-saving-and-converting/)
- [Working with Document](/words/net/working-with-document/)
- [Aspose.Words Document Object Model](/words/net/aspose-words-document-object-model/)
- [Document](https://reference.aspose.com/words/net/aspose.words/document)

{{% /alert %}}

## General

|Feature|Supported|Comment|See Also|
| :- | :- | :- | :- |
|Attached Template |N/A | | |
|Built-In Properties |Yes |All Built-in Document Properties can be accessed and modified in Aspose.Words API. <br><br>There are methods to update the "count" properties such as character, word and page count. All such properties are supported with the exception of the "line" count which is currently not updated. <br><br>Title, Keywords, Description properties are imported from meta tags in HTML. Other built-in properties stored in custom tags are currently not imported. |<p>- [Document.BuiltInDocumentProperties](https://reference.aspose.com/words/net/aspose.words/document/builtindocumentproperties/) </p><p>- [Document.UpdatePageLayout](https://reference.aspose.com/words/net/aspose.words/document/updatepagelayout/) </p><p>- [Document.UpdateWordCount](https://reference.aspose.com/words/net/aspose.words/document/updatewordcount/)</p>|
|Custom Properties |Planned |Custom Document Properties can be created, accessed and modified through the API. <br><br>Currently Custom Document properties or Built-in properties other than Title, Keywords or Description or are not imported from HTML. |- [Document.CustomDocumentProperties](https://reference.aspose.com/words/net/aspose.words/document/customdocumentproperties/)|
|Custom Payload Part |N/A | | |
|Custom XML Data Storage |N/A | | |
|Digital Signature |N/A |Digital signatures cannot be added to HTML format. | |
|Embedded Package |N/A | | |
|Encryption |N/A | | |
|Font Table |Yes | | |
|Glossary Document/Quick Parts/Auto Text |N/A | | |
|Hyphenation |Planned |There is currently no API to access and modify hypenation settings in a document. |- [ParagraphFormat.SuppressAutoHyphens](https://reference.aspose.com/words/net/aspose.words/paragraphformat/suppressautohyphens/)|
|Key Map Customizations |N/A | | |
|Mail Merge Recipient Data |N/A | | |
|Office Math |N/A | | |
|Themes |N/A |Only OOXML documents have native support for themes. <br><br>During export, theme formatting is applied as direct formatting to HTML. <br><br>During round-trip back to DOCX this formatting is retained but the theme information is lost. | |
|Toolbar Customizations |N/A | | |
|Variables |N/A | | |
|VBA Project (Macro) |N/A | | |
|VBA Project Digital Signature |N/A | | |
|Background |Yes |A background of a Word document can be a solid color or an image. <br><br>Only solid background is imported. Imported from style="background:xxx" on &lt;body&gt; tag. <br><br>There are plans to support image background through the style-background attribute. |- [Document.BackgroundShape](https://reference.aspose.com/words/net/aspose.words/documentbase/backgroundshape/)|
|Thumbnail |N/A | | |

## Embedded Fonts

|Feature|Supported|Comment|See Also|
| :- | :- | :- | :- |
|Embed Fonts |Planned |Currently embedding new fonts into a document is unsupported. | |
|Access and Use Embedded Fonts |Planned |There is an option to subset and export font resources to EPUB, MHTML and HTML. <br><br>Fonts that are embedded in the original DOCX document can be optionally exported. <br><br>Embedded fonts linked in HTML are currently not read during import. |<p>- [FontInfo](https://reference.aspose.com/words/net/aspose.words.fonts/fontinfo/) </p><p>- [FontInfo.GetEmbeddedFont](https://reference.aspose.com/words/net/aspose.words.fonts/fontinfo//methods/getembeddedfont)</p>|

## Bibliography

|Feature|Supported|Comment|See Also|
| :- | :- | :- | :- |
|Bibliography |N/A|Bibliography content is preserved on import. <br><br>There is no tag in HTML which corresponds to a Microsoft word Bibliography. However a bibliography is saved to HTML as regular text and therefore will be loaded back into Aspose.Words as plain text as well. | |
|Sources/Citations |N/A | | |
|Citation Style |N/A | | |

## Protection

|Feature|Supported|Comment|See Also|
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

## Settings

|Feature|Supported|Comment|See Also|
| :- | :- | :- | :- |
|Asian Typography Settings |N/A | | |
|Compatibility Options |Planned | |- [Document.CompatibilityOptions](https://reference.aspose.com/words/net/aspose.words/document/compatibilityoptions/)|
|Endnote Options |N/A | | |
|Footnote Options |N/A | | |
|Mail Merge Settings |N/A | | |
|Print Settings |N/A | | |
|Show/Hide Settings |N/A | | |
|View Settings |N/A | | |
|Web Settings |N/A | | |
|XML Settings |N/A | | |
