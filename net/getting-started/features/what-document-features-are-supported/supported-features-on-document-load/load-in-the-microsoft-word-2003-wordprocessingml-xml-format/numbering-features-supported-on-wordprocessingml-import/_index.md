---
title: Numbering Features Supported on WordprocessingML Import
type: docs
weight: 80
url: /net/numbering-features-supported-on-wordprocessingml-import/
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

- [Paragraph.IsListItem](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.paragraph.islistitem.html)
- [Paragraph.ListFormat](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.paragraph.listformat.html)
- [Paragraph.ListLabel](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.paragraph.listlabel.html)
- [List.ListLevels](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.lists.list.listlevels.html)

{{% /alert %}} 
## **Numbering Definition**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Single Level |Yes | | |
|Multi Level |Yes | |- [List.IsMultiLevel](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.lists.list.ismultilevel.html)|
|Name |Yes | | |
## **Numbering Level**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Label Alignment |Yes | |- [ListLevel.Alignment](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.lists.listlevel.alignment.html)|
|Picture Bullet |Yes |Picture bullets are supported, however there is currently no way to set a new picture bullet for a list item. <br><br>Consider creating a list with the picture bullet first in the document using Microsoft Word and then apply this list to the required paragraphs. | |
|Restart Level |Yes | |- [ListLevel.RestartAfterLevel](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.lists.listlevel.restartafterlevel.html)|
|Bullet Character |Yes | | |
|Label/Format String |Yes | |- [ListLabel.LabelString](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.lists.listlabel.labelstring.html)|
|Number Format |Yes | |- [ListLevel.NumberFormat](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.lists.listlevel.numberformat.html)|
|Paragraph Properties |Yes | | |
|Font Properties |Yes | |- [ListLevel.Font](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.lists.listlevel.font.html)|
|Linked Paragraph Style |Yes | |- [ListLevel.LinkedStyle](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.lists.listlevel.linkedstyle.html)|
|Starting Value |Yes | |- [ListLevel.StartAt](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.lists.listlevel.startat.html)|
|Text After |Yes | |- [ListLevel.TrailingCharacter](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.lists.listlevel.trailingcharacter.html)|

