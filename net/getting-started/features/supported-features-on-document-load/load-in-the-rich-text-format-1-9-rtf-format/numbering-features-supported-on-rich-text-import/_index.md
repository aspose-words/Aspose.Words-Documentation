---
title: Numbering Features Supported on Rich Text Import – Aspose.Words for .NET
articleTitle: Numbering Features Supported on Rich Text Import
linktitle: Numbering Features Supported on Rich Text Import
description: "Import Rich Text format using numbering load options."
type: docs
weight: 80
url: /net/numbering-features-supported-on-rich-text-import/
---

{{% alert color="primary" %}}

A list used in a document is actually made up of many complex parts. List and their properties are fully supported by Aspose.Words.

There are two main types of lists:

- Numbered (Ordered)
- Bullet (Unordered)

Most properties of lists are supported by Aspose.Words. You can create new lists, access and modify properties of existing lists. You currently cannot remove an existing list from a document.

In all import formats the list value is not stored with the document, it is calculated dynamically. Aspose.Words automatically calculates the values for all list paragraphs in the document even for complex lists. You can retrieve this value through a property of the ListLabel class.

You can find what paragraphs a list is applied to and work with them manually. There are plans to allow to retrieve a list in the document body as an object. You can remove list formatting from a paragraph however you cannot remove a list reference from a document.

See the following links in the documentation for further information:

- [Paragraph.IsListItem](https://apireference.aspose.com/words/net/aspose.words/paragraph/properties/islistitem)
- [Paragraph.ListFormat](https://apireference.aspose.com/words/net/aspose.words/paragraph/properties/listformat)
- [Paragraph.ListLabel](https://apireference.aspose.com/words/net/aspose.words/paragraph/properties/listlabel)
- [List.ListLevels](https://apireference.aspose.com/words/net/aspose.words.lists/list/properties/listlevels)

[Jump to this location in the export section](/words/net/numbering-features-supported-on-rich-text-export/)

{{% /alert %}}

## Numbering Definition

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Single Level |Yes | | |
|Multi Level |Yes | |- [List.IsMultiLevel](https://apireference.aspose.com/words/net/aspose.words.lists/list/properties/ismultilevel)|
|Name |Yes | | |

## Numbering Level

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Label Alignment |Yes | |- [ListLevel.Alignment](https://apireference.aspose.com/words/net/aspose.words.lists/listlevel/properties/alignment)|
|Picture Bullet |Yes |Picture bullets are supported, however there is currently no way to set a new picture bullet for a list item. <br><br>Consider creating a list with the picture bullet first in the document using Microsoft Word and then apply this list to the required paragraphs. | |
|Restart Level |Yes | |- [ListLevel.RestartAfterLevel](https://apireference.aspose.com/words/net/aspose.words.lists/listlevel/properties/restartafterlevel)|
|Bullet Character |Yes | | |
|Label/Format String |Yes | |- [ListLabel.LabelString](https://apireference.aspose.com/words/net/aspose.words.lists/listlabel/properties/labelstring)|
|Number Format |Yes | |- [ListLevel.NumberFormat](https://apireference.aspose.com/words/net/aspose.words.lists/listlevel/properties/numberformat)|
|Paragraph Properties |Yes | | |
|Font Properties |Yes | |- [ListLevel.Font](https://apireference.aspose.com/words/net/aspose.words.lists/listlevel/properties/font)|
|Linked Paragraph Style |Yes | |- [ListLevel.LinkedStyle](https://apireference.aspose.com/words/net/aspose.words.lists/listlevel/properties/linkedstyle)|
|Starting Value |Yes | |- [ListLevel.StartAt](https://apireference.aspose.com/words/net/aspose.words.lists/listlevel/properties/startat)|
|Text After |Yes | |- [ListLevel.TrailingCharacter](https://apireference.aspose.com/words/net/aspose.words.lists/listlevel/properties/trailingcharacter)|
