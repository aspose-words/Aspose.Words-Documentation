---
title: Document Features Supported on WordprocessingML Export – Aspose.Words for .NET
articleTitle: Document Features Supported on WordprocessingML Export
linktitle: Document Features Supported on WordprocessingML Export
description: "Aspose.Words for .NET allows you to work with document features supported when saving to XML – Word 2003 WordprocessingML format."
type: docs
weight: 30
url: /net/document-features-supported-on-wordprocessingml-export/
---

{{% alert color="primary" %}}

See the following links in the documentation for further information:

- [Save a Document](/words/net/save-a-document/)
- [WordML2003SaveOptions](https://apireference.aspose.com/words/net/aspose.words.saving/WordML2003SaveOptions)

[Jump to this location in the import section](/words/net/document-features-supported-on-wordprocessingml-import/)

{{% /alert %}}

## General

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Attached Template |Yes | | |
|Built-In Properties |Yes |Built-in properties such as word and character count are updated using Aspose.Words but are not updated automatically on save. <br><br>Instead you need to explictly update these properties using the appropriate Document member. We will add automatic update of these properties in a future version. |- [Document.UpdateWordCount](https://apireference.aspose.com/words/net/aspose.words/document/methods/updatewordcount)|
|Custom Properties |Yes | | |
|Custom Payload Part |N/A | | |
|Custom XML Data Storage |Planned | | |
|Digital Signature |N/A | | |
|Embedded Package |Yes |<p>Embedded packages are generally supported by Aspose.Words. There are two ways documents can be embedded inside other documents: </p><p>- OLE (this is available in DOC and OOXML formats) </p><p>- Package Embedding (available in OOXML only) <br><br>  Aspose.Words supports these in the following ways: <br><br>  If you have an OLE embedded or linked object it will be preserved during any conversion (e.g. DOC to DOCX or DOCX to DOC etc). <br><br>  If you have a Package Embedded document, then it will only be preserved during DOCX to DOCX conversion. <br><br>  There is no way to save a Package Embedded document from DOCX into a DOC file without converting it into an OLE embedded object. Implementing conversion of Package Embedded to OLE is tricky and it will take a while to implement. <br><br>  OLE objects contain "native data" and are supposed to be created by the actual OLE creating application. We at Aspose.Words have never attempted or planned to replace the behavior of OLE creating applications. </p>| |
|Encryption |N/A |Encryption is not supported in WordML format. | |
|Font Table |Yes | | |
|Glossary Document/Quick Parts/Auto Text |Planned | | |
|Hyphenation |Yes | | |
|Key Map Customizations |Yes | | |
|Mail Merge Recipient Data |Yes | | |
|Office Math |Planned |It is planned to export Office Math as an image to formats that do not have native support for it. | |
|Themes |N/A | | |
|Toolbar Customizations |Yes | | |
|Variables |Yes | | |
|VBA Project (Macro) |Yes |VBA Projects are preserved during open and save to different formats that support them. <br><br>WordML format supports macros. You can optionally remove existing macros from a document by using the Document.RemoveMacros method. |- [Document.RemoveMacros](https://apireference.aspose.com/words/net/aspose.words/document/methods/removemacros)|
|VBA Project Digital Signature |Yes |The digital signature on a VBA Project is preserved during open and save even if the document content is modified. | |
|Background |Yes | | |
|Thumbnail |Planned | | |

## Embedded Fonts

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Embedding Fonts |N/A | | |
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
|Limit Formatting to Selection of Styles |Planned | | |
|Protection Password (Legacy) |Yes | | |
|Protection Password (OOXML) |N/A | | |
|Protected Sections |Yes | | |
|Protection Ranges |Planned |Currently protected ranges are lost upon import. | |
|Read Only |Yes | | |

## Settings

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Asian Typography Settings |Yes | | |
|Compatibility Options |Yes |Compatibility Options can influence how the document content is appears. These are properly retained during conversion to WordML. | |
|Endnote Options |Yes | | |
|Footnote Options |Yes | | |
|Mail Merge Settings |Yes | | |
|Print Settings |Yes | | |
|Show/Hide Settings |Yes | | |
|View Settings |Yes | | |
|Web Settings |Yes | | |
|XML Settings |Yes | | |

