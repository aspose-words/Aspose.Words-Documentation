---
title: Document Features Supported on XPS Export
type: docs
weight: 30
url: /java/document-features-supported-on-xps-export/
---

{{% alert color="primary" %}} 

XPS is a fixed-layout document format designed to preserve document fidelity and provide device-independent document appearance. Any document loaded into Aspose.Words can be converted to XPS.

Aspose.Words generates the XPS file (including subsetting TrueType fonts) completely on its own, without using any Windows or external libriares.

Aspose.Words also provides save options to control generation is handled. The following is some examples of such options:

- Export bookmarks or heading styles to the document outline (navigation pane).
- Specify the page range only to export.
- Set how metafiles are rendered.

Both TrueType and OpenFont font formats are supported and can be subsetted during rendering to XPS.

See the following links in the documentation for further information:

- [Save a Document]()
- [Rendering and Printing]()
- **XpsSaveOptions**

{{% /alert %}} 

## General

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Attached Template |N/A | | |
|Built-In Properties |Yes |Built-in properties such as word and character count are updated using Aspose.Words but are not updated automatically on save. <br><br>Instead you need to explictly update these properties using the appropriate Document member. We will add automatic update of these properties in a future version. <br><br>Built-in properties are exported to XPS as Dublin Core tags where applicable. |- **Document.UpdateWordCount**|
|Custom Properties |N/A | | |
|Custom Payload Part |N/A | | |
|Custom XML Data Storage |N/A | | |
|Digital Signature |Planned | | |
|Embedded Package |N/A |Exported as a plain image. | |
|Encryption |N/A | | |
|Font Table |Yes | | |
|Glossary Document/Quick Parts/Auto Text |N/A | | |
|Hyphenation |Planned |Paragraphs that require hyphenation are wrapped to the next line instead. | |
|Key Map Customizations |N/A | | |
|Mail Merge Recipient Data |N/A | | |
|Office Math |Planned |It is planned to convert Office Math to a regular image before rendering. | |
|Themes |Yes | | |
|Toolbar Customizations |N/A | | |
|Variables |N/A | | |
|VBA Project (Macro) |N/A | | |
|VBA Project Digital Signature |N/A | | |
|Background |Yes | | |
|Thumbnail |N/A |Most rendered formats display thumbnails, however they are generated by the host application on open and not stored with the document. | |

## Embedded Fonts

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Embedding Fonts |Yes |Subset of fonts are embedded into XPS. <br><br>Fonts that are embedded in the original DOCX are exported to XPS. <br><br>Embedded fonts are also used during rendering. | |
|Embed Only Non-Standard Fonts |Planned | | |

## Bibliography

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Bibliography |Yes |Bibliography text is rendered as normal text. | |
|Sources/Citations |Yes |Bibliography sources are not saved when rendering. | |
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
|Protected Sections |N/A | | |
|Protection Ranges |N/A | | |
|Read Only |N/A | | |

## Settings

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Asian Typography Settings |N/A | | |
|Compatibility Options |N/A |Compatibility Options can influence how the document content is appears. These properties are not supported upon rendering to XPS. | |
|Endnote Options |N/A | | |
|Footnote Options |N/A | | |
|Mail Merge Settings |N/A | | |
|Print Settings |N/A | | |
|Show/Hide Settings |N/A | | |
|View Settings |N/A | | |
|Web Settings |N/A | | |
|XML Settings |N/A | | |

