---
title: Annotation Features Supported on OpenDocument Import – Aspose.Words for .NET
articleTitle: Annotation Features Supported on OpenDocument Import
linktitle: Annotation Features Supported on OpenDocument Import
description: "Import ODT document using annotation load options in C#."
type: docs
weight: 10
url: /net/annotation-features-supported-on-opendocument-import/
---

{{% alert color="primary" %}}

Annonations allow the user to add extra information to the document normally for use in review or collaboration.

These features are supported by Aspose.Words.

[Jump to this location in the export section](/words/net/annotation-features-supported-on-opendocument-export/)

{{% /alert %}}

## Bookmarks

Bookmarks are imported as BookmarkStart and BookmarkEnd nodes. In Microsoft Word document formats a bookmark range can span over long amoutns of content, including over different paragraphs and even tables. 

In Aspose.Words the BookmarkStart node designates where the start of the bookmarked region begins in the document. Likewise, the BookmarkEnd node designates where the end of the bookmark region closes.

You can access the bookmark as a "single entity" by using the Bookmark façade. You can add and remove bookmarks from a document and also set and get the text of the bookmark content.

Bookmark nodes are represented as inline nodes (child of a paragraph). Some bookmarks markers in Word documents are at different levels of the document hierarchy than just inline. This means when they are imported into Aspose.Words they are translated to the cloesest inline position.

This normally causes no problems but some bookmarks on tables can appear differently when imported.

The Aspose.Words model is based on Word document formats. In these formats bookmark names must be unique. The model will allow bookmarks with the same name, however all duplicates are removed automatically during export. Note that duplicate bookmarks can happen when you accentitly create a bookmark with the same name, or when documents that contain the same bookmark are joined together using the AppendDocument or InsertDocument methods.

See the following links in the documentation for further information:

- [Working with Bookmarks](/words/net/working-with-bookmarks/)
- [Range.Bookmarks](https://apireference.aspose.com/words/net/aspose.words/range/properties/bookmarks)
- [Bookmark](https://apireference.aspose.com/words/net/aspose.words/bookmark)

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Bookmark Start |Yes | |- [BookmarkStart](https://apireference.aspose.com/words/net/aspose.words/bookmarkstart)|
|Bookmark End |Yes | |- [BookmarkEnd](https://apireference.aspose.com/words/net/aspose.words/bookmarkend)|
|Bookmark Name |Yes | |- [Bookmark.Name](https://apireference.aspose.com/words/net/aspose.words/bookmark/properties/name)|
|Bookmark Table Columns |N/A | | |

## Comments

A comment in a document is imported as a Comment node in the Aspose.Words DOM.

The range of a comment can span over various parts of the document text, including over many paragraphs and tables.

In Aspose.Words this range is represented by the following nodes:

- Comment
- CommentRangeStart
- CommentRangeEnd

The CommentRangeStart and CommentRangeEnd nodes define the area of the document that the comment is applied to. The Comment node defines the actual content of the comment and provides members to access the comment properties such as Author and Time.

All three comment nodes are related through the use of the ID properties on each node.

See the following links in the documentation for further information:

- [How to Extract or Remove Comments](/words/net/working-with-comments/)
- [Comment](https://apireference.aspose.com/words/net/aspose.words/comment)
- [Comment.Id](https://apireference.aspose.com/words/net/aspose.words/comment/properties/id)

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Comment |Yes | |- [Comment](https://apireference.aspose.com/words/net/aspose.words/comment)|
|Comment Range |N/A | | |
|Author |Yes | |- [Comment.Author](https://apireference.aspose.com/words/net/aspose.words/comment/properties/author)|
|Date |Yes | |- **Comment.Date**|
|Initial |N/A | | |

## Tracking Changes

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|On/Off State |N/A | | |
|Table Cell Deletion |N/A | | |
|Table Cell Insertion |N/A | | |
|Cell Merge or Split |N/A | | |
|Run Deletion |N/A | | |
|Run Insertion |N/A | | |
|Paragraph Deletion |N/A | | |
|Paragraph Insertion |N/A | | |
|Table Row Deletion |N/A | | |
|Table Row Insertion |N/A | | |
|Numbering Insertion |N/A | | |
|Numbering Change |N/A | | |
|Moves |N/A | | |
|Paragraph Properties Change |N/A | | |
|Run Properties Change |N/A | | |
|Section Properties Change |N/A | | |
|Table Properties Change |N/A | | |
|Cell Properties Change |N/A | | |
|Row Properties Change |N/A | | |
|RSIDs Session Identifiers |N/A | | |
