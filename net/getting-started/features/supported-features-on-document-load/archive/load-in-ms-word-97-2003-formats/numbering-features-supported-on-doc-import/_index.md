---
title: DOC Import - Numbering Features
second_title: Aspose.Words for .NET
articleTitle: Numbering Features Supported on DOC Import
linktitle: Numbering Features Supported on DOC Import
description: "Import DOC document using numbering load options in C#."
type: docs
weight: 80
url: /net/numbering-features-supported-on-doc-import/
---

{{% alert color="warning" %}}

This page has been archived and has not been updated for some time. It contains information for reference only.

{{% /alert %}}

{{% alert color="primary" %}}

A list used in a document is actually made up of many complex parts. List and their properties are fully supported by Aspose.Words.

There are two main types of lists:

- Numbered (Ordered)
- Bullet (Unordered)

Most properties of lists are supported by Aspose.Words. You can create new lists, access and modify properties of existing lists. You currently cannot remove an existing list from a document.

In all import formats the list value is not stored with the document, it is calculated dynamically. Aspose.Words automatically calculates the values for all list paragraphs in the document even for complex lists. You can retrieve this value through a property of the ListLabel class.

You can find what paragraphs a list is applied to and work with them manually. There are plans to allow to retrieve a list in the document body as an object. You can remove list formatting from a paragraph however you cannot remove a list reference from a document.

See the following links in the documentation for further information:

- [Paragraph.IsListItem](https://reference.aspose.com/words/net/aspose.words/paragraph/properties/islistitem)
- [Paragraph.ListFormat](https://reference.aspose.com/words/net/aspose.words/paragraph/properties/listformat)
- [Paragraph.ListLabel](https://reference.aspose.com/words/net/aspose.words/paragraph/properties/listlabel)
- [List.ListLevels](https://reference.aspose.com/words/net/aspose.words.lists/list/properties/listlevels)

[Jump to this location in the export section](/words/net/numbering-features-supported-on-doc-export/)

{{% /alert %}}

## Numbering Definition

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Single Level |Yes | | |
|Multi Level |Yes | |- [List.IsMultiLevel](https://reference.aspose.com/words/net/aspose.words.lists/list/ismultilevel/)|
|Name |Yes | | |

## Numbering Level

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Label Alignment |Yes | |- [ListLevel.Alignment](https://reference.aspose.com/words/net/aspose.words.lists/listlevel/alignment/)|
|Picture Bullet |Yes |Picture bullets are supported, however there is currently no way to set a new picture bullet for a list item. <br><br>Consider creating a list with the picture bullet first in the document using Microsoft Word and then apply this list to the required paragraphs. | |
|Restart Level |Yes | |- [ListLevel.RestartAfterLevel](https://reference.aspose.com/words/net/aspose.words.lists/listlevel/restartafterlevel/)|
|Bullet Character |Yes | | |
|Label/Format String |Yes | |- [ListLabel.LabelString](https://reference.aspose.com/words/net/aspose.words.lists/listlabel/labelstring/)|
|Number Format |Yes | |- [ListLevel.NumberFormat](https://reference.aspose.com/words/net/aspose.words.lists/listlevel/numberformat/)|
|Paragraph Properties |Yes | | |
|Font Properties |Yes | |- [ListLevel.Font](https://reference.aspose.com/words/net/aspose.words.lists/listlevel/font/)|
|Linked Paragraph Style |Yes | |- [ListLevel.LinkedStyle](https://reference.aspose.com/words/net/aspose.words.lists/listlevel/linkedstyle/)|
|Starting Value |Yes | |- [ListLevel.StartAt](https://reference.aspose.com/words/net/aspose.words.lists/listlevel/startat/)|
|Text After |Yes | |- [ListLevel.TrailingCharacter](https://reference.aspose.com/words/net/aspose.words.lists/listlevel/trailingcharacter/)|

