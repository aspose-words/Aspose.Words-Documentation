---
title: Custom Markup Features Supported on DOCX Import
description: "Aspose.Words for .NET allows you to work with custom markup features supported on Open Office XML 2007 and 2010 Format import."
type: docs
weight: 20
url: /net/custom-markup-features-supported-on-docx-import/
---

{{% alert color="primary" %}} 

Custom Markup are elements that added to parts of the document which allow extra information to be embedded within that particular document feature.

For example, CustomXML markup can be wrapped around a paragraph in the document and user-defined data added to it. This data can then be retrieved from that paragraphs when required.

[Jump to this location in the export section](/words/net/custom-markup-features-supported-on-docx-export/)

{{% /alert %}} 

## CustomXML

Represented in Aspose.Words DOM as a CustomXmlMarkup node.

You can create and remove CustomXmlMarkup in a document. You can also access the properties of the XML markup node.

See the following link in the documentation for further information:

- [CustomXmlPart](https://apireference.aspose.com/words/net/aspose.words.markup/customxmlpart)

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|CustomXML |Yes | | |

## Content Controls (Structured Document Tags)

Represented in Aspose.Words DOM as a StructuredDocumentTag node.

You can insert new Structured Document Tags and remove existing ones from the document. There is also a rich API for accessing the various properties of SDTs.

Currently Content Controls linked to Custom XML Data Storage are not supported during import. The default value of the tag is imported instead which may appear as if the wrong text is being displayed when compared to opening the document in Microsoft Word.

See the following link in the documentation for further information:

- [StructuredDocumentTag](https://apireference.aspose.com/words/net/aspose.words.markup/structureddocumenttag)

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Content Controls (Structured Document Tags) |Yes | | |

## Smart Tags

SmartTags are fully supported in Aspose.Words. They are represented in Aspose.Words DOM as a SmartTag node.

See the following links in the documentation for further information:

- [SmartTag](https://apireference.aspose.com/words/net/aspose.words.markup/smarttag)
- [Document.RemoveSmartTags](https://apireference.aspose.com/words/net/aspose.words/compositenode/methods/removesmarttags)

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Smart Tag Properties |Yes | |- [SmartTag.Properties](https://apireference.aspose.com/words/net/aspose.words.markup/smarttag/properties)|

