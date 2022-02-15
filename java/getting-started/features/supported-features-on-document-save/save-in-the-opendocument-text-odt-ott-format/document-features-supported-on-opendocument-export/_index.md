---
title: Document Features Supported on OpenDocument Export – Aspose.Words for Java
articleTitle: Document Features Supported on OpenDocument Export
linktitle: Document Features Supported on OpenDocument Export
description: "Aspose.Words for Java allows you to work with document features supported when saving to OpenDocument Text format."
type: docs
weight: 30
url: /java/document-features-supported-on-opendocument-export/
---

{{% alert color="primary" %}}

Not all Microsoft Word features can be exported to OpenDocument format. When a feature is unsupported in ODT Aspose.Words attempts to export the feature as close as possible using the available features of OpenDocument.

There is a save option which allows you to specify that Aspose.Word should export a document to ODT while strictly following the ODT 1.1 specification.

Note that there may appear to be more styles in the output ODT document than in the original input document. This is expected as all formatting in the ODT format is style based, therefore more styles must be created during export to deal with direct formatting on runs and paragraphs (that are not applied using a style).

See the following links in the documentation for further information:

- [Save a Document](/words/java/save-a-document/)
- [OdtSaveOptions](https://apireference.aspose.com/words/java/com.aspose.words/odtsaveoptions)

[Jump to this location in the import section](/words/java/document-features-supported-on-opendocument-import/)

{{% /alert %}}

{{% alert color="primary" %}}

Try Online

You can check the quality of Aspose.Words conversion to OpenOffice file format, and view the results online at these links:

<https://products.aspose.app/words/conversion>

<https://products.aspose.app/words/viewer>

{{% /alert %}}

## General

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Attached Template|N/A| | |
|Built-In Properties|Yes|Built-in properties such as word and character count are updated using Aspose.Words but are not updated automatically on save. <br><br>Instead, you need to explicitly update these properties using the appropriate Document member. We will add an automatic update of these properties in a future version. <br><br>Some Microsoft Word document properties that do not have corresponding properties in ODT are not saved to ODT.|- **Document.UpdateWordCount**|
|Custom Properties|Yes| | |
|Custom Payload Part|N/A| | |
|Custom XML Data Storage|N/A| | |
|Digital Signature|Planned|Signing an ODT document with a digital signature is not yet supported. <br><br>Note that an existing signature on a document cannot be retained as by nature the document has been changed during import.| |
|Embedded Package|N/A|Exported as a plain image.| |
|Encryption|Planned| | |
|Font Table|Yes| | |
|Glossary Document/Quick Parts/Auto Text|N/A|Glossary Document/Building Blocks/AutoText entries are not saved to ODT as there is no native support for this feature in OpenOffice.| |
|Hyphenation|Yes| | |
|Key Map Customizations|N/A| | |
|Mail Merge Recipient Data|N/A| | |
|Office Math|Planned|It is planned to export Office Math as an image to formats that do not have native support for it.| |
|Themes|Yes|Theme formatting is exported as direct formatting to ODT. <br><br>Only some theme formatting such as fonts are supported.| |
|Toolbar Customizations|N/A| | |
|Variables|N/A| | |
|VBA Project (Macro)|N/A|Macros are not supported in ODT format.| |
|VBA Project Digital Signature|N/A| | |
|Background|N/A| | |
|Thumbnail|N/A| | |

## Embedded Fonts

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Embedding Fonts|N/A| | |
|Embed Only Non-Standard Fonts|N/A| | |

## Bibliography

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Bibliography|Yes|OpenOffice does not support this feature. The bibliography is saved to ODT as plain text.| |
|Sources/Citations|Yes|Bibliography sources are not saved to ODT.| |
|Citation Style|N/A| | |

## Protection

OpenOffice does not support protection so document protection is lost upon conversion to ODT.

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Allow Only Comments|N/A| | |
|Allow Only Form Fields|N/A| | |
|Allow Only Revisions|N/A| | |
|Limit Formatting to Selection of Styles|N/A| | |
|Protection Password (Legacy)|N/A| | |
|Protection Password (OOXML)|N/A| | |
|Protected Sections|Yes| | |
|Protection Ranges|N/A| | |
|Read Only|N/A| | |

## Settings

Footnote, Endnote and View settings are saved to ODT.

Other settings such as Asian Typography, Mail Merge and Web settings are not saved to ODT.

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Asian Typography Settings|N/A| | |
|Compatibility Options|N/A|Compatibility Options can influence how the document content appears. These are not retained while converting to ODT.| |
|Endnote Options|Yes| | |
|Footnote Options|Yes| | |
|Mail Merge Settings|N/A| | |
|Print Settings|N/A| | |
|Show/Hide Settings|N/A| | |
|View Settings|Yes| | |
|Web Settings|N/A| | |
|XML Settings|N/A| | |

