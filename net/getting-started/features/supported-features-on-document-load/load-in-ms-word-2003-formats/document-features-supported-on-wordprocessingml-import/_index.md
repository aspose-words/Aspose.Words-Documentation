---
title: Document Features Supported on WordprocessingML Import
second_title: Aspose.Words for .NET
articleTitle: Document Features Supported on WordprocessingML Import
linktitle: Document Features Supported on WordprocessingML Import
description: "Import WordprocessingML using document load options in C#."
type: docs
weight: 30
url: /net/document-features-supported-on-wordprocessingml-import/
---

{{% alert color="primary" %}}

Aspose.Words supports the "WordML", Microsoft Word 2003 (Microsoft Word 2003 XML) formats.

Aspose.Words provides extensive support for loading, saving and converting WordprocessingML documents. Such all-embracing implementation is possible because Aspose.Words was designed with the structure of Microsoft Word documents in mind (and WordprocessingML is known to mimic the internal representation of Microsoft Word documents).

See the following links in the documentation for further information:

- [Loading, Saving and Converting](/words/net/loading-saving-and-converting/)
- [Working with Document](/words/net/working-with-document/)
- [Aspose.Words Document Object Model](/words/net/aspose-words-document-object-model/)
- [Document](https://apireference.aspose.com/words/net/aspose.words/document)

{{% /alert %}}

## General

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Attached Template|Yes|Attached template is used to reference styles and other settings through the use of a separate document template. <br><br>The link to this template is imported from the source document and can be found in the API as the Document.AttachedTemplate property.|- [Document.AttachedTemplate](https://apireference.aspose.com/words/net/aspose.words/document/properties/attachedtemplate)|
|Built-In Properties|Yes|All Built-in Document Properties can be accessed and modified in Aspose.Words API. <br><br>There are methods to update the "count" properties such as character, word and page count. All such properties are supported with the exception of the "line" count which is currently not updated.|<p>- [Document.BuiltInDocumentProperties](https://apireference.aspose.com/words/net/aspose.words/document/properties/builtindocumentproperties)</p><p>- [Document.UpdatePageLayout](https://apireference.aspose.com/words/net/aspose.words/document/methods/updatepagelayout)</p><p>- [Document.UpdateWordCount](https://apireference.aspose.com/words/net/aspose.words/document/methods/updatewordcount)</p>|
|Custom Properties|Yes|Custom Document Properties can be created, accessed and modified through the API.|- [Document.CustomDocumentProperties](https://apireference.aspose.com/words/net/aspose.words/document/properties/customdocumentproperties)|
|Custom Payload Part|N/A| | |
|Custom XML Data Storage|Planned|Custom XML Parts can be accessed and modified in the DOM. <br><br>You can remove schemas linked to a part, however you cannot schemas in the document that are not referenced. <br><br>This feature will be supported in a future version.|- [Document.CustomXmlParts](https://apireference.aspose.com/words/net/aspose.words/document/properties/customxmlparts)|
|Digital Signature|N/A|Digital signatures cannot be added to WordML format.| |
|Embedded Package|Yes|<p>Embedded packages are generally supported by Aspose.Words. There are two ways documents can be embedded inside other documents:</p><p>- OLE (this is available in DOC and OOXML formats)</p><p>- Package Embedding (available in OOXML only) <br><br>  Content can be extracted from both types of embedded packages by using the OleFormat.Save method. <br><br>  Aspose.Words supports these in the following ways during conversion: <br><br>  If you have an OLE embedded or linked object it will be preserved during any conversion (e.g. DOC to DOCX or DOCX to DOC etc). <br><br>  If you have a Package Embedded document, then it will only be preserved during DOCX to DOCX conversion. <br><br>  There is no way to save a Package Embedded document from DOCX into a DOC file without converting it into an OLE embedded object. Implementing conversion of Package Embedded to OLE is tricky and it will take a while to implement. <br><br>  OLE objects contain "native data" and are supposed to be created by the actual OLE creating application. We at Aspose.Words have never attempted or planned to replace the behavior of OLE creating applications.</p>|- [Shape.OleFormat](https://apireference.aspose.com/words/net/aspose.words.drawing/shape/properties/oleformat)|
|Encryption|N/A| | |
|Font Table|Yes| | |
|Glossary Document/Quick Parts/Auto Text|Planned| |- [Document.GlossaryDocument](https://apireference.aspose.com/words/net/aspose.words/document/properties/glossarydocument)|
|Hyphenation|Yes|There is currently no API to access and modify hypenation settings in a document.|- [ParagraphFormat.SuppressAutoHyphens](https://apireference.aspose.com/words/net/aspose.words/paragraphformat/properties/suppressautohyphens)|
|Key Map Customizations|Yes| | |
|Mail Merge Recipient Data|Yes| |- [Document.MailMergeSettings](https://apireference.aspose.com/words/net/aspose.words/document/properties/mailmergesettings)|
|Office Math|N/A| | |
|Themes|N/A|Only OOXML documents have native support for themes. <br><br>During export, theme formatting is applied as direct formatting to WordML <br><br>During round-trip back to DOCX this formatting is retained but the theme information is lost.| |
|Toolbar Customizations|Yes| | |
|Variables|Yes|Variables allow you to store additional information in the document which is "hidden" from the main document. <br><br>This can be used to embed custom tracking data in the document itself.|- [Document.Variables](https://apireference.aspose.com/words/net/aspose.words/document/properties/variables)|
|VBA Project (Macro)|Yes|VBA Projects are preserved during open and save to different formats that support them. This means you can load an existing template/document and add content to it and the VBA Projects will remain properly. <br><br>There is no API to access the code behind or execute any of the macros. There is a method provided to remove all macros from a document.|- [Document.RemoveMacros](https://apireference.aspose.com/words/net/aspose.words/document/methods/removemacros)|
|VBA Project Digital Signature|Yes|The digital signature on a VBA Project is preserved during open and save even if the document content is modified.| |
|Background|Yes|A background of a Word document can be a solid color or an image.|- [Document.BackgroundShape](https://apireference.aspose.com/words/net/aspose.words/documentbase/properties/backgroundshape)|
|Thumbnail|Planned| |- [BuiltInDocumentProperties.Thumbnail](https://apireference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/properties/thumbnail)|

## Embedded Fonts

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Embed Fonts|N/A| | |
|Access and Use Embedded Fonts|N/A| | |

## Bibliography

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Bibliography|Yes|Bibliography content is preserved on import. <br><br>Updating a bibliography is currently unsupported.| |
|Sources/Citations|Yes|Sources and citations are preserved during import. <br><br>Inserting new sources is not supported.| |
|Citation Style|Yes|Document-wide citation style is preserved but there is no access to this setting in the DOM.| |

## Protection

Aspose.Words supports most document protection features.

Using Aspose.Words you can open a document that is password protected even without the password (as long as its not encrypted).

Once loaded you can remove any protection from a document.

See the following links in the documentation for further information:

- [Protecting Documents](/words/net/working-with-document/#workingwithdocument-protectingdocuments)
- [Document.Protect](https://apireference.aspose.com/words/net/aspose.words/document/methods/protect/index)
- [Document.Unprotect](https://apireference.aspose.com/words/net/aspose.words/document/methods/unprotect/index)

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Allow Only Comments|Yes| |- [Document.ProtectionType](https://apireference.aspose.com/words/net/aspose.words/document/properties/protectiontype)|
|Allow Only Form Fields|Yes| |- **Document.ProtectionType**|
|Allow Only Revisions|Yes|When this protection type is enabled, tracked changes are automatically turned on.|<p>- **Document.ProtectionType**</p><p>- **Document.TrackChanges**</p>|
|Limit Formatting to Selection of Styles|Planned| | |
|Protection Password (Legacy)|Yes| |- [WriteProtection.SetPassword](https://apireference.aspose.com/words/net/aspose.words.settings/writeprotection/methods/writeprotection.setpassword)|
|Protection Password (OOXML)|N/A| | |
|Protected Sections|Yes| |- [Section.ProtectedForForms](https://apireference.aspose.com/words/net/aspose.words/section/properties/protectedforforms)|
|Protection Ranges|Planned|Currently protected ranges are lost upon import.| |
|Read Only|Yes| |<p>- [Document.WriteProtection](https://apireference.aspose.com/words/net/aspose.words.settings/writeprotection/methods/setpassword)</p><p>- [WriteProtection.IsWriteProtected](https://apireference.aspose.com/words/net/aspose.words.settings/writeprotection/properties/iswriteprotected)</p>|

## Settings

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Asian Typography Settings|Yes| | |
|Compatibility Options|Yes| |- [Document.CompatibilityOptions](https://apireference.aspose.com/words/net/aspose.words/document/properties/compatibilityoptions)|
|Endnote Options|Yes| |- [Document.EndnoteOptions](https://apireference.aspose.com/words/net/aspose.words/document/properties/endnoteoptions)|
|Footnote Options|Yes| |- [Document.FootnoteOptions](https://apireference.aspose.com/words/net/aspose.words/document/properties/footnoteoptions)|
|Mail Merge Settings|Yes|You can modify all mail merge settings, as well as setting a new mail merge data source for the document to use.|- **Document.MailMergeSettings**|
|Print Settings|Yes| |- [Section.PageSetup](https://apireference.aspose.com/words/net/aspose.words/section/properties/pagesetup)|
|Show/Hide Settings|Yes| | |
|View Settings|Yes| |- [Document.ViewOptions](https://apireference.aspose.com/words/net/aspose.words/document/properties/viewoptions)|
|Web Settings|Yes| | |
|XML Settings|Yes| | |
