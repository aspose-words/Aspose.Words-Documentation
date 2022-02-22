---
title: Document Features Supported on Rich Text Export – Aspose.Words for Java
articleTitle: Document Features Supported on Rich Text Export
linktitle: Document Features Supported on Rich Text Export
description: "Work with document features supported when saving to Rich Text format."
type: docs
weight: 30
url: /java/document-features-supported-on-rich-text-export/
---

{{% alert color="primary" %}}

There are save options avalaible to export the RTF in compact size and to accomdate keywords for old readers.

See the following links in the documentation for further information:

- [Save a Document]()
- **RtfSaveOptions**
- **RtfSaveOptions.ExportCompactSize**

[Jump to this location in the import section]()

{{% /alert %}}

## General

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Attached Template |Yes | | |
|Built-In Properties |Yes |Built-in properties such as word and character count are updated using Aspose.Words but are not updated automatically on save. <br><br>Instead you need to explictly update these properties using the appropriate Document member. We will add automatic update of these properties in a future version. |- **Document.UpdateWordCount**|
|Custom Properties |Yes | | |
|Custom Payload Part |N/A | | |
|Custom XML Data Storage |Planned | | |
|Digital Signature |N/A | | |
|Embedded Package |Yes |<p>Embedded packages are generally supported by Aspose.Words. There are two ways documents can be embedded inside other documents: </p><p>- OLE (this is available in DOC and OOXML formats) </p><p>- Package Embedding (available in OOXML only) <br><br>  Aspose.Words supports these in the following ways: <br><br>  If you have an OLE embedded or linked object it will be preserved during any conversion (e.g. DOC to DOCX or DOCX to DOC etc). <br><br>  If you have a Package Embedded document, then it will only be preserved during DOCX to DOCX conversion. <br><br>  There is no way to save a Package Embedded document from DOCX into a DOC file without converting it into an OLE embedded object. Implementing conversion of Package Embedded to OLE is tricky and it will take a while to implement. <br><br>  OLE objects contain "native data" and are supposed to be created by the actual OLE creating application. We at Aspose.Words have never attempted or planned to replace the behavior of OLE creating applications. <br><br>  Exported as a plain image. </p>| |
|Encryption |N/A |There is no support for encryption in RTF format. | |
|Font Table |Yes | | |
|Glossary Document/Quick Parts/Auto Text |Planned | | |
|Hyphenation |Yes | | |
|Key Map Customizations |N/A | | |
|Mail Merge Recipient Data |Planned | | |
|Office Math |Planned |It is planned to export Office Math as an image to formats that do not have native support for it. | |
|Themes |Yes |Properties of themes are converte to direct formatting upon save. <br><br>Not all properties may be maintained at the moment. | |
|Toolbar Customizations |N/A | | |
|Variables |Yes | | |
|VBA Project (Macro) |N/A |RTF format does not support macros. | |
|VBA Project Digital Signature |N/A | | |
|Background |Yes | | |
|Thumbnail |Planned | | |

## Embedded Fonts

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Embedding Fonts |Planned | | |
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
|Protection Password (OOXML) |Yes | | |
|Protected Sections |Yes | | |
|Protection Ranges |Planned |Currently protected ranges are lost upon import. | |
|Read Only |Yes | | |

## Settings

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Asian Typography Settings |Yes | | |
|Compatibility Options |Yes |Compatibility Options can influence how the document content is appears. These are properly retained during conversion to RTF. | |
|Endnote Options |Yes | | |
|Footnote Options |Yes | | |
|Mail Merge Settings |Planned | | |
|Print Settings |Yes | | |
|Show/Hide Settings |Yes | | |
|View Settings |Yes | | |
|Web Settings |Yes | | |
|XML Settings |Yes | | |

