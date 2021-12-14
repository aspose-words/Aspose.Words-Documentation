---
title: Annotation Features Supported on OpenDocument Import
description: "Aspose.Words for Java allows you to work with annotation features supported on OpenDocument Text import."
type: docs
weight: 10
url: /java/annotation-features-supported-on-opendocument-import/
---

{{% alert color="primary" %}} 

Annotations allow the user to add extra information to the document normally for use in review or collaboration.

These features are supported by Aspose.Words.

{{% /alert %}} 

## Bookmarks

Bookmarks are imported as BookmarkStart and BookmarkEnd nodes. In Microsoft Word document formats a bookmark range can span over long amounts of content, including over different paragraphs and even tables. 

In Aspose.Words the BookmarkStart node designates where the start of the bookmarked region begins in the document. Likewise, the BookmarkEnd node designates where the end of the bookmark region closes.

You can access the bookmark as a "single entity" by using the Bookmark façade. You can add and remove bookmarks from a document and also set and get the text of the bookmark content.

Bookmark nodes are represented as inline nodes (child of a paragraph). Some bookmarks markers in Word documents are at different levels of the document hierarchy than just inline. This means when they are imported into Aspose.Words they are translated to the closest inline position.

This normally causes no problems but some bookmarks on tables can appear differently when imported.

The Aspose.Words model is based on Word document formats. In these formats bookmark names must be unique. The model will allow bookmarks with the same name, however all duplicates are removed automatically during export. Note that duplicate bookmarks can happen when you accidentally create a bookmark with the same name, or when documents that contain the same bookmark are joined together using the AppendDocument or InsertDocument methods.

See the following links in the documentation for further information:

- Working with Bookmarks
- **Range.Bookmarks**
- **Bookmark**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Bookmark Start |Yes | |- **BookmarkStart**|
|Bookmark End |Yes | |- **BookmarkEnd**|
|Bookmark Name |Yes | |- **Bookmark.Name**|
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

- How to Extract or Remove Comments
- **Comment**
- **Comment.Id**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Comment |Yes | |- **Comment**|
|Comment Range |N/A | | |
|Author |Yes | |- **Comment.Author**|
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

