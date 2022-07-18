---
title: OpenDocument Import - Document Features
second_title: Aspose.Words for .NET
articleTitle: Document Features Supported on OpenDocument Import
linktitle: Document Features Supported on OpenDocument Import
description: "Import ODT using document load options in C#."
type: docs
weight: 30
url: /net/document-features-supported-on-opendocument-import/
---

{{% alert color="primary" %}}

Aspose.Words has impressive support in import and export of OpenDocument 1.1 and 1.2 documents. You can convert any loaded document (such as DOC, DOCX, or HTML) to ODT or start with a ODT document and convert it to any other supported format.

Most features in an OpenDocument have equivalents in Word Documents so conversion between these two formats is normally done with high fidelity. 

Aspose.Words always saves documents in the OpenDocument 1.1 format.

See the following links in the documentation for further information:

- [Loading, Saving and Converting](/words/net/loading-saving-and-converting/)
- [Working with Document](/words/net/working-with-document/)
- [Aspose.Words Document Object Model](/words/net/aspose-words-document-object-model/)
- [Document](https://reference.aspose.com/words/net/aspose.words/document)

[Jump to this location in the export section](/words/net/document-features-supported-on-opendocument-export/)

{{% /alert %}}

## General

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Attached Template |N/A | | |
|Built-In Properties |Yes |All Built-in Document Properties can be accessed and modified in Aspose.Words API. <br><br>There are methods to update the "count" properties such as character, word and page count. All such properties are supported with the exception of the "line" count which is currently not updated. <br><br>All properties are read from ODT, however some Microsoft Word document properties do not have corresponding properties in ODT so will not be present after load. |<p>- [Document.BuiltInDocumentProperties](https://reference.aspose.com/words/net/aspose.words/document/properties/builtindocumentproperties) </p><p>- [Document.UpdatePageLayout](https://reference.aspose.com/words/net/aspose.words/document/methods/updatepagelayout) </p><p>- [Document.UpdateWordCount](https://reference.aspose.com/words/net/aspose.words/document/methods/updatewordcount)</p>|
|Custom Properties |Yes |Custom Document Properties can be created, accessed and modified through the API. |- [Document.CustomDocumentProperties](https://reference.aspose.com/words/net/aspose.words/document/properties/customdocumentproperties)|
|Custom Payload Part |N/A | | |
|Custom XML Data Storage |N/A | | |
|Digital Signature |Yes |A digital signature ensures that the content of a document has not been tampered with during transit. A signature is applied over the document so if any part of it is modified the signature is invalidated. <br><br>When you load a document into Aspose.Words the document signature is automatically lost. This is by design as the document is not the same anymore. You will need to reapply another signature during export, however currently Aspose.Words only signs PDF documents on output. <br><br>There are plans to support signing documents on export when saving in the OOXML, DOC, ODT or XPS format. <br><br>Detection, access and verification of digital signatures is supported. <br><br>Signing is not yet supported. |<p>- [Working with Digital Signatures](/words/net/working-with-digital-signatures/) </p><p>- **Document.DigitalSigntures** </p><p>- [DigitalSignatureCollection.IsValid](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignaturecollection/properties/isvalid)</p>|
|Embedded Package |N/A | | |
|Encryption |Planned |Encrypted documents can be loaded into Aspose.Words as long as the password supplied on load for the document is correct. <br><br>XOR obfuscation is currently unsupported. <br><br>Encrypting a document during save is currently unsupported with the exception when saving in DOC format. <br><br>Encrypted ODT documents may encounter an exception during load. |<p>- [LoadOptions.Password](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/properties/password) </p><p>- [FileFormatInfo.IsEncrypted](https://reference.aspose.com/words/net/aspose.words/FileFormatInfo/properties/isencrypted)</p>|
|Font Table |Yes | | |
|Glossary Document/Quick Parts/Auto Text |N/A | | |
|Hyphenation |Yes |There is currently no API to access and modify hypenation settings in a document. |- [ParagraphFormat.SuppressAutoHyphens](https://reference.aspose.com/words/net/aspose.words/paragraphformat/properties/suppressautohyphens)|
|Key Map Customizations |N/A | | |
|Mail Merge Recipient Data |N/A | | |
|Office Math |N/A | | |
|Themes |N/A |Only OOXML documents have native support for themes. <br><br>During export, theme formatting is applied as direct formatting to ODT. <br><br>During round-trip back to DOCX this formatting is retained but the theme information is lost. | |
|Toolbar Customizations |N/A | | |
|Variables |N/A | | |
|VBA Project (Macro) |N/A |Macros are not supported in ODT format. | |
|VBA Project Digital Signature |N/A | | |
|Background |N/A | | |
|Thumbnail |N/A | | |

## Embedded Fonts

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Embed Fonts |N/A | | |
|Access and Use Embedded Fonts |N/A | | |

## Bibliography

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Bibliography |Yes |Bibliography content is preserved on import. <br><br>Updating a bibliography is currently unsupported. <br><br>Bibliography text is saved to ODT as normal text. | |
|Sources/Citations |Yes |Sources and citations are preserved during import. <br><br>Inserting new sources is not supported. <br><br>Bibliography sources are not saved to ODT. | |
|Citation Style |N/A | | |

## Protection

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Allow Only Comments |N/A | | |
|Allow Only Form Fields |N/A | | |
|Allow Only Revisions |N/A | | |
|Limit Formatting to Selection of Styles |N/A | | |
|Protection Password (Legacy) |N/A | | |
|Protection Password (OOXML) |N/A | | |
|Protected Sections |Yes | |- [Section.ProtectedForForms](https://reference.aspose.com/words/net/aspose.words/section/properties/protectedforforms)|
|Protection Ranges |N/A | | |
|Read Only |N/A | | |

## Settings

Footnote, Endnote and View settings are imported when loading an ODT format document.

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Asian Typography Settings |N/A | | |
|Compatibility Options |N/A | | |
|Endnote Options |Yes | |- [Document.EndnoteOptions](https://reference.aspose.com/words/net/aspose.words/document/properties/endnoteoptions)|
|Footnote Options |Yes | |- [Document.FootnoteOptions](https://reference.aspose.com/words/net/aspose.words/document/properties/footnoteoptions)|
|Mail Merge Settings |N/A | | |
|Print Settings |N/A | | |
|Show/Hide Settings |N/A | | |
|View Settings |Yes | |- [Document.ViewOptions](https://reference.aspose.com/words/net/aspose.words/document/properties/viewoptions)|
|Web Settings |N/A | | |
|XML Settings |N/A | | |
