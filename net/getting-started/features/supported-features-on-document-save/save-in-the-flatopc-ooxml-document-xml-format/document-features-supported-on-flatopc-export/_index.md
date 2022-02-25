---
title: Document Features Supported on FlatOPC Export – Aspose.Words for .NET
articleTitle: Document Features Supported on FlatOPC Export
linktitle: Document Features Supported on FlatOPC Export
description: "Export to FlatOPC – XML format using document field saving features."
type: docs
weight: 30
url: /net/document-features-supported-on-flatopc-export/
---

{{% alert color="primary" %}}

See the following links in the documentation for further information:

- [Save a Document](/words/net/save-a-document/)
- [OoxmlSaveOptions](https://apireference.aspose.com/words/net/aspose.words.saving/ooxmlsaveoptions)
- [OoxmlSaveOptions.TempFolder](https://apireference.aspose.com/words/net/aspose.words.saving/saveoptions/properties/tempfolder)
- [OoxmlSaveOptions.Compliance](https://apireference.aspose.com/words/net/aspose.words.saving/ooxmlsaveoptions/properties/compliance)

[Jump to this location in the import section](/words/net/document-features-supported-on-flatopc-import/)

{{% /alert %}}

## General

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Attached Template |Yes | | |
|Built-In Properties |Yes |Built-in properties such as word and character count are updated using Aspose.Words but are not updated automatically on save. <br><br>Instead you need to explictly update these properties using the appropriate Document member. We will add automatic update of these properties in a future version. |- [Document.UpdateWordCount](https://apireference.aspose.com/words/net/aspose.words/document/methods/updatewordcount)|
|Custom Properties |Yes | | |
|Custom Payload Part |Yes | | |
|Custom XML Data Storage |Yes | | |
|Digital Signature |Planned |Signing a OOXML document with a digital signatures is not yet supported. <br><br>Note that an existing signature on a document cannot be retained as by nature the document has been changed during import. | |
|Embedded Package |Yes |<p>Embedded packages are generally supported by Aspose.Words. There are two ways documents can be embedded inside other documents: </p><p>- OLE (this is available in DOC and OOXML formats) </p><p>- Package Embedding (available in OOXML only) <br><br>  Aspose.Words supports these in the following ways: <br><br>  If you have an OLE embedded or linked object it will be preserved during any conversion (e.g. DOC to DOCX or DOCX to DOC etc). <br><br>  If you have a Package Embedded document, then it will only be preserved during DOCX to DOCX conversion. <br><br>  There is no way to save a Package Embedded document from DOCX into a DOC file without converting it into an OLE embedded object. Implementing conversion of Package Embedded to OLE is tricky and it will take a while to implement. <br><br>  OLE objects contain "native data" and are supposed to be created by the actual OLE creating application. We at Aspose.Words have never attempted or planned to replace the behavior of OLE creating applications. </p>| |
|Encryption |Planned |Currently document that is encrypted will loose its encryption on save. | |
|Font Table |Yes | | |
|Glossary Document/Quick Parts/Auto Text |Yes | | |
|Hyphenation |Yes | | |
|Key Map Customizations |Yes | | |
|Mail Merge Recipient Data |Yes | | |
|Office Math |Yes | | |
|Themes |Yes |Themes are preserved during open/save cycle. | |
|Toolbar Customizations |Yes | | |
|Variables |Yes | | |
|VBA Project (Macro) |Yes |VBA Projects are preserved during open and save to different formats that support them. <br><br>Only DOCM, DOTM and FlatOPC format support macros. If saving to DOCX or DOTX you will need to use the Document.RemoveMacros to remove any macros first before saving. |- [Document.RemoveMacros](https://apireference.aspose.com/words/net/aspose.words/document/methods/removemacros)|
|VBA Project Digital Signature |Yes |The digital signature on a VBA Project is preserved during open and save even if the document content is modified. | |
|Background |Yes | | |
|Thumbnail |Planned | | |

## Embedded Fonts

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Embedding Fonts |Yes |Embedded fonts in DOCX are only preserved when saving round-trip back to DOCX. | |
|Embed Only Non-Standard Fonts |N/A | | |

## Bibliography

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Bibliography |Yes | | |
|Sources/Citations |Yes | | |
|Citation Style |Yes | | |

## Protection

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Allow Only Comments |Yes | | |
|Allow Only Form Fields |Yes | | |
|Allow Only Revisions |Yes | | |
|Limit Formatting to Selection of Styles |Yes | | |
|Protection Password (Legacy) |Yes | | |
|Protection Password (OOXML) |Yes | | |
|Protected Sections |Yes | | |
|Protection Ranges |Planned |Currently protected ranges are lost upon import. | |
|Read Only |Yes | | |

## Settings

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Asian Typography Settings |Yes | | |
|Compatibility Options |Yes |Compatibility Options can influence how the document content is appears. These are properly retained during conversion to DOCX. | |
|Endnote Options |Yes | | |
|Footnote Options |Yes | | |
|Mail Merge Settings |Yes | | |
|Print Settings |Yes | | |
|Show/Hide Settings |Yes | | |
|View Settings |Yes | | |
|Web Settings |Yes | | |
|XML Settings |Yes | | |

