---
title: Annotation Features Supported on Import
description: "Aspose.Words for .NET supports annotation features such as comments, revisions, and bookmarks to add extra information to a document for use in review or collaboration."
type: docs
weight: 10
url: /net/annotation-features-supported-on-import/
---

Annotations allow the user to add extra information to the document normally for use in review or collaboration. Annotation functions are supported by Aspose.Words as described in this article.

{{% alert color="primary" %}}

See also the article ["Annotation Features Supported on DOCX Export"](/words/net/annotation-features-supported-on-docx-export/) in the saving section.

{{% /alert %}} 

## Bookmarks

The following table contains a list of bookmark features supported when loading documents:

|Feature|Comment|Supported|Aspose.Words public API|
| :- | :- | :- | :- |
|Bookmark Start | Designates the start of a bookmark region in a document | Yes |[BookmarkStart](https://apireference.aspose.com/words/net/aspose.words/bookmarkstart)|
|Bookmark End | Designates the end of a bookmark region in a document | Yes |[BookmarkEnd](https://apireference.aspose.com/words/net/aspose.words/bookmarkend)|
|Bookmark Name | Defines the name of a bookmark | Yes |[Name](https://apireference.aspose.com/words/net/aspose.words/bookmark/properties/name)|
|Bookmark Text | Defines text content of a bookmark | Yes |[Text](https://apireference.aspose.com/words/net/aspose.words/bookmark/properties/text)|
|Bookmark Table Columns | Provides information about a table column associated with a bookmark | Yes | [FirstColumn](https://apireference.aspose.com/words/net/aspose.words/bookmark/properties/firstcolumn), [IsColumn](https://apireference.aspose.com/words/net/aspose.words/bookmark/properties/iscolumn), [LastColumn](https://apireference.aspose.com/words/net/aspose.words/bookmark/properties/lastcolumn) |

The following table contains a list of formats that support the bookmark features:

| Feature | FlatOPC OOXML document | HTML | Microsoft Word 2003 WordprocessingML | Microsoft Word document 97-2003 | Open Office XML 2007 and 2010 | OpenDocument Text | Plain Text | Rich Text 1.9 |
| :- | :- | :- | :- | :- | :- | :- | :- | :- |
| Bookmark Start |{{< emoticons/tick >}}|{{< emoticons/tick >}}|{{< emoticons/tick >}}|{{< emoticons/tick >}}|{{< emoticons/tick >}}|{{< emoticons/tick >}}| {{< emoticons/cross >}} |{{< emoticons/tick >}}|
| Bookmark End |{{< emoticons/tick >}}|{{< emoticons/tick >}}|{{< emoticons/tick >}}|{{< emoticons/tick >}}|{{< emoticons/tick >}}|{{< emoticons/tick >}}| {{< emoticons/cross >}} |{{< emoticons/tick >}}|
| Bookmark Name |{{< emoticons/tick >}}|{{< emoticons/tick >}}|{{< emoticons/tick >}}|{{< emoticons/tick >}}|{{< emoticons/tick >}}|{{< emoticons/tick >}}| {{< emoticons/cross >}} |{{< emoticons/tick >}}|
| Bookmark Text |{{< emoticons/tick >}}|{{< emoticons/tick >}}|{{< emoticons/tick >}}|{{< emoticons/tick >}}|{{< emoticons/tick >}}|{{< emoticons/tick >}}| {{< emoticons/cross >}} |{{< emoticons/tick >}}|
| Bookmark Table Columns |{{< emoticons/tick >}}| {{< emoticons/cross >}} |{{< emoticons/tick >}}|{{< emoticons/tick >}}|{{< emoticons/tick >}}| {{< emoticons/cross >}} | {{< emoticons/cross >}} |{{< emoticons/tick >}}|

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

The following table contains a list of comment features supported when loading documents:

|Feature|Comment|Supported|Aspose.Words public API|
| :- | :- | :- | :- |
|Comment Range Start|Designates the start of a comment range in a document|Yes|[CommentRangeStart](https://apireference.aspose.com/words/net/aspose.words/commentrangestart)|
|Comment Range End|Designates the end of a comment range in a document|Yes|[CommentRangeEnd](https://apireference.aspose.com/words/net/aspose.words/commentrangeend)|
|Ancestor | Provides information about  the parent of a comment |Yes |[Ancestor](https://apireference.aspose.com/words/net/aspose.words/comment/properties/ancestor)|
|Author | Provides access to manage information about the author of a comment |Yes |[Author](https://apireference.aspose.com/words/net/aspose.words/comment/properties/author)|
|Date | Provides access to manage information about the date and time a comment was made |Yes |[DateTime](https://apireference.aspose.com/words/net/aspose.words/comment/properties/datetime)|
|Mark as Done | Indicates whether a comment is marked as done |Yes |[Done](https://apireference.aspose.com/words/net/aspose.words/comment/properties/done)|
|Identifier | Provides information about the comment identifier |Yes |[Id](https://apireference.aspose.com/words/net/aspose.words/comment/properties/id)|
|Initial | Provides access to manage initials of the user associated with a comment |Yes |[Inital](https://apireference.aspose.com/words/net/aspose.words/comment/properties/initial)|
|Replies | Provides information about immediate children of the specified comment |Yes |[Replies](https://apireference.aspose.com/words/net/aspose.words/comment/properties/replies)|

The following table contains a list of formats that support the comment features:

| Feature | FlatOPC OOXML document | HTML | Microsoft Word 2003 WordprocessingML | Microsoft Word document 97-2003 | Open Office XML 2007 and 2010 | OpenDocument Text | Plain Text | Rich Text 1.9 |
| :- | :- | :- | :- | :- | :- | :- | :- | :- |
| Comment Range Start |{{< emoticons/tick >}}|?|{{< emoticons/tick >}}|{{< emoticons/tick >}}|{{< emoticons/tick >}}|?| {{< emoticons/cross >}} |{{< emoticons/tick >}}|
| Comment Range End |{{< emoticons/tick >}}|{{< emoticons/tick >}}|{{< emoticons/tick >}}|{{< emoticons/tick >}}|{{< emoticons/tick >}}|{{< emoticons/tick >}}| {{< emoticons/cross >}} |{{< emoticons/tick >}}|
| Ancestor |{{< emoticons/tick >}}|{{< emoticons/tick >}}|{{< emoticons/tick >}}|{{< emoticons/tick >}}|{{< emoticons/tick >}}|{{< emoticons/tick >}}| {{< emoticons/cross >}} |{{< emoticons/tick >}}|
| Author |{{< emoticons/tick >}}|{{< emoticons/tick >}}|{{< emoticons/tick >}}|{{< emoticons/tick >}}|{{< emoticons/tick >}}|{{< emoticons/tick >}}| {{< emoticons/cross >}} |{{< emoticons/tick >}}|
| Date |{{< emoticons/tick >}}| {{< emoticons/cross >}} |{{< emoticons/tick >}}|{{< emoticons/tick >}}|{{< emoticons/tick >}}| {{< emoticons/cross >}} | {{< emoticons/cross >}} |{{< emoticons/tick >}}|
| Mark as Done |{{< emoticons/tick >}}| {{< emoticons/cross >}} |{{< emoticons/tick >}}|{{< emoticons/tick >}}|{{< emoticons/tick >}}| {{< emoticons/cross >}} | {{< emoticons/cross >}} |{{< emoticons/tick >}}|
| Identifier |{{< emoticons/tick >}}| {{< emoticons/cross >}} |{{< emoticons/tick >}}|{{< emoticons/tick >}}|{{< emoticons/tick >}}| {{< emoticons/cross >}} | {{< emoticons/cross >}} |{{< emoticons/tick >}}|
| Initial |{{< emoticons/tick >}}| {{< emoticons/cross >}} |{{< emoticons/tick >}}|{{< emoticons/tick >}}|{{< emoticons/tick >}}| {{< emoticons/cross >}} | {{< emoticons/cross >}} |{{< emoticons/tick >}}|
| Replies |{{< emoticons/tick >}}| {{< emoticons/cross >}} |{{< emoticons/tick >}}|{{< emoticons/tick >}}|{{< emoticons/tick >}}| {{< emoticons/cross >}} | {{< emoticons/cross >}} |{{< emoticons/tick >}}|

### Details on Comment Import

A comment in a document is imported as a Comment node in the Aspose.Words DOM, and can be represented by the following nodes: Comment, CommentRangeStart, CommentRangeEnd. All three comment nodes are related through the use of identifier properties on each node.

The CommentRangeStart and CommentRangeEnd nodes define the region of the document that the comment is applied to. The Comment node defines the actual content of the comment and provides members to access the comment properties.

A comment range can span various parts of the document text, including many paragraphs and tables.

### See Also

- [Working with Comments](https://docs.aspose.com/words/net/working-with-comments/)

- [Comment](https://apireference.aspose.com/words/net/aspose.words/comment/)


## Tracking Changes

The following table contains a list of tracking changes features supported when loading documents:

|Feature|Comment|Supported|Aspose.Words public API|
| :- | :- | :- | :- |
|Author | Provides access to manage information about the author of a revision |Yes |[Author](https://apireference.aspose.com/words/net/aspose.words/revision/properties/author)|
|Date | Provides access to manage information about the date and time a revision was made |Yes |[DateTime](https://apireference.aspose.com/words/net/aspose.words/revision/properties/datetime)|
|Revision Group | Provides information about a revision group | Yes | [Group](https://apireference.aspose.com/words/net/aspose.words/revision/properties/group)|
| Revision Type | Provides information about a revision type | Yes | [RevisionType](https://apireference.aspose.com/words/net/aspose.words/revision/properties/revisiontype) |
| Has Revisions | Indicates whether a doccument has envisions | Yes | [HasRevisions](https://apireference.aspose.com/words/net/aspose.words/document/properties/hasrevisions) |
| Revisions | Provides a collection of revisions in a document | Yes | [Revisions](https://apireference.aspose.com/words/net/aspose.words/document/properties/revisions) |
| Track revisions | Indicates whether changes are tracked when editing a document in Microsoft Word | Yes | [TrackRevisions](https://apireference.aspose.com/words/net/aspose.words/document/properties/trackrevisions) |
| Delete Revision | Indicates if the object was a Delete Revision | Yes | [IsDeleteRevision](https://apireference.aspose.com/words/net/aspose.words/inline/properties/isdeleterevision) |
| Format Revision | Indicates if the object was a Format Revision | Yes | [IsFormatRevision](https://apireference.aspose.com/words/net/aspose.words/inline/properties/isformatrevision) |
| Insert Revision | Indicates if the object was a Insert Revision | Yes | [IsInsertRevision](https://apireference.aspose.com/words/net/aspose.words/inline/properties/isinsertrevision) |
| Move Revision | Indicates if the object was a Move Revision | Yes | [IsMoveFromRevision](https://apireference.aspose.com/words/net/aspose.words/inline/properties/ismovefromrevision), [IsMoveToRevision](https://apireference.aspose.com/words/net/aspose.words/inline/properties/ismovetorevision) |

The following table contains a list of formats that support the tracking changes features:

| Feature | FlatOPC OOXML document | HTML | Microsoft Word 2003 WordprocessingML | Microsoft Word document 97-2003 | Open Office XML 2007 and 2010 | OpenDocument Text | Plain Text | Rich Text 1.9 |
| :- | :- | :- | :- | :- | :- | :- | :- | :- |
|Author | | | | | | | | |
|Date | | | | | | | | |
|Revision Group | | | | | | | | |
| Revision Type | | | | | | | | |
| Has Revisions | | | | | | | | |
| Revisions | | | | | | | | |
| Track revisions | | | | | | | | |
| Delete Revision | | | | | | | | |
| Format Revision | | | | | | | | |
| Insert Revision | | | | | | | | |
| Move Revision | | | | | | | | |

### Details on Tracking Changes

Tracked changes are imported into the model as regular nodes. Paragraphs, Runs, and Shapes provide special properties to specify what type of revision they are.

Using Aspose.Words, you can turn tracked changes on or off. Note, however, that any changes made to the DOM using Aspose.Words are not recorded as tracked changes.

You can work with eac revision manually, or accept or reject all revisions at once.
You may need to accept the tracked changes before saving a document in some formats, or the deleted versions will still appear in the output.

### See Also

- [Track Changes in a Document](https://docs.aspose.com/words/net/track-changes-in-a-document/)
- [RevisionGroup](https://apireference.aspose.com/words/net/aspose.words/revisiongroup)
- [Document](https://apireference.aspose.com/words/net/aspose.words/document)
- [Inline](https://apireference.aspose.com/words/net/aspose.words/inline)
