---
title: Annotation Features Supported on DOCX Import
type: docs
weight: 10
url: /java/annotation-features-supported-on-docx-import/
---

{{% alert color="primary" %}} 

Annotations allow the user to add extra information to the document normally for use in review or collaboration.

These features are supported by Aspose.Words.

[Jump to this location in the export section]()

{{% /alert %}} 

## Bookmarks

Bookmarks are imported as BookmarkStart and BookmarkEnd nodes. In Microsoft Word document formats a bookmark range can span over long amounts of content, including over different paragraphs and even tables. 

In Aspose.Words the BookmarkStart node designates where the start of the bookmarked region begins in the document. Likewise, the BookmarkEnd node designates where the end of the bookmark region closes.

You can access the bookmark as a "single entity" by using the Bookmark façade. You can add and remove bookmarks from a document and also set and get the text of the bookmark content.

Bookmark nodes are represented as inline nodes (child of a paragraph). Some bookmarks markers in Word documents are at different levels of the document hierarchy than just inline. This means when they are imported into Aspose.Words they are translated to the closest inline position.

This normally causes no problems but some bookmarks on tables can appear differently when imported.

The Aspose.Words model is based on Word document formats. In these formats, bookmark names must be unique. The model will allow bookmarks with the same name. However, all duplicates are removed automatically during export. Note that duplicate bookmarks can happen when you accidentally create a bookmark with the same name, or when documents that contain the same bookmark are joined together using the AppendDocument or InsertDocument methods.

See the following links in the documentation for further information:

- [Working with Bookmarks]()
- **Range.Bookmarks**
- **Bookmark**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Bookmark Start |Yes | |- **BookmarkStart**|
|Bookmark End |Yes | |- **BookmarkEnd**|
|Bookmark Name |Yes | |- **Bookmark.Name**|
|Bookmark Table Columns |Yes | | |

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

- [How to Extract or Remove Comments]()
- **Comment**
- **Comment.Id**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Comment |Yes | |- **Comment.ToTxt**|
|Comment Range |Yes | |<p>- **CommentRangeStart** </p><p>- **CommentRangeEnd**</p>|
|Author |Yes | |- **Comment.Author**|
|Date |Yes | |- **Comment.Date**|
|Initial |Yes | |- **Comment.Inital**|

## Tracking Changes

Tracked changes are imported into the model as regular nodes. Paragraphs, Runs and Shapes all provide special properties to specify if they are insert or delete revisions.

You can work with each these revisions manually or choose to accept all revisions at once. There is currently no API to reject changes.

Using Aspose.Words you can set tracked changes to be on or off. Note however that any changes made in the DOM using Aspose.Words are not recorded as tracked changes.

You may need to accept tracked changes before saving to different formats or else the deleted revisions will still show up in the output document.

Most revision types properly round-tripped to the appropriate formats. Currently only Insert and Delete revisions are made available in the public API. Also, Move and some Table revisions are unsupported. Additionally formatting changes are also unsupported.

These additional features will be included in a future version as well as an API to easily retrieve revisions by author, date etc.

See the following links in the documentation for further information:

- [Manage Tracking Changes]()
- **Document.HasRevisions**
- **Document.TrackRevisions**
- **Document.AcceptAllRevisions**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|On/Off State |Yes | | |
|Table Cell Deletion |Planned | | |
|Table Cell Insertion |Planned | | |
|Cell Merge or Split |Planned | | |
|Run Deletion |Yes | |- **Run.IsDeleteRevision**|
|Run Insertion |Yes | |- **Run.IsInsertRevision**|
|Paragraph Deletion |Yes | |- **Paragraph.IsDeleteRevision**|
|Paragraph Insertion |Yes | |- **Paragraph.IsInsertRevision**|
|Table Row Deletion |Yes | | |
|Table Row Insertion |Yes | | |
|Numbering Insertion |Yes | | |
|Numbering Change |Yes | | |
|Moves |Planned | | |
|Paragraph Properties Change |Yes | | |
|Run Properties Change |Yes | | |
|Section Properties Change |Yes | | |
|Table Properties Change |Yes | | |
|Cell Properties Change |Yes | | |
|Row Properties Change |Yes | | |
|RSIDs Session Identifiers |Yes | | |

