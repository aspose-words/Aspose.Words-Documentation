---
title: Numbering Features Supported on HTML Import
type: docs
weight: 80
url: /net/numbering-features-supported-on-html-import/
---

{{% alert color="primary" %}} 

A list used in a document is actually made up of many complex parts. List and their properties are fully supported by Aspose.Words.

There are two main types of lists:

- Numbered (Ordered)
- Bullet (Unordered)

Most properties of lists are supported by Aspose.Words. You can create new lists, access and modify properties of existing lists. You currently cannot remove an existing list from a document.

In all import formats the list value is not stored with the document, it is calculated dynamically. Aspose.Words automatically calculates the values for all list paragraphs in the document even for complex lists. You can retrieve this value through a property of the ListLabel class.

You can find what paragraphs a list is applied to and work with them manually. There are plans to allow to retrieve a list in the document body as an object. You can remove list formatting from a paragraph however you cannot remove a list reference from a document.

Lists are imported in HTML from &lt;ul&gt; and &lt;ol&gt; tags. Nested lists of different types are also supported during import. A &lt;li&gt; tag must be wrapped in a &lt;ul&gt; or &lt;ol&gt; tag to be imported as a proper list item, otherwise it is imported as a regular paragraph. We will look into importing such elements on there own as list items as well in a future version.

Lists can also appear in HTML as ordinary paragraphs, which apperance-wise are imported correctly, however are not read as proper List objects.

See the following links in the documentation for further information:

- [Paragraph.IsListItem](https://apireference.aspose.com/words/net/aspose.words/compositenode/properties/islistitem)
- [Paragraph.ListFormat](https://apireference.aspose.com/words/net/aspose.words/compositenode/properties/listformat)
- [Paragraph.ListLabel](https://apireference.aspose.com/words/net/aspose.words/compositenode/properties/listlabel)
- [List.ListLevels](https://apireference.aspose.com/words/net/aspose.words.lists/list/properties/listlevels)

{{% /alert %}} 

## **Numbering Definition**

|Feature|Supported|Comment|See Also|
| :- | :- | :- | :- |
|Single Level |Yes | | |
|Multi Level |Yes |Some parts of multi-level lists will be imported as separte List objects. This can cause some formatting differences during conversion. <br><br>This will be improved in a future version of Aspose.Words so multi-level lists are imported as a single List object. |- [List.IsMultiLevel](https://apireference.aspose.com/words/net/aspose.words.lists/list/properties/ismultilevel)|
|Name |Planned | | |

## **Numbering Level**

|Feature|Supported|Comment|See Also|
| :- | :- | :- | :- |
|Label Alignment |Yes | |- [ListLevel.Alignment](https://apireference.aspose.com/words/net/aspose.words.lists/listlevel/properties/alignment)|
|Picture Bullet |Planned |Picture bullets are supported, however there is currently no way to set a new picture bullet for a list item. <br><br>Consider creating a list with the picture bullet first in the document using Microsoft Word and then apply this list to the required paragraphs. <br><br>Will be imported using list-style-image attribute and other related attributes. | |
|Restart Level |Yes | |- [ListLevel.RestartAfterLevel](https://apireference.aspose.com/words/net/aspose.words.lists/listlevel/properties/restartafterlevel)|
|Bullet Character |Yes |Imported from type attribute on &lt;ul&gt; tag. | |
|Label/Format String |Yes | |- [ListLabel.LabelString](https://apireference.aspose.com/words/net/aspose.words.lists/listlabel/properties/labelstring)|
|Number Format |Yes |Imported from "type" attribute on &lt;ol&gt;. |- [ListLevel.NumberFormat](https://apireference.aspose.com/words/net/aspose.words.lists/listlevel/properties/numberformat)|
|Paragraph Properties |Planned | | |
|Font Properties |Planned | |- [ListLevel.Font](https://apireference.aspose.com/words/net/aspose.words.lists/listlevel/properties/font)|
|Linked Paragraph Style |Planned | |- [ListLevel.LinkedStyle](https://apireference.aspose.com/words/net/aspose.words.lists/listlevel/properties/linkedstyle)|
|Starting Value |Yes |Imported from start attribute on &lt;ul&gt; or &lt;ol&gt;. |- [ListLevel.StartAt](https://apireference.aspose.com/words/net/aspose.words.lists/listlevel/properties/startat)|
|Text After |Planned | |- [ListLevel.TrailingCharacter](https://apireference.aspose.com/words/net/aspose.words.lists/listlevel/properties/trailingcharacter)|

