---
title: Annotation Features Supported on Import
description: ""
type: docs
weight: 10
url: /net/annotation-features-supported-on-import/
---

Annonations allow the user to add extra information to the document normally for use in review or collaboration. Annonation functions are supported by Aspose.Words as described in this article.

{{% alert color="primary" %}}

See also the article ["Annotation Features Supported on DOCX Export"](/words/net/annotation-features-supported-on-docx-export/) in the saving section.

{{% /alert %}} 

## Bookmarks

The following table contains a list of bookmark features supported when loading documents in various formats:

|Feature|Comment|Supported|Supported Formats|Aspose.Words public API|
| :- | :- | :- | -- | -- |
|Bookmark Start | Designates the start of a bookmark region in a document | Yes | - FlatOPC OOXML document formats,<br/>- HTML formats,<br/>- Microsoft Word 2003 WordprocessingML formats,<br/>- Microsoft Word document 97-2003 formats,<br/>- Open Office XML 2007 and 2010 formats,<br/>- OpenDocument Text formats,<br/>- Rich Text 1.9 formats |[BookmarkStart](https://apireference.aspose.com/words/net/aspose.words/bookmarkstart)|
|Bookmark End | Designates the end of a bookmark region in a document | Yes | - FlatOPC OOXML document formats,<br/>- HTML formats,<br/>- Microsoft Word 2003 WordprocessingML formats,<br/>- Microsoft Word document 97-2003 formats,<br/>- Open Office XML 2007 and 2010 formats,<br/>- OpenDocument Text formats,<br/>- Rich Text 1.9 formats |[BookmarkEnd](https://apireference.aspose.com/words/net/aspose.words/bookmarkend)|
|Bookmark Name | Defines the name of a bookmark | Yes | - FlatOPC OOXML document formats,<br/>- HTML formats,<br/>- Microsoft Word 2003 WordprocessingML formats,<br/>- Microsoft Word document 97-2003 formats,<br/>- Open Office XML 2007 and 2010 formats,<br/>- OpenDocument Text formats,<br/>- Rich Text 1.9 formats |[Name](https://apireference.aspose.com/words/net/aspose.words/bookmark/properties/name)|
|Bookmark Text | Defines text content of a bookmark | Yes | - FlatOPC OOXML document formats,<br/>- HTML formats,<br/>- Microsoft Word 2003 WordprocessingML formats,<br/>- Microsoft Word document 97-2003 formats,<br/>- Open Office XML 2007 and 2010 formats,<br/>- OpenDocument Text formats,<br/>- Rich Text 1.9 formats |[<br/>Text](https://apireference.aspose.com/words/net/aspose.words/bookmark/properties/text)|
|Bookmark Table Columns | Provides information about a table column associated with a bookmark | Yes | - FlatOPC OOXML document formats<br/>- Microsoft Word 2003 WordprocessingML formats<br/>- Microsoft Word document 97-2003 formats<br/>- Open Office XML 2007 and 2010 formats<br/>- Rich Text 1.9 formats | [FirstColumn](https://apireference.aspose.com/words/net/aspose.words/bookmark/properties/firstcolumn)<br />[IsColumn](https://apireference.aspose.com/words/net/aspose.words/bookmark/properties/iscolumn)<br />[LastColumn](https://apireference.aspose.com/words/net/aspose.words/bookmark/properties/lastcolumn) |

### Details on Bookmarks Import

Bookmarks are imported as the **BookmarkStart** and **BookmarkEnd** nodes. Bookmark nodes are represented as inline nodes (children of a paragraph).

The [Aspose.Words DOM](https://docs.aspose.com/words/net/aspose-words-document-object-model/) is based on Microsoft Word document formats. In these formats, bookmark names must be unique. The Aspose.Words DOM allows bookmarks with the same name, but all duplicates are automatically removed on export. Note that duplicate bookmarks can occur when you accentitly create a bookmark with the same name, or when documents containing the same bookmark are joined together using the [AppendDocument](https://apireference.aspose.com/words/net/aspose.words/document/methods/appenddocument/index) or [InsertDocument](https://apireference.aspose.com/words/net/aspose.words/documentbuilder/methods/insertdocument/index) methods.

In Microsoft Word document formats, a bookmark range can span a over long amoutns of content, including various paragraphs and even tables. Thus, some bookmark markers in Word documents are at different levels of the document hierarchy than just inline. This means that when they are imported into Aspose.Words, they are translated to the cloesest inline position. This is usually not a problem, but some bookmarks in tables may appear differently when imported.

You can access a bookmark as a "single object" using the Bookmark facade. While working with bookmarks, you can add and remove them from a document, as well as set and get the text of the bookmark content.

### See Also

- [Working with Bookmarks](/words/net/working-with-bookmarks/)
- [Range.Bookmarks](https://apireference.aspose.com/words/net/aspose.words/range/properties/bookmarks)
- [Bookmark](https://apireference.aspose.com/words/net/aspose.words/bookmark)

## Comments

The following table contains a list of comment features supported when loading documents in various formats:

|Feature|Comment|Supported|Supported Formats|Aspose.Words public API|
| :- | :- | :- | :- | :- |
|Comment Range Start|Designates the start of a comment range in a document|Yes|- FlatOPC OOXML document formats,<br/>- **<u>HTML formats</u>**,<br/>- Microsoft Word 2003 WordprocessingML formats,<br/>- Microsoft Word document 97-2003 formats,<br/>- Open Office XML 2007 and 2010 formats,<br/>- **<u>OpenDocument Text formats</u>**,<br/>- Rich Text 1.9 formats|[CommentRangeStart](https://apireference.aspose.com/words/net/aspose.words/commentrangestart)|
|Comment Range End|Designates the end of a comment range in a document|Yes|- FlatOPC OOXML document formats,<br/>- HTML formats,<br/>- Microsoft Word 2003 WordprocessingML formats,<br/>- Microsoft Word document 97-2003 formats,<br/>- Open Office XML 2007 and 2010 formats,<br/>- OpenDocument Text formats,<br/>- Rich Text 1.9 formats|[CommentRangeEnd](https://apireference.aspose.com/words/net/aspose.words/commentrangeend)|
|Ancestor | Provides information about  the parent of a comment |Yes | - FlatOPC OOXML document formats,<br/>- HTML formats,<br/>- Microsoft Word 2003 WordprocessingML formats,<br/>- Microsoft Word document 97-2003 formats,<br/>- Open Office XML 2007 and 2010 formats,<br/>- OpenDocument Text formats,<br/>- Rich Text 1.9 formats |[Ancestor](https://apireference.aspose.com/words/net/aspose.words/comment/properties/ancestor)|
|Author | Provides access to manage information about the author of a comment |Yes | - FlatOPC OOXML document formats,<br/>- HTML formats,<br/>- Microsoft Word 2003 WordprocessingML formats,<br/>- Microsoft Word document 97-2003 formats,<br/>- Open Office XML 2007 and 2010 formats,<br/>- OpenDocument Text formats,<br/>- Rich Text 1.9 formats |[Author](https://apireference.aspose.com/words/net/aspose.words/comment/properties/author)|
|Date | Provides access to manage information about the date and time a comment was made |Yes | - FlatOPC OOXML document formats,<br/>- HTML formats,<br/>- Microsoft Word 2003 WordprocessingML formats,<br/>- Microsoft Word document 97-2003 formats,<br/>- Open Office XML 2007 and 2010 formats,<br/>- OpenDocument Text formats,<br/>- Rich Text 1.9 formats |[DateTime](https://apireference.aspose.com/words/net/aspose.words/comment/properties/datetime)|
|Mark as Done | Indicates whether a comment is marked as done |Yes | - FlatOPC OOXML document formats,<br/>- HTML formats,<br/>- Microsoft Word 2003 WordprocessingML formats,<br/>- Microsoft Word document 97-2003 formats,<br/>- Open Office XML 2007 and 2010 formats,<br/>- OpenDocument Text formats,<br/>- Rich Text 1.9 formats |[Done](https://apireference.aspose.com/words/net/aspose.words/comment/properties/done)|
|Id | Provides information about the comment identifier |Yes | - FlatOPC OOXML document formats,<br/>- HTML formats,<br/>- Microsoft Word 2003 WordprocessingML formats,<br/>- Microsoft Word document 97-2003 formats,<br/>- Open Office XML 2007 and 2010 formats,<br/>- OpenDocument Text formats,<br/>- Rich Text 1.9 formats |[Id](https://apireference.aspose.com/words/net/aspose.words/comment/properties/id)|
|Initial | Provides access to manage initials of the user associated with a comment |Yes | - FlatOPC OOXML document formats,<br/>- HTML formats,<br/>- Microsoft Word 2003 WordprocessingML formats,<br/>- Microsoft Word document 97-2003 formats,<br/>- Open Office XML 2007 and 2010 formats,<br/>- OpenDocument Text formats,<br/>- Rich Text 1.9 formats |[Inital](https://apireference.aspose.com/words/net/aspose.words/comment/properties/initial)|
|Replies | Provides information about immediate children of the specified comment |Yes | - FlatOPC OOXML document formats,<br/>- HTML formats,<br/>- Microsoft Word 2003 WordprocessingML formats,<br/>- Microsoft Word document 97-2003 formats,<br/>- Open Office XML 2007 and 2010 formats,<br/>- OpenDocument Text formats,<br/>- Rich Text 1.9 formats |[Replies](https://apireference.aspose.com/words/net/aspose.words/comment/properties/replies)|

### Details on Comment Import

A comment in a document is imported as a Comment node in the Aspose.Words DOM, and can be represented by the following nodes: Comment, CommentRangeStart, CommentRangeEnd. All three comment nodes are related through the use of identifier properties on each node.

The CommentRangeStart and CommentRangeEnd nodes define the region of the document that the comment is applied to. The Comment node defines the actual content of the comment and provides members to access the comment properties.

A comment range can span various parts of the document text, including many paragraphs and tables.

### See Also

- [Working with Comments](https://docs.aspose.com/words/net/working-with-comments/)

- [Comment](https://apireference.aspose.com/words/net/aspose.words/comment/)


## Tracking Changes

The following table contains a list of tracking changes features supported when loading documents in various formats:

|Feature|Comment|Supported|Supported Formats|Aspose.Words public API|
| :- | :- | :- | :- | :- |
|On/Off State | |Yes | | |
|Table Cell Deletion | |Planned | | |
|Table Cell Insertion | |Planned | | |
|Cell Merge or Split | |Planned | | |
|Run Deletion | |Yes | |- [Run.IsDeleteRevision](https://apireference.aspose.com/words/net/aspose.words/inline/properties/isdeleterevision)|
|Run Insertion | |Yes | |- [Run.IsInsertRevision](https://apireference.aspose.com/words/net/aspose.words/inline/properties/isinsertrevision)|
|Paragraph Deletion | |Yes | |- [Paragraph.IsDeleteRevision](https://apireference.aspose.com/words/net/aspose.words/paragraph/properties/isdeleterevision)|
|Paragraph Insertion | |Yes | |- [Paragraph.IsInsertRevision](https://apireference.aspose.com/words/net/aspose.words/paragraph/properties/isinsertrevision)|
|Table Row Deletion | |Yes | | |
|Table Row Insertion | |Yes | | |
|Numbering Insertion | |Yes | | |
|Numbering Change | |Yes | | |
|Moves | |Planned | | |
|Paragraph Properties Change | |Yes | | |
|Run Properties Change | |Yes | | |
|Section Properties Change | |Yes | | |
|Table Properties Change | |Yes | | |
|Cell Properties Change | |Yes | | |
|Row Properties Change | |Yes | | |
|RSIDs Session Identifiers | |Yes | | |

[Revision](https://apireference.aspose.com/words/net/aspose.words/revision)

[RevisionGroup](https://apireference.aspose.com/words/net/aspose.words/revisiongroup)

[Document](https://apireference.aspose.com/words/net/aspose.words/document)

[Inline](https://apireference.aspose.com/words/net/aspose.words/inline)

### Details on Tracking Changes

Tracked changes are imported into the model as regular nodes. Paragraphs, Runs, and Shapes provide special properties to specify what type of revision they are.

Using Aspose.Words, you can turn tracked changes on or off. Note, however, that any changes made to the DOM using Aspose.Words are not recorded as tracked changes.

You can work with eac revision manually, or accept or reject all revisions at once.
You may need to accept the tracked changes before saving a document in some formats, or the deleted versions will still appear in the output.

### See Also

- [Manage Tracking Changes](/words/net/track-changes-in-a-document/)
- [Document.HasRevisions](https://apireference.aspose.com/words/net/aspose.words/document/properties/hasrevisions)
- [Document.TrackRevisions](https://apireference.aspose.com/words/net/aspose.words/document/properties/trackrevisions)
- [Document.AcceptAllRevisions](https://apireference.aspose.com/words/net/aspose.words/document/properties/acceptallrevisions)
