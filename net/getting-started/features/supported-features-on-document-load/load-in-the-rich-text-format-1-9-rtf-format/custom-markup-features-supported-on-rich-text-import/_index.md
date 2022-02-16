---
title: Custom Markup Features Supported on Rich Text Import – Aspose.Words for .NET
articleTitle: Custom Markup Features Supported on Rich Text Import
linktitle: Custom Markup Features Supported on Rich Text Import
description: "Aspose.Words for .NET allows you to work with custom markup features supported on Rich Text import."
type: docs
weight: 20
url: /net/custom-markup-features-supported-on-rich-text-import/
---

{{% alert color="primary" %}} 

Custom Markup are elements that added to parts of the document which allow extra information to be embedded within that particular document feature.

For example, CustomXML markup can be wrapped around a paragraph in the document and user-defined data added to it. This data can then be retrieved from that paragraphs when required.

[Jump to this location in the export section](/words/net/custom-markup-features-supported-on-rich-text-export/)

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

RTF format does not support CustomXmlMarkup so it cannot be imported from this format.

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Content Controls (Structured Document Tags) |N/A | | |

## Smart Tags

SmartTags are fully supported in Aspose.Words. They are represented in Aspose.Words DOM as a SmartTag node.

See the following links in the documentation for further information:

- [SmartTag](https://apireference.aspose.com/words/net/aspose.words.markup/smarttag)
- [Document.RemoveSmartTags](https://apireference.aspose.com/words/net/aspose.words/compositenode/methods/removesmarttags)

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Smart Tag Properties |Yes | |- [SmartTag.Properties](https://apireference.aspose.com/words/net/aspose.words.markup/smarttag/properties/properties)|
